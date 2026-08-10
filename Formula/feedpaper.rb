class Feedpaper < Formula
  desc "Build an ePub newspaper from your unread Feedbin blog posts"
  homepage "https://github.com/jonashonecker/feedpaper"
  url "https://github.com/jonashonecker/feedpaper/releases/download/v0.1.2/feedpaper-macos.tar.gz"
  version "0.1.2"
  sha256 "1998a91ec72dd26eb5d3f1e10d15f2124fa2a0e3124e690def29db6d934d0503"

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
