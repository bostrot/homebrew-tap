cask "wsl-manager" do
  version "2.0.1"
  sha256 "d2fc82b9e6e3a39ecb38c18a084a65a200850e2b24e74a247b39e7bbc173aea3"

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
