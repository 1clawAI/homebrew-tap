class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.co"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.61.29.tgz"
  sha256 "48da518f9a5f2a94b7edf7ecd56497cfedbfc3627c12e8272f9022cd73c35067"
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
