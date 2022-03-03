cask "hashr" do
  version "21.12.0"
  desc "An easy to use file hashing utility working with multiple algorithms. Powered by React & Material UI, built as a cross-plaform desktop application using Electron."
  homepage "https://github.com/KoBionic/hashr"
  name "HashR"
  app "HashR.app"

  if Hardware::CPU.intel?
    url "https://github.com/KoBionic/hashr/releases/download/#{version}/HashR-#{version}.dmg"
    sha256 ""
  end
  if Hardware::CPU.arm?
    url "https://github.com/KoBionic/hashr/releases/download/#{version}/HashR-#{version}-arm64.dmg"
    sha256 ""
  end

  zap trash: [
    "~/Library/Application Support/HashR",
    "~/Library/Preferences/com.kobionic.hashr.plist",
    "~/Library/Saved Application State/com.kobionic.hashr.savedState",
  ]
end
