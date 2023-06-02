
rule PUA_VULN_Driver_ATITechnologiesInc_atillksys_ATIDiagnostics_3tbh {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 26d973d6d9a0d133dfda7d8c1adc04b7.bin, 27d21eeff199ed555a29ca0ea4453cfb.bin, 62f02339fe267dc7438f603bfb5431a1.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "ad40e6d0f77c0e579fb87c5106bf6de3d1a9f30ee2fbf8c9c011f377fa05f173"
		hash = "38bb9751a3a1f072d518afe6921a66ee6d5cf6d25bc50af49e1925f20d75d4d7"
		hash = "5c04c274a708c9a7d993e33be3ea9e6119dc29527a767410dbaf93996f87369a"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]00410054004900200044006900610067006e006f007300740069006300730020004800610072006400770061007200650020004100620073007400720061006300740069006f006e0020005300790073 } /* FileDescription ATI Diagnostics Hardware Abstraction Sys */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]00410054004900200054006500630068006e006f006c006f006700690065007300200049006e0063002e } /* CompanyName ATI Technologies Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0035002e00310031002e0039002e0030 } /* FileVersion 5.11.9.0 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0035002e00310031002e0039002e0030 } /* ProductVersion 5.11.9.0 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]006100740069006c006c006b00360034002e007300790073 } /* InternalName atillk64.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]00410054004900200044006900610067006e006f00730074006900630073 } /* ProductName ATI Diagnostics */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]006100740069006c006c006b00360034002e007300790073 } /* OriginalFilename atillk64.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f00700079007200690067006800740020002800430029002000410054004900200054006500630068006e006f006c006f006700690065007300200049006e0063002e002c00200032003000300033 } /* LegalCopyright Copyright (C) ATI Technologies Inc., 2003 */
	condition:
		all of them
}