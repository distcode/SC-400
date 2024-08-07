# Additional Information

Here you will find some information, which should help you understand or configure IP in M365.

## Records Management

Records management allows you to declare labeled information as record. In opposite to a labeled information by Data lifecycle Management, a record cannot be changed ( ... and some more).

Records could be declared by a Records Management Label (File Plan). You will find the following option in the label creation wizard page _'Choose what happens during the retention period'_:

![image](./.images/RecMgmtPic1.png)

The option _Unlock this record by default_ allows you to modify the labeled information without changing this attribute first.

But it is also possible to make a file unchangeable if you use the following setting:

![image](./.images/RecMgmtPic2.png)

This third setting must be enabled via PowerShell first:

```PowerShell
Connect-IPPSSesion
Set-RegulatoryComplianceUI -Enabled $true
```

The impact is shown in this [link](https://learn.microsoft.com/en-us/purview/records-management#compare-restrictions-for-what-actions-are-allowed-or-blocked)

> :warning:Warning: It is important to know the implications of record labels, otherwise you may not be able to change or delete data.
