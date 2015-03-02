<script>
    function tokenAdd5() {
        document.getElementById("fail5").innerHTML = "Edit to Fail";
        document.getElementById("pass5").disabled = true;
        document.getElementById("fail5").disabled = false;
        document.getElementById("tk5").style.background = "#1abc9c";
    }
    function tokenMinus5() {
        document.getElementById("pass5").innerHTML = "Edit to Pass";
        document.getElementById("fail5").disabled = true;
        document.getElementById("pass5").disabled = false;
        document.getElementById("tk5").style.background = "#e74c3c";
    }
</script>
<!-- Modal -->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" 
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
                        Condition has to meet -14 - 46 degrees.
                    </p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-right" 
                            data-dismiss="modal">Close
                    </button>
                    <button type="button" class="btn btn-success pull-left" onclick="tokenAdd5()" id="pass5"
                            data-dismiss="modal">Pass
                    </button>
                    <button type="button" class="btn btn-danger pull-left" onclick="tokenMinus5()" id="fail5"
                            data-dismiss="modal">Fail
                    </button>
                </div>
            
        </div><!-- /.modal-content -->
    </div><!-- /.modal -->
</div>
