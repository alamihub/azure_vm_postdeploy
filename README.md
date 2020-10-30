### Linux script to set root password after Azure VM deployement
#### consider that default time for custom script exectution is 90 min
#### ${rootPass} is passed as argument to script and we call it with $1 (you can add arguments as many as you want $2....)

### add this to your body request:
                "settings": {
                    "fileUris": ["https://<YOUR_BUPLIC_URL>/SetRootPassword.sh"],
                    "commandToExecute": `./SetRootPassword.sh ${rootPass}`
                }

####1. [How to Create Virtual Machine Extension using Rest-api](https://docs.microsoft.com/en-us/rest/api/compute/virtualmachineextensions/createorupdate)



