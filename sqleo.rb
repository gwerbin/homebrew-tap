class Sqleo < Formula
    desc "A powerful SQL tool"
    homepage "http://sqleo.sourceforge.net/"
    version "2016.05.rc1"
    url "http://downloads.sourceforge.net/project/sqleo/SQLeoVQB/SQLeoVQB.2016.04.rc1.zip?r=&ts=1464475389"
    sha256 "8a396b3817b9291cd431cc7fc70be7c7356c0c29af30e60dcc431ae991e1840f"

    bottle :unneeded

    def install
        libexec.install "SQLeoVQB.jar"
        (libexec/"sqleo-start.HELP").rename("sqleo-start.command"
        # libexec.write_jar_script libexec/"SQLeoVQB.jar", "SQLeoVQB.jar"
    end
end
