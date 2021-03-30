<?php
/* Smarty version 3.1.34-dev-7, created on 2021-03-27 01:48:40
  from 'C:\xampp\htdocs\duka-shop\themes\classic\templates\catalog\_partials\product-flags.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_605ec7380c8269_32792144',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'feb5de25c5598bd91988c6507a578439363c8048' => 
    array (
      0 => 'C:\\xampp\\htdocs\\duka-shop\\themes\\classic\\templates\\catalog\\_partials\\product-flags.tpl',
      1 => 1610363806,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_605ec7380c8269_32792144 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->compiled->nocache_hash = '1714664753605ec7380c5431_79870780';
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2075632865605ec7380c6575_91459208', 'product_flags');
?>

<?php }
/* {block 'product_flags'} */
class Block_2075632865605ec7380c6575_91459208 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'product_flags' => 
  array (
    0 => 'Block_2075632865605ec7380c6575_91459208',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <ul class="product-flags">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['product']->value['flags'], 'flag');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['flag']->value) {
?>
            <li class="product-flag <?php echo htmlspecialchars($_smarty_tpl->tpl_vars['flag']->value['type'], ENT_QUOTES, 'UTF-8');?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['flag']->value['label'], ENT_QUOTES, 'UTF-8');?>
</li>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
    </ul>
<?php
}
}
/* {/block 'product_flags'} */
}
