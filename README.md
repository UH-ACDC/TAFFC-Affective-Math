# TAFFC-Affective-Math

This repository contains the code and plots for the paper "**Stress and performance in affective and conventional forms of math exams**" submitted to TAFFC 2025.

## Getting started

### Requirements

-   R and RStudio
-   Required packages

> sessionInfo() R version 4.4.1 (2024-06-14) Platform: aarch64-apple-darwin20 Running under: macOS 15.4.1

### Installation

1.  Clone this repository.
2.  Install the required packages.
    -   Open the `scripts/requirements.R` file in RStudio.
    -   Run the code in the `scripts/requirements.R` file.
3.  Run the scripts in the `scripts/` folder to generate the data and plots.

## Data

### Data description

**`data/processed/Affective_Math_Dataset_N50_BL.csv`** contains the following columns:

-   **Column A: ParticipantID**: The anonymized participant IDs.
-   **Column B: Time**: The time elapsed in seconds.
-   **Column C: Timestamp**: The atomic clock time stamp.
-   **Column D: Perspiration**: Values of the perinasal perspiration signal in °C².
-   **Column E: HR.E4**: Values of the heart rate signal in BPM, measured with E4 on the participant's non-dominant hand.
-   **Column F: HR.AW**: Values of the heart rate signal in BPM, measured with the Apple Watch on the participant's dominant hand.
-   **Column G: HRV.IBI**: Values of the heart-rate variability, computed from inter-beat intervals (IBI, unit: ms), measured with E4 on the participant's non-dominant hand.

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
-   **Column J: Attempt.Correctness**: Correctness of the current attempt (1 = correct, 0 = incorrect).
-   **Column K: Attempt**: The number of the current attempt.
-   **Column L: Question.Order**: Problem order within each Question.Type A, W, V [1–12].
-   **Column M: Question.Number**: Alphanumeric label representing question order as given to participant. Levels: [1–36].
-   **Column N: ExamVersion**: Indicates the counterbalancing order of the given exam.
-   **Column O: Feedback**: Participants' feedback or comments (free-text).
-   **Column P: course_cat**: The academic course category of the participant (e.g., subject area).
#### **Psychometric Data** 
-   **Column Q: SAI.Score**: Scores of the State & Trait Anxiety Inventory, range [20–80].
####  **Valence Data**
-   **Column R: Gender**: The gender of participants with levels: [M ≡ Male, F ≡ Female].
-   **Column S: F_Angry**: Facial-expression intensity for "Angry."
-   **Column T: F_Disgusted**: Facial-expression intensity for "Disgusted."
-   **Column U: F_Afraid**: Facial-expression intensity for "Afraid."
-   **Column V: F_Happy**: Facial-expression intensity for "Happy."
-   **Column W: F_Sad**: Facial-expression intensity for "Sad."
-   **Column X: F_Surprised**: Facial-expression intensity for "Surprised."
-   **Column Y: F_Neutral**: Facial-expression intensity for "Neutral."
-   **Column Z: G_Direction**: Gaze direction of the participant (e.g., angle in degrees).
####  **SUS Data**
-   **Column AA: SUS.Q1**: Response to System Usability Scale question 1.
-   **Column AB: SUS.Q2**: Response to System Usability Scale question 2.
-   **Column AC: SUS.Q3**: Response to System Usability Scale question 3.
-   **Column AD: SUS.Q4**: Response to System Usability Scale question 4.
-   **Column AE: SUS.Q5**: Response to System Usability Scale question 5.
-   **Column AF: SUS.Q6**: Response to System Usability Scale question 6.
-   **Column AG: SUS.Q7**: Response to System Usability Scale question 7.
-   **Column AH: SUS.Q8**: Response to System Usability Scale question 8.
-   **Column AI: SUS.Q9**: Response to System Usability Scale question 9.
-   **Column AJ: SUS.Q10**: Response to System Usability Scale question 10.

------------------------------------------------------------------------

The **`data/processed/TAFFC_ModelData_N50.csv`** contains the following columns:

-   **Column A: ParticipantID**: The anonymized participant IDs.
-   **Column B: Question.Name**: Unique question ID.
-   **Column C: Question.Type**: Type of question with levels: [A ≡ Abstract, W ≡ Word, V ≡ Video, Example ≡ Initial practice problems].
-   **Column D: Gender**: The gender of participants with levels: [M ≡ Male, F ≡ Female].
-   **Column E: Perspiration**: Mean perinasal perspiration signal (°C²) across exam trials.
-   **Column F: PPNorm** *(normalized signal)*: Mean normalized perinasal perspiration (corrected) across exam trials.
-   **Column G: HR.E4**: Mean heart rate (BPM) measured with the E4 on the participant's non-dominant hand.
-   **Column H: HR.AW**: Mean heart rate (BPM) measured with the Apple Watch on the participant's dominant hand.
-   **Column I: HR.E4Norm** *(normalized signal)*: Mean normalized heart rate from E4 (corrected) across exam trials.
-   **Column J: HR.AWNorm** *(normalized signal)*: Mean normalized heart rate from Apple Watch across exam trials.
-   **Column K: HRVNorm** *(normalized signal)*: Mean corrected normalized HRV (NHRV.Corrected) across exam trials.
-   **Column L: SAI**: State Anxiety Inventory score (range 20–80).
-   **Column M: q.solv.time**: Number of data samples (rows) in the exam subset per participant-question (used as a proxy for solving time).
-   **Column N: Question.Order**: Problem order within each Question.Type category.
-   **Column O: Question.Number**: Alphanumeric label representing question order as given to the participant (e.g., 1–36).
-   **Column P: Grade**: Binary correctness indicator for this question (1 = correct, 0 = incorrect).
-   **Column Q: course_cat**: Academic course category of the participant (e.g., subject area).
-   **Column R: Time_mean**: Mean elapsed time (seconds) since session start across exam trials.

------------------------------------------------------------------------

# The folders are organized as follows:

-   `data/` contains the data used in the paper.
-   `figures/` contains the plots generated in the paper.
-   `scripts/` contains the scripts used to generate the data and plots.
-   `README.md` is this file.

# Script Set

-   **requirements.R**

-   **01-multilinear_models_v2.Rmd**

    -   Creates the Physiological Models, Valence Models, and Performance Model for the paper.
    -   Generates the model plots.

-   **02-stress_label_models_v2.Rmd**

    -   Creates the Stress Models for the paper.
    -   Generates the model plots.

# Paper: To be added

# Video: To be added
