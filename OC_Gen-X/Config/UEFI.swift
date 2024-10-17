import Foundation

struct uefi: Codable {
    var apfs: apfs
    var appleInput: appleInput
    var audio: audio
    var connectDrivers: Bool = true
    var drivers: [uefiDrivers]
    var input: input
    var output: output
    var protocols: protocols
    var quirks: uQuirks
    var reservedMemory: [reservedMemory]
    
    enum CodingKeys: String, CodingKey {
        case apfs = "APFS"
        case appleInput = "AppleInput"
        case audio = "Audio"
        case connectDrivers = "ConnectDrivers"
        case drivers = "Drivers"
        case input = "Input"
        case output = "Output"
        case protocols = "ProtocolOverrides"
        case quirks = "Quirks"
        case reservedMemory = "ReservedMemory"
    }
}

struct apfs: Codable {
    var enableJumpstart: Bool = true
    var globalConnect: Bool = false
    var hideVerbose: Bool = true
    var jumpstartHotPlug: Bool = false
    var minDate: Int = 0
    var minVersion: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case enableJumpstart = "EnableJumpstart"
        case globalConnect = "GlobalConnect"
        case hideVerbose = "HideVerbose"
        case jumpstartHotPlug = "JumpstartHotPlug"
        case minDate = "MinDate"
        case minVersion = "MinVersion"
    }
}

struct appleInput: Codable {
    var appleEvent: String = "Builtin"
    var customDelays: Bool = false
    var graphicsInputMirroring: Bool = true
    var keyInitialDelay: Int = 0
    var keySubsequentDelay: Int = 5
    var pointerPollMask: Int = -1
    var pointerPollMax: Int = 80
    var pointerPollMin: Int = 10
    var pointerSpeedDiv: Int = 1
    var pointerSpeedMul: Int = 1
    
    enum CodingKeys: String, CodingKey {
        case appleEvent = "AppleEvent"
        case customDelays = "CustomDelays"
        case graphicsInputMirroring = "GraphicsInputMirroring"
        case keyInitialDelay = "KeyInitialDelay"
        case keySubsequentDelay = "KeySubsequentDelay"
        case pointerPollMask = "PointerPollMask"
        case pointerPollMax = "PointerPollMax"
        case pointerPollMin = "PointerPollMin"
        case pointerSpeedDiv = "PointerSpeedDiv"
        case pointerSpeedMul = "PointerSpeedMul"
    }
}

struct audio: Codable {
    var audioCodec: Int = 0
    var audioDevice: String = "PciRoot(0x0)/Pci(0x1b,0x0)"
    var audioOutMask: Int = 0
    var audioSupport: Bool = false
    var disconnectHda: Bool = false
    var maximumGain: Int = -15
    var minimumAssistGain: Int = -30
    var minimumAudibleGain: Int = -55
    var playChime: String = "Auto"
    var resetTrafficClass: Bool = false
    var setupDelay: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case audioCodec = "AudioCodec"
        case audioDevice = "AudioDevice"
        case audioOutMask = "AudioOutMask"
        case audioSupport = "AudioSupport"
        case disconnectHda = "DisconnectHda"
        case maximumGain = "MaximumGain"
        case minimumAssistGain = "MinimumAssistGain"
        case minimumAudibleGain = "MinimumAudibleGain"
        case playChime = "PlayChime"
        case resetTrafficClass = "ResetTrafficClass"
        case setupDelay = "SetupDelay"
    }
}

struct uefiDrivers: Codable {
    var arguments: String = ""
    var comment: String = ""
    var enabled: Bool = false
    var path: String = ""
    
    enum CodingKeys: String, CodingKey {
        case arguments = "Arguments"
        case comment = "Comment"
        case enabled = "Enabled"
        case path = "Path"
    }
}

struct input: Codable {
    var keyFiltering: Bool = false
    var keyForgetThreshold: Int = 5
    var keySupport: Bool = true
    var keySupportMode: String = "Auto"
    var keySwap: Bool = false
    var pointerSupport: Bool = false
    var pointerSupportMode: String = "ASUS"
    var timerResolution: Int = 50000
    
    enum CodingKeys: String, CodingKey {
        case keyFiltering = "KeyFiltering"
        case keyForgetThreshold = "KeyForgetThreshold"
        case keySupport = "KeySupport"
        case keySupportMode = "KeySupportMode"
        case keySwap = "KeySwap"
        case pointerSupport = "PointerSupport"
        case pointerSupportMode = "PointerSupportMode"
        case timerResolution = "TimerResolution"
    }
}

struct output: Codable {
    var clearScreenOnModeSwitch: Bool = false
    var consoleMode: String = ""
    var directGopRendering: Bool = false
    var forceResolution: Bool = false
    var gopPassThrough: String = "Disabled"
    var ignoreTextInGraphics: Bool = false
    var provideConsoleGop: Bool = true
    var reconnectGraphicsOnConnect: Bool = false
    var reconnectOnResChange: Bool = false
    var replaceTabWithSpace: Bool = false
    var resolution: String = "Max"
    var sanitiseClearScreen: Bool = false
    var textRenderer: String = "BuiltinGraphics"
    var uIScale: Int = 0
    var ugaPassThrough: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case clearScreenOnModeSwitch = "ClearScreenOnModeSwitch"
        case consoleMode = "ConsoleMode"
        case directGopRendering = "DirectGopRendering"
        case forceResolution = "ForceResolution"
        case gopPassThrough = "GopPassThrough"
        case ignoreTextInGraphics = "IgnoreTextInGraphics"
        case provideConsoleGop = "ProvideConsoleGop"
        case reconnectGraphicsOnConnect = "ReconnectGraphicsOnConnect"
        case reconnectOnResChange = "ReconnectOnResChange"
        case replaceTabWithSpace = "ReplaceTabWithSpace"
        case resolution = "Resolution"
        case sanitiseClearScreen = "SanitiseClearScreen"
        case textRenderer = "TextRenderer"
        case uIScale = "UIScale"
        case ugaPassThrough = "UgaPassThrough"
    }
}

struct protocols: Codable {
    var appleAudio: Bool = false
    var appleBootPolicy: Bool = false
    var appleDebugLog: Bool = false
    var appleEg2Info: Bool = false
    var appleFramebufferInfo: Bool = false
    var appleImageConversion: Bool = false
    var appleImg4Verification: Bool = false
    var appleKeyMap: Bool = false
    var appleRtcRam: Bool = false
    var appleSecureBoot: Bool = false
    var appleSmcIo: Bool = false
    var appleUserInterfaceTheme: Bool = false
    var dataHub: Bool = false
    var deviceProperties: Bool = false
    var firmwareVolume: Bool = true
    var hashServices: Bool = false
    var osInfo: Bool = false
    var unicodeCollation: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case appleAudio = "AppleAudio"
        case appleBootPolicy = "AppleBootPolicy"
        case appleDebugLog = "AppleDebugLog"
        case appleEg2Info = "AppleEg2Info"
        case appleFramebufferInfo = "AppleFramebufferInfo"
        case appleImageConversion = "AppleImageConversion"
        case appleImg4Verification = "AppleImg4Verification"
        case appleKeyMap = "AppleKeyMap"
        case appleRtcRam = "AppleRtcRam"
        case appleSecureBoot = "AppleSecureBoot"
        case appleSmcIo = "AppleSmcIo"
        case appleUserInterfaceTheme = "AppleUserInterfaceTheme"
        case dataHub = "DataHub"
        case deviceProperties = "DeviceProperties"
        case firmwareVolume = "FirmwareVolume"
        case hashServices = "HashServices"
        case osInfo = "OSInfo"
        case unicodeCollation = "UnicodeCollation"
    }
}

struct uQuirks: Codable {
    var activateHpetSupport: Bool = false
    var disableSecurityPolicy: Bool = false
    var enableVectorAcceleration: Bool = true
    var enableVmx: Bool = false
    var exitBootServicesDelay: Int = 0
    var forceOcWriteFlash: Bool = false
    var forgeUefiSupport: Bool = false
    var ignoreInvalidFlexRatio: Bool = false
    var releaseUsbOwnership: Bool = false
    var reloadOptionRoms: Bool = false
    var requestBootVarRouting: Bool = true
    var resizeGpuBars: Int = -1
    var tscSyncTimeout: Int = 0
    var unblockFsConnect: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case activateHpetSupport = "ActivateHpetSupport"
        case disableSecurityPolicy = "DisableSecurityPolicy"
        case enableVectorAcceleration  = "EnableVectorAcceleration"
        case enableVmx = "EnableVmx"
        case exitBootServicesDelay = "ExitBootServicesDelay"
        case forceOcWriteFlash = "ForceOcWriteFlash"
        case forgeUefiSupport = "ForgeUefiSupport"
        case ignoreInvalidFlexRatio = "IgnoreInvalidFlexRatio"
        case releaseUsbOwnership = "ReleaseUsbOwnership"
        case reloadOptionRoms = "ReloadOptionRoms"
        case requestBootVarRouting = "RequestBootVarRouting"
        case resizeGpuBars = "ResizeGpuBars"
        case tscSyncTimeout = "TscSyncTimeout"
        case unblockFsConnect = "UnblockFsConnect"
    }
}

struct reservedMemory: Codable {
}
