# MRI Stroke Classification with Deep Learning model

![image](https://github.com/user-attachments/assets/552d6c61-9245-41a2-8976-6784e0fe413c)

This project is one of my personal data engineering/machine learning projects regarding the topic of my interest and a part of the project from apprenticeship program, BrainCodeCamp by BrainCode101 collaborated with Program Management Unit for Human Resources & Institutional. Development,Research and Innovation (PMU-B), and many neuroscience research institutes (such as Cognitive,Clinical & Computational
Neuroscience Lab at Chulalongkorn University).

### Main goal: 
1. Learning the basic on how to preprocess the MRI(Flair) file(NIFTI) for Machine learning/Deep learning model using FSL
2. Research and develop a model for MRI Stroke Classification 
3. Identify approaches for making the model developed for the task to be explainable
Extra: Plan future direction for the project, since the data provided from the open source with variety of data type so there is a possibility to working with this dataset in the future.

### Tools:
1. Visual Studio Code
2. Python 3.11 version
3. FSL framework for MRI data manipulation
4. Docker Desktop and WSL for operating FSL (This is required for windows user only because FSL is a linux support framework)
5. Jupyter Notebook for MRI preprocessing, Data Augmentation/Train & Test Split, and Model Development
6. Google Colab GPU for model training
7. Shell Script for downloading the dataset from Openneuro website
8. Git Bash for using shell script

### End-to-end process:
1. Fetch the stroke MRI data from Openneuro site using shell script (direct download is also available from the site). 
2. Setting up a Dockerfile on the VScode to create and image and container for using FSL python on Windows.
3. Run the dockerfile to start a session of FSL.
4. Data preprocessing the NIFTI(MRI) file of both stroke and non-stroke individuals (including setting up output environment, skull stripping, visualisation of brain images slices, and registration each brain data to be used) and save the preprocessed files as numpy array file(.npz).
5. Preparation for model development: Imbalance dataset checking, Data Augmentation, and Train/test split. 
6. Research regards the models that are used for MRI Stroke Classification task and Implement the finding.
7. Evaluate the models performance by observing their accuracy, loss, validation accuracy, validation loss, and other classification reports (precision, recall, AUC, and F1).
8. Identify approach for making models explainable and to decide which model is suitable for the task.


### Result
1. Be able to understand the basic of how to work with an MRI data, which is difficult to handle and take a long preprocessing time
2. Develop deep learning models that produce around 90% accuracy, 0.92 AUC score, and validation loss between 0.25-0.26
3. Be able to make the model explainable and be able to select the suitable model for the task based on the explainable result

Full process explanation and future direction can be found on this medium post:TBA

### Resources and References:
1. https://braincodecamp.web.app/
2. https://fsl.fmrib.ox.ac.uk/fsl/docs/#/
3. https://open.win.ox.ac.uk/pages/fslcourse/website/online_materials.html#topic_registration
4. https://openneuro.org/datasets/ds004889/versions/1.1.2
