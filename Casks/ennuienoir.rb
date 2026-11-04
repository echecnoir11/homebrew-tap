cask "ennuienoir" do
  version "0.1.0"
  sha256 "3a91ebe1cc272b8ad4c733a22aca5b1ec7a1da33101911cffcfb4b4860875283"

  url "https://github.com/echecnoir11/ennuienoir/releases/download/v#{version}/ennuienoir-#{version}.zip"
  name "@@ennuienoir"
  desc "Experimental video effects: datamosh, pixel sorting, blob tracking, film looks"
  homepage "https://github.com/echecnoir11/ennuienoir"

  livecheck do
    url :url
    strategy :github_latest
  end

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
