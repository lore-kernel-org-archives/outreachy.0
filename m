X-GM-THRID: 6470708862295998464
X-Received: by 10.99.38.132 with SMTP id m126mr130003pgm.9.1506725232426;
        Fri, 29 Sep 2017 15:47:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.209.206 with SMTP id y72ls2511096plh.7.gmail; Fri, 29 Sep
 2017 15:47:11 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QARCweIkC15l+FWHHhKbNsWnhkLuzaabrD7ozgQY2bMzL68Rh2NXVT7LzPOfwmJ1Giym6wh
X-Received: by 10.84.141.168 with SMTP id 37mr857919plv.27.1506725231302;
        Fri, 29 Sep 2017 15:47:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506725231; cv=none;
        d=google.com; s=arc-20160816;
        b=pBInR7lRKfF674MB1oL6MsPh+yuSaz7rPckoxkC4pHLx5J8W3ouQx9T7n34f66NN/u
         91MZPX5F8y15ZNfyI+uwoM3XFY+Wj31kW0Zm68/FFbj+M3LAbQ4k2/+H09T4autNrDMq
         +W8UVKOTLYz216wc+9c1+Ux7Lho9jibFAaB2U6WRsDmXq4Xg/XXb6ZyjsIb7mIV5kDzn
         YYtCbEGLa2DE/sARpwC3krUfFvORb4YUBcd+MzDgUHeWjl07CrXCmbr4Jpni+7vtRl9o
         EAPb1JTEpBj+xZQmnSKmgEkGZLcOdZyyfOzpunpN03w20XNVfzGK3kME1FM1iEPERGvB
         LwaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:message-id
         :subject:cc:to:from:date:arc-authentication-results;
        bh=2qAYf7A2Fua1huc1b/1XIH7bOsT4WeDnLnV1qG4OR+k=;
        b=BJreCnnliks7HoDyCVAxahFlcg6+kJYo9L6FHUk4oEgeUrMOvg7DjiZSZkBYBrYplj
         InhXW0nwW44LzXBSsiY9UqfXbAPQEfU2cxZ9ghsDs8ipeKwiSZeK6XQ31Rfs77F3Oscx
         Nzpx8ETTvOGSoSQ60LYIDUn7+pPKFLrP9HAwSWahaxa72tewWiGVC3Zc7CwmCDck9BDn
         sGf+SetWzCk6RBGc5K3vzsirkHZwS9CDGzK0otuItKtg+W/AdW062uzZXj8S9tDrMgip
         /j11Bb1Hk5i/pVo8KU23DKcS/1RrO5o94qJNfSwTVs2OMz6Gewj99lhznxSGcGM6RapE
         QeZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Return-Path: <fengguang.wu@intel.com>
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id 13si596178pfk.26.2017.09.29.15.47.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Sep 2017 15:47:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of fengguang.wu@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=fengguang.wu@intel.com
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Sep 2017 15:47:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,454,1500966000"; 
   d="gz'50?scan'50,208,50";a="133699980"
Received: from bee.sh.intel.com (HELO bee) ([10.239.97.14])
  by orsmga004.jf.intel.com with ESMTP; 29 Sep 2017 15:47:07 -0700
Received: from kbuild by bee with local (Exim 4.84_2)
	(envelope-from <fengguang.wu@intel.com>)
	id 1dy48s-000QOF-11; Sat, 30 Sep 2017 06:52:22 +0800
Date: Sat, 30 Sep 2017 06:46:49 +0800
From: kbuild test robot <lkp@intel.com>
To: Meghana Madhyastha <meghana.madhyastha@gmail.com>
Cc: kbuild-all@01.org, daniel@ffwll.ch, noralf@tronnes.org,
	outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v2 3/3] drm/tinydrm: Add devres versions of
 drm_of_find_backlight
Message-ID: <201709300627.83nyKlRw%fengguang.wu@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline
In-Reply-To: <20170928061456.GA30919@meghana-HP-Pavilion-Notebook>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Mail-From: fengguang.wu@intel.com
X-SA-Exim-Scanned: No (on bee); SAEximRunCond expanded to false


--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Meghana,

[auto build test ERROR on drm/drm-next]
[also build test ERROR on v4.14-rc2 next-20170929]
[if your patch is applied to the wrong git tree, please drop us a note to help improve the system]

url:    https://github.com/0day-ci/linux/commits/Meghana-Madhyastha/drm-tinydrm-Move-tinydrm_of_find_backlight-into-drm_of-c/20170930-055009
base:   git://people.freedesktop.org/~airlied/linux.git drm-next
config: i386-randconfig-x071-201739 (attached as .config)
compiler: gcc-6 (Debian 6.2.0-3) 6.2.0 20160901
reproduce:
        # save the attached .config to linux build tree
        make ARCH=i386 

All error/warnings (new ones prefixed by >>):

   In file included from drivers/gpu//drm/drm_of.c:11:0:
   include/drm/drm_of.h: In function 'devm_drm_of_find_backlight':
>> include/drm/drm_of.h:73:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'static'
    static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
    ^~~~~~
>> include/drm/drm_of.h:85:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
>> drivers/gpu//drm/drm_of.c:14:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:28:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
>> drivers/gpu//drm/drm_of.c:73:42: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(drm_of_find_possible_crtcs);
                                             ^
   drivers/gpu//drm/drm_of.c:86:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:91:46: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL_GPL(drm_of_component_match_add);
                                                 ^
   drivers/gpu//drm/drm_of.c:109:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:179:38: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(drm_of_component_probe);
                                         ^
   drivers/gpu//drm/drm_of.c:192:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:213:50: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL_GPL(drm_of_encoder_active_endpoint);
                                                     ^
   drivers/gpu//drm/drm_of.c:231:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:263:47: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
                                                  ^
   drivers/gpu//drm/drm_of.c:284:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:306:37: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(drm_of_find_backlight);
                                        ^
   drivers/gpu//drm/drm_of.c:324:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu//drm/drm_of.c:341:42: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(devm_drm_of_find_backlight);
                                             ^
   drivers/gpu//drm/drm_of.c:350:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
>> drivers/gpu//drm/drm_of.c:353:1: error: expected '{' at end of input
    EXPORT_SYMBOL(devm_drm_of_find_backlight_release)
    ^~~~~~~~~~~~~
>> drivers/gpu//drm/drm_of.c:353:1: warning: control reaches end of non-void function [-Wreturn-type]
    EXPORT_SYMBOL(devm_drm_of_find_backlight_release)
    ^~~~~~~~~~~~~
--
   In file included from drivers/gpu//drm/bridge/tc358767.c:38:0:
   include/drm/drm_of.h: In function 'devm_drm_of_find_backlight':
>> include/drm/drm_of.h:73:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'static'
    static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
    ^~~~~~
>> include/drm/drm_of.h:85:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   In file included from drivers/gpu//drm/bridge/tc358767.c:39:0:
>> include/drm/drm_panel.h:30:1: warning: empty declaration
    struct device_node;
    ^~~~~~
   include/drm/drm_panel.h:31:1: warning: empty declaration
    struct drm_connector;
    ^~~~~~
   include/drm/drm_panel.h:32:1: warning: empty declaration
    struct drm_device;
    ^~~~~~
   include/drm/drm_panel.h:33:1: warning: empty declaration
    struct drm_panel;
    ^~~~~~
   include/drm/drm_panel.h:34:1: warning: empty declaration
    struct display_timing;
    ^~~~~~
   include/drm/drm_panel.h:70:1: warning: empty declaration
    struct drm_panel_funcs {
    ^~~~~~
   include/drm/drm_panel.h:88:1: warning: empty declaration
    struct drm_panel {
    ^~~~~~
>> include/drm/drm_panel.h:110:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:128:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:146:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:164:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:182:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
>> drivers/gpu//drm/bridge/tc358767.c:176:13: error: storage class specified for parameter 'tc_test_pattern'
    static bool tc_test_pattern;
                ^~~~~~~~~~~~~~~
   In file included from include/linux/module.h:18:0,
                    from drivers/gpu//drm/bridge/tc358767.c:30:
   include/linux/moduleparam.h:346:59: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
     static inline type __always_unused *__check_##name(void) { return(p); }
                                                              ^
   include/linux/moduleparam.h:398:35: note: in expansion of macro '__param_check'
    #define param_check_bool(name, p) __param_check(name, p, bool)
                                      ^~~~~~~~~~~~~
   include/linux/moduleparam.h:148:2: note: in expansion of macro 'param_check_bool'
     param_check_##type(name, &(value));       \
     ^~~~~~~~~~~~
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:148:36: error: expected declaration specifiers before ';' token
     param_check_##type(name, &(value));       \
                                       ^
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:222:20: error: storage class specified for parameter '__param_str_test'
     static const char __param_str_##name[] = prefix #name;  \
                       ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:148:36: error: parameter '__param_str_test' is initialized
     param_check_##type(name, &(value));       \
                                       ^
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:49: error: storage class specified for parameter '__param_test'
     static struct kernel_param __moduleparam_const __param_##name \
                                                    ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:16: error: parameter '__param_test' is initialized
     static struct kernel_param __moduleparam_const __param_##name \
                   ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:223:16: warning: '__used__' attribute ignored [-Wattributes]
     static struct kernel_param __moduleparam_const __param_##name \
                   ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:49: error: section attribute not allowed for '__param_test'
     static struct kernel_param __moduleparam_const __param_##name \
                                                    ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:49: error: alignment may not be specified for '__param_test'
     static struct kernel_param __moduleparam_const __param_##name \
                                                    ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
>> drivers/gpu//drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:27:3: warning: empty declaration
      struct __UNIQUE_ID(name) {}
      ^
   include/linux/moduleparam.h:30:3: note: in expansion of macro '__MODULE_INFO'
      __MODULE_INFO(parmtype, name##type, #name ":" _type)
      ^~~~~~~~~~~~~
   include/linux/moduleparam.h:150:2: note: in expansion of macro '__MODULE_PARM_TYPE'
     __MODULE_PARM_TYPE(name, #type)
     ^~~~~~~~~~~~~~~~~~
--
   In file included from drivers/gpu/drm/drm_of.c:11:0:
   include/drm/drm_of.h: In function 'devm_drm_of_find_backlight':
>> include/drm/drm_of.h:73:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'static'
    static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
    ^~~~~~
>> include/drm/drm_of.h:85:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:14:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:28:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:55:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:73:42: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(drm_of_find_possible_crtcs);
                                             ^
   drivers/gpu/drm/drm_of.c:86:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:91:46: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL_GPL(drm_of_component_match_add);
                                                 ^
   drivers/gpu/drm/drm_of.c:109:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:179:38: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(drm_of_component_probe);
                                         ^
   drivers/gpu/drm/drm_of.c:192:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:213:50: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL_GPL(drm_of_encoder_active_endpoint);
                                                     ^
   drivers/gpu/drm/drm_of.c:231:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:263:47: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL_GPL(drm_of_find_panel_or_bridge);
                                                  ^
   drivers/gpu/drm/drm_of.c:284:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:306:37: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(drm_of_find_backlight);
                                        ^
   drivers/gpu/drm/drm_of.c:324:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:341:42: error: expected declaration specifiers before ';' token
    EXPORT_SYMBOL(devm_drm_of_find_backlight);
                                             ^
   drivers/gpu/drm/drm_of.c:350:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/drm_of.c:353:1: error: expected '{' at end of input
    EXPORT_SYMBOL(devm_drm_of_find_backlight_release)
    ^~~~~~~~~~~~~
   drivers/gpu/drm/drm_of.c:353:1: warning: control reaches end of non-void function [-Wreturn-type]
    EXPORT_SYMBOL(devm_drm_of_find_backlight_release)
    ^~~~~~~~~~~~~
--
   In file included from drivers/gpu/drm/bridge/tc358767.c:38:0:
   include/drm/drm_of.h: In function 'devm_drm_of_find_backlight':
>> include/drm/drm_of.h:73:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before 'static'
    static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
    ^~~~~~
>> include/drm/drm_of.h:85:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   In file included from drivers/gpu/drm/bridge/tc358767.c:39:0:
>> include/drm/drm_panel.h:30:1: warning: empty declaration
    struct device_node;
    ^~~~~~
   include/drm/drm_panel.h:31:1: warning: empty declaration
    struct drm_connector;
    ^~~~~~
   include/drm/drm_panel.h:32:1: warning: empty declaration
    struct drm_device;
    ^~~~~~
   include/drm/drm_panel.h:33:1: warning: empty declaration
    struct drm_panel;
    ^~~~~~
   include/drm/drm_panel.h:34:1: warning: empty declaration
    struct display_timing;
    ^~~~~~
   include/drm/drm_panel.h:70:1: warning: empty declaration
    struct drm_panel_funcs {
    ^~~~~~
   include/drm/drm_panel.h:88:1: warning: empty declaration
    struct drm_panel {
    ^~~~~~
>> include/drm/drm_panel.h:110:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:128:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:146:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:164:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   include/drm/drm_panel.h:182:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:176:13: error: storage class specified for parameter 'tc_test_pattern'
    static bool tc_test_pattern;
                ^~~~~~~~~~~~~~~
   In file included from include/linux/module.h:18:0,
                    from drivers/gpu/drm/bridge/tc358767.c:30:
   include/linux/moduleparam.h:346:59: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
     static inline type __always_unused *__check_##name(void) { return(p); }
                                                              ^
   include/linux/moduleparam.h:398:35: note: in expansion of macro '__param_check'
    #define param_check_bool(name, p) __param_check(name, p, bool)
                                      ^~~~~~~~~~~~~
   include/linux/moduleparam.h:148:2: note: in expansion of macro 'param_check_bool'
     param_check_##type(name, &(value));       \
     ^~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:148:36: error: expected declaration specifiers before ';' token
     param_check_##type(name, &(value));       \
                                       ^
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:222:20: error: storage class specified for parameter '__param_str_test'
     static const char __param_str_##name[] = prefix #name;  \
                       ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:148:36: error: parameter '__param_str_test' is initialized
     param_check_##type(name, &(value));       \
                                       ^
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:49: error: storage class specified for parameter '__param_test'
     static struct kernel_param __moduleparam_const __param_##name \
                                                    ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:16: error: parameter '__param_test' is initialized
     static struct kernel_param __moduleparam_const __param_##name \
                   ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:223:16: warning: '__used__' attribute ignored [-Wattributes]
     static struct kernel_param __moduleparam_const __param_##name \
                   ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:49: error: section attribute not allowed for '__param_test'
     static struct kernel_param __moduleparam_const __param_##name \
                                                    ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
>> include/linux/moduleparam.h:223:49: error: alignment may not be specified for '__param_test'
     static struct kernel_param __moduleparam_const __param_##name \
                                                    ^
   include/linux/moduleparam.h:169:2: note: in expansion of macro '__module_param_call'
     __module_param_call(MODULE_PARAM_PREFIX, name, ops, arg, perm, -1, 0)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:149:2: note: in expansion of macro 'module_param_cb'
     module_param_cb(name, &param_ops_##type, &value, perm);     \
     ^~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
   include/linux/moduleparam.h:27:3: warning: empty declaration
      struct __UNIQUE_ID(name) {}
      ^
   include/linux/moduleparam.h:30:3: note: in expansion of macro '__MODULE_INFO'
      __MODULE_INFO(parmtype, name##type, #name ":" _type)
      ^~~~~~~~~~~~~
   include/linux/moduleparam.h:150:2: note: in expansion of macro '__MODULE_PARM_TYPE'
     __MODULE_PARM_TYPE(name, #type)
     ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:177:1: note: in expansion of macro 'module_param_named'
    module_param_named(test, tc_test_pattern, bool, 0644);
    ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:179:1: warning: empty declaration
    struct tc_edp_link {
    ^~~~~~
   drivers/gpu/drm/bridge/tc358767.c:195:23: error: field 'connector' has incomplete type
     struct drm_connector connector;
                          ^~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:189:1: warning: empty declaration
    struct tc_data {
    ^~~~~~
   drivers/gpu/drm/bridge/tc358767.c:215:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:220:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:225:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:247:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:269:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:275:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:296:1: error: expected '=', ',', ';', 'asm' or '__attribute__' before '{' token
    {
    ^
   drivers/gpu/drm/bridge/tc358767.c:359:27: error: storage class specified for parameter 'training_pattern1_errors'
    static const char * const training_pattern1_errors[] = {
                              ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:359:1: error: parameter 'training_pattern1_errors' is initialized
    static const char * const training_pattern1_errors[] = {
    ^~~~~~
   drivers/gpu/drm/bridge/tc358767.c:360:2: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     "No errors",
     ^~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:360:2: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:361:2: warning: excess elements in scalar initializer
     "Aux write error",
     ^~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:361:2: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:362:2: warning: excess elements in scalar initializer
     "Aux read error",
     ^~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:362:2: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:363:2: warning: excess elements in scalar initializer
     "Max voltage reached error",
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:363:2: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:364:2: warning: excess elements in scalar initializer
     "Loop counter expired error",
     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:364:2: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:365:2: warning: excess elements in scalar initializer
     "res", "res", "res"
     ^~~~~
   drivers/gpu/drm/bridge/tc358767.c:365:2: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:365:9: warning: excess elements in scalar initializer
     "res", "res", "res"
            ^~~~~
   drivers/gpu/drm/bridge/tc358767.c:365:9: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:365:16: warning: excess elements in scalar initializer
     "res", "res", "res"
                   ^~~~~
   drivers/gpu/drm/bridge/tc358767.c:365:16: note: (near initialization for 'training_pattern1_errors')
   drivers/gpu/drm/bridge/tc358767.c:368:27: error: storage class specified for parameter 'training_pattern2_errors'
    static const char * const training_pattern2_errors[] = {
                              ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/bridge/tc358767.c:368:1: error: parameter 'training_pattern2_errors' is initialized
    static const char * const training_pattern2_errors[] = {
    ^~~~~~
   drivers/gpu/drm/bridge/tc358767.c:369:2: error: initialization from incompatible pointer type [-Werror=incompatible-pointer-types]
     "No errors",
     ^~~~~~~~~~~
..

vim +73 include/drm/drm_of.h

7e435aad Russell King       2014-06-15  14  
7e435aad Russell King       2014-06-15  15  #ifdef CONFIG_OF
91faa047 Daniel Vetter      2017-03-22  16  uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
7e435aad Russell King       2014-06-15  17  				    struct device_node *port);
91faa047 Daniel Vetter      2017-03-22  18  void drm_of_component_match_add(struct device *master,
97ac0e47 Russell King       2016-10-19  19  				struct component_match **matchptr,
97ac0e47 Russell King       2016-10-19  20  				int (*compare)(struct device *, void *),
97ac0e47 Russell King       2016-10-19  21  				struct device_node *node);
91faa047 Daniel Vetter      2017-03-22  22  int drm_of_component_probe(struct device *dev,
df785aa8 Liviu Dudau        2015-10-20  23  			   int (*compare_of)(struct device *, void *),
df785aa8 Liviu Dudau        2015-10-20  24  			   const struct component_master_ops *m_ops);
91faa047 Daniel Vetter      2017-03-22  25  int drm_of_encoder_active_endpoint(struct device_node *node,
4cacf91f Philipp Zabel      2015-02-24  26  				   struct drm_encoder *encoder,
4cacf91f Philipp Zabel      2015-02-24  27  				   struct of_endpoint *endpoint);
1f2db303 Rob Herring        2017-03-22  28  int drm_of_find_panel_or_bridge(const struct device_node *np,
1f2db303 Rob Herring        2017-03-22  29  				int port, int endpoint,
1f2db303 Rob Herring        2017-03-22  30  				struct drm_panel **panel,
1f2db303 Rob Herring        2017-03-22  31  				struct drm_bridge **bridge);
4fb60416 Meghana Madhyastha 2017-09-28  32  struct backlight_device *drm_of_find_backlight(struct device *dev);
5c09694e Meghana Madhyastha 2017-09-28 @33  struct backlight_device *devm_drm_of_find_backlight(struct device *dev)
5c09694e Meghana Madhyastha 2017-09-28  34  static void devm_drm_of_find_backlight_release(void *data)
7e435aad Russell King       2014-06-15  35  #else
7e435aad Russell King       2014-06-15  36  static inline uint32_t drm_of_find_possible_crtcs(struct drm_device *dev,
7e435aad Russell King       2014-06-15  37  						  struct device_node *port)
7e435aad Russell King       2014-06-15  38  {
7e435aad Russell King       2014-06-15  39  	return 0;
7e435aad Russell King       2014-06-15  40  }
df785aa8 Liviu Dudau        2015-10-20  41  
329f4c81 Arnd Bergmann      2016-10-26  42  static inline void
329f4c81 Arnd Bergmann      2016-10-26  43  drm_of_component_match_add(struct device *master,
97ac0e47 Russell King       2016-10-19  44  			   struct component_match **matchptr,
97ac0e47 Russell King       2016-10-19  45  			   int (*compare)(struct device *, void *),
97ac0e47 Russell King       2016-10-19  46  			   struct device_node *node)
97ac0e47 Russell King       2016-10-19  47  {
97ac0e47 Russell King       2016-10-19  48  }
97ac0e47 Russell King       2016-10-19  49  
df785aa8 Liviu Dudau        2015-10-20  50  static inline int
df785aa8 Liviu Dudau        2015-10-20  51  drm_of_component_probe(struct device *dev,
df785aa8 Liviu Dudau        2015-10-20  52  		       int (*compare_of)(struct device *, void *),
df785aa8 Liviu Dudau        2015-10-20  53  		       const struct component_master_ops *m_ops)
df785aa8 Liviu Dudau        2015-10-20  54  {
df785aa8 Liviu Dudau        2015-10-20  55  	return -EINVAL;
df785aa8 Liviu Dudau        2015-10-20  56  }
4cacf91f Philipp Zabel      2015-02-24  57  
4cacf91f Philipp Zabel      2015-02-24  58  static inline int drm_of_encoder_active_endpoint(struct device_node *node,
4cacf91f Philipp Zabel      2015-02-24  59  						 struct drm_encoder *encoder,
4cacf91f Philipp Zabel      2015-02-24  60  						 struct of_endpoint *endpoint)
4cacf91f Philipp Zabel      2015-02-24  61  {
4cacf91f Philipp Zabel      2015-02-24  62  	return -EINVAL;
4cacf91f Philipp Zabel      2015-02-24  63  }
1f2db303 Rob Herring        2017-03-22  64  static inline int drm_of_find_panel_or_bridge(const struct device_node *np,
1f2db303 Rob Herring        2017-03-22  65  					      int port, int endpoint,
1f2db303 Rob Herring        2017-03-22  66  					      struct drm_panel **panel,
1f2db303 Rob Herring        2017-03-22  67  					      struct drm_bridge **bridge)
1f2db303 Rob Herring        2017-03-22  68  {
1f2db303 Rob Herring        2017-03-22  69  	return -EINVAL;
1f2db303 Rob Herring        2017-03-22  70  }
7e435aad Russell King       2014-06-15  71  #endif
7e435aad Russell King       2014-06-15  72  
4cacf91f Philipp Zabel      2015-02-24 @73  static inline int drm_of_encoder_active_endpoint_id(struct device_node *node,
4cacf91f Philipp Zabel      2015-02-24  74  						    struct drm_encoder *encoder)
4cacf91f Philipp Zabel      2015-02-24  75  {
4cacf91f Philipp Zabel      2015-02-24  76  	struct of_endpoint endpoint;
4cacf91f Philipp Zabel      2015-02-24  77  	int ret = drm_of_encoder_active_endpoint(node, encoder,
4cacf91f Philipp Zabel      2015-02-24  78  						 &endpoint);
4cacf91f Philipp Zabel      2015-02-24  79  
4cacf91f Philipp Zabel      2015-02-24  80  	return ret ?: endpoint.id;
4cacf91f Philipp Zabel      2015-02-24  81  }
4cacf91f Philipp Zabel      2015-02-24  82  
4cacf91f Philipp Zabel      2015-02-24  83  static inline int drm_of_encoder_active_port_id(struct device_node *node,
4cacf91f Philipp Zabel      2015-02-24  84  						struct drm_encoder *encoder)
4cacf91f Philipp Zabel      2015-02-24 @85  {
4cacf91f Philipp Zabel      2015-02-24  86  	struct of_endpoint endpoint;
4cacf91f Philipp Zabel      2015-02-24  87  	int ret = drm_of_encoder_active_endpoint(node, encoder,
4cacf91f Philipp Zabel      2015-02-24  88  						 &endpoint);
4cacf91f Philipp Zabel      2015-02-24  89  
4cacf91f Philipp Zabel      2015-02-24  90  	return ret ?: endpoint.port;
4cacf91f Philipp Zabel      2015-02-24  91  }
4cacf91f Philipp Zabel      2015-02-24  92  

:::::: The code at line 73 was first introduced by commit
:::::: 4cacf91fcb1d7118e93caf9cb6651d7f7b56e58d drm: add drm_of_encoder_active_endpoint helpers

:::::: TO: Philipp Zabel <p.zabel@pengutronix.de>
:::::: CC: Philipp Zabel <p.zabel@pengutronix.de>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

--gBBFr7Ir9EOA20Yy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICDnKzlkAAy5jb25maWcAlFzdc9u2sn/vX6FJ78M5D238ldSdO36ASFBCRRIMAEqWXziK
raSe49g+ktw2//3dBUgRAJfK3EwnDbGL78XubxcL/fzTzxP2dnj5tjk83m+enr5Pvm6ft7vN
Yfsw+fL4tP3fSSonpTQTngrzKzDnj89v/7x/vLz+OLn69fzq17NfdvcXk8V297x9miQvz18e
v75B9ceX559+BvZElpmYNR+vpsJMHveT55fDZL89/NSW315/bC4vbr573/2HKLVRdWKELJuU
JzLlqifK2lS1aTKpCmZu3m2fvlxe/ILDetdxMJXMoV7mPm/ebXb3f77/5/rj+3s7yr2dRPOw
/eK+j/VymSxSXjW6riqpTN+lNixZGMUSPqQVRd1/2J6LglWNKtMGZq6bQpQ316fo7Pbm/CPN
kMiiYuaH7QRsQXMl52mjZ01asCbn5czM+7HOeMmVSBqhGdKHhGk9GxbOV1zM5iaeMls3c7bk
TZU0WZr0VLXSvGhuk/mMpWnD8plUwsyLYbsJy8VUMcNh43K2jtqfM90kVd0ooN1SNJbMeZOL
EjZI3PGeww5Kc1NXTcWVbYMp7k3WrlBH4sUUvjKhtGmSeV0uRvgqNuM0mxuRmHJVMiu+ldRa
THMesehaVxy2boS8YqVp5jX0UhWwgXMYM8VhF4/lltPk00EfVlR1IysjCliWFA4WrJEoZ2Oc
KYdNt9NjOZyG4HjCcW10UY1VrSslp1z35EzcNpypfA3fTcG9Pa9mhsGcQSKXPNc3F1358cjC
Tmo42u+fHj+///by8Pa03b//n7pkBUcJ4Ezz979GZxf+53SGVN4YhPrUrKTyNmhaizyF5eAN
v3Wj0MFxNnMQD1yoTMJfjWEaK1uNNrP68Qm12NsrlByVlTANL5ewHjjwQpiby+OUEgUbbA+o
gE1+965XjG1ZY7im9COsPsuXXGkQIqxHFDesNjIS9QUIHs+b2Z2oaMoUKBc0Kb/ztYBPub0b
qzHSf353BYTjXL1R+VON6XZspxhwhKfot3fESgZjHbZ4RVQBQWR1DidQaoNSd/PuX88vz9t/
H7dBr/VSVInfIJxkEPjiU81rTo7RiQIcBKnWDTNgUuZE19mclanVB8eKteagG8k2WZ2S1tXu
hT2flgOGC2KTd4IMp2Kyf/u8/74/bL/1gnw0CHBo7GEmbAWQ9FyuaArPMg5GG7vOMrAJejHk
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
SwEA

--gBBFr7Ir9EOA20Yy--

