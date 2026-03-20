cask "ccdock" do
  version "1.0.0"
  sha256 "9edf5ff83fb7a2d8962b8ba09e93cf4dcf89b425a4610ae288f4c21105b5f590"

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
