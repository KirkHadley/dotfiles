#!/bin/zsh
source ~/.bash_aliases
mldevpublicip=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=Kirk" --query "Reservations[*].Instances[*].PublicIpAddress"  --output=text)
eastmlsinglegpu=$(aws ec2 describe-instances --region us-east-1 --filters Name=tag:Name,Values=ml-dev-gpu-base --query "Reservations[*].Instances[*].PublicIpAddress" --output=text)
westmlsinglegpu=$(aws ec2 describe-instances --region us-west-2 --filters Name=tag:Name,Values=mldevgpu --query "Reservations[*].Instances[*].PublicIpAddress" --output=text)

export mldevpublicip
export mlsinglegpu

for session in mldev ipy singlegpu multigpu jpy
do
tmux has-session -t $session 2>/dev/null
if [ $? != 0 ]; then
  if [ $session = 'mldev' ]; then 
  mldevpublicip=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=Kirk" --query "Reservations[*].Instances[*].PublicIpAddress"  --output=text)
  tmux new-session -d -s $session "ssh -i ~/Downloads/tdaws.pem ubuntu@$mldevpublicip" 
  fi
  if [ $session = 'multigpu' ]; then 
  multigpu=$(aws ec2 describe-instances --filters "Name=tag:type,Values=ml-dev-multigpu" --query "Reservations[*].Instances[*].PublicIpAddress"  --output=text)
  if [[ $multigpu = *[!\ ]* ]]; then
    tmux new-session -d -s $session "ssh -i ~/Downloads/tdaws.pem ubuntu@$multigpu" 
    # tmux send-keys -t $session.0 "ssh -i ~/Downloads/tdaws.pem ubuntu@3.95.13.11; tma h" ENTER
    tmux send-keys -t $session "tma h" ENTER
  else
    echo "Did not find any multi gpu instances"
  fi
  fi
  if [ $session = 'singlegpu' ]; then 
  tmux new-session -d -s $session "ssh -i ~/Downloads/tdaws.pem ubuntu@$eastmlsinglegpu"
  fi
  if [ $session = 'wsinglegpu' ]; then 
  tmux new-session -d -s $session "ssh -i ~/Downloads/tdaws.pem ubuntu@$westmlsinglegpu"
  fi
  if [ $session = 'jpy' ]; then 
  tmux new-session -d -s $session "jupyter notebook --no-browser" 
  # tmux send-keys -t $session.0 "jupyter notebook --no-browser" ENTER
  fi
  if [ $session = 'ipy' ]; then 
  tmux new-session -d -s $session "cd ~/twins && ipython"
  # tmux send-keys -t $session.0 "cd ~/twins && ipython" ENTER
  fi
fi
done

