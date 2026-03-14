class BuildaiCli < Formula
  include Language::Python::Virtualenv
  preserve_rpath
  desc "Build AI CLI"
  homepage "https://github.com/build-ai-ego/data-build-ai"
  url "https://files.pythonhosted.org/packages/67/21/c629fa8abad49e7a8fb63da2f8fe953c6a6857b5b0fd771e4e93b54d8f75/buildai_cli-0.2.1-py3-none-any.whl"
  sha256 "599a1706aba19b0765ef23b93a0439d79486e251a33d00759508edce839e19a4"
  version "0.2.1"
  depends_on "python@3.11"
  def install
    wheel = Dir["*.whl"].first
    odie "Expected wheel artifact in buildpath" if wheel.nil?

    virtualenv_create(libexec, "python3.11", system_site_packages: false, without_pip: false)
    system libexec/"bin/pip", "install", wheel
    bin.install_symlink libexec/"bin/buildai"
  end
end
