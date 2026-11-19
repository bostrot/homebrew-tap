cask "wsl-manager" do
  version "2.6.1"
  sha256 "ba05c281cb5887e9a3c2e1f740c96e79175c5dda017584f707e016e0f2dfe2a7"

  url "https://github.com/bostrot/wsl2-distro-manager/releases/download/v#{version}/wsl2-distro-manager-v#{version}-macos.dmg"
  name "WSL Manager"
  desc "Manage WSL distros and native Linux VMs, with an AI workspace and MCP server"
  homepage "https://wslmanager.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "WSL Manager.app"

  uninstall quit: "com.bostrot.wsl2distromanager"

  zap trash: [
    "~/Library/Application Support/WSLManager",
    "~/Library/Preferences/com.bostrot.wsl2distromanager.plist",
    "~/Library/Saved Application State/com.bostrot.wsl2distromanager.savedState",
  ]
end
