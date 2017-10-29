-module(rna_transcription_tests).

-define(TESTED_MODULE, (sut(rna_transcription))).
-define(TEST_VERSION, 2).
-include("exercism.hrl").


rna_complement_of_cytosine_is_guanine_test() ->
    ?assertMatch("G", ?TESTED_MODULE:to_rna("C")).

rna_complement_of_guanine_is_cytosine_test() ->
    ?assertMatch("C", ?TESTED_MODULE:to_rna("G")).

rna_complement_of_thymine_is_adenine_test() ->
    ?assertMatch("A", ?TESTED_MODULE:to_rna("T")).

rna_complement_of_adenine_is_uracil_test() ->
    ?assertMatch("U", ?TESTED_MODULE:to_rna("A")).

rna_complement_test() ->
    ?assertMatch("UGCACCAGAAUU",
		 ?TESTED_MODULE:to_rna("ACGTGGTCTTAA")).

correctly_handles_invalid_input_rna_instead_of_dna_test() ->
    ?assertMatch(error, ?TESTED_MODULE:to_rna("U")).

correctly_handles_completely_invalid_dna_input_test() ->
    ?assertMatch(error, ?TESTED_MODULE:to_rna("XXX")).

correctly_handles_partially_invalid_dna_input_test() ->
    ?assertMatch(error,
		 ?TESTED_MODULE:to_rna("ACGTXXXCTTAA")).
