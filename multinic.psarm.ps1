Arm {
    
    "nic1", "nic2", "nic3" | Foreach-Object {
        Resource $_ -Namespace Microsoft.Network -Type publicIPAddresses -ApiVersion 2020-08-01 -location AustraliaEast {
            Properties {
                publicIPAllocationMethod Dynamic
            } 
        }
    }
}