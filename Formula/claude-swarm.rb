class ClaudeSwarm < Formula
  include Language::Python::Virtualenv

  desc "CLI for parallel Claude Code sessions to coordinate via SQLite"
  homepage "https://github.com/laurenalexander2/claude-swarm"
  url "https://files.pythonhosted.org/packages/f5/24/3e3b060485af895567ac3f7b6180b4dd32410f1adcb13c71ce2b47e73ca6/claude_swarm-0.3.2.tar.gz"
  sha256 "c240300b76fe000a73f2a4ddef05092f84b364ae1e99620aba9e104ac8407d2c"
  license "MIT"

  depends_on "python@3.12"

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/b3/c6/f3b320c27991c46f43ee9d856302c70dc2d0fb2dba4842ff739d5f46b393/rich-14.3.3.tar.gz"
    sha256 "b8daa0b9e4eef54dd8cf7c86c03713f53241884e814f4e2f5fb342fe520f639b"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown-it-py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/a0/aa/7554a7155099a62dbeb639810b1e8a0f1ee9a6ebb9e9f11f01a1f3198e9a/Pygments-2.19.2.tar.gz"
    sha256 "620616fca65003d9ecb499ae75184cbd8ac13923d96bbdcb8c26505eef6a6328"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/claude-swarm --help")
    assert_match "claude-swarm, version #{version}", shell_output("#{bin}/claude-swarm --version")
  end
end
