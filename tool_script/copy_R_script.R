# Specify the path to the file you want to copy
source_file <- "/Users/lindsaybai/Desktop/BIOL8706/phylogenetic_project/drosophila_introgression_data/test_script.R"

# Specify the path to the directory containing the folders
folders_directory <- "/Users/lindsaybai/Desktop/BIOL8706/phylogenetic_project/drosophila_introgression_data/test_folder"

# Get a list of all subdirectories in the specified directory
subdirectories <- list.dirs(folders_directory, full.names = TRUE, recursive = FALSE)

# Loop through each subdirectory
for (subdir in subdirectories) {
  # Generate the destination path by combining the subdirectory path and the source file name
  destination_file <- file.path(subdir, basename(source_file))
  
  # Copy the source file to the destination
  file.copy(from = source_file, to = destination_file, overwrite = TRUE)
  
  # Print a message to indicate the copy process
  cat("Copied", source_file, "to", destination_file, "\n")
}
