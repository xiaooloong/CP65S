/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-15.aml, Wed Aug 16 21:41:46 2017
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000D0 (208)
 *     Revision         0x01
 *     Checksum         0x80
 *     OEM ID           "HASEE "
 *     OEM Table ID     "PARADISE"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120711 (538052369)
 */
DefinitionBlock ("", "SSDT", 1, "HASEE ", "PARADISE", 0x00003000)
{
    /*
     * External declarations were imported from
     * a reference file -- refs.txt
     */

    External (_GPE.MMTB, MethodObj)    // Imported: 0 Arguments
    External (_GPE.VHOV, MethodObj)    // Imported: 3 Arguments
    External (_SB_.PCI0.GFX0.DD02._BCM, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECMD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECRD, MethodObj)    // Imported: 1 Arguments
    External (_SB_.PCI0.LPCB.H_EC.ECWT, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.PEG0.PEGP.SGPO, MethodObj)    // Imported: 2 Arguments
    External (_SB_.PCI0.SAT0.SDSM, MethodObj)    // Imported: 4 Arguments
    External (_SB_.PCI0.XHC_.RHUB.TPLD, MethodObj)    // Imported: 2 Arguments
    External (MDBG, MethodObj)    // Imported: 1 Arguments

    Scope (\_SB)
    {
        Device (IFFS)
        {
            OperationRegion (FFSN, SystemMemory, 0xB17A9E98, 0x0008)
            Field (FFSN, AnyAcc, Lock, Preserve)
            {
                FFSA,   8, 
                FFSS,   8, 
                FFST,   16, 
                FFSP,   32
            }

            Name (_HID, EisaId ("INT3392"))  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0C02"))  // _CID: Compatible ID
            Method (GFFS, 0, Serialized)
            {
                Return (FFSS)
            }

            Method (SFFS, 1, Serialized)
            {
                And (Arg0, FFSA, FFSS)
                Return (FFSS)
            }

            Method (GFTV, 0, Serialized)
            {
                Return (FFST)
            }

            Method (SFTV, 1, Serialized)
            {
                If (LLessEqual (Arg0, 0x05A0))
                {
                    Store (Arg0, FFST)
                }
                Else
                {
                    And (FFSS, 0xFFFE, FFSS)
                    Store (0x0A, FFST)
                }

                Return (FFST)
            }
        }
    }
}

