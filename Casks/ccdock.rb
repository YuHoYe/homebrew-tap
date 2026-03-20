cask "ccdock" do
  version "1.2.0"
  sha256 "6163711e78320cc842584247c1eb160874c83a0373446882ed7fff0e96da5d8d"

  url "https://github.com/YuHoYe/CCDock/releases/download/v#{version}/CCDock.zip"
  name "CCDock"
  desc "macOS menubar app for monitoring Claude Code, Codex, and Gemini CLI sessions"
  homepage "https://github.com/YuHoYe/CCDock"

  depends_on macos: ">= :sonoma"

  app "CCDock.app"

  zap trash: [
    "~/Library/Preferences/com.yuho.CCDock.plist",
  ]
end
