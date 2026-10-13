class Oneclaw < Formula
  desc "CLI for 1Claw — secrets management for AI agents"
  homepage "https://1claw.co"
  url "https://registry.npmjs.org/@1claw/cli/-/cli-0.61.32.tgz"
  sha256 "0537b7fcbea0988732e00624ab72e80f68ec56553ae48e4436ef72cf8b988d8e"
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
