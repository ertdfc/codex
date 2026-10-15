# Codex 云端工作仓库

这是供 Codex Cloud 使用的通用起始仓库。当前没有指定应用框架或第三方依赖，可以按实际项目需求逐步添加。

## 在 Codex Cloud 中启用

1. 打开 Codex，在设置中进入 **Codex Cloud → Environments → Create environment**。
2. 选择仓库 **ertdfc/codex**。
3. 选择 **Get started**，让 Codex 准备环境。可以发送下面的设置要求：

   > 请将此仓库配置为通用开发环境，运行 bash scripts/check-environment.sh 检查可用工具。当前没有应用依赖或服务，无需安装额外框架。请报告检查结果，并在后续任务确定开发语言后再添加依赖。

4. 检查设置结果，完成 **Publish**。之后在 **Work in → Cloud** 中选择此环境开始任务。

注意：初始化 GitHub 仓库并不等于已经创建或发布 Codex Cloud 环境；需要完成上述环境设置。

官方说明：https://learn.chatgpt.com/docs/environments/cloud-environments

## 环境检查

在仓库根目录运行：

```bash
bash scripts/check-environment.sh
```

脚本检查 Git 是否可用，并显示 Python、Node.js 和 npm 的可用情况，不安装软件、不输出环境变量或凭据。这是工具检查，不是应用测试。

## 开始第一个项目

可以向 Codex 描述目标，例如：

> 请在此仓库创建一个 Python 命令行工具，并添加运行说明和必要测试。

或：

> 请在此仓库创建一个网页项目，选择合适的技术栈，安装依赖并验证可以构建。

添加依赖后，请提交对应的包清单与锁文件，并更新环境安装步骤。

## 文件说明

- `AGENTS.md`：Codex 在本仓库中的工作指引。
- `scripts/check-environment.sh`：云端工具检查。
- `.gitignore`：忽略本地依赖、缓存和常见凭据文件。
- `.gitattributes`：统一文本换行，保证 shell 脚本适合 Linux 执行。

## 凭据

不要提交 API 密钥、密码、访问令牌或真实的 `.env` 文件。项目需要凭据时，在 Codex Cloud 的环境设置中配置。
