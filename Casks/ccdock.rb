cask "ccdock" do
  version "1.3.0"
  sha256 "df2bc784469098d36195609405132eb888f9ba1000a57be9adc72e84d83ffbf0"

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
