# Links collection

---

Learning Path [link](https://learn.microsoft.com/en-us/training/courses/sc-400t00)

Exam SC-400 [link](https://learn.microsoft.com/en-us/credentials/certifications/information-protection-administrator/?practice-assessment-type=certification)
Exam SC-401 (starting June 2025) [link](https://learn.microsoft.com/en-us/credentials/certifications/exams/sc-401/)

SC-400 Labs

+ [link1](https://aka.ms/sc400labs)
+ [link2](https://microsoftlearning.github.io/SC-400T00A-Microsoft-Information-Protection-Administrator/)

GoDeploy LMS [link](https://lms.godeploy.it)

---

## Roles and Role groups in Purview Portal

[link](https://learn.microsoft.com/en-us/defender-office-365/scc-permissions?toc=%2Fpurview%2Ftoc.json&bc=%2Fpurview%2Fbreadcrumb%2Ftoc.json)

> :exclamation: Note: To view the Permissions tab as described in this article, you need to be an admin. Specifically, you need to be assigned the Role Management role, and that role is assigned only to the Organization Management and Purview Administrators role groups by default. The Role Management role also allows you to view, create, and modify role groups.

## Windows Defender in passive Mode

To set Windows Defender in passive mode on your Windows 11 device, follow these steps:

+ Ensure Compatibility: Passive mode is typically used when you have another antivirus program installed. Windows Defender will automatically switch to passive mode if it detects another active antivirus.
+ Check Tamper Protection: You may need to disable Tamper Protection temporarily to make changes. Go to Settings > Privacy & Security > Windows Security > Virus & Threat Protection > Manage Settings, and toggle off Tamper Protection.
+ Modify Registry Settings:

  + Open the Registry Editor (type regedit in the Start menu search bar and press Enter).
  + Navigate to: HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Advanced Threat Protection.
  + Create or edit a DWORD entry named ForceDefenderPassiveMode.
  + Set its value to 1 to enable passive mode.
  + Restart your device for the changes to take effect.

+ Verify the Status: After restarting, check the status of Windows Defender in the Windows Security app to confirm it is in passive mode.

[link](https://learn.microsoft.com/en-us/defender-endpoint/microsoft-defender-antivirus-compatibility#requirements-for-microsoft-defender-antivirus-to-run-in-passive-mode)
