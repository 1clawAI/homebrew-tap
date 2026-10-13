class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.co"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.61.33.tgz"
  sha256 "89789f8f13cb28d8aa1a27fed78b9b5c101260f8caf94ab146a39d060e57ddb4"
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
