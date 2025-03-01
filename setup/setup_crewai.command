#!/bin/bash

echo "🚀 Starting CrewAI setup..."

# Step 1: Ensure Homebrew is installed
if ! command -v brew &>/dev/null; then
  echo "🍺 Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  echo "🍺 Homebrew is already installed!"
fi

# Step 2: Install Python 3.11 (if not installed)
if ! python3.11 --version &>/dev/null; then
  echo "🐍 Installing Python 3.11..."
  brew install python@3.11
else
  echo "🐍 Python 3.11 is already installed!"
fi

# Step 3: Create a new project folder
PROJECT_DIR="$HOME/crewai_project"
echo "📁 Creating project directory: $PROJECT_DIR"
mkdir -p $PROJECT_DIR && cd $PROJECT_DIR

# Step 4: Create a virtual environment
echo "🌍 Setting up a Python virtual environment..."
python3.11 -m venv .venv
source .venv/bin/activate

# Step 5: Upgrade pip and install dependencies
echo "⬆️ Upgrading pip..."
pip install --upgrade pip setuptools wheel

echo "📦 Installing CrewAI and OpenAI..."
pip install crewai openai

# Step 6: Create AI agent script
echo "📝 Creating AI agent script..."
cat > agent.py <<EOF
from crewai import Agent
from langchain.chat_models import ChatOpenAI

class MyAgent(Agent):
    def __init__(self):
        super().__init__(
            role="AI Assistant",
            goal="Help answer questions using AI",
            backstory="An AI assistant that provides useful insights.",
            llm=ChatOpenAI(model="gpt-3.5-turbo")
        )

    def run(self, task):
        return self.llm.predict(task.description)
EOF

# Step 7: Create task script
echo "📝 Creating task script..."
cat > task.py <<EOF
from crewai import Task

class MyTask(Task):
    def __init__(self):
        super().__init__(
            description="Explain the concept of black holes in simple terms.",
        )

    def execute(self):
        return self.description
EOF

# Step 8: Create main script
echo "📝 Creating main script..."
cat > main.py <<EOF
from agent import MyAgent
from task import MyTask

agent = MyAgent()
task = MyTask()

result = agent.run(task)

print("\\n🤖 AI Agent Response:\\n", result)
EOF

# Step 9: Run the AI Agent
echo "🚀 Running AI Agent..."
python main.py

echo "🎉 Setup complete! Your AI agent is ready to go!"

EOF
