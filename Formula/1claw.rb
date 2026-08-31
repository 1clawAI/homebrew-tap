class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.xyz"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.59.8.tgz"
  sha256 "73a1244c9d820604170562f6a5361da2b5d8114916e9fa66f249a2c984681aad"
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
