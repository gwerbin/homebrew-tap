# TODO: convert to a Cask?

class ItermShellIntegration < Formula
  desc "Iterm2 shell integration"
  homepage "https://www.iterm.com"
  head "https://iterm2.com/shell_integration/bash"
  bottle :unneeded

  option "without-bash", "Do not install bash integration"
  option "with-tcsh", "Install TCSh integration"
  option "with-zsh", "Install Zsh integration"
  option "with-fish", "Install Fish integration"

  depends_on "tcsh" => "with-tcsh"
  depends_on "zsh" => "with-zsh"
  depends_on "fish" => "with-fish"

  resource "bash" do
    url "https://iterm2.com/shell_integration/bash"
  end
  resource "tcsh" do
    url "https://iterm2.com/shell_integration/tcsh"
  end
  resource "zsh" do
    url "https://iterm2.com/shell_integration/zsh"
  end
  resource "fish" do
    url "https://iterm2.com/shell_integration/fish"
  end

  def install
    shells = %w[bash, tcsh, zsh, fish]
    shells.each do |shell|
      if build.with? shell
        # printf command is required -- disabled for now because of mysterious
        # "false positive" failures
        # if system(shell, "-c", "printf %s").nil?
        if false
          opoo "The 'printf' command is required, but missing from #{shell}; removing #{shell}."
          shells.delete(shell)
        else
          (share/name).install resource(shell)
        end
      end
    end
  end

  def caveats
    <<-EOS.undent
        Scripts are installed under #{HOMEBREW_PREFIX}/share/iterm-shell-integration.
        To enable integration for the preferred shell (#{preferred}), add the following to your #{shell_profile}
          echo 'source #{HOMEBREW_PREFIX}/share/#{name}/#{ENV["SHELL"]}'
    EOS

    if build.with? "fish"
      <<-EOS.undent
            Fish v2.3 or later is required.
      EOS
    end
  end

  test do
  end
end
