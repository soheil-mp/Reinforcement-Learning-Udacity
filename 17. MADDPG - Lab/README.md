This project is a copy of the Udacity deep reinforcement learning practice lab, MADDPG.  The lab originally runs on their online workspace environment, but I wanted to be able to run it locally.  This repo contains the steps to do so.
Also note that the folder `baselines` is a hard copy of:

[OpenAI baselines](https://github.com/openai/baselines.git), commit hash: 98257ef8c9bd23a24a330731ae54ed086d9ce4a7

# Instructions
First clone this repo, cd into it, and create a fresh virtual environment:
```
$ https://github.com/WillieMaddox/DRL_MADDPG.git
$ cd DRL_MADDPG
$ mkvirtualenv -r requirements.txt -p python3.6 drlmaddpg
```

To run the code, please use the command,
```
$ ./run_training.sh
```
The bash script cleans up and DELETE previous runs. The script is necessary because we need an extra command to ensure image rendering is possible remotely. Training takes about two hour. If you run locally on your own computer. Be sure to increase the number of parallel agents to the number of cores your computer have in main.py. GPU does not help that much in the computation.

To see a visualization of the results, run the script,
```
./run_tensorboard.sh
```
A link will appear, and direct your browser to that link to see rewards over time and other statistics

The trained models are stored in "model_dir" by default. You can also find .gif animations that show how the agents are performing! The gif file contains a grid of separate parallel agents.

To understand the goal of the environment: blue dots are the "good agents", and the Red dot is an "adversary". All of the agents' goals are to go near the green target. The blue agents know which one is green, but the Red agent is color-blind and does not know which target is green/black! The optimal solution is for the red agent to chase one of the blue agent, and for the blue agents to split up and go toward each of the target.