# BehrendURC
This is where all CAD and Code files for URC should be stored

## File naming convention

SubteamName-FileType-RevisionNumber-Name

Subteam Name<br />
MI - Misc<br />
CH - Chassis<br />
AP - Aperatus (Arm)<br />
SC - Science<br />
CO - Controls<br />
AD - Adminstrative/Paperwork<br />

File Type<br />
0 - Assembly<br />
1 - Part<br />
2 - Drawing<br />
3 - Paperwork<br />
9 - Other<br />

Revision Number<br />
Start with 01, increase by 1 with every iteration<br />

Short name<br />
Give a breif name for the part in camelCase, there should be no spaces in the part name<br />

Examples<br />
For the 3rd revision of the gripper assembly on the arm:
AP-0-03-gripper.iam<br />

For the 1st revision of a gearbox bracket for the chassis:
CH-1-01-driveMotorGearbox.ipt<br />

## CAD guidelines
- Always follow the naming convention, if it doesn't fit a use case bring it up at a meeting
- GitHub will handle version control, so old versions of files can be replaced
- Make all sketchs fully contrained
- Name features within parts, other people need to be able to follow your work
- If an assembly is giving you errors, fix the errors.  Don't just live with them
- Before editing an assembly, consult the rest of your subteam
- Give all parts a material so rough weight calculation can be completed
