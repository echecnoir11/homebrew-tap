cask "print-dock" do
  version "2.0.0"
  sha256 "48a1660ace52d6715058975e63a6b6259f15d2dc0a863a95e2251427d6450479"

  url "https://github.com/echecnoir11/print-dock/releases/download/v#{version}/print-dock-#{version}.zip"
  name "print@@dock"
  desc "Floating G-code queue with verified microSD transfers and print timers"
  homepage "https://github.com/echecnoir11/print-dock"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "print@@dock.app"

  zap trash: [
    "~/Library/Application Support/print@@dock-ennuienoir",
    "~/Library/Preferences/com.echecnoir.printdock.ennuienoir.plist",
    "~/Library/Saved Application State/com.echecnoir.printdock.ennuienoir.savedState",
  ]

  caveats <<~EOS
    print@@dock is not notarized by Apple. On first launch macOS will block it:
    open System Settings › Privacy & Security and click "Open Anyway".
  EOS
end
