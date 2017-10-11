<?php

$finder = PhpCsFixer\Finder::create()
    ->notPath('vendor')
    ->in(__DIR__)
    ->name('*.php')
    ->notName('')
    ->ignoreDotFiles(true)
    ->ignoreVCS(true);

$rules = [
    '@Symfony' => true,
    '@PSR2' => true,
    'psr0' => false,
    'psr4' => false,
    'align_multiline_comment' => [
        'comment_type' => 'all_multiline',
    ],
    'array_syntax' => [
        'syntax' => 'short',
    ],
    'binary_operator_spaces' => [
        'default' => 'single_space',  // 'align', 'align_single_space', 'align_single_space_minimal', 'single_space', or null
    ],
    'blank_line_before_statement' => [
        'statements' => ['break', 'continue', 'declare', 'return', 'throw', 'try'],
    ],
    'braces' => [
        'allow_single_line_closure' => false,  // bool
        'position_after_anonymous_constructs' => 'same',  // 'same' or 'next'
        'position_after_control_structures' => 'same',  // 'same' or 'next'
        'position_after_functions_and_oop_constructs' => 'next', // 'same' or 'next'
    ],
    'cast_spaces' => [
        'space' => 'single', // 'single' or 'none'
    ],
    'class_definition' => [
        'multiLineExtendsEachSingleLine' => false,  // bool
        'singleItemSingleLine' => false,  // bool
        'singleLine' => false,  // bool
    ],
    'concat_space' => [
        'spacing' => 'none',  // 'one' or 'none'
    ],
    'declare_equal_normalize' => [
        'space' => 'none',  // 'none' or 'single'
    ],
    'function_declaration' => [
        'closure_function_spacing' => 'one',  // 'none' or 'one'
    ],
    'header_comment' => [
        'commentType' => 'PHPDoc',  // 'comment' or 'PHPDoc'
        'header' => '',
        'location' => 'after_declare_strict',  // 'after_declare_strict' or 'after_open'
        'separate' => 'both',  // 'both', 'bottom', 'none' or 'top'
    ],
    'list_syntax' => [
        'syntax' => 'long',  // 'long' or 'short'
    ],
    'method_argument_space' => [
        'ensure_fully_multiline' => true,  // bool
        'keep_multiple_spaces_after_comma' => false,  // bool
    ],
    'no_break_comment' => [
        'comment_text' => 'no break',
    ],
    'no_mixed_echo_print' => [
        'use' => 'echo',  // 'echo' or 'print'
    ],
    'no_spaces_around_offset' => [
        'positions' => [
            'inside',
            'outside',
        ],
    ],
    'no_unneeded_control_parentheses' => [
        'statements' => [
            'break',
            'clone',
            'echo_print',
            'return',
            'switch_case',
            'yield',
        ],
    ],
    'not_operator_with_space' => true,
    'object_operator_without_whitespace' => true,
    'ordered_class_elements' => [
        'order' => [
            'use_trait',
            'constant_public',
            'constant_protected',
            'constant_private',
            'property_public',
            'property_protected',
            'property_private',
            'construct',
            'destruct',
            'magic',
            'phpunit',
            'method_public',
            'method_protected',
            'method_private',
        ],
    ],
    'ordered_imports' => [
        'importsOrder' => ['class', 'const', 'function'],  // null or array
        'sortAlgorithm' => 'alpha',  // 'alpha' or 'length'
    ],
    'return_type_declaration' => [
        'space_before' => 'none',  // 'none' or 'one'
    ],
    'single_blank_line_at_eof' => true,
    'single_blank_line_before_namespace' => true,
    'single_class_element_per_statement' => [
        'elements' => [
            'const',
            'property',
        ],
    ],
    'single_import_per_statement' => true,
    'single_line_after_imports' => true,
    'single_line_comment_style' => [
        'comment_types' => [
            'asterisk',
            'hash',
        ],
    ],
    'single_quote' => true,
    'space_after_semicolon' => [
        'remove_in_empty_for_expressions' => false,  // bool
    ],
    'standardize_not_equals' => true,
    'switch_case_semicolon_to_colon' => true,
    'switch_case_space' => true,
    'trim_array_spaces' => true,
    'visibility_required' => [
        'elements' => [
            'property',
            'method',
        ],
    ],
    'yoda_style' => [
        'equal' => true,  // bool or null
        'identical' => true,  // bool or null
        'less_and_greater' => false,  // bool or null
    ],
];

return PhpCsFixer\Config::create()
    ->setFinder($finder)
    ->setRules($rules)
    ->setUsingCache(false);

// vim: ft=php:foldmethod=indent
