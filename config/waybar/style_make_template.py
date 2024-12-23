template_file = 'style.template.css'
output_file = 'style.css'



variables = {
        'betterTransition': 'all 0.3s cubic-bezier(.55,-0.68,.48,1.682)'
}



# Read in the file
with open(template_file, 'r') as file:
  filedata = file.read()

# Replace the target string
for key, value in variables.items():
    filedata = filedata.replace(f'${{{key}}}', value)

# Write the file out again
with open(output_file, 'w') as file:
    file.write(filedata)
