var trippy:ShaderHandle = new ShaderHandle('trippy');

function postCreate()
{
    trippy.applyPostProcess(camGame);
}

var trippy_amt:Float = 0;

var applied = false;

function onUpdate(elapsed)
{
    if (!applied){
        //ShaderManager.applyShaderToCamera("trippy", camGame);
        applied = true;
    }

    total_elapsed += elapsed;
    trippy.set('iTime', total_elapsed);
	trippy.set('intensity', trippy_amt);
}