﻿$Script:TestimoConfiguration = [ordered] @{
    Exclusions        = [ordered] @{
        Domains           = @()
        DomainControllers = @()
    }
    Inclusions        = [ordered] @{
        Domains           = @()
        DomainControllers = @()
    }
    Forest            = [ordered]@{
        Backup               = $Backup
        Replication          = $Replication # this should work 2012+
        ReplicationStatus    = $ReplicationStatus # Thi is based on repadmin / could be useful for Windows 2008R2
        OptionalFeatures     = $OptionalFeatures
        Sites                = $Sites
        SiteLinks            = $SiteLinks
        SiteLinksConnections = $SiteLinksConnections
        Roles                = $ForestFSMORoles
        OrphanedAdmins       = $OrphanedAdmins
        ObjectsWithConflict  = $ObjectsWithConflict
        TombstoneLifetime    = $TombstoneLifetime
    }
    Domain            = [ordered] @{
        Roles                              = $DomainFSMORoles
        WellKnownFolders                   = $WellKnownFolders
        PasswordComplexity                 = $PasswordComplexity
        GroupPolicyMissingPermissions      = $GroupPolicyMissingPermissions
        Trusts                             = $Trusts
        OrphanedForeignSecurityPrincipals  = $OrphanedForeignSecurityPrincipals
        EmptyOrganizationalUnits           = $EmptyOrganizationalUnits
        DNSScavengingForPrimaryDNSServer   = $DNSScavengingForPrimaryDNSServer
        DNSForwaders                       = $DNSForwaders
        DnsZonesAging                      = $DnsZonesAging
        KerberosAccountAge                 = $KerberosAccountAge
        SecurityGroupsAccountOperators     = $SecurityGroupsAccountOperators
        SecurityGroupsSchemaAdmins         = $SecurityGroupsSchemaAdmins
        SecurityUsers                      = $SecurityUsers
        SecurityUsersAcccountAdministrator = $SecurityUsersAcccountAdministrator
        SysVolDFSR                         = $SysVolDFSR
        'DNSZonesForest0ADEL'              = $DNSZonesForest0ADEL
        'DNSZonesDomain0ADEL'              = $DNSZonesDomain0ADEL
        DHCPAuthorized                     = $DHCPAuthorized
        GroupPolicyADM                     = $GroupPolicyADM
        ComputersUnsupported               = $ComputersUnsupported
        ComputersUnsupportedMainstream     = $ComputersUnsupportedMainstream
    }
    DomainControllers = [ordered] @{
        Information                 = $Information
        WindowsRemoteManagement     = $WindowsRemoteManagement
        EventLogs                   = $EventLogs
        OperatingSystem             = $OperatingSystem
        Services                    = $Services
        LDAP                        = $LDAP
        LDAPInsecureBindings        = $LDAPInsecureBindings
        Pingable                    = $Pingable
        Ports                       = $Ports
        RDPPorts                    = $RDPPorts
        RDPSecurity                 = $RDPSecurity
        DiskSpace                   = $DiskSpace
        TimeSettings                = $TimeSettings
        TimeSynchronizationInternal = $TimeSynchronizationInternal
        TimeSynchronizationExternal = $TimeSynchronizationExternal
        NetworkCardSettings         = $NetworkCardSettings
        WindowsUpdates              = $WindowsUpdates
        WindowsRolesAndFeatures     = $WindowsRolesAndFeatures
        DnsResolveInternal          = $DNSResolveInternal
        DnsResolveExternal          = $DNSResolveExternal
        DnsNameServes               = $DNSNameServers
        SMBProtocols                = $SMBProtocols
        SMBShares                   = $SMBShares
        SMBSharesPermissions        = $SMBSharesPermissions
        DFS                         = $DFS
        NTDSParameters              = $NTDSParameters
        GroupPolicySYSVOL           = $GroupPolicySYSVOL
        LanManagerSettings          = $LanManagerSettings
        Diagnostics                 = $Diagnostics
        LanManServer                = $LanManServer
        MSSLegacy                   = $MSSLegacy
        FileSystem                  = $FileSystem
        NetSessionEnumaration       = $NetSessionEnumaration
        ServiceWINRM                = $ServiceWINRM
        UNCHardenedPaths            = $UNCHardenedPaths
    }
    Debug             = [ordered] @{
        ShowErrors = $false
    }
}