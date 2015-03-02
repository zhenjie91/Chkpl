<script>
    function tokenAdd2() {
        document.getElementById("fail2").innerHTML = "Edit to Fail";
        document.getElementById("pass2").disabled = true;
        document.getElementById("fail2").disabled = false;
        document.getElementById("tk2").style.background = "#1abc9c";
    }
    function tokenMinus2() {
        document.getElementById("pass2").innerHTML = "Edit to Pass";
        document.getElementById("fail2").disabled = true;
        document.getElementById("pass2").disabled = false;
        document.getElementById("tk2").style.background = "#e74c3c";
    }
</script>
<!-- Modal -->
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" 
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
                    Units of measurements is in H/M/L dB&#186;A.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-right" 
                            data-dismiss="modal">Close
                    </button>
                    <button type="button" class="btn btn-success pull-left" onclick="tokenAdd2()" id="pass2"
                            data-dismiss="modal">Pass
                    </button>
                    <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus2()" id="fail2"
                            data-dismiss="modal">Fail
                    </button>
                </div>
            
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
