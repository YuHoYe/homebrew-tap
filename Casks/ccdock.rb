cask "ccdock" do
  version "1.1.0"
  sha256 "1258650f62a3966dd749fc834e9da407e41cba1b45416eac3cc3cf751bd56305"

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
