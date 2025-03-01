# 🚀 Quick AI Agent Project  
Quickly set up an **AI Agent** using **CrewAI** on your **Mac**. No coding needed.

---

## **Pre-requisites**
Ensure you have the following installed before running the script:

- ✅ **Python 3.10 or 3.11**  
- ✅ **VS Code**  
- ✅ **OpenAI API Key** (or a similar LLM service)

---

## 📖 **How to Run**
### 1️⃣ **Open VS Code & Terminal**
- Open **VS Code**.
- Open the **Terminal** (`View → Terminal` or `Ctrl + ~`).

### 2️⃣ **Navigate to the Setup File**
Move to the directory where the `setup_crewai.command` file is located:
```bash
cd /path/to/setup_crewai.command
```

## What This Script Does
This script automates the setup of a **CrewAI** environment on your Mac. It performs the following tasks:

✔ **Installs Homebrew** (if missing) – for package management  
✔ **Installs Python 3.11** (if missing)  
✔ **Creates a virtual environment** in `~/crewai_project`  
✔ **Upgrades pip, setuptools, and wheel** for compatibility  
✔ **Installs CrewAI & OpenAI API dependencies**  
✔ **Generates essential files** for your AI agent:  
   - `agent.py` → Defines the AI agent  
   - `task.py` → Defines the agent's task  
   - `main.py` → Runs the AI agent  
✔ **Automatically executes the AI agent**  

**After execution, your CrewAI project is fully set up and running!**  

---

## Customize Your AI Agent
To modify your AI agent's behavior, update the following YAML files in natural English:

📝 **`agents.yaml`** → Define your AI agent's role & behavior  
📝 **`tasks.yaml`** → Specify tasks the agent should perform  

💡 **No coding needed!** Simply edit the YAML files to change the agent’s instructions. 🚀  

