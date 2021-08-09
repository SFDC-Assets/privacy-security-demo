sfdx shane:org:create -f config/project-scratch-def.json -d 1 -s --userprefix privacy -o center.demo

# Install Privacy Center
sfdx force:package:install --package=04t3t000002zQ6IAAU --wait 15 

sfdx shane:user:psl -n 'Privacy Center User' -g User -l User
sfdx force:user:permset:assign -n PrivacyCenter

sfdx force:source:push

sfdx shane:user:password:set -g User -l User -p salesforce1

sfdx automig:load --inputdir ./cmdt

sfdx force:org:open