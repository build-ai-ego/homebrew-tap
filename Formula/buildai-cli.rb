class BuildaiCli < Formula
  include Language::Python::Virtualenv
  preserve_rpath
  desc "Build AI CLI"
  homepage "https://github.com/build-ai-ego/data-build-ai"
  url "https://files.pythonhosted.org/packages/f5/40/f10b70fc93181eac63c7128f1f833236a79882085b1473c6ce55ffd69fc4/buildai_cli-0.3.7-py3-none-any.whl"
  sha256 "2f7d0fd4ca77a408f116cd3cd2b2a1fd9f69a4ca4f24e229823cbd0d0fc7c590"
  version "0.3.7"
  depends_on "python@3.11"
  def install
    wheel = Dir["*.whl"].first
    odie "Expected wheel artifact in buildpath" if wheel.nil?

    virtualenv_create(libexec, "python3.11", system_site_packages: false, without_pip: false)
    system libexec/"bin/pip", "install", wheel
    bin.install_symlink libexec/"bin/buildai"
  end
end
