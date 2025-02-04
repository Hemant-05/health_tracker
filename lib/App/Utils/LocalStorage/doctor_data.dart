class DoctorData {
  // Available time slots
  final List<String> availableTimeSlots = [
    "9:00 am",
    "9:30 am",
    "10:00 am",
    "10:30 AM",
    "11:00 am",
    "11:30 am",
    "2:00 pm",
    "2:30 pm",
    "3:00 pm",
    "3:30 PM",
    "4:00 pm",
    "4:30 PM",
  ];

  static final List<Map<String, dynamic>> specialties = [
    {
      "title": "Cardiology",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Michael Johnson",
          "specialist_in": "Interventional Cardiologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor25.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Laura Adams",
          "specialist_in": "Pediatric Cardiologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor24.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. David Brown",
          "specialist_in": "Electrophysiologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor23.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Amanda Wilson",
          "specialist_in": "Heart Failure Specialist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor22.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Christopher Miller",
          "specialist_in": "Cardiothoracic Surgeon",
          "fav": false,
          "image": "assets/images/doctorImages/doctor21.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Rachel Garcia",
          "specialist_in": "Preventive Cardiologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor20.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Anthony Martinez",
          "specialist_in": "Interventional Cardiologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor19.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Megan Lee",
          "specialist_in": "Pediatric Cardiologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor18.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Brian Clark",
          "specialist_in": "Electrophysiologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor17.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Mark Turner",
          "specialist_in": "Cardiovascular Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor16.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Olivia Harris",
          "specialist_in": "Preventive Cardiologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor15.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Emily Scott",
          "specialist_in": "Pediatric Cardiologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor14.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Henry Walker",
          "specialist_in": "Electrophysiologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor13.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Laura Robinson",
          "specialist_in": "Heart Failure Specialist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor12.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Samuel Collins",
          "specialist_in": "Cardiothoracic Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor11.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
        {
          "name": "Dr. Alice Mitchell",
          "specialist_in": "Preventive Cardiologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor10.png",
          "discription":
              "Specializes in diagnosing and treating diseases and conditions of the heart and blood vessels, such as coronary artery disease, heart failure, arrhythmias, and hypertension."
        },
      ]
    },
    {
      "title": "Dermatology",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Sarah Johnson",
          "specialist_in": "Dermatologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor9.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Emily Carter",
          "specialist_in": "Cosmetic Dermatologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor8.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. William Smith",
          "specialist_in": "Pediatric Dermatologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor7.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Olivia Brown",
          "specialist_in": "Dermatopathologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor6.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. James Wilson",
          "specialist_in": "Mohs Surgeon",
          "fav": false,
          "image": "assets/images/doctorImages/doctor5.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Sophia Martinez",
          "specialist_in": "Immunodermatologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor4.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Ethan Davis",
          "specialist_in": "Dermatologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor3.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Mia Taylor",
          "specialist_in": "Cosmetic Dermatologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor2.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Daniel Moore",
          "specialist_in": "Dermatopathologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor1.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Isabella Parker",
          "specialist_in": "Dermatologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor33.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Nathaniel White",
          "specialist_in": "Cosmetic Dermatologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor32.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Abigail Clark",
          "specialist_in": "Pediatric Dermatologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor31.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Samuel Davis",
          "specialist_in": "Dermatologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor30.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Natalie Scott",
          "specialist_in": "Cosmetic Dermatologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor29.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
        {
          "name": "Dr. Olivia Clark",
          "specialist_in": "Pediatric Dermatologist",
          "fav": false,
          "image": "assets/images/doctorImages/doctor28.png",
          "discription":
              " Focuses on conditions related to the skin, hair, and nails, including acne, eczema, psoriasis, and skin cancer. Also offers cosmetic treatments like Botox and fillers."
        },
      ]
    },
    {
      "title": "General Medicine",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Karen White",
          "specialist_in": "General Practitioner",
          "fav": false,
          "image": "assets/images/doctorImages/doctor27.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Steven Hall",
          "specialist_in": "Family Medicine",
          "fav": false,
          "image": "assets/images/doctorImages/doctor26.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Linda Collins",
          "specialist_in": "Internal Medicine",
          "fav": true,
          "image": "assets/images/doctorImages/doctor25.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Michelle Rogers",
          "specialist_in": "Preventive Medicine",
          "fav": true,
          "image": "assets/images/doctorImages/doctor24.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Samuel Green",
          "specialist_in": "Primary Care Physician",
          "fav": true,
          "image": "assets/images/doctorImages/doctor23.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Brenda Lee",
          "specialist_in": "Urgent Care Physician",
          "fav": true,
          "image": "assets/images/doctorImages/doctor22.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Patrick Brown",
          "specialist_in": "Rural Health Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor21.png",
        },
        {
          "name": "Dr. Megan Carter",
          "specialist_in": "Chronic Disease Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor20.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Jacob Scott",
          "specialist_in": "Preventive Healthcare Expert",
          "fav": true,
          "image": "assets/images/doctorImages/doctor19.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Alice Gray",
          "specialist_in": "General Internal Medicine",
          "fav": true,
          "image": "assets/images/doctorImages/doctor18.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Leo Adams",
          "specialist_in": "General Practitioner",
          "fav": true,
          "image": "assets/images/doctorImages/doctor17.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Lily Brooks",
          "specialist_in": "Family Medicine",
          "fav": true,
          "image": "assets/images/doctorImages/doctor16.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Grace Martin",
          "specialist_in": "Internal Medicine",
          "fav": true,
          "image": "assets/images/doctorImages/doctor15.png",
        },
        {
          "name": "Dr. Michael Ford",
          "specialist_in": "Primary Care Physician",
          "fav": true,
          "image": "assets/images/doctorImages/doctor14.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
        {
          "name": "Dr. Susan Harris",
          "specialist_in": "Urgent Care Physician",
          "fav": true,
          "image": "assets/images/doctorImages/doctor13.png",
          "discription":
              "Provides comprehensive healthcare, managing common illnesses, chronic diseases, preventive care, and general medical conditions across all age groups."
        },
      ]
    },
    {
      "title": "Gynecology",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Nancy Carter",
          "specialist_in": "Obstetrician",
          "fav": true,
          "image": "assets/images/doctorImages/doctor12.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Susan Harris",
          "specialist_in": "Gynecologic Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor11.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Patricia Wright",
          "specialist_in": "Reproductive Endocrinologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor10.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Fiona Blake",
          "specialist_in": "Maternal-Fetal Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor9.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Edward Thompson",
          "specialist_in": "Minimally Invasive Gynecologic Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor8.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Ashley Cooper",
          "specialist_in": "Adolescent Gynecologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor7.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Kevin Lewis",
          "specialist_in": "Urogynecologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor6.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Emma Hill",
          "specialist_in": "Menopause Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor5.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Hannah Brooks",
          "specialist_in": "Fertility Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor4.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Brian Watson",
          "specialist_in": "Gynecological Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor3.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Lucy Martinez",
          "specialist_in": "Obstetrician",
          "fav": true,
          "image": "assets/images/doctorImages/doctor2.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Julia Young",
          "specialist_in": "Gynecologic Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor1.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Olivia White",
          "specialist_in": "Reproductive Endocrinologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor33.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Megan Evans",
          "specialist_in": "Maternal-Fetal Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/docto32.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
        {
          "name": "Dr. Emily King",
          "specialist_in": "Adolescent Gynecologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor31.png",
          "discription":
              "Specializes in women’s reproductive health, including menstrual disorders, fertility issues, pregnancy care, and menopausal management."
        },
      ]
    },
    {
      "title": "Odontology",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Mark Taylor",
          "specialist_in": "Orthodontist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor30.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Angela Brown",
          "specialist_in": "Endodontist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor29.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. James Robinson",
          "specialist_in": "Periodontist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor28.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Heather Green",
          "specialist_in": "Pediatric Dentist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor27.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Charles White",
          "specialist_in": "Prosthodontist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor26.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Emily Carter",
          "specialist_in": "Dental Public Health Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor25.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Justin Lewis",
          "specialist_in": "Oral Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor24.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Sarah Evans",
          "specialist_in": "Dental Hygienist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor23.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Alexander Green",
          "specialist_in": "Maxillofacial Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor22.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Clara Brown",
          "specialist_in": "General Dentist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor21.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Samuel Davis",
          "specialist_in": "Orthodontist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor20.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Olivia Clark",
          "specialist_in": "Periodontist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor19.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Rachel Harris",
          "specialist_in": "Prosthodontist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor18.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Michelle Young",
          "specialist_in": "Pediatric Dentist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor17.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
        {
          "name": "Dr. Daniel Moore",
          "specialist_in": "Oral Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor16.png",
          "discription":
              "Treats diseases and conditions of the teeth, gums, and oral cavity, offering services such as fillings, extractions, root canals, and dental hygiene advice."
        },
      ]
    },
    {
      "title": "Oncology",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Karen Smith",
          "specialist_in": "Medical Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor15.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Anthony Mitchell",
          "specialist_in": "Radiation Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor14.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Olivia Scott",
          "specialist_in": "Surgical Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor13.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Robert Adams",
          "specialist_in": "Pediatric Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor12.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Sarah Cooper",
          "specialist_in": "Hematologist Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor11.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Mark Lee",
          "specialist_in": "Gynecologic Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor10.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Laura Taylor",
          "specialist_in": "Neuro-Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor9.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Michael Parker",
          "specialist_in": "Thoracic Oncologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor8.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Jessica White",
          "specialist_in": "Breast Cancer Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor7.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Steven Brown",
          "specialist_in": "Lung Cancer Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor6.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Hannah Evans",
          "specialist_in": "Colorectal Cancer Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor5.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
        {
          "name": "Dr. Elizabeth Green",
          "specialist_in": "Prostate Cancer Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor4.png",
          "discription":
              "Specializes in diagnosing and treating cancer, providing chemotherapy, radiation therapy, and palliative care."
        },
      ]
    },
    {
      "title": "Orthopedics",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. James Roberts",
          "specialist_in": "Orthopedic Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor3.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Emily Wilson",
          "specialist_in": "Sports Medicine Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor2.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Olivia Martin",
          "specialist_in": "Pediatric Orthopedic Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor1.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Thomas Taylor",
          "specialist_in": "Joint Replacement Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor33.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Andrew Green",
          "specialist_in": "Spinal Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor32.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Laura Davis",
          "specialist_in": "Foot and Ankle Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor31.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Sarah Lee",
          "specialist_in": "Orthopedic Trauma Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor30.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Michael Clark",
          "specialist_in": "Hand Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor29.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. David Allen",
          "specialist_in": "Knee Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor28.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Anna Wright",
          "specialist_in": "Hip Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor27.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Benjamin Harris",
          "specialist_in": "Sports Rehabilitation Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor26.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
        {
          "name": "Dr. Julia Carter",
          "specialist_in": "Shoulder Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor25.png",
          "discription":
              " Treats musculoskeletal conditions, including fractures, joint pain, arthritis, and spine disorders, often using surgical and non-surgical methods."
        },
      ]
    },
    {
      "title": "Ophthalmology",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Daniel Harris",
          "specialist_in": "Ophthalmologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor24.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Olivia Brown",
          "specialist_in": "Pediatric Ophthalmologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor23.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Steven Lee",
          "specialist_in": "Retina Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor22.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Rachel Scott",
          "specialist_in": "Glaucoma Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor21.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. James Wilson",
          "specialist_in": "Cornea Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor20.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Michael Adams",
          "specialist_in": "Cataract Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor19.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Emily Taylor",
          "specialist_in": "Oculoplastic Surgeon",
          "fav": true,
          "image": "assets/images/doctorImages/doctor18.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Kevin Parker",
          "specialist_in": "Ocular Oncology Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor17.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Sarah Carter",
          "isMessaged": false,
          "specialist_in": "Neuro-Ophthalmologist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor16.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Elizabeth Scott",
          "specialist_in": "Refractive Surgery Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor15.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Thomas Clark",
          "specialist_in": "Low Vision Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor14.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
        {
          "name": "Dr. Jessica Lewis",
          "specialist_in": "Pediatric Eye Care Specialist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor13.png",
          "discription":
              "Specializes in eye and vision care, including diagnosing and treating conditions like cataracts, glaucoma, and vision loss. Performs surgeries such as LASIK and cataract removal."
        },
      ]
    },
    {
      "title": "Physiotherapy",
      "sub_title": "Find your doctor",
      "doctors_list": [
        {
          "name": "Dr. Robert Miller",
          "specialist_in": "Sports Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor12.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Emily Brown",
          "specialist_in": "Orthopedic Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor11.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Sarah White",
          "specialist_in": "Neurological Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor10.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. John Adams",
          "specialist_in": "Cardiopulmonary Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor9.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Patricia Harris",
          "specialist_in": "Pediatric Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor8.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Michael Evans",
          "specialist_in": "Musculoskeletal Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor7.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Olivia Green",
          "specialist_in": "Geriatric Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor6.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. William Clark",
          "specialist_in": "Women’s Health Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor5.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Sophia Lewis",
          "specialist_in": "Rehabilitation Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor4.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. David White",
          "specialist_in": "Post-Surgery Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor3.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Anna Carter",
          "specialist_in": "Pain Management Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor2.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
        {
          "name": "Dr. Nathaniel King",
          "specialist_in": "Sports Rehabilitation Physiotherapist",
          "fav": true,
          "image": "assets/images/doctorImages/doctor1.png",
          "discription":
              "Helps patients recover from injuries, surgeries, or chronic conditions using physical exercises, massage, and therapeutic techniques to improve mobility and relieve pain."
        },
      ],
    }
  ];
}
