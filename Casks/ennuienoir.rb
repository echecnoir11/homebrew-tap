cask "ennuienoir" do
  version "0.36.0"
  sha256 "bf0b55e3aa01a16ac4b0d768d48837a929f8f513557c8c848dd8ff30ffa7a7c8"

  url "https://releases.ennuienoir.app/#{version}/ennuienoir-#{version}.zip"
  name "@@ennuienoir"
  desc "Experimental video effects: datamosh, pixel sorting, blob tracking, film looks"
  homepage "https://ennuienoir.app"

  livecheck do
    url "https://ennuienoir.app/updates/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  depends_on macos: :sequoia

  app "@@ennuienoir.app"

  zap trash: [
    "~/Library/Application Support/ennuienoir",
    "~/Library/Caches/ennuienoir",
    "~/Library/Preferences/com.echecnoir.ennuienoir.plist",
    "~/Library/Saved Application State/com.echecnoir.ennuienoir.savedState",
  ]

  caveats <<~EOS
    @@ennuienoir is not notarized by Apple. On first launch macOS will block it:
    open System Settings › Privacy & Security and click "Open Anyway".
  EOS
end
