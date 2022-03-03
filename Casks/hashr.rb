cask "hashr" do
  version "22.03.0"
  desc "An easy to use file hashing utility working with multiple algorithms. Powered by React & Material UI, built as a cross-plaform desktop application using Electron."
  homepage "https://github.com/KoBionic/hashr"
  name "HashR"
  app "HashR.app"

  if Hardware::CPU.intel?
    url "https://github.com/KoBionic/hashr/releases/download/#{version}/HashR-#{version}.dmg"
    sha256 "4c1b8d5b8f0a3122aa6e964a6de0927864a0bf8759b3e9d1aa58740b3b1b780d"
  end
  if Hardware::CPU.arm?
    url "https://github.com/KoBionic/hashr/releases/download/#{version}/HashR-#{version}-arm64.dmg"
    sha256 "0ded881861f5dd9837ebbb89ce98d219880b85345ec7406fd1074019d3bf0552"
  end

  zap trash: [
    "~/Library/Application Support/HashR",
    "~/Library/Preferences/com.kobionic.hashr.plist",
    "~/Library/Saved Application State/com.kobionic.hashr.savedState",
  ]
end
