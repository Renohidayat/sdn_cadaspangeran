<?php
$zip = new ZipArchive();
$file = 'C:\\Users\\hi\\Documents\\Projek joki\\sekolahku\\skripsi (1).docx';
if ($zip->open($file) === TRUE) {
    $content = $zip->getFromName('word/document.xml');
    $zip->close();
    $content = preg_replace('/<w:br[^>]*w:type="page"[^>]*\/>/', "\n\n--- PAGE BREAK ---\n\n", $content);
    $content = preg_replace('/<\/w:p>/', "\n", $content);
    $content = preg_replace('/<[^>]+>/', '', $content);
    $content = preg_replace('/\n{3,}/', "\n\n", $content);
    echo trim($content);
} else {
    echo 'Failed to open file';
}
