echo "user user2 password password2"
ssh-keygen -R "[localhost]:5223"
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no user2:password2@localhost -p 5223