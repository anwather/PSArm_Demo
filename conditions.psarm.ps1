Param(
    [System.Boolean]$secondNic
)

Arm {
    
    Resource nic1 -Namespace Microsoft.Network -Type publicIPAddresses -ApiVersion 2020-08-01 -location AustraliaEast {
        Properties {
            publicIPAllocationMethod Dynamic
        } 
    }
    if ($secondNic) {
        Resource nic1 -Namespace Microsoft.Network -Type publicIPAddresses -ApiVersion 2020-08-01 -location AustraliaEast {
            Properties {
                publicIPAllocationMethod Dynamic
            } 
        }  
    }
    
}