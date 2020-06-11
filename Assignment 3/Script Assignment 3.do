
clear all 
cap log close
set more off 
cd "/Users/danielcabarcas/Documents/GitHub/causal-inference-course/Assignment 3"
log using "assignment3", replace

ren var1 patient
ren var2 y1
ren var3 y0
ren var4 age
ren var5 treatment_effect
ren var6 d
ren var7 outcome

label var patient "Patient"
label var y1 "Y1"
label var y0 "Y0"
label var age "Age"
label var treatment_effect "TE"
label var d "Treatment"
label var outcome "Outcome"

drop treatment_effect y1 y0 patient

*a
reg outcome d
//result equals SDO
outreg2 using assignment1_table1.doc, replace ctitle("Model 1") label

*b
reg outcome d age
outreg2 using assignment1_table1.doc, append ctitle ("Model 2") label
