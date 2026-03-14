class BuildaiCli < Formula
  include Language::Python::Virtualenv
  preserve_rpath
  desc "Build AI CLI"
  homepage "https://github.com/build-ai-ego/data-build-ai"
  url "https://files.pythonhosted.org/packages/03/a2/1892b5c609919be3e892f719c178415665dab0c321172cd7abc96b14d813/buildai_cli-0.3.0-py3-none-any.whl"
  sha256 "cb1483e03ffcf126489770f04e4a79b84b75874ee248fd383506dceba9ea5332"
  version "0.3.0"
  depends_on "python@3.11"
  def install
    wheel = Dir["*.whl"].first
    odie "Expected wheel artifact in buildpath" if wheel.nil?

    virtualenv_create(libexec, "python3.11", system_site_packages: false, without_pip: false)
    system libexec/"bin/pip", "install", wheel
    bin.install_symlink libexec/"bin/buildai"
  end
end
