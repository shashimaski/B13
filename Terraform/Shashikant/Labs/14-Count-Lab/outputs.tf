output "file_names" {
  value = [
    local_file.file[*].filename
  ]
}