class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.co"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.61.22.tgz"
  sha256 "4910344e39b150c004b1eaf595908e18f01615035684a5fe5dce212938583e54"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/1claw --version")
  end
end
