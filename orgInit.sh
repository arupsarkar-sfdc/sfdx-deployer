# Create the scratch org (uncomment for the SFDX Deployer)
sfdx shane:org:create -f config/project-scratch-def.json -d 7 -s -n --userprefix admin --userdomain sfdc.ninjas

# Push the metadata into the new scratch org.
sfdx force:source:push

# Set the default password.
sfdx shane:user:password:set -g User -l User -p sfdx1234

# Open the demo org.
sfdx force:org:open
