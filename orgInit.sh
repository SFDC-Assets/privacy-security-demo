sf demoutil org create scratch -f config/project-scratch-def.json -d 5 -s -p privacy -e center.demo

# Install Privacy Center
# sf package install --package=04t3t000002lfh2 --wait 15 --noprompt

sf shane user psl -n 'Privacy Center User' -g User -l User
# sf org assign permset -n PrivacyCenter

sf project deploy start 

sf demoutil user password set -p salesforce1 -g User -l User

# sf automig load --inputdir ./cmdt

sf org open
