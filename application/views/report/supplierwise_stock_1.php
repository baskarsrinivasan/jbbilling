
<!-- Stock List Start -->
<div class="content-wrapper">
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('stock_report') ?></h1>
            <small><?php echo display('all_stock_report') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('stock') ?></a></li>
                <li class="active"><?php echo display('stock_report') ?></li>
            </ol>
        </div>
    </section>

     <section class="content">
     <?php
            $message = $this->session->userdata('message');
            if (isset($message)) {
        ?>
        <div class="alert alert-info alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $message ?>                    
        </div>
        <?php 
            $this->session->unset_userdata('message');
            }
            $error_message = $this->session->userdata('error_message');
            if (isset($error_message)) {
        ?>
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <?php echo $error_message ?>                    
        </div>
        <?php 
            $this->session->unset_userdata('error_message');
            }
        ?>
       
       

        <div class="row">
        <div class="col-sm-12">
                <div class="panel panel-default">
                    <div class="panel-body"> 
                        <?php echo form_open('Admin_dashboard/retrieve_dateWise_SalesReports', array('class' => 'form-inline', 'method' => 'get')) ?>
                        <div class="form-group">
                            <label class="" for="from_date"><?php echo display('start_date') ?></label>
                            <select class="form-control">
                                <option value=''>Select</option>
                                <?php foreach($supplier_info as $row_supplier){?>
                                <option value='<?php echo $row_supplier['supplier_id']?>'><?php echo $row_supplier['supplier_name']?></option>
                                <?php } ?>
                            </select>
                            
                        </div> 
                        <?php
                        $today = date('Y-m-d');
                        ?>
                        <div class="form-group">
                            <label class="" for="from_date"><?php echo display('start_date') ?></label>
                            <input type="text" name="from_date" class="form-control datepicker" id="from_date" placeholder="<?php echo display('start_date') ?>" value="<?php echo $today ?>">
                        </div> 

                        <div class="form-group">
                            <label class="" for="to_date"><?php echo display('end_date') ?></label>
                            <input type="text" name="to_date" class="form-control datepicker" id="to_date" placeholder="<?php echo display('end_date') ?>" value="<?php echo $today ?>">
                        </div>  

                        <button type="submit" class="btn btn-success"><?php echo display('search') ?></button>
                        <a  class="btn btn-warning" href="#" onclick="printDiv('purchase_div')"><?php echo display('print') ?></a>
                        <?php echo form_close() ?>
                    </div>
                </div>
            </div>
            <div class="col-sm-12">
                <div class="panel panel-bd lobidrag">
                    <div class="panel-heading">
                        <div class="panel-title text-right">
                           
                        </div>
                    </div>
                    <div class="panel-body">
                        <div>
                           
                            <div class="table-responsive"  id="printableArea">
                               <table class="table table-striped table-bordered" cellspacing="0" width="100%" id="checkList">
                                    <thead>
                                        <tr>
                                            <th class="text-center"><?php echo display('sl') ?></th>
                                            <th class="text-center"><?php echo display('product_name') ?></th>
                                            <th class="text-center"><?php echo display('product_model') ?></th>
                                             <th class="text-center"><?php echo display('supplier_name') ?></th>
                                            <th class="text-center"><?php echo display('sell_price') ?></th>
                                            <th class="text-center">Purchase Price</th>
                                            <th class="text-center"><?php echo display('in_qnty') ?></th>
                                            <th class="text-center"><?php echo display('out_qnty') ?></th>
                                            <th class="text-center"><?php echo display('stock') ?></th>
                                            <th class="text-center"><?php echo display('stock_sale')?></th>
                                            <th class="text-center"><?php echo display('stock_purchase_price')?></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                         <tfoot>
                                            <tr>
                <th colspan="8">Total:</th>
                <th id="stockqty"></th>
                  <th></th>  <th></th> 
            </tr>
                                            
                                        </tfoot> 
                                
                                </table>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
       
    </section>
</div>

