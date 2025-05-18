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

**`data/Affective_Math_Dataset_N50_BL.csv`** contains the following columns:

-   **Column A: ParticipantID**: The anonymized participant IDs.
-   **Column B: Time**: The time elapsed in seconds.
-   **Column C: Timestamp**: The atomic clock time stamp.
-   **Column D: Perspiration**: Values of the perinasal perspiration signal in °C².
-   **Column E: HR.E4**: Values of the heart rate signal in BPM, measured with E4 on the participant's non-dominant hand.
-   **Column F: HR.AW**: Values of the heart rate signal in BPM, measured with the Apple Watch on the participant's dominant hand.
-   **Column G: HRV.IBI**: Values of the heart-rate variability, computed from inter-beat intervals (IBI, unit: ms), measured with E4 on the participant’s non-dominant hand.

**`data/Affective_Math_Dataset_N50_Exam.csv`** contains the following columns:

#### **Physiological and other data**

-   **ParticipantID**: The anonymized participant IDs.\
-   **Time**: Time elapsed in seconds since the start of the present session.\
-   **Timestamp**: The atomic-clock time stamp.\
-   **Perspiration**: Values of the perinasal perspiration signal in °C².\
-   **HR.E4**: Heart-rate (BPM), measured with the E4 on the participant’s non-dominant hand.\
-   **HR.AW**: Heart-rate (BPM), measured with the Apple Watch on the participant’s dominant hand.\
-   **HRV.IBI**: Heart-rate variability, computed from inter-beat intervals (IBI, unit: ms), measured with E4 on the participant’s non-dominant hand.
-   **Question.Name**: Unique question ID.\
-   **Question.Type**: Type of question with levels: [A ≡ Abstract, W ≡ Word, V ≡ Video, Example ≡ Initial practice problems].\
-   **Attempt.Correctness**: Correctness of the current attempt (1 = correct, 0 = incorrect).\
-   **Attempt**: The number of the current attempt.\
-   **Question.Order**: Problem order within each Question.Type (AWV 1–12).\
-   **Question.Number**: Alphanumeric label representing question order as given to participant. Levels: [Ex1, Ex2, 1–36].\
-   **ExamVersion**: Indicates the counterbalancing order of the given exam.\
-   **Feedback**: Participants’ feedback or comments (free-text).\
-   **course_cat**: The academic course category of the participant (e.g., subject area).\
-   **SAI.Score**: Scores of the State & Trait Anxiety Inventory, range [20–80].\
-   **Gender**: The gender of participants with levels: [M ≡ Male, F ≡ Female].\
-   **F_Angry**: Facial-expression intensity for “Angry.”\
-   **F_Disgusted**: Facial-expression intensity for “Disgusted.”\
-   **F_Afraid**: Facial-expression intensity for “Afraid.”\
-   **F_Happy**: Facial-expression intensity for “Happy.”\
-   **F_Sad**: Facial-expression intensity for “Sad.”\
-   **F_Surprised**: Facial-expression intensity for “Surprised.”\
-   **F_Neutral**: Facial-expression intensity for “Neutral.”\
-   **G_Direction**: Gaze direction of the participant (e.g., angle in degrees).\
-   **SUS.Q1**: Response to System Usability Scale question 1.\
-   **SUS.Q2**: Response to System Usability Scale question 2.\
-   **SUS.Q3**: Response to System Usability Scale question 3.\
-   **SUS.Q4**: Response to System Usability Scale question 4.\
-   **SUS.Q5**: Response to System Usability Scale question 5.\
-   **SUS.Q6**: Response to System Usability Scale question 6.\
-   **SUS.Q7**: Response to System Usability Scale question 7.\
-   **SUS.Q8**: Response to System Usability Scale question 8.\
-   **SUS.Q9**: Response to System Usability Scale question 9.\
-   **SUS.Q10**: Response to System Usability Scale question 10.

------------------------------------------------------------------------

The **`data/TAFFC_ModelData_N50.csv`** contains the following columns:

-   **ParticipantID**: The anonymized participant IDs.\
-   **Question.Name**: Unique question ID.\
-   **Question.Type**: Type of question with levels: [A ≡ Abstract, W ≡ Word, V ≡ Video, Example ≡ Initial practice problems].\
-   **Gender**: The gender of participants with levels: [M ≡ Male, F ≡ Female].\
-   **Perspiration**: Mean perinasal perspiration signal (°C²) across exam trials.\
-   **PPNorm** *(normalized signal)*: Mean normalized perinasal perspiration (corrected) across exam trials.\
-   **HR.E4**: Mean heart rate (BPM) measured with the E4 on the participant’s non-dominant hand.\
-   **HR.AW**: Mean heart rate (BPM) measured with the Apple Watch on the participant’s dominant hand.\
-   **HR.E4Norm** *(normalized signal)*: Mean normalized heart rate from E4 (corrected) across exam trials.\
-   **HR.AWNorm** *(normalized signal)*: Mean normalized heart rate from Apple Watch across exam trials.\
-   **HRVNorm** *(normalized signal)*: Mean corrected normalized HRV (NHRV.Corrected) across exam trials.\
-   **SAI**: State Anxiety Inventory score (range 20–80).\
-   **q.solv.time**: Number of data samples (rows) in the exam subset per participant-question (used as a proxy for solving time).\
-   **Question.Order**: Problem order within each Question.Type category.\
-   **Question.Number**: Alphanumeric label representing question order as given to the participant (e.g., 1–36).\
-   **Grade**: Binary correctness indicator for this question (1 = correct, 0 = incorrect).\
-   **course_cat**: Academic course category of the participant (e.g., subject area).\
-   **Time_mean**: Mean elapsed time (seconds) since session start across exam trials.

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
