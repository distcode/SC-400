# Role Groups and Permissions for Microsoft Purview

Some important role groups important for Microsoft Purview. Follow this [link](https://learn.microsoft.com/en-us/defender-office-365/scc-permissions#role-groups-in-microsoft-defender-for-office-365-and-microsoft-purview-compliance) to see all documented permissions in MS documentation.

## Information Protection

| Role Group | Description | Default roles assigned |
| --- | --- | --- |
| Information Protection | Full control over all information protection features, including sensitivity labels and their policies, DLP, all classifier types, activity and content explorers, and all related reports. | Data Classification Content Viewer <br> Data Classification List Viewer <br> Data Map Reader <br> Information Protection Admin <br> Information Protection Analyst <br> Information Protection Investigator <br> Information Protection Reader <br> Insights Reader <br> Purview Evaluation Administrator <br> Scan Reader <br> Source Reader |
| Information Protection Admins | Create, edit, and delete DLP policies, sensitivity labels and their policies, and all classifier types. Manage endpoint DLP settings and simulation mode for auto-labeling policies. | Data Map Reader <br> Information Protection Admin <br> Insights Reader <br> Purview Evaluation Administrator <br> Scan Reader <br> Source Reader |
| Information Protection Analysts | Access and manage DLP alerts and activity explorer. View-only access to DLP policies, sensitivity labels and their policies, and all classifier types. | Data Classification List Viewer <br> Data Map Reader <br> Information Protection Analyst <br> Insights Reader <br> Purview Evaluation Administrator |
| Information Protection Investigators | Access and manage DLP alerts, activity explorer, and content explorer. View-only access to DLP policies, sensitivity labels and their policies, and all classifier types. | Data Classification Content Viewer <br> Data Classification List Viewer <br> Data Map Reader <br> Information Protection Analyst <br> Information Protection Investigator <br> Insights Reader <br> Purview Evaluation Administrator <br> Scan Reader <br> Source Reader |
| Information Protection Readers | View-only access to reports for DLP policies and sensitivity labels and their policies. | Information Protection Reader |
| Exact Data Match Upload Admins | Upload data for Exact Data Match. | Exact Data Match Upload Admin |
| Content Explorer Content Viewer | View the contents files in Content explorer. | Data Classification Content Viewer |
| Content Explorer List Viewer | View all items in Content explorer in list format only. | Data Classification List Viewer |
