function Reverse-String { 
    # Test Switch
    param ([switch]$test)
    if ($test) {
        # Test the function with the following strings
        $test_in = "Hello World"
        $test_out = Reverse-String $test_in
        echo "$test_in`t`t$test_out"
        
        $test_in = "Here we go."
        $test_out = Reverse-String $test_in
        echo "$test_in`t`t$test_out"
        
        $test_in = "Code Kata is fun!"
        $test_out = Reverse-String $test_in
        echo "$test_in`t`t$test_out"
        
        return
    }

    # Actual function
    $in_string=$args[0]
    $out_string=""
    foreach ($x in $in_string.ToCharArray())
    {
        # Append each letter to the beginning of the string
        $out_string = $x + $out_string
    }
    echo $out_string
}
