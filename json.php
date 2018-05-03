<?php

$flatJson = json_decode(file_get_contents(__DIR__ . '/json_files/flattened.json'));
usort($flatJson, function ($a, $b) {
    return $a->parent > $b->parent;
});

function structureAsTree($flatJson, $rootId)
{
    $hierarchicalJson = [];
    while (count($flatJson) > 0) {
        $node = array_shift($flatJson);
        if ($node->parent == $rootId) {
            $node->children = structureAsTree($flatJson, $node->id);
            $hierarchicalJson[] = $node;
        }
    }
    return $hierarchicalJson;
}

echo json_encode(
    structureAsTree($flatJson, $flatJson[0]->parent),
    JSON_PRETTY_PRINT
);