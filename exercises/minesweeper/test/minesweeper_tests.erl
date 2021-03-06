%% Generated with 'testgen v0.2.0'
%% Revision 1 of the exercises generator was used
%% https://github.com/exercism/problem-specifications/raw/42dd0cea20498fd544b152c4e2c0a419bb7e266a/exercises/minesweeper/canonical-data.json
%% This file is automatically generated from the exercises canonical data.

-module(minesweeper_tests).

-include_lib("erl_exercism/include/exercism.hrl").
-include_lib("eunit/include/eunit.hrl").




'1_no_rows_test_'() ->
    Input=[

    ],
    Expected=[

    ],
    {"no rows",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'2_no_columns_test_'() ->
    Input=[
        ""
    ],
    Expected=[
        ""
    ],
    {"no columns",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'3_no_mines_test_'() ->
    Input=[
        "   ",
        "   ",
        "   "
    ],
    Expected=[
        "   ",
        "   ",
        "   "
    ],
    {"no mines",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'4_minefield_with_only_mines_test_'() ->
    Input=[
        "***",
        "***",
        "***"
    ],
    Expected=[
        "***",
        "***",
        "***"
    ],
    {"minefield with only mines",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'5_mine_surrounded_by_spaces_test_'() ->
    Input=[
        "   ",
        " * ",
        "   "
    ],
    Expected=[
        "111",
        "1*1",
        "111"
    ],
    {"mine surrounded by spaces",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'6_space_surrounded_by_mines_test_'() ->
    Input=[
        "***",
        "* *",
        "***"
    ],
    Expected=[
        "***",
        "*8*",
        "***"
    ],
    {"space surrounded by mines",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'7_horizontal_line_test_'() ->
    Input=[
        " * * "
    ],
    Expected=[
        "1*2*1"
    ],
    {"horizontal line",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'8_horizontal_line_mines_at_edges_test_'() ->
    Input=[
        "*   *"
    ],
    Expected=[
        "*1 1*"
    ],
    {"horizontal line, mines at edges",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'9_vertical_line_test_'() ->
    Input=[
        " ",
        "*",
        " ",
        "*",
        " "
    ],
    Expected=[
        "1",
        "*",
        "2",
        "*",
        "1"
    ],
    {"vertical line",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'10_vertical_line_mines_at_edges_test_'() ->
    Input=[
        "*",
        " ",
        " ",
        " ",
        "*"
    ],
    Expected=[
        "*",
        "1",
        " ",
        "1",
        "*"
    ],
    {"vertical line, mines at edges",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'11_cross_test_'() ->
    Input=[
        "  *  ",
        "  *  ",
        "*****",
        "  *  ",
        "  *  "
    ],
    Expected=[
        " 2*2 ",
        "25*52",
        "*****",
        "25*52",
        " 2*2 "
    ],
    {"cross",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.

'12_large_minefield_test_'() ->
    Input=[
        " *  * ",
        "  *   ",
        "    * ",
        "   * *",
        " *  * ",
        "      "
    ],
    Expected=[
        "1*22*1",
        "12*322",
        " 123*2",
        "112*4*",
        "1*22*2",
        "111111"
    ],
    {"large minefield",
     ?_assertMatch(Expected, minesweeper:annotate(Input))}.
