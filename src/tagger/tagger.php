<?php

require 'vendor/autoload.php';

try{
  $db = new fDatabase('sqlite', 'tagger.sqlite');
} catch (fAuthorizationException $e) {
  $e->printMessage();
}

$root = '/primary/storage/WorkspaceOrganized/replimat-cad/';

$cad_directory = fFilesystem::createObject('/primary/storage/WorkspaceOrganized/replimat-cad/objects/');
$rendering_directory = fFilesystem::createObject('/primary/storage/WorkspaceOrganized/replimat-cad/tagger/renderings/');

$openscad_files = $cad_directory->scanRecursive('/^.+\.scad$/i');
$freecad_files = $cad_directory->scanRecursive('/^.+\.(fcstd|step|iges)$/i');
$stl_files = $cad_directory->scanRecursive('/^.+\.stl$/i');
$svg_files = $cad_directory->scanRecursive('/^.+\.svg$/i');
$dxf_files = $cad_directory->scanRecursive('/^.+\.dxf$/i');
$pdf_files = $cad_directory->scanRecursive('/^.+\.pdf$/i');
$jpg_files = $cad_directory->scanRecursive('/^.+\.jpg$/i');
$png_files = $cad_directory->scanRecursive('/^.+\.png$/i');

foreach($freecad_files as $file){
  echo "\n";
  echo $file->getName();
  echo "\n";

  try {
	$render3d = new \Libre3d\Render3d\Render3d();

    // this is the working directory, where it will put any files used during the render process, as well as the final
    // rendered image.
    $render3d->workingDir('/primary/storage/WorkspaceOrganized/replimat-cad/tmp/');

    // Set paths to the executables on this system
    $render3d->executable('openscad', '/usr/bin/openscad');
    $render3d->executable('povray', '/usr/bin/povray');
	  
    // This will copy in your starting file into the working DIR if you give the full path to the starting file.
    // This will also set the fileType for you.
    $render3d->filename($file->getPath());

    // Render!  This will do all the necessary conversions as long as the render engine (in this
    // case, the default engine, PovRAY) "knows" how to convert the file into a file it can use for rendering.
    // Note that this is a multi-step process that can be further broken down if you need it to.
    $renderedImagePath = $render3d->render('povray');
    $renderedImage = new fFile($renderedImagePath);
    $renderedImage->duplicate($rendering_directory);

    echo "Render successful!  Rendered image will be at $renderedImagePath";
  } catch (\Exception $e) {
    echo "Render failed :( Exception: ".$e->getMessage();
  }
  
  unset($render3d);

  //foreach ($file as $line){

      // where do we get metadata from about fcstd / step / iges files?
		
  //}
}

foreach($openscad_files as $file){
  echo "\n";
  echo $file->getName();
  echo "\n";

  try {
	$render3d = new \Libre3d\Render3d\Render3d();

    // this is the working directory, where it will put any files used during the render process, as well as the final
    // rendered image.
    $render3d->workingDir('/primary/storage/WorkspaceOrganized/replimat-cad/tmp/');

    // Set paths to the executables on this system
    $render3d->executable('openscad', '/usr/bin/openscad');
    $render3d->executable('povray', '/usr/bin/povray');
	  
    // This will copy in your starting file into the working DIR if you give the full path to the starting file.
    // This will also set the fileType for you.
    $render3d->filename($file->getPath());

    // Render!  This will do all the necessary conversions as long as the render engine (in this
    // case, the default engine, PovRAY) "knows" how to convert the file into a file it can use for rendering.
    // Note that this is a multi-step process that can be further broken down if you need it to.
    $renderedImagePath = $render3d->render('povray');
    $renderedImage = new fFile($renderedImagePath);
    $renderedImage->duplicate($rendering_directory);

    echo "Render successful!  Rendered image will be at $renderedImagePath";
  } catch (\Exception $e) {
    echo "Render failed :( Exception: ".$e->getMessage();
  }

  unset($render3d);

  //foreach ($file as $line){

    //read default configurations from OpenSCAD file, and perform multiple renderings
		
  //}
}

foreach($stl_files as $file){
  echo "\n";
  echo $file->getName();
  echo "\n";

  try {
	$render3d = new \Libre3d\Render3d\Render3d();

    // this is the working directory, where it will put any files used during the render process, as well as the final
    // rendered image.
    $render3d->workingDir('/primary/storage/WorkspaceOrganized/replimat-cad/tmp/');

    // Set paths to the executables on this system
    $render3d->executable('openscad', '/usr/bin/openscad');
    $render3d->executable('povray', '/usr/bin/povray');
	  
    // This will copy in your starting file into the working DIR if you give the full path to the starting file.
    // This will also set the fileType for you.
    $render3d->filename($file->getPath());

    // Render!  This will do all the necessary conversions as long as the render engine (in this
    // case, the default engine, PovRAY) "knows" how to convert the file into a file it can use for rendering.
    // Note that this is a multi-step process that can be further broken down if you need it to.
    $renderedImagePath = $render3d->render('povray');
    $renderedImage = new fFile($renderedImagePath);
    $renderedImage->duplicate($rendering_directory);

    echo "Render successful!  Rendered image will be at $renderedImagePath";
  } catch (\Exception $e) {
    echo "Render failed :( Exception: ".$e->getMessage();
  }
  
  unset($render3d);

  //foreach ($file as $line){

     // Where do we get metadata from about STL files?
		
  //}
}

?>
