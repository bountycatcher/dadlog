# Silent script to create an exclusive folder and add it to Defender exclusions

$folderPath = "C:\Test"

# Check if folder exists; if not, create it
if (!(Test-Path -Path $folderPath)) {
    New-Item -ItemType Directory -Path $folderPath -Force | Out-Null
}

# Add to Windows Defender exclusion list silently
try {
    Add-MpPreference -ExclusionPath $folderPath
} catch {
    # Suppress any error (e.g., if already excluded or no permissions)
}
