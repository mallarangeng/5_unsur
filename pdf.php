<?php
include'class/class_5u.php';
require('fpdf/fpdf.php');
class PDF extends FPDF
{
// Page header
function Header()
{
    // Logo
    $this->Image('images/logo.png',10,6,30);
    // Arial bold 15
    $this->SetFont('Arial','B',15);
    // Move to the right
    $this->Cell(80);
    // Title angka ketiga (0) untuk garis 
    $this->Cell(30,10,'PPG TANGERANG BARAT',0,0,'C');

    $this->Cell(80);
    // Line break jarak dari header ke file
    $this->Ln(30);
}
// Page footer
function Footer()
{
    // Position at 1.5 cm from bottom
    $this->SetY(-15);
    // Arial italic 8
    $this->SetFont('Arial','I',8);
    // Page number
    $this->Cell(0,10,'Halaman '.$this->PageNo().'/{nb}',0,0,'C');
}
}
// Instanciation of inherited class
$pdf = new PDF();
$pdf->AliasNbPages();
$pdf->AddPage();
$pdf->SetFont('Times','',11);

for($i=1;$i<=2;$i++)
    $pdf->Cell(0,10,'Laporan Belum Tersedia ! '.$i,0,1);
$pdf->Output();
?>