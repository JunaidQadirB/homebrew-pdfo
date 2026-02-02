class Pdfo < Formula
  include Language::Python::Virtualenv

  desc "Fast CLI tool to compress and optimize PDF files"
  homepage "https://github.com/JunaidQadirB/pdfo"
  url "https://github.com/JunaidQadirB/pdfo/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "a2375e0333706818310eaa878aeb01743cc7b39db129ff42efbbec59a80c3bd2"
  license "MIT"

  depends_on "python@3.12"
  depends_on "ghostscript"

  resource "click" do
    url "https://files.pythonhosted.org/packages/96/d3/f04c7bfcf5c1862a2a5b845c6b2b360488cf47af55dfa79c98f6a6bf98b5/click-8.1.7.tar.gz"
    sha256 "ca9853ad459e787e2192211578cc907e7594e294c7ccc834310722b41b9ca6de"
  end

  resource "pillow" do
    url "https://files.pythonhosted.org/packages/d0/02/d52c733a2452ef1ffcc123b68e6606d07276b0e358db70eabad7e40042b7/pillow-12.1.0.tar.gz"
    sha256 "5c5ae0a06e9ea030ab786b0251b32c7e4ce10e58d983c0d5c56029455180b5b9"
  end

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/7d/be/549aaf1dfa4ab4aed29b09703d2fb02c4366fc1f05e880948c296c5764b9/pypdf-6.6.2-py3-none-any.whl"
    sha256 "44c0c9811cfb3b83b28f1c3d054531d5b8b81abaedee0d8cb403650d023832ba"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/pdfo --help")
  end
end
