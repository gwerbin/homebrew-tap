# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Ikiwiki < Formula
  desc "Ikiwiki is a wiki compiler. It converts wiki pages into HTML pages suitable for publishing on a website."
  homepage "http://ikiwiki.info"
  url "https://github.com/joeyh/ikiwiki/archive/debian/3.20160905.zip"
  version "3.20160905"
  sha256 "3f723170bfa9ad092f544506b5435217a11d4f25a989777897bff9e641395404"

  # http://ikiwiki.info/install/
  depends_on :perl

  resource "Text::Markdown::Discount" do
  end

  resource "HTML::Scrubber" do
    end

  resource "HTML::Template" do
    end

  resource "HTML::Parser" do
    end

  resource "URI" do
    end

  resource "XML::Simple" do
    end

  resource "Date::Parse" do
    end

  resource "CGI::FormBuilder" do
    end

  resource "CGI::Session" do
    end

  resource "Mail::Sendmail" do
    end

  resource "CGI" do
    end

  resource "Data::Dumper" do
    end

  resource "YAML::XS" do
    end

  resource "JSON" do
    end

  resource "RPC::XML" do
    end


  resource "Text::Markdown::Discount" do
  end
  resource "URI" do
  end
  resource "HTML::Parser" do
  end
  resource "HTML::Template" do
  end
  resource "Bundle::IkiWiki::Extras" do
  end
  resource "Bundle::IkiWiki" do
  end

  def install
    source("Bundle::IkiWiki").stage do
      PERL5LIB=`pwd` PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'CPAN::Shell->install("Bundle::IkiWiki")'
    end

    source("Bundle::IkiWiki::Extras").stage do
      PERL5LIB=`pwd` PERL_MM_USE_DEFAULT=1 perl -MCPAN -e 'CPAN::Shell->install("Bundle::IkiWiki::Extras")'
    end

    ENV.prepend_create_path "PERL5LIB", libexec/"lib/perl5"
    ENV.prepend_path "PERL5LIB", libexec/"lib"lib

    perl_resources.each do |r|
      resource(r).stage do
        system "perl", "Makefile.PL", "INSTALL_BASE=#{libexec}/vendor"
        system "make"
        system "make", "install"
      end
    end
  end

  test do
  end
end
