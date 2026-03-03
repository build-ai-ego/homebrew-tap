class BuildaiCli < Formula
  desc "Build AI CLI"
  homepage "https://github.com/build-ai-ego/data-build-ai"
  url "https://example.com/placeholder.tar.gz"
  sha256 "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
  version "0.0.0"

  depends_on "python@3.11"

  def install
    system "python3", "-m", "pip", "install", *std_pip_args, "."
  end
end
