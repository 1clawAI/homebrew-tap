class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.xyz"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.58.0.tgz"
  sha256 "37d261183ea29d025187e2d03de134224df785e574a93c463f3cf2b4798e3291"
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
