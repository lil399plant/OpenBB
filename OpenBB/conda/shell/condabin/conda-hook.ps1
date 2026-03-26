$Env:CONDA_EXE = "/Users/lileggplant/OpenBB/conda/bin/conda"
$Env:_CONDA_EXE = "/Users/lileggplant/OpenBB/conda/bin/conda"
$Env:_CE_M = $null
$Env:_CE_CONDA = $null
$Env:CONDA_PYTHON_EXE = "/Users/lileggplant/OpenBB/conda/bin/python"
$Env:_CONDA_ROOT = "/Users/lileggplant/OpenBB/conda"
$CondaModuleArgs = @{ChangePs1 = $True}

Import-Module "$Env:_CONDA_ROOT\shell\condabin\Conda.psm1" -ArgumentList $CondaModuleArgs

Remove-Variable CondaModuleArgs