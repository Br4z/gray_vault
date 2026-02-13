---
reviewed_on: "2024-11-28"
---

# Metrics

## Recall

It gives the percentage of **"positives" well predicted** by a model.

The **higher** it is, the more the model **maximizes** the number of **true positives**. That means that it **will not miss any positives**. Nevertheless, it does not give any information about its prediction quality on the negatives.

$$
\text{recall} = \frac{ \text{true positives} }{ \text{true positives} + \text{false negatives} }
$$

## Precision

It gives the percentage of **"positive" predictions well-made** by a model.

The **higher** it is, the more the model **minimizes** the number of **false positives**.

$$
\text{precision} = \frac{ \text{true positives} }{ \text{true positives} + \text{false positive} }
$$

## F1 Score

Although useful, neither precision nor recall can fully evaluate a model. Separately, these two metrics are **useless**, if the model always predicts "positives", recall will be high; on the contrary, if the model never predicts "positives", the precision will be high.

The **higher** it is, the better the model will perform.

F1 Score is a **harmonic mean** of the two metrics (recall and precision):

$$
\text{F1 score} = 2 \frac{ \text{recall} * \text{precision} }{ \text{recall} + \text{precision} }
$$

## Specificity

It gives the percentage of **"negatives" well predicted** by a model.

The **higher** it is, the more the model **maximizes** the number of **true negatives**. That means that it **will not misclassify any negative**. However, it does not provide information about its prediction quality on the positives.

$$
\text{specificity} = \frac{ \text{true negatives} }{ \text{true negatives} + \text{false positives} }
$$

## ROC and AUC

### ROC (Receiver Operating Characteristic) Curve

The ROC curve is a graphical representation of a model's diagnostic ability. It plots the **true positive rate** (recall) against the false positive rate ($1 - \text{specificity}$) at various threshold settings. The curve illustrates the trade-off between sensitivity and specificity.

$$
1 - \text{specificity} = \frac{ \text{false positives} }{ \text{true negatives} + \text{false positives} }
$$

### AUC (Area Under the Curve)

The AUC is a single scalar value that summarizes the performance of a model across all threshold values. It represents the area under the ROC curve. The AUC value ranges from $0$ to $1$, where:

- $\text{AUC} = 1$: perfect model.

- $\text{AUC} = 0.5$: model with no discriminative ability (equivalent to random guessing).

- $\text{AUC} < 0.5$: model performing worse than random guessing.

A higher AUC value indicates a better performing model.

$$
\text{AUC} = \int_{ 0 }^{ 1 } { \text{ROC}(x) dx }
$$
