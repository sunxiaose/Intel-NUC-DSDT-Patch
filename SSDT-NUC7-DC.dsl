// NUC7 Dawson Canyon model specific SSDT

DefinitionBlock("", "SSDT", 2, "hack", "_NUC7-DC", 0)
{
    Device(RMCF)
    {
        Name(_ADR, 0)   // do not remove

        // AUDL: Audio Layout
        //
        // The value here will be used to inject layout-id for HDEF and HDAU
        // If set to Ones, no audio injection will be done.
        Name(AUDL, 2)

        // FAKH: Fake HDMI Aduio
        //
        // 0: Disable spoofing of HDEF for FakePCIID_Intel_HDMI_Audio.kext
        // 1: Allow spoofing of HDEF for FakePCIID_Intel_HDMI_Audio.kext
        Name(FAKH, 1)
    }

    #include "SSDT-XOSI.dsl"
    #include "SSDT-IGPU.dsl"
    #include "SSDT-USBX.dsl"
    #include "SSDT-USB-NUC7-DC.dsl"
    #include "SSDT-XHC.dsl"
    #include "SSDT-XDCI.dsl"
    #include "SSDT-HDEF.dsl"
    #include "SSDT-PTS.dsl"
}
//EOF
