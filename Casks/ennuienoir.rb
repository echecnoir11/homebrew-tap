cask "ennuienoir" do
  version "0.38.10"
  sha256 "8b46c22987b02553b6ecd1498339533ee562e137d38da62b76e41a6aad6b2fcd"

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

