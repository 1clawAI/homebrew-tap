class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.xyz"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.61.8.tgz"
  sha256 "7d24cadb0b33d8150379162ea33bc631cd90668f4b9fd37f27c0e731f54a954c"
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
