<?php
/**
 * Smarty PHPunit tests chained loading of dependend pluglind
 *
 * @package PHPunit
 * @author  Rodney Rehm
 */

/**
 * class for modifier tests
 *
 * @runTestsInSeparateProcess
 * @preserveGlobalState disabled
 * @backupStaticAttributes enabled
 */
class PluginChainedLoadTest extends PHPUnit_Smarty
{
    public function setUp(): void
    {
        $this->setUpSmarty(__DIR__);
    }

    public function testInit()
    {
        $this->cleanDirs();
    }

    public function testPluginChainedLoad()
    {
        $this->smarty->addPluginsDir(__DIR__ . "/PHPunitplugins/");
        $this->assertStringContainsString('from chain3', $this->smarty->fetch('test_plugin_chained_load.tpl'));
    }
}
