
<div align="center">
  <h1>ImgRessor - A Robust Image Compressor using 2D FFT in Matlab</h1>
  <a class="header-badge" target="_blank" href="https://www.linkedin.com/in/khatoonintech/">
  <img src="https://img.shields.io/badge/style--5eba00.svg?label=LinkedIn&logo=linkedin&style=social">
  </a>
  

<sub>Author:
<a href="https://www.linkedin.com/in/Khatoonintech/" target="_blank">Ayesha Noreen</a><br>
<small> <i>#KhatoonInTech CE' 27 @BZU |Agentic AI & Automation Engr @ DevRolin | ByteWise Certified ML/DL Engineer|GSoC Contributor | SWEfellow: Confiniti. ,HeadStarterAI</i> </small>
</sub>
<br>
<br>
<br>

 ![portal ](../main/compressed_output.png)

</div>

---

#  🖼️ ImgRessor - A Robust Image Compressor using 2D FFT in Matlab


This project demonstrates **image compression** using the **2D Fast Fourier Transform (FFT)** technique in MATLAB. It applies frequency-domain filtering to reduce the amount of frequency components, allowing for lossy image compression that retains perceptual quality while reducing data.

---

## 📚 Table of Contents

- [Features](#features)
- [Requirements](#requirements)
- [File Structure](#file-structure)
- [How It Works](#how-it-works)
- [How to Use](#how-to-use)
  - [Step 1: Add the function](#step-1-add-the-function)
  - [Step 2: Call the function](#step-2-call-the-function)
- [Output](#output)
- [Compression Tip](#compression-tip)
- [Concepts Involved](#concepts-involved)
- [Real-World Applications](#real-world-applications)
- [License](#license)
- [Author](#author)

---

## 📌 Features

- Supports **RGB color images**
- Retains a **customizable percentage of frequency components**
- Applies **FFT per channel (R, G, B)**
- Reconstructs image using inverse FFT
- Displays **side-by-side comparison**
- Saves output figure to file

---

## 🔧 Requirements

- MATLAB R2018 or later
- No special toolboxes needed (uses core functions)

---

## 📂 File Structure

```
.
├── fft_image_compress.m      # Main MATLAB function
├── input_image.png                  # Sample test image (or any RGB image)
├── compressed_output.png        # Output figure saved by script
├── README.md                        #Project documentation

```
---

## 🚀 How It Works

1. Reads input image (RGB or grayscale)
2. Converts image to **double precision \[0, 1]**
3. Applies `fft2()` and `fftshift()` to shift frequency components
4. Retains only a top fraction (`keep_ratio`) of high-magnitude components
5. Applies `ifft2()` and `ifftshift()` to reconstruct the image
6. Displays and saves the compressed result

---
## 💻 How to Use

### 🔁 Step 1: Clone the Repository

Open MATLAB and clone the GitHub repository using the command line or GitHub Desktop:

```bash
git clone https://github.com/KhatoonInTech/Image-Compressor-in-Matlab.git
cd Image-Compressor-in-Matlab
```

> Make sure the cloned folder contains `fft_image_compress.m` and at least one image (e.g., `input_image.png`).

---

### ⚙️ Step 2: Open MATLAB and Set Path

In MATLAB:

1. Go to **Home > Set Path > Add Folder** or use this command:

   ```matlab
   addpath('path_to_cloned_repo');
   ```

2. Or navigate to the cloned repo in MATLAB:

   ```matlab
   cd 'path_to_cloned_repo'
   ```

---

### 🧪 Step 3: Run the Function

Now call the function directly from the MATLAB command window or a script:

```matlab
compressed = fft_image_compress_color('input_image.png', 0.05);
```

* `input_image.png`: Any RGB image in your working directory
* `0.05`: Retains top 5% of frequency components

---

## 📸 Output

* The original image and compressed version are displayed side-by-side.
* The output figure is saved as: `compressed_output.png`.

---

## 📈 Compression Tip

* Lower `keep_ratio` → higher compression, more quality loss
* Recommended values: `0.01` to `0.10`

---

## 📚 Concepts Involved

* **Fourier Transform (FFT2)** – to analyze frequency content
* **Frequency Filtering** – remove low-impact frequency coefficients
* **Inverse FFT** – to reconstruct spatial image from filtered frequency domain

---

## 🧠 Real-World Applications

* Satellite image storage
* MRI image compression
* Frequency-based denoising
* Video frame preprocessing
* Data reduction in embedded systems

---

## 📝 License

This project is open-source and free to use for educational or research purposes.

---


<div align="center">
<h3>For any query/help ,please contact our developer:</h3>  
Developer : <a href="https://www.linkedin.com/in/Khatoonintech/" target="_blank">Ayesha Noreen</a><br>
   <small> ByteWise Certified ML/DL Engineer|GSoC Contributor | SWEfellow: Confiniti. ,HeadStarterAI </small>
<br> <a href="https://www.github.com/Khatoonintech/" target="_blank"> Don't forget to ⭐ our repo </a><br>


</div>


