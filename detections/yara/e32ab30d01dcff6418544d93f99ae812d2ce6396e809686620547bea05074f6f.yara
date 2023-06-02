
rule PUA_VULN_Driver_ASUSTekComputerInc_ATSZIOsys_ATSZIODriver_rvUm {
	meta:
		description = "Detects vulnerable driver mentioned in LOLDrivers project using VersionInfo values from the PE header - 7ee0c884e7d282958c5b3a9e47f23e13.bin, 17b97fbe2e8834d7ad30211635e1b271.bin, dbf11f3fad1db3eb08e2ee24b5ebfb95.bin, b12d1630fd50b2a21fd91e45d522ba3a.bin, 5a1ee9e6a177f305765f09b0ae6ac1c5.bin"
		author = "Florian Roth"
		reference = "https://github.com/magicsword-io/LOLDrivers"
		hash = "1a4f7d7926efc3e3488758ce318246ea78a061bde759ec6c906ff005dd8213e5"
		hash = "0da746e49fd662be910d0e366934a7e02898714eaaa577e261ab40eb44222b5c"
		hash = "e32ab30d01dcff6418544d93f99ae812d2ce6396e809686620547bea05074f6f"
		hash = "01e024cb14b34b6d525c642a710bfa14497ea20fd287c39ba404b10a8b143ece"
		hash = "ecfc52a22e4a41bf53865b0e28309411c60af34a44e31a5c53cdc8c5733e8282"
		date = "2023-05-31"
		score = 50
	strings:
		$ = { 00460069006c0065004400650073006300720069007000740069006f006e[1-8]004100540053005a0049004f0020004400720069007600650072 } /* FileDescription ATSZIO Driver */
		$ = { 0043006f006d00700061006e0079004e0061006d0065[1-8]004100530055005300540065006b00200043006f006d0070007500740065007200200049006e0063002e } /* CompanyName ASUSTek Computer Inc. */
		$ = { 00460069006c006500560065007200730069006f006e[1-8]0030002e0032002e0031002e0037 } /* FileVersion 0.2.1.7 */
		$ = { 00500072006f006400750063007400560065007200730069006f006e[1-8]0030002e0032002e0031002e0037 } /* ProductVersion 0.2.1.7 */
		$ = { 0049006e007400650072006e0061006c004e0061006d0065[1-8]004100540053005a0049004f002e007300790073 } /* InternalName ATSZIO.sys */
		$ = { 00500072006f0064007500630074004e0061006d0065[1-8]004100540053005a0049004f0020004400720069007600650072 } /* ProductName ATSZIO Driver */
		$ = { 004f0072006900670069006e0061006c00460069006c0065006e0061006d0065[1-8]004100540053005a0049004f002e007300790073 } /* OriginalFilename ATSZIO.sys */
		$ = { 004c006500670061006c0043006f0070007900720069006700680074[1-8]0043006f0070007900720069006700680074002000280043002900200032003000310032 } /* LegalCopyright Copyright (C) 2012 */
	condition:
		all of them
}