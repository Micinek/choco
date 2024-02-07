# Specify the list of apps to install as a space-separated string
$apps = "adobereader googlechrome notepadplusplus.install 7zip.install thunderbird teamviewer vlc winrar totalcommander"

# Prompt the user if they want to install a VPN
$installVPN = Read-Host "Do you want to install a VPN? (yes/no)"
if ($installVPN -eq "yes") {
    # Prompt the user to choose between WireGuard and Tailscale
    $vpnChoice = Read-Host "Which VPN do you want to install? (WireGuard/Tailscale)"
    if ($vpnChoice -eq "WireGuard") {
        # Add WireGuard to the list of apps to install
        $apps += " wireguard"
    }
    elseif ($vpnChoice -eq "Tailscale") {
        # Add Tailscale to the list of apps to install
        $apps += " tailscale"

        # Prompt the user for the Tailscale authentication key
        $tailscaleKey = Read-Host "Enter your Tailscale authentication key"

        if ([string]::IsNullOrWhiteSpace($tailscaleKey)) {
            Write-Host "No Tailscale authentication key provided. Installing Tailscale without authentication key."
        } else {
            # Add the provided authentication key to the Tailscale install command
            $apps += " --authkey $tailscaleKey"
        }
    }
}

# Install the apps using Chocolatey
Write-Host "Installing apps: $apps"
Invoke-Expression "choco install -y $apps"
