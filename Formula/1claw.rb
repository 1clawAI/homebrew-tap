class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.xyz"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.59.9.tgz"
  sha256 "6df71638003689330829c8b572216a517e7083095c6939e49c3e71b60725e0e0"
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
