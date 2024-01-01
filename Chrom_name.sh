
# Input and output file names
input_file="input_file.vcf"
output_file="output_file.vcf"

# Defining the chromosome names in an associative array

declare -A chromosome_mapping=(
["NC_000001.11"]="1"
["NC_000002.12"]="2"
["NC_000003.12"]="3"
["NC_000004.12"]="4"
["NC_000005.10"]="5"
["NC_000006.12"]="6"
["NC_000007.14"]="7"
["NC_000008.11"]="8"
["NC_000009.12"]="9"
["NC_000010.11"]="10"
["NC_000011.10"]="11"
["NC_000012.12"]="12"
["NC_000013.11"]="13"
["NC_000014.9"]="14"
["NC_000015.10"]="15"
["NC_000016.10"]="16"
["NC_000017.11"]="17"
["NC_000018.10"]="18"
["NC_000019.10"]="19"
["NC_000020.11"]="20"
["NC_000021.9"]="21"
["NC_000022.11"]="22"
["NC_000023.11"]="X"
["NC_000024.10"]="Y"
["NC_000003.13"]="MT"
)
sed_expr=""
for old_chromosome in "${!chromosome_mapping[@]}"; do
    new_chromosome="${chromosome_mapping[$old_chromosome]}"
    sed_expr+="s/$old_chromosome/$new_chromosome/g;"
done

# Use sed to perform the replacement
sed "$sed_expr" "$input_file" > "$output_file"

echo "Conversion complete. Output written to $output_file"
