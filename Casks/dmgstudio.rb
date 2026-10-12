cask "dmgstudio" do
  version "1.0.0"
  sha256 "ef56dfeeaeb0a6d0f8279dc8bc40945af8ef80b344cc760a6d9fc96cac087411"

  url "https://github.com/ghaschel/dmgstudio/releases/download/v1.0.0/DMGStudio-1.0.0.dmg"
  name "DMGStudio"
  desc "Create drag-to-install macOS disk images"
  homepage "https://github.com/ghaschel/dmgstudio"

  depends_on macos: ">= :ventura"

  app "DMGStudio.app"
end
