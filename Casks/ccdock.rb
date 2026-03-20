cask "ccdock" do
  version "1.4.1"
  sha256 "90faba489496ab1e0031881acdb972e2cabfb300c811d1457956502204081964"

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
