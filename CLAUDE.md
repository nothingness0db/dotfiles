# AGENT.md

## 这是什么

个人 dotfiles 仓库，管理跨平台（macOS / Linux / WSL / Windows）的 Zsh 配置。

## 结构

```
dotfiles/
├── mac/        # macOS 配置
│   ├── .zshrc
│   └── .p10k.zsh
├── linux/      # Linux 配置
│   ├── .zshrc
│   └── .p10k.zsh
├── wsl/        # Windows WSL 配置
│   ├── .zshrc
│   └── .p10k.zsh
├── windows/    # Windows 原生配置
│   ├── .zshrc
│   └── .p10k.zsh
└── README.md
```

每个平台一个文件夹，各自独立，互不干扰。用户会在新机器上改完对应平台的配置后单独提交。

## 技术栈

- Shell：Zsh
- 框架：Oh My Zsh
- 主题：Powerlevel10k
- 插件：git、zsh-autosuggestions、zsh-syntax-highlighting

## 各平台差异

- **mac**：含 Homebrew PATH、getopt alias、本机代理配置，从用户实际 Mac 环境直接导出
- **linux / wsl**：完整注释配置，不含机器特定内容（代理、工具路径等），由用户在新机器配置完后提交
- **windows**：Scoop 包管理器，适配 Windows 路径，不含代理等机器特定配置

## 你拿到这个仓库要做什么

- 修改某平台配置时，只动对应文件夹下的文件，不要跨平台改
- `.p10k.zsh` 是 Powerlevel10k 的样式配置，1700+ 行，非必要不动
- 代理、特定工具路径等机器相关配置不要写死进通用文件
- mac 的配置是基准参考，linux/wsl/windows 以它为基础裁剪
