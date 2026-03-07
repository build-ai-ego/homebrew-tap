class BuildaiCli < Formula
  include Language::Python::Virtualenv
  preserve_rpath
  desc "Build AI CLI"
  homepage "https://github.com/build-ai-ego/data-build-ai"
  url "https://files.pythonhosted.org/packages/fc/17/5922b524f93b43d2dd7fbc9c8f99d2526327a1b5a4ca13fad10ddd30628b/buildai_cli-0.1.0-py3-none-any.whl"
  sha256 "7d79c97da1af1256d4565af020d818ed985740e3e1fc0f97103df8b55ff7d18e"
  version "0.1.0"
  depends_on "python@3.11"
  def install
    wheel = Dir["*.whl"].first
    odie "Expected wheel artifact in buildpath" if wheel.nil?

    virtualenv_create(libexec, "python3.11", system_site_packages: false, without_pip: false)
    system libexec/"bin/pip", "install", wheel
    bin.install_symlink libexec/"bin/buildai"
  end
end
