
	<!-- bootstrap & fontawesome -->
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/bootstrap.min.css'; ?>" />
	<link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/4.2.0/css/font-awesome.min.css'; ?>" />

	<!-- page specific plugin styles -->

	<!-- text fonts -->
	<link rel="stylesheet" href="<?php echo base_url().'assets/fonts/fonts.googleapis.com.css'; ?>" />

	<!-- ace styles -->
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/ace.min.css'; ?>" class="ace-main-stylesheet" id="main-ace-style" />

	<!-- page specific plugin styles -->
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/jquery-ui.custom.min.css'; ?>" />
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/chosen.min.css'; ?>" />
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/datepicker.min.css'; ?>" />
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/bootstrap-timepicker.min.css'; ?>" />
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/daterangepicker.min.css'; ?>" />
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/bootstrap-datetimepicker.min.css'; ?>" />
	<link rel="stylesheet" href="<?php echo base_url().'assets/css/colorpicker.min.css'; ?>" />



<h1><?php echo $judul; ?></h1><hr>
<div class="col-md-12">
  <div class="clearfix">
    <div class="pull-right tableTools-container"></div>
  </div>
  <div class="table-header">
    Daftar <?php echo $judul; ?>
  </div>
  <table id="dynamic-table" class="table table-striped table-bordered table-hover">
    <thead>
      <tr>
        <th>No.</th>
        <th>Kop Surat</th>
        <th>Nomor Surat</th>
        <th>Dari</th>
        <th>Kepada</th>
        <th>Tanggal Surat</th>
        <th>Tanggal Disposisi</th>
      </tr>
    </thead>
    <tbody>
      <?php $no = 1; foreach ($surat as $s) { ?>
      <tr>
        <td style="text-align: right;width: 5%;"><?php echo $no.'.'; ?></td>
        <td><?php echo $s->JUDUL_KOP; ?></td>
        <td><?php echo $s->NOMOR; ?></td>
        <td><?php echo $s->DARI; ?> </td>
        <td><?php echo $s->KEPADA; ?></td>
        <td><?php echo $s->JENIS; ?></td>
        <td><?php echo $s->ASAL_INSTANSI; ?></td>
      </tr>
      <?php $no++; } ?>
    </tbody>
  </table>
</div>
