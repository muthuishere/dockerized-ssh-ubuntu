echo "user user1 password password1"
ssh-keygen -R "[localhost]:5222"
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no user1:password1@localhost -p 5222