cask "hashr" do
  version "21.11.4"
  desc "An easy to use file hashing utility working with multiple algorithms. Powered by React & Material UI, built as a cross-plaform desktop application using Electron."
  homepage "https://github.com/KoBionic/hashr"
  url "https://github.com/KoBionic/hashr/releases/download/#{version}/HashR-#{version}.dmg"
  name "HashR"
  app "HashR.app"
  sha256 "5f7382e4e9da85a8322581bb0bbea7a584e343360d153159849a61ecd6536178"

  zap trash: [
    "~/Library/Application Support/HashR",
    "~/Library/Preferences/com.kobionic.hashr.plist",
    "~/Library/Saved Application State/com.kobionic.hashr.savedState",
  ]
end
