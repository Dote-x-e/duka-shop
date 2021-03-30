<?php
/* Smarty version 3.1.34-dev-7, created on 2021-03-27 01:48:31
  from 'C:\xampp\htdocs\duka-shop\admin337vpfnoc\themes\default\template\content.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_605ec72f5f4569_36931041',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bd75f9ba6d41a65035fd0143a27db435fd045d87' => 
    array (
      0 => 'C:\\xampp\\htdocs\\duka-shop\\admin337vpfnoc\\themes\\default\\template\\content.tpl',
      1 => 1610363806,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_605ec72f5f4569_36931041 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="ajax_confirmation" class="alert alert-success hide"></div>
<div id="ajaxBox" style="display:none"></div>

<div class="row">
	<div class="col-lg-12">
		<?php if (isset($_smarty_tpl->tpl_vars['content']->value)) {?>
			<?php echo $_smarty_tpl->tpl_vars['content']->value;?>

		<?php }?>
	</div>
</div>
<?php }
}
