/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20170728 (64-bit version)(RM)
 * Copyright (c) 2000 - 2017 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of ./aml_dump/SSDT-18.aml, Sun Aug 20 00:59:35 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000081 (129)
 *     Revision         0x02
 *     Checksum         0x14
 *     OEM ID           "hack  "
 *     OEM Table ID     "LANC_PRW"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20170728 (538380072)
 */
DefinitionBlock ("", "SSDT", 2, "hack  ", "LANC_PRW", 0x00000000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LANC, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LANC.XPRW, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Method (_SB.PCI0.LANC._PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
    {
        Store (\_SB.PCI0.LANC.XPRW (), Local0)
        Store (Zero, Index (Local0, One))
        Return (Local0)
    }
}

