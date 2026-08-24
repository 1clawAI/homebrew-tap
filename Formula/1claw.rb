class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.xyz"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.57.0.tgz"
  sha256 "559cd6609d872bfb8ea808700b78d43b03cc8c8103e44aa373e0cd148d5220c0"
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
