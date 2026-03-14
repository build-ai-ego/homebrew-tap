class BuildaiCli < Formula
  include Language::Python::Virtualenv
  preserve_rpath
  desc "Build AI CLI"
  homepage "https://github.com/build-ai-ego/data-build-ai"
  url "https://files.pythonhosted.org/packages/55/e4/16c25ce69b2fde0eeaff28bf53b5d15e88bb7ec9b77698138fb15915f1ae/buildai_cli-0.2.0-py3-none-any.whl"
  sha256 "78137b4a716cdd4bcb70337b7710ccdf9d37e8ed93f4c4f7b61e9dbfe3d5abcb"
  version "0.2.0"
  depends_on "python@3.11"
  def install
    wheel = Dir["*.whl"].first
    odie "Expected wheel artifact in buildpath" if wheel.nil?

    virtualenv_create(libexec, "python3.11", system_site_packages: false, without_pip: false)
    system libexec/"bin/pip", "install", wheel
    bin.install_symlink libexec/"bin/buildai"
  end
end
