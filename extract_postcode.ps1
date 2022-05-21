# import file to extract data from

$input_file = "postcode_input.txt";
$output_file = "postcode_output.csv";

$postcode_regex = "([Gg][Ii][Rr] 0[Aa]{2})|((([A-Za-z][0-9]{1,2})|(([A-Za-z][A-Ha-hJ-Yj-y][0-9]{1,2})|(([A-Za-z][0-9][A-Za-z])|([A-Za-z][A-Ha-hJ-Yj-y][0-9][A-Za-z]?))))\s?[0-9][A-Za-z]{2})";

$post_codes = @{};

$exp_matches = Select-string -Pattern $postcode_regex .\cancer_research.json;

$index = 0;

foreach ($exp_match in $exp_matches) {
 #$exp_match.Matches.value;
 # output index of match
    $post_codes[$index] = $exp_match.Matches.value;


 #$post_codes["postcode"] = $exp_match.Matches.Value;
$index ++
}

#ConvertTo-Csv -InputObject $post_codes  | Out-File $output_file; 

