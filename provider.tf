provider "google" {
credentials = "${file("credentials.json")}"
project = "adavidov" // Need to fill this field
region = "europe-west1"
}