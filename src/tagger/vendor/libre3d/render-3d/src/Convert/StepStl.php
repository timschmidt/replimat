<?php

namespace Libre3d\Render3d\Convert;

use Libre3d\Render3d\Render3d;

class StepStl extends Convert {
	
	public function convert() {
		if ($this->Render3d->fileType() !== 'step') {
			// Not the right file type to convert
			return;
		}

		//convert using FreeCAD
		$freecad = $this->Render3d->executable('python /primary/storage/WorkspaceOrganized/replimat-cad/tagger/vendor/libre3d/render-3d/src/Convert/FreeCADLauncher.py'); // TODO: fix this hard-coded path
		$file_stl = $this->Render3d->file() . '.stl';
		$file_fcsd = $this->Render3d->filename();
		$cmd = "{$freecad} \"{$this->Render3d->workingDir}{$file_fcsd}\" \"{$this->Render3d->workingDir}{$file_stl}\"";
				
		$this->Render3d->cmd($cmd);
		
		if (!file_exists($file_stl)) {
			throw new \Exception("Error creating STL file from FCSD/STEP/IGES!  Cannot proceed." . $cmd);
		}
		$stl_contents = file_get_contents($file_stl);
		if (!strlen($stl_contents)) {
			throw new \Exception("Contents of STL file are empty, convert failed.");
		}
		// Success!  Update the file type
		$this->Render3d->fileType('stl');
	}
}
