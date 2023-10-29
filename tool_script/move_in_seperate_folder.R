# Specify the path to your source folder and destination folder
source_folder <- "/Users/lindsaybai/Desktop/BIOL8706/Phylogenetic_project_v2_dest/phylogenetic_project_v2_server/Data"
destination_folder <- "/Users/lindsaybai/Desktop/BIOL8706/Phylogenetic_project_v2_dest/phylogenetic_project_v2_server/New_folder"

# List all the files in the source folder
files <- list.files(source_folder, full.names = TRUE)

# Create a folder for each file and move the file into that folder
for (file_path in files) {
  # Extract the file name without extension
  file_name <- tools::file_path_sans_ext(basename(file_path))
  
  # Create a folder with the same name as the file (if it doesn't exist)
  folder_path <- file.path(destination_folder, file_name)
  if (!dir.exists(folder_path)) {
    dir.create(folder_path)
  }
  
  # Move the file into the created folder
  new_file_path <- file.path(folder_path, basename(file_path))
  file.rename(file_path, new_file_path)
}
