class Updatedep < Formula
  desc "Updatedep is an application that analyzes the dependencies of a project, this helps check what dependency versions can be used with less to no vulnerabilities."
  homepage "https://github.com/teamextension/updatedep"
  url "https://github.com/teamextension/updatedep/releases/download/1.3.0/updatedep.jar"
  sha256 "498B3AC532646CE4DA76F3CB5FDC7DC722D84ACD725386FE68DF95A2617AD4B1"
  license "MIT"

  depends_on "openjdk@11"

  resource "exclude" do
    url "https://raw.githubusercontent.com/teamextension/updatedep/main/exclude.txt"
    sha256 "c691821aa1f6300751e0d6a6c8e06ba7f1585843f934e8ea50a41aae68533946"
  end

  def install
    libexec.install "updatedep.jar"

    # Create a wrapper script to run the jar using the installed Java
    (bin/"updatedep").write <<~EOS
      #!/bin/bash
      exec "#{Formula["openjdk@11"].opt_bin}/java" --add-opens java.base/sun.security.ssl=ALL-UNNAMED -jar "#{libexec}/updatedep.jar" "$@"
    EOS

    # Create the .ud directory in the user's home directory
    ud_dir = File.expand_path("~/.ud")
    mkdir_p ud_dir

    # Install exclude.txt to the .ud directory
    resource("exclude").stage do
      FileUtils.cp "exclude.txt", ud_dir
    end
  end

  def caveats
    <<~EOS
      The exclude.txt file is installed at:
        ~/.ud/exclude.txt
    EOS
  end

  test do
    system "#{bin}/updatedep", "--version"
  end
end
