cask "hashr" do
  version "21.12.0"
  desc "An easy to use file hashing utility working with multiple algorithms. Powered by React & Material UI, built as a cross-plaform desktop application using Electron."
  homepage "https://github.com/KoBionic/hashr"
  url "https://github.com/KoBionic/hashr/releases/download/#{version}/HashR-#{version}.dmg"
  name "HashR"
  app "HashR.app"
  sha256 "368f5eb9331b4ad1e613e6bda6cff30073530c900adf751106a65dae2913a763"

  zap trash: [
    "~/Library/Application Support/HashR",
    "~/Library/Preferences/com.kobionic.hashr.plist",
    "~/Library/Saved Application State/com.kobionic.hashr.savedState",
  ]
end
