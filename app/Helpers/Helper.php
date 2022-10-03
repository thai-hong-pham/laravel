<?php

use App\Models\Settings;

function getConfigValueSettingTable($configKey){
    $setting = Settings::where('config_key', $configKey)->first();
    if(!empty($setting)){
        return $setting->config_value;
    }
    return null;
}
