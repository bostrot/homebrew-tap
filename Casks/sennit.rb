cask "sennit" do
  version "1.0.24"
  sha256 "d6c3b0ec5a3241acc9f0262a88ef02a54e79fda6af4729bb804dd00a6925fe68"

  url "https://github.com/bostrot/sennit/releases/download/v#{version}/Sennit-#{version}-macos.zip"
  name "Sennit"
  desc "Unified messenger for Matrix and mautrix bridges"
  homepage "https://erictrenkel.com/apps/sennit/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Sennit.app"

  uninstall quit: "com.bostrot.weft"

  zap trash: [
    "~/Library/Application Scripts/com.bostrot.weft",
    "~/Library/Application Scripts/com.bostrot.weft.WeftWidget",
    "~/Library/Application Support/com.bostrot.weft",
    "~/Library/Caches/com.bostrot.weft",
    "~/Library/Containers/com.bostrot.weft",
    "~/Library/Containers/com.bostrot.weft.WeftWidget",
    "~/Library/Group Containers/D4U2L824A5.group.com.bostrot.weft",
    "~/Library/Preferences/com.bostrot.weft.plist",
    "~/Library/Saved Application State/com.bostrot.weft.savedState",
  ]
end
