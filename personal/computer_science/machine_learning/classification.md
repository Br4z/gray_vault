---
reviewed_on: "2025-08-31"
sources:
  - author: Geek for Geeks
    url: https://www.geeksforgeeks.org/machine-learning/supervised-machine-learning
    language: English
  - author: Geek for Geeks
    url: https://www.geeksforgeeks.org/machine-learning/unsupervised-learning
    language: English
  - author: Geek for Geeks
    url: https://www.geeksforgeeks.org/machine-learning/what-is-reinforcement-learning
    language: English
---

# Classification

## Supervised learning

It is a type of machine learning where a model is trained on labeled data, meaning each input is paired with the correct output. the model learns by comparing its predictions with the actual answers provided in the training data. Over time, it adjusts itself to minimize errors and improve accuracy. The goal of supervised learning is to make accurate predictions when given new, unseen data.

### Process (supervised learning)

1. Training data: the model is provided with a training dataset that includes input data (features) and corresponding output data (labels or target variables).

2. Learning: the algorithm processes the training data, learning the relationships between the input features and the output labels. This is achieved by adjusting the model's parameters to minimize the difference between its predictions and the actual labels.

### Types (supervised learning)

- Classification: where the output is a categorical variable.

- Regression: where the output is a continuous variable.

## Unsupervised learning

Unsupervised learning algorithms are tasked with finding patterns and relationships within the data without any prior knowledge of the data's meaning. They find hidden patterns and data without any human intervention.

### Types (unsupervised learning)

- Clustering: is the process of grouping unlabeled data into clusters based on their similarities.

- Association rule: is a common technique used to discover associations between parameters.

- Dimensionality reduction: is the process of reducing the number of features in a dataset while preserving as much information as possible.

## Reinforcement learning

It focuses on how agents can learn to make decisions through trial and error to maximize cumulative rewards. It allows machines to learn by interacting with an environment and receiving feedback based on their actions. This feedback comes in the form of **rewards** or **penalties**.

- Agent: the decision-maker that perform actions.

- Environment: the world or system in which the agent operates.

- State: the situation or condition the agent is currently on.

- Action: the possible moves or decisions the agent can make.

- Reward: the feedback or result from the environment based on the agent's action.

### Process (reinforcement learning)

- Policy: a strategy that the agent uses to determine the next action based on the current state.

- Reward function: a function that provides feedback on the actions taken, guiding the agent towards its goal.

- Value function: estimates the future cumulative rewards the agent will receive from a given state.

- Model of the environment: a representation of the environment that predicts future states and rewards, aiding in planning.
