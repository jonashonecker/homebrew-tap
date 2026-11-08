class Feedpaper < Formula
  desc "Build an ePub newspaper from your unread Feedbin blog posts"
  homepage "https://github.com/jonashonecker/feedpaper"
  url "https://github.com/jonashonecker/feedpaper/releases/download/v0.1.4/feedpaper-macos.tar.gz"
  version "0.1.4"
  sha256 "34ff654226f49d07b5d2ba212488f5fc0bfda7b01bdffc5160f468345b648b3f"

  depends_on :macos
  depends_on arch: :arm64

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"feedpaper"
  end

  test do
    assert_match "feedpaper", shell_output("#{bin}/feedpaper --help")
  end
end
