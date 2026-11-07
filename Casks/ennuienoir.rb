cask "ennuienoir" do
  version "0.33.1"
  sha256 "cf53add298bb356d73219b6ac8f90cf0208c4d16524b9ebebe012501db96acd0"

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
