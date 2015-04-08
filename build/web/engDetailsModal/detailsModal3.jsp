<script>
    function tokenAdd3() {
        document.getElementById("fail3").innerHTML = "Edit to Fail";
        document.getElementById("pass3").disabled = true;
        document.getElementById("fail3").disabled = false;
        document.getElementById("done3").style.display = "block";
    }
    function tokenMinus3() {
        document.getElementById("pass3").innerHTML = "Edit to Pass";
        document.getElementById("fail3").disabled = true;
        document.getElementById("pass3").disabled = false;
        document.getElementById("done3").style.display = "block";
    }
</script>
<!-- Modal -->
<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" 
     aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" 
                        data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title" id="myModalLabel">
                    View Details
                </h4>
            </div>
                <div class="modal-body">
                    <p>
                    <ul>
                        <li>Push unit to maximum voltage before overheating</li>
                        <li>Monitor temperature increase as you increase the voltage</li>
                    </ul>
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-right" 
                            data-dismiss="modal">Close
                    </button>
                    <button type="button" class="btn btn-success pull-left" onclick="tokenAdd3()" id="pass3"
                            data-dismiss="modal">Pass
                    </button>
                    <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus3()" id="fail3"
                            data-dismiss="modal">Fail
                    </button>
                </div>
            
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
