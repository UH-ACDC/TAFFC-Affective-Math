# TAFFC-Affective-Math

This repository contains the novel video questions, the R code, and the plots associated with the manuscript "**Stress and performance in affective and conventional forms of math exams**" submitted to IEEE TAFFC in May 2025.

## Video Questions
The YouTube links to the novel video questions can be found [here](VideoQuestions.md).




## The R Code

### Requirements

-   R and RStudio
-   Required packages

> `sessionInfo()` R version 4.4.1 (2024-06-14) Platform: aarch64-apple-darwin20 Running under: macOS 15.4.1

### Installation

1.  Clone this repository.
2.  Install the required packages.
    -   Open the `scripts/requirements.R` file in RStudio.
    -   Run the code in the `scripts/requirements.R` file.
3.  Run the scripts in the `scripts/` folder to generate the data and plots.



## The Dataset

### Data description

**`data/processed/Affective_Math_Dataset_N50_BL.csv`** contains the following columns:

-   **Column A: ParticipantID**: The anonymized participant IDs.
-   **Column B: Time**: The time elapsed in seconds.
-   **Column C: Timestamp**: The atomic clock time stamp.
-   **Column D: Perspiration**: Values of the perinasal perspiration signal in °C².
-   **Column E: HR.E4**: Values of the heart rate signal in BPM, measured with E4 on the participant's non-dominant hand.
-   **Column F: HR.AW**: Values of the heart rate signal in BPM, measured with the Apple Watch on the participant's dominant hand.

**`data/processed/Affective_Math_Dataset_N50_Exam.csv`** contains the following columns:

#### **Physiological and other data**

-   **Column A: ParticipantID**: The anonymized participant IDs.
-   **Column B: Time**: Time elapsed in seconds since the start of the present session.
-   **Column C: Timestamp**: The atomic-clock time stamp.
-   **Column D: Perspiration**: Values of the perinasal perspiration signal in °C².
-   **Column E: HR.E4**: Heart-rate (BPM), measured with the E4 on the participant's non-dominant hand.
-   **Column F: HR.AW**: Heart-rate (BPM), measured with the Apple Watch on the participant's dominant hand.
-   **Column G: HRV.IBI**: Heart-rate variability, computed from inter-beat intervals (IBI, unit: ms), measured with E4 on the participant's non-dominant hand.
-   **Column H: Question.Name**: Unique question ID.
-   **Column I: Question.Type**: Type of question with levels: [A ≡ Abstract, W ≡ Word, V ≡ Video, Example ≡ Initial practice problems].
-   **Column J: Attempt.Correctness**: Correctness of the question (1 = correct, 0 = incorrect).
-   **Column K: Attempt**: The number of the current attempt.
-   **Column L: Question.Order**: Problem order within each Question.Type A, W, V [1–12].
-   **Column M: Question.Number**: Alphanumeric label representing question order as given to participant. Levels: [1–36].
-   **Column N: ExamVersion**: Indicates the counterbalancing order of the given exam.
-   **Column P: Gender**: The gender of participants with levels: [M ≡ Male, F ≡ Female].

#### **Psychometric Data** 
-   **Column O: SAI.Score**: Scores of the State & Trait Anxiety Inventory, range [20–80].

####  **Valence Data**

-   **Column Q: F_Angry**: Facial-expression intensity for "Angry."
-   **Column R: F_Disgusted**: Facial-expression intensity for "Disgusted."
-   **Column S: F_Afraid**: Facial-expression intensity for "Afraid."
-   **Column T: F_Happy**: Facial-expression intensity for "Happy."
-   **Column U: F_Sad**: Facial-expression intensity for "Sad."
-   **Column V: F_Surprised**: Facial-expression intensity for "Surprised."
-   **Column W: F_Neutral**: Facial-expression intensity for "Neutral."
####  **SUS Data**
-   **Column X: SUS**: System Usability Scale (SUS) Score. Please see the calculation method [here](https://www.researchgate.net/publication/228593520_SUS_A_quick_and_dirty_usability_scale)

------------------------------------------------------------------------

The **`data/processed/TAFFC_ModelData_N50.csv`** created by `00-data_preprocessing.Rmd` contains the following columns:

-   **Column A: ParticipantID**: The anonymized participant IDs.
-   **Column B: Question.Name**: Unique question ID.
-   **Column C: Question.Type**: Type of question with levels: [A ≡ Abstract, W ≡ Word, V ≡ Video].
-   **Column D: Gender**: The gender of participants with levels: [M ≡ Male, F ≡ Female].
-   **Column E: Perspiration**: Mean perinasal perspiration signal (°C²) across exam trials.
-   **Column F: PPNorm** : Mean calibrated/normalizated perinasal perspiration across exam trials.
-   **Column H: HR.AW**: Mean heart rate (BPM) measured with the Apple Watch on the participant's dominant hand.
-   **Column J: HR.AWNorm** : Mean calibrated/normalizated heart rate from Apple Watch across exam trials.
-   **Column G: HR.E4**: Mean heart rate (BPM) measured with the E4 on the participant's non-dominant hand.
-   **Column I: HR.E4Norm** : Mean calibrated/normalizated heart rate from E4  across exam trials.
-   **Column K: HRV.IBI** : Mean HRV across exam trials.
-   **Column L: HRVNorm** : Mean calibrated/normalizated HRV across exam trials.
-   **Column M: SAI**: State Anxiety Inventory score (range 20–80).
-   **Column N: QType**: Type of question with levels: [A ≡ Abstract, W ≡ Word, V ≡ Video].
-   **Column O: QOrder**: Problem order within each Question.Type category.
-   **Column P: QNumber**: Alphanumeric label representing question order as given to the participant (e.g., 1–36).
-   **Column N: QTime**: Number of data samples (rows) in the exam subset per participant-question (used as a proxy for solving time).
-   **Column Q: Grade**: Binary correctness indicator for this question (1 = correct, 0 = incorrect).
-   **Column R: SUS.Score**: System Usability Scale (SUS) Score. 
-   **Column T: PPNorm_mean**: Mean of the normalized perinasal perspiration signal (PPNorm) across all samples for each participant–question.
-   **Column U: PPNorm_n**: Number of data samples used to calculate PPNorm_mean.
-   **Column V: HR.E4Norm_mean**: Mean of the normalized heart‐rate signal from the E4 device (HR.E4Norm) across all samples for each participant–question.
-   **Column W: HR.E4Norm_n**: Number of data samples used to calculate HR.E4Norm_mean.
-   **Column X: HR.AWNorm_mean**: Mean of the normalized heart‐rate signal from the Apple Watch (HR.AWNorm) across all samples for each participant–question.
-   **Column Y: HR.AWNorm_n**: Number of data samples used to calculate HR.AWNorm_mean.
-   **Column Z: HRVNorm_mean**: Mean of the normalized heart‐rate variability signal (HRVNorm) across all samples for each participant–question.
-   **Column AA: HRVNorm_n**: Number of data samples used to calculate HRVNorm_mean.
-   **Column AB: Stress.pp**:  Binary stress‐flag derived from the perinasal perspiration feature (S ≡ stress, NS ≡ no stress).
-   **Column AC: Stress.hre4**:  Binary stress‐flag derived from the normalized E4 heart‐rate feature (HR.E4Norm) (S ≡ stress, NS ≡ no stress).
-   **Column AD: Stress.hraw**:  Binary stress‐flag derived from the normalized Apple Watch heart‐rate feature (HR.AWNorm) (S ≡ stress, NS ≡ no stress).
-   **Column AE: Stress.nhrv**: Binary stress‐flag derived from the normalized HRV feature (HRVNorm) (S ≡ stress, NS ≡ no stress).
-   **Column AF: F_Angry**: Facial-expression intensity for "Angry."
-   **Column AG: F_Disgusted**: Facial-expression intensity for "Disgusted."
-   **Column AH: F_Afraid**: Facial-expression intensity for "Afraid."
-   **Column AI: F_Happy**: Facial-expression intensity for "Happy."
-   **Column AJ: F_Sad**: Facial-expression intensity for "Sad."
-   **Column AK: F_Surprised**: Facial-expression intensity for "Surprised."
-   **Column AL: F_Neutral**: Facial-expression intensity for "Neutral."

------------------------------------------------------------------------

# The folders are organized as follows:

-   `data/` contains the data used in the paper.
-   `figures/` contains the plots generated in the paper.
-   `scripts/` contains the scripts used to generate the data and plots.
-   `README.md` is this file.

# Script Set

Please run the following scripts sequentially.

-   **requirements.R**
    - Install and load all required packages for this project
-   **00-data_preprocessing.Rmd**
    - Data wrangling and EDA plots
    - Creates model data frame.

-   **01-multilinear_models_v5.Rmd**
    -   Creates the Physiological Models, Valence Models, and Performance Model for the paper.
    -   Generates the model plots.

-   **02-stress_label_models_v5.Rmd**
    -   Creates the Stress Models for the paper.
    -   Generates the model plots.

-   **03-valence_performance_models_v5.Rmd**
    -   Creates Valence Models, and Performance Model for the paper.
    -   Generates the coresponding model plots.

# Paper: To be added

# Video: To be added
