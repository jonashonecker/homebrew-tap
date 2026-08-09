class Feedpaper < Formula
  desc "Build an ePub newspaper from your unread Feedbin blog posts"
  homepage "https://github.com/jonashonecker/feedpaper"
  url "https://github.com/jonashonecker/feedpaper/releases/download/v0.1.0/feedpaper-macos"
  version "0.1.0"
  sha256 "811882eff0884fa1b37d8171fa5bd4b214a8d9c131632293d012676aba7f5695"

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "feedpaper-macos" => "feedpaper"
  end

  test do
    assert_match "feedpaper", shell_output("#{bin}/feedpaper --help")
  end
end
