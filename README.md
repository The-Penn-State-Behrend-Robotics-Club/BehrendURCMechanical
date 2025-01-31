# BehrendURC
This is where all CAD and Code files for URC should be stored

## File naming convention

SubteamName-Name

Subteam Name<br />
MI - Misc<br />
CH - Chassis<br />
CH2 - Chassis version 2<br />
CH3 - Chassis version 3<br />
AR - Arm<br />
SC - Science<br />
CO - Controls<br />
AD - Adminstrative/Paperwork<br />


Short name<br />
Give a breif name for the part in camelCase, there should be no spaces in the part name<br />

Examples<br />
For the gripper assembly on the arm:
AR-gripper.iam<br />

For the gearbox bracket for the chassis v3:
CH3-driveMotorGearbox.ipt<br />

## CAD guidelines
- Always follow the naming convention, if it doesn't fit a use case bring it up at a meeting
- GitHub will handle version control, so old versions of files can be replaced
- Make all sketches fully constrained
- Name features within parts, other people need to be able to follow your work
- If an assembly is giving you errors, fix the errors.  Don't just live with them
- Before editing an assembly, consult the rest of your subteam
- Give all parts a material so rough weight calculation can be completed
- Set files to inches initially, but when needed type in mm to convert while dimensioning
- All 3D modeling should be done in  the newest version of Inventor
