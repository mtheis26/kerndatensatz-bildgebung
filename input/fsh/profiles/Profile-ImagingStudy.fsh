Profile: MII_PR_ImagingStudy_ImagingStudy
Parent: ImagingStudy
Id: mii-pr-imagingstudy-imagingstudy
Title: "MII PR ImagingStudy ImagingStudy"
Description: "Dieses Profil beschreibt die Medikation, die angesetzt, geplant oder verabreicht wird. Es kann sich um ein Fertigarzneimittel oder eine Rezeptur handeln. Auch die Angabe nur des Wirkstoffes ist möglich. Die Angabe mindestens eines Wirkstoffes wird verlangt."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-bildgebung/StructureDefinition/ImagingStudy"
* insert Translation(^name, en-US, MII_PR_Medikation_Medication)
* insert Translation(^title, en-US, MII PR Medikation Medication)
* insert Translation(^description, en-US, The profile describes a prepackaged drug or formulation.)
* insert PR_CS_VS_Version

// Value set for bodySite (Snomed)
ValueSet: BodySiteVS
Id: body-site-vs
Title: "Body Site Value Set"
Description: "Includes body site codes from SNOMED CT"
* include codes from system http://snomed.info/sct where concept is-a #442083009 "Anatomical or acquired body structure (bpdy structure)"

* series.uid 1..1 MS 
* series.number 0..1 MS
* series.modality 1..1 MS from https://dicom.nema.org/medical/dicom/current/output/chtml/part16/sect_CID_29.html
* series.description 0..1 MS
* series.numberOfInstances 0..1 MS
* series.bodySite 0..1 MS from BodySiteVS
* series.laterality 0..1 MS from http://hl7.org/fhir/ValueSet/bodysite-laterality
* series.started 0..1 MS
* series.performer 0..* MS 
* series.performer.function 0..1 MS from http://hl7.org/fhir/ValueSet/series-performer-function
* series.performer.actor 1..1 MS
* series.instance 0..* MS
* series.instance.uid 1..1 MS
* series.instance.sopClass 1..1 MS from https://dicom.nema.org/medical/dicom/current/output/chtml/part04/sect_B.5.html#table_B.5-1
* series.instance.number 0..1 MS
* series.instance.title 0..1 MS 

// Datentyp einschränken, z.B. only Reference(Practioner)
// Value Set setzen: from url value set

