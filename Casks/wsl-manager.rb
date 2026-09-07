cask "wsl-manager" do
  version "2.0.1"
  sha256 "c628af3a6e7f16ff82436bdfb7cb5c8dcb2856ffce8f4748020339182d188100"

  url "https://github.com/bostrot/wsl2-distro-manager/releases/download/v#{version}/wsl2-distro-manager-v#{version}-macos.dmg"
  name "WSL Manager"
  desc "Manage WSL distros and native Linux VMs, with an AI workspace and MCP server"
  homepage "https://wslmanager.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "WSL Manager.app"

  zap trash: [
    "~/Library/Application Support/WSLManager",
    "~/Library/Preferences/com.bostrot.wsl2distromanager.plist",
    "~/Library/Saved Application State/com.bostrot.wsl2distromanager.savedState",
  ]
end
