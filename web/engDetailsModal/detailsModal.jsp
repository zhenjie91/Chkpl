<script>
    function tokenAdd1() {
        document.getElementById("fail1").innerHTML = "Edit to Fail";
        document.getElementById("pass1").disabled = true;
        document.getElementById("fail1").disabled = false;
        document.getElementById("tk1").style.background = "#1abc9c";
    }
    function tokenMinus1() {
        document.getElementById("pass1").innerHTML = "Edit to Pass";
        document.getElementById("fail1").disabled = true;
        document.getElementById("pass1").disabled = false;
        document.getElementById("tk1").style.background = "#e74c3c";
    }
</script>
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" 
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
                    Units of measurements is in H/M/L (m³/min).
                </p>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-right" 
                        data-dismiss="modal">Close
                </button>
                <button type="button" class="btn btn-success pull-left" onclick="tokenAdd1()" id="pass1"
                        data-dismiss="modal">Pass
                </button>
                <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus1()" id="fail1"
                        data-dismiss="modal">Fail
                </button>
            </div>

        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
