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
    url "https://files.pythonhosted.org/packages/a5/26/0d95c04c868f6bdb0c447e3ee2de5564411845e36a858cfd63766bc7b563/pillow-11.0.0.tar.gz"
    sha256 "72bacbaf24ac003fea9bff9837d1eedb6088758d41e100c1552930151f677739"
  end

  resource "pypdf" do
    url "https://files.pythonhosted.org/packages/2d/dc/95f70d8ba94f532eea87c26a39ebf034d6c250c7d86a9e87a26f5c68a060/pypdf-5.1.0.tar.gz"
    sha256 "425a129abb1614183fd1aca6982f650b47f8026867c0ce7c4b9f281c443d2740"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/pdfo --help")
  end
end
