﻿$LDAPInsecureBindings = @{
    Name   = 'DCLDAPInsecureBindings'
    Enable = $true
    Scope  = 'DC'
    Source = @{
        Name           = 'LDAP Insecure Bindings'
        Data           = {
            Get-WinADLDAPBindingsSummary -IncludeDomainControllers $DomainController -WarningAction SilentlyContinue
        }
        Details        = [ordered] @{
            Area        = 'LDAP'
            Category    = 'Security'
            Description = 'LDAP channel binding and LDAP signing provide ways to increase the security of network communications between an Active Directory Domain Services (AD DS) or an Active Directory Lightweight Directory Services (AD LDS) and its clients. There is a vulerability in the default configuration for Lightweight Directory Access Protocol (LDAP) channel binding and LDAP signing and may expose Active directory domain controllers to elevation of privilege vulnerabilities.  Microsoft Security Advisory ADV190023 address the issue by recommending the administrators enable LDAP channel binding and LDAP signing on Active Directory Domain Controllers. This hardening must be done manually until the release of the security update that will enable these settings by default.'
            Resolution  = 'Make sure to remove any Clients performing simple or unsigned bindings.'
            Importance  = 10
            Resources   = @(
                'https://evotec.xyz/four-commands-to-help-you-track-down-insecure-ldap-bindings-before-march-2020/'
                'https://support.microsoft.com/en-us/topic/2020-ldap-channel-binding-and-ldap-signing-requirements-for-windows-kb4520412-ef185fb8-00f7-167d-744c-f299a66fc00a'
                'https://support.microsoft.com/en-us/help/4520412/2020-ldap-channel-binding-and-ldap-signing-requirement-for-windows'
            )
        }
        ExpectedOutput = $false
    }
    Tests  = [ordered] @{
        SimpleBinds   = @{
            Enable     = $true
            Name       = 'Simple binds performed without SSL/TLS is 0'
            Parameters = @{
                Property      = 'Number of simple binds performed without SSL/TLS'
                ExpectedValue = 0
                OperationType = 'eq'
            }
        }
        UnsignedBinds = @{
            Enable     = $true
            Name       = 'Negotiate/Kerberos/NTLM/Digest binds performed without signing is 0'
            Parameters = @{
                Property      = 'Number of Negotiate/Kerberos/NTLM/Digest binds performed without signing'
                ExpectedValue = 0
                OperationType = 'eq'
            }
        }

    }
}