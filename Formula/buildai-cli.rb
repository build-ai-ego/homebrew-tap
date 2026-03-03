class BuildaiCli < Formula
  desc "Build AI CLI"
  homepage "https://github.com/build-ai-ego/data-build-ai"
  url "https://files.pythonhosted.org/packages/a1/79/361693d7d2a004bd81be1b0f3c30b516eb0aa81cf53099a177f889a3b9ec/buildai_cli-0.1.0.tar.gz"
  sha256 "016ffdedeecfdf80030a4caa8f389f5b76aef05b97e96e15ff979973dfe82033"
  version "0.1.0"
  depends_on "python@3.11"

  def install
    system "python3", "-m", "pip", "install", *std_pip_args, "."
  end
end
