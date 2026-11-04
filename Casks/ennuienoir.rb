cask "ennuienoir" do
  version "0.13.0"
  sha256 "6bf6087b56033a3cc9d5e0817b3efa535862b3e0f7602a67ca8fc04d840ae1dd"

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
