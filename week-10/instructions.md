**SECTION A**

Provision a VM to run on a Linux OS of either Ubuntu or Redhat Variant. With the following features catered for: 

A. The private IP of the VM should be a /16 Subnet Mask 

B. Enable two modes of Login - web and SSH on the provisioned VM (attach screenshot of your successful login via the two modes to folder `/root/Team_Name/Azure-VM_Login_Lab`). 

C. The VM should be on auto Shutdown mode with the shutdown time configured on the agreed time and a log should be uploaded on the VM confirm the shutdown policy is active.

**SECTION B** 

- **Configure Network Security Group (NSG):** Implement a Network Security Group to control inbound and outbound traffic to the VM. Allow traffic on ports 80 (HTTP) and 22 (SSH) for both inbound and outbound. Deny all other inbound and outbound traffic.

- **Attach Data Disk:** Provision an additional data disk of size 5GB and attach it to the VM. Ensure that the data disk is mounted and accessible on the VM.

- **Implement Azure Key Vault Integration:** Store sensitive information, such as SSH private key or password, in Azure Key Vault. Configure the VM to retrieve these secrets securely during the provisioning process.

- **Enable Azure Monitor:** Configure Azure Monitor for the VM to collect and analyze performance data. Set up an alert for high CPU usage, and ensure the alert notification is sent to a specified email address.

- **Implement Tagging:** Apply appropriate tags to the VM for organizational purposes. Use tags such as "Environment," "Owner," and "Cost Center" with relevant values.

- **Implement Azure Policy:** Create an Azure Policy that enforces a naming convention for all resources within the Azure subscription. Ensure that the VM adheres to this naming convention.

- **Backup Configuration:** Configure Azure Backup for the VM with a daily backup schedule. Verify that the backup has been successfully created.

- **Implement Azure Update Management:** Configure Azure Update Management to ensure that the VM receives regular updates. Confirm that the VM is compliant with the update policy.