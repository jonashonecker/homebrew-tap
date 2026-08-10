class Feedpaper < Formula
  desc "Build an ePub newspaper from your unread Feedbin blog posts"
  homepage "https://github.com/jonashonecker/feedpaper"
  url "https://github.com/jonashonecker/feedpaper/releases/download/v0.1.3/feedpaper-macos.tar.gz"
  version "0.1.3"
  sha256 "df42e1075b82e41ac7ec4572173fa5519794c9c4fa8160165c32bccd478c08e3"

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
