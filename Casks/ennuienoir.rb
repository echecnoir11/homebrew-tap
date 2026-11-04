cask "ennuienoir" do
  version "0.16.0"
  sha256 "f5621f75cf6a69059c38645b847c432c6e0a86d7d123cbba4253e04a7881c83a"

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
