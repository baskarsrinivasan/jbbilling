    <?php
$CI = & get_instance();
$CI->load->model('Web_settings');
$Web_settings = $CI->Web_settings->retrieve_setting_editdata();
?>
<!-- Content Wrapper. Contains page content -->
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
<style>
   @media print {
        @page 
    {
        size: auto; 
        margin: 0mm;
    }
    @page :footer {color: #fff } @page :header {color: #fff}
    .content-header
    {
        display:none;
    }
    .panel-footer
    {
        display:none;
    }
    .main-footer
    {
        display:none;
    }
    .panel-bd
    {
        border:none;
    }
    
  body:before{
	content: 'SRI JB HEALTH CARE';
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: 99 ;

	color: #0d745e;
	font-size: 20px;
	font-weight: 500px;
	display: grid;
	justify-content: center;
	align-content: center;
	opacity: 0.2;
	transform: rotate(-45deg);
    text-transform: uppercase;
  font-family: 'Roboto', sans-serif;
  }

} 
table {
  
  border-collapse: collapse;
  width: 100%;
  font-size:12px;
  text-transform: uppercase;
  font-family: 'Roboto', sans-serif;
  
}
.basic_text
{
    font-size:12px;
  text-transform: uppercase;
  font-family: 'Roboto', sans-serif;
}

td, th {
  /* border: 1px solid #dddddd;  */
 
  padding: 2px;
  word-wrap: break-word;

 
  
  
}

.product_name
{
    max-width:150px;
}

.unit_details
{
    max-width:1px;
}
.quantity
{
    max-width:1px;   
}


</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="header-icon">
            <i class="pe-7s-note2"></i>
        </div>
        <div class="header-title">
            <h1><?php echo display('invoice_details') ?></h1>
            <small><?php echo display('invoice_details') ?></small>
            <ol class="breadcrumb">
                <li><a href="#"><i class="pe-7s-home"></i> <?php echo display('home') ?></a></li>
                <li><a href="#"><?php echo display('invoice') ?></a></li>
                <li class="active"><?php echo display('invoice_details') ?></li>
            </ol>
        </div>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Alert Message -->
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
                <div class="panel panel-bd">
                    <div id="printableArea">
                        <div class="panel-body">
                            <div class="row print_header">
                            
                           
                            <div class="col-sm-12 col-md-12 col-lg-12">
                                    
                            <div class=""><p class="basic_text text-center"><b>sri jb healthcare Sales Invoice</b></p></div>

                                    <table class="billing_address">
  <tr>
    <th>BILLING FROM</th>
    <th>BILLING TO</th>
    
  </tr>
  <tr>
  {company_info}
    <td>{company_name}</td>
    {/company_info}
    <td>{customer_name}</td>
    
  </tr>
  <tr>
  {company_info}
    <td>{address}</td>
    {/company_info}
    <td>{customer_address}</td>
    
  </tr>
  <tr>
  {company_info}
    <td>MOBILE: {mobile}</td>
    {/company_info}
    <td>MOBILE: {customer_mobile}</td>
    
  </tr>
  <tr>
  {company_info}
    <td>EMAIL: {email}</td>
    {/company_info}
    <td>INVOICE NO: {invoice_no}</td>
    
  </tr>
  <tr>
  {company_info}
    <td>WEBSITE: {website}</td>
    {/company_info}
    <td>BILLING DATE: {final_date}</td>
    
  </tr>
  <tr>
  {company_info}
    <td>GSTIN NUMBER: {gstin_number}</td>
    {/company_info}
    <td>GSTIN NUMBER: {gst}</td>
   
  </tr>
</table>

                                    <!-- <img src="<?php
                                    if (isset($Web_settings[0]['invoice_logo'])) {
                                        echo html_escape($Web_settings[0]['invoice_logo']);
                                    }
                                    ?>" class="img-bottom-m" alt="" >
                                    <br>
                                    <span class="label label-success-outline m-r-15 p-10" ><?php echo display('billing_from') ?></span><br/>
                                    
                                        <abbr class="" style="font-size:13px;margin-top:10px" >{company_name}</abbr><br/>
                                        <abbr class="" style="font-size:13px">{address}</abbr><br>
                                        <abbr><?php echo display('mobile') ?>:</abbr> {mobile}<br>
                                        <abbr><?php echo display('email') ?>:</abbr> 
                                        {email}<br>
                                        <abbr><?php echo display('website') ?>:</abbr> 
                                        {website}<br>
                                        <abbr>GSTIN NUMBER:</abbr> 
                                        {gstin_number}<br>
                                         {/company_info}
                                         <abbr>{tax_regno}</abbr> -->
                                    
                                   
                                  

                                </div>
                                
                                 
                                <!-- <div class="col-sm-6 col-md-6 col-lg-6">
                                <span class="label label-success-outline m-r-15"><?php echo display('billing_to') ?></span><br/>

                                    

                                    
                                    <address class="margin-top10" style="font-size:15px">  
                                        <abbr  class="company_name_p" style="font-size:13px">{customer_name} </abbr><br/>
                                        <abbr  class="company_name_p" style="font-size:13px"> GSTIN NUMBER:</abbr> {gst} 
                                        <?php if ($customer_address) { ?>
                                            <br/>
                                            {customer_address}
                                        <?php } ?>
                                        <br>
                                        <abbr><?php echo display('mobile') ?>:</abbr>
                                        <?php if ($customer_mobile) { ?>
                                            {customer_mobile}
                                        <?php }if ($customer_email) {
                                            ?>
                                            <br>
                                            <abbr><?php echo display('email') ?>:</abbr> 
                                            {customer_email}
                                        <?php } ?>
                                        <br/><abbr><?php echo display('invoice_no') ?>:</abbr> 
                                        {invoice_no}
                                        <br/><abbr><?php echo display('billing_date') ?>:</abbr> 
                                        {final_date}
                                    </address>
                                    
                                    <<strong class="">GSTIN NUMBER:</strong> {supplier_gst_number}</br/> 
                                </div> -->
                            </div> 

                            <div class="table-responsive">
                                <table class="table table-striped" id="invoice_details">
                                    <thead>
                                        <tr>
                                            <th class=""><?php echo display('sl') ?></th>
                                            <th class=""><?php echo display('product_name') ?></th>
                                              <th class=""><?php if($is_unit !=0){ echo display('unit');
                                              }?></th>
                                            <th class=""><?php if($is_desc !=0){ echo display('item_description');} ?></th>
                                            <th class=""><?php if($is_serial !=0){ echo display('serial_no');} ?></th>
                                            <th class=""><?php echo display('quantity') ?></th>
                                            <?php if($is_discount > 0){ ?>
                                            <?php if ($discount_type == 1) { ?>
                                                <th class=""><?php echo display('discount_percentage') ?> %</th>
                                            <?php } elseif ($discount_type == 2) { ?>
                                                <th class=""><?php echo display('discount') ?> </th>
                                            <?php } elseif ($discount_type == 3) { ?>
                                                <th class=""><?php echo display('fixed_dis') ?> </th>
                                            <?php } ?>
                                        <?php }else{ ?>
<th class=""><?php echo ''; ?> </th>
<?php }?>
                                             <th class="">SGST%</th>
                                            <th class="">CGST%</th>
                                            <th class="">Rate</th>
                                            
                                            <!-- <th class="">SGST Amount</th>
                                            <th class="">CGST Amount</th> -->
                                            <th class="">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        {invoice_all_data}
                                        <tr class="details productdatalineheight">
                                            <td class="">{sl}</td>
                                            <td class=" product_name"><div>{product_name} - ({product_model})</div></td>
                                            <td class="unit_details"><div>{unit}</div></td>
                                            <td class="description">{description}</td>
                                            <td class="serial_no">{serial_no}</td>
                                            <td class="quantity">{quantity}</td>
                                            

                                            <?php if ($discount_type == 1) { ?>
                                                <td align="">{discount_per}</td>
                                            <?php } else { ?>
                                                <td align=""><?php echo (($position == 0) ? "$currency {discount_per}" : "{discount_per} $currency") ?></td>
                                            <?php } ?>
                                            <td align="">{sgst}%</td>
                                            <td align="">{cgst}%</td>
                                            <td align=""><?php echo (($position == 0) ? "$currency {rate}" : "{rate} $currency") ?></td>
                                           
                                            <!-- <td align="right"><?php echo $currency;?>{sgst_amount}</td>
                                            <td align="right"><?php echo $currency;?>{cgst_amount}</td> -->
                                            <td align=""><?php echo (($position == 0) ? "$currency {pro_total_amount}" : "{pro_total_amount} $currency") ?></td>
                                            
                                        </tr>
                                        {/invoice_all_data}
                                        <tr class="details productdatalineheight">
                                            <td class="text-left" colspan="5"></td>
                                            <td align="" ><b>{subTotal_quantity}</b></td>
                                            
                                            <td></td>
                                            <td align=""><b>Sub Total:</b></td>
                                            <td></td>
                                            
                                            <td></td>
                                            
                                            <td align="" ><b><?php echo (($position == 0) ? "$currency {subTotal_ammount}" : "{subTotal_ammount} $currency") ?></b></td>
                                        </tr>
                                        <tr class="details productdatalineheight">
                                            <td class="text-left" colspan="5"></td>
                                            
                                            <td></td>
                                            
                                            <td></td>
                                            <td align="" ><b>Sgst:</b></td>
                                            
                                            <td align="" ><b></b></td>
                                            <td></td>
                                            <td align="" ><b><?php echo (($position == 0) ? "$currency {sgst_amount}" : "{sgst_amount} $currency") ?></b></td>
                                        </tr>
                                        <tr class="details productdatalineheight">
                                            <td class="text-left" colspan="5"></td>
                                            
                                            <td></td>
                                           
                                            
                                            
                                            <td></td>
                                            <td align="" ><b>Cgst:</b></td>
                                            <td align="" ></td>
                                            <td></td>
                                            
                                            <td align="" ><b><?php echo (($position == 0) ? "$currency {cgst_amount}" : "{cgst_amount} $currency") ?></b></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="row">

                                <div class="col-xs-8 invoicefooter-content basic_text">

                                    <p></p>
                                    <p><strong>{invoice_details}</strong></p> 
                                   
                                </div>
                                <div class="col-xs-4 inline-block">

                                    <table class="table">
                                        <?php
                                        if ($invoice_all_data[0]['total_discount'] != 0) {
                                            ?>
                                            <tr>
                                                <th class="border-bottom-top"><?php echo display('total_discount') ?> : </th>
                                                <td class="text-right border-bottom-top" ><?php echo html_escape((($position == 0) ? "$currency {total_discount}" : "{total_discount} $currency")) ?> </td>
                                            </tr>
                                            <?php
                                        }
                                        if ($invoice_all_data[0]['total_tax'] != 0) {
                                            ?>
                                            <tr>
                                                <th class="text-left border-bottom-top" ><?php echo display('tax') ?> : </th>
                                                <td  class="text-right border-bottom-top" ><?php echo html_escape((($position == 0) ? "$currency {total_tax}" : "{total_tax} $currency")) ?> </td>
                                            </tr>
                                        <?php } ?>
                                         <?php if ($invoice_all_data[0]['shipping_cost'] != 0) {
                                            ?>
                                            <tr>
                                                <th class="text-left border-bottom-top" ><?php echo 'Shipping Cost' ?> : </th>
                                                <td class="text-right border-bottom-top" ><?php echo html_escape((($position == 0) ? "$currency {shipping_cost}" : "{shipping_cost} $currency")) ?> </td>
                                            </tr>
                                        <?php } ?>
                                        <!-- <tr>
                                            <th class="text-left grand_total"><?php echo display('previous'); ?> :</th>
                                            <td class="text-right grand_total"><?php echo html_escape((($position == 0) ? "$currency {previous}" : "{previous} $currency")) ?></td>
                                        </tr> -->
                                        <tr>
                                            <th class="text-left grand_total"><?php echo display('grand_total') ?> :</th>
                                            <td class="text-right grand_total"><?php echo html_escape((($position == 0) ? "$currency {total_amount}" : "{total_amount} $currency")) ?></td>
                                        </tr>
                                        <!-- <tr>
                                            <th class="text-left grand_total border-bottom-top"><?php echo display('paid_ammount') ?> : </th>
                                            <td class="text-right grand_total border-bottom-top"><?php echo html_escape((($position == 0) ? "$currency {paid_amount}" : "{paid_amount} $currency")) ?></td>
                                        </tr>				  -->
                                        <!-- <?php
                                        if ($invoice_all_data[0]['due_amount'] != 0) {
                                            ?>
                                            <tr>
                                                <th class="text-left grand_total"><?php echo display('due') ?> : </th>
                                                <td  class="text-right grand_total"><?php echo html_escape((($position == 0) ? "$currency {due_amount}" : "{due_amount} $currency")) ?></td>
                                            </tr>
                                            <?php
                                        }
                                        ?> -->
                                    </table>

                                   

                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                 <div class="basic_text">
                                        <?php echo display('received_by') ?>
                                    </div>
                                </div>
                               <div class="col-sm-4"></div>
                                     <div class="col-sm-4 basic_text text-right"> <div class="">
                                        <?php echo display('authorised_by') ?>
                                    </div></div>
                            </div>
                           
                        </div>
                    </div>

                    <div class="panel-footer text-left basic_text">
                        <a  class="btn btn-danger" href="<?php echo base_url('Cinvoice'); ?>"><?php echo display('cancel') ?></a>
                           <button  class="btn btn-info" onclick="window.print();"><span class="fa fa-print"></span></button>
                        <!-- <button  class="btn btn-info" onclick="printDiv('printableArea')"><span class="fa fa-print"></span></button> -->

                    </div>
                </div>
            </div>
        </div>
    </section> <!-- /.content -->
</div> <!-- /.content-wrapper -->

 