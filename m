Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D02E015A6
	for <outreachy@lists.linux.dev>; Mon, 13 Mar 2023 01:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678670727; x=1710206727;
  h=date:from:to:cc:subject:message-id:references:
   content-transfer-encoding:in-reply-to:mime-version;
  bh=9lG+0GXWjTyL//zyGwNCr1N+ArcXK+XFaCCm+jTvnBc=;
  b=V0e9ku4pVOfe+wuH1G8BMIc1lsJq8YnUvLCpR8l48MhcQ04XK5Xt4e6U
   GBPtG/5TABx4UcGllJXKwYiJoE4oLAk8z/S/kh4mAq4KaQ01Sf3QSI+J8
   /sqi8aqRV+h/K9kyKl96J8K1zZd6NXeW86o5L8nhNFQwo7kU4tSVBsKHj
   hBNlGcWtdTmupTh0HJ1EXwHdfa/ioRsqH8pLvYSetsx2ZuzLRHFDutMNw
   AgjctBoASjZJ3kyQvbhIzbUeHEkEqD5Q2wcxVeKy4L2LgjhZ5pXiGMtVq
   QYoHq2q9AxicLsAAZsPaslCpPpru+LnQfXUaKnlzOv8UA2kCU5U8+vkvZ
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="338591408"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; 
   d="scan'208";a="338591408"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 18:25:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="924317592"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; 
   d="scan'208";a="924317592"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by fmsmga006.fm.intel.com with ESMTP; 12 Mar 2023 18:25:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 12 Mar 2023 18:25:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 12 Mar 2023 18:25:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 12 Mar 2023 18:25:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 12 Mar 2023 18:25:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W5HUn86qBALzZdpgx680us30n3HjlpdEKYZanKRhGibOSP1mpPsGPSiOj/4sx0mv8PRZEiUacDWxhA04pOnRZsEhCP0lwMmygL6pFxOv9vEZ5p2xzO0JV8aqBssoy/oPwr3n9zjm4peAeiVjmhyEzDk4ZsoVHg98S/X8eaFgKIFdduiM7MLx8YN8yyrenngq65KY0TIHFoswfUNzqzKu6tMyMbSYOOkX1muh6uODpUa1fkmz2PftVa9DxRNpswN7/fgdkaszNT6l33DKlLiBAemJhGxtpf+AIjErBBAjOV4CUmTqkgCFt4TYiy3s65O5oG/PTBJwrN6eBg/f9iRwew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7mCgQ7LE67w4N+df2HJ6vC8E8zvHkh1XCfwgiOv2bYk=;
 b=KYo9+GJLvWHOVAsVhjmnxUR5+GBGXPUwVsxhcAakUhlnm+nJ8a0lv9+DSk/pRE7Mi5sPswN5VdG+HqyN1BPu4+GoWZeSj3J4JZCgiVkKtVo4hkfLV9UrCkr4ti7f0L0aboTI2uiO8tvGevAHI5s6JV4tL0fRpRTZomhA0LlNxmAJpQfHYlSOjMjTAaUcGse5jXgJACxaDX5jL+Bty4Bw0rqVK6sKNbXVm8HXHI06PfEXw76MkmLZak4CeYMyj/+7lPcgORx8xP7cm0mZPOxtgn/yR0+o4Wo44yayU0FFsiFiMce/NuLtoEs4Eup4XqZdPMUsPt1PXzrPtaqAnNUvGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by PH8PR11MB6880.namprd11.prod.outlook.com (2603:10b6:510:228::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 01:25:24 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 01:25:24 +0000
Date: Sun, 12 Mar 2023 18:25:21 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, <outreachy@lists.linux.dev>
CC: <julia.lawall@inria.fr>
Subject: Re: Help in loading modules
Message-ID: <640e7b815280e_229a89294ef@iweiny-mobl.notmuch>
References: <alpine.DEB.2.22.394.2303111000320.2802@hadrien>
 <20230311102824.GA14247@ubuntu>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230311102824.GA14247@ubuntu>
X-ClientProxiedBy: SJ0PR13CA0061.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::6) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|PH8PR11MB6880:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d010fff-1b4e-4a9e-66c4-08db2361d1f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +k9vdqKrLjxp+XpC26dfW0nC/N5p0/12dO6emIXcH53h8mYwYQAUQwDNdEzkyYjvl0WH8uTz+ITUnYhaoy4AHimgXnFDGphhYSh5YPWnEneZc/NvXnzP0EIn0SpQeBUZvVotxY3BwnCRA8pkAHMnSIzz9SHQPZwYOsTFiXHOBUUVcbSfby5BDANkx5PXkOBSfjCiFKnUxaNkVVFEHWXLwVFuBnWfxWQ9OC5P2QjWsypcT9FjFrTV5o5J1i8jUM6pefJ54Oib2lqAJ/RJsYPnetT7TaS1loqy+pHeJvhGYurlUUYaSAYDbni4URnTA/4nlzO0PmO1wFNmoON7fIlDE6OMpfwCX+m77ZKbAQ0AVkS+lf8XrI6q8GTm0NMMkQ+bRJSG+75/ISSDMLAXLjV68kEBTZOO9tkelkrfwLPj9EDS8UOb4q2jiwJDlwfqp/FRWlSEIcYEYQlszJRu3WbseaKuc1vxL7khkQQ+Ppi6bFiDUwNELZFsO5gFMbRY0MoNDKarLlvDffBXVnJcTLru1Lowx/ZKNQlgmk8LCv0uEU8M4PUG6DNhbCkL+eOojBgt34onFTGRWGtjsfequlReb77sNkeWG7o+kbnuKXXz73fBgBJQbEqEW8FR9k9AuAUY
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(136003)(346002)(396003)(39860400002)(376002)(366004)(451199018)(2906002)(82960400001)(83380400001)(44832011)(5660300002)(66476007)(8676002)(66556008)(66946007)(186003)(41300700001)(8936002)(4326008)(38100700002)(316002)(86362001)(478600001)(9686003)(3480700007)(966005)(6506007)(26005)(6666004)(6512007)(6486002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VTNYdVNtQVJPWW8rL2IxTHMwNGF1Q2locUtxK05Kdks2RWFhY3BYVWVvRlFQ?=
 =?utf-8?B?WElkejk2WllwQkcyQUVndmYwRjMvTXNyZ0FkSVlOSDNwakRqZDNvS09meFV3?=
 =?utf-8?B?eGhzeVNTdnc2S3Y1Tmc1NEhpSTFhRjlmaVRmRitIa2ZuVkJTeFBXWSs4SFI5?=
 =?utf-8?B?d0RoYVEyRWcyb1hrWGYxUFBpeUFpcWVxRnZpdTJDMDhkT1VYMHVWZDJWRWN3?=
 =?utf-8?B?RXJjdnV2dmJJZnFYbGZYc2FaYko5bWNIdm10UVFrZnJoYXNXZndZYTlLUUow?=
 =?utf-8?B?Z0p5VDlJdzhBaWRrNkZBU1ZCcUc1Z2JzZWdnNUhBWHZHVUJsT042elE4Slps?=
 =?utf-8?B?dDVLRTEwNzQ4NlVpcDFSVjVNMjJmNmRVcHlWSFpqcDBMQ0dmNmN1S3lOTGYv?=
 =?utf-8?B?RU9PT3hHQlRMOG5mT1U1V2w5ell5eklFNmtsaHM5b3BJYjNRWG1mZERzSU52?=
 =?utf-8?B?K3pVOE5FSCtkNmRKTThZWmRFQXZibXkxSHl3UVdqTDNPN1NEK0pqcGtHWUFB?=
 =?utf-8?B?R1kyYjNRVS9ITTVMdHNBZkpKYys0VzhtZ2Q4Zk51Nk8zNmlTRVlVVTFyY3U0?=
 =?utf-8?B?Zll1VlhEMUFFOHdEeFdWS01qTEZvenlYdnBGS2pvNWE3OVFnZGxWYXhMMzhU?=
 =?utf-8?B?TE5YZVdVU0pNLzE3YWJScGV6SmFVTmU4SDNCVVhWRndNUmZSbGxxUVlBeXNH?=
 =?utf-8?B?QjliZFBPalVtVWRFaWt6bTZVeXp5bWhDaHlwWExEeG1jajV4a0dMb3A2dW9n?=
 =?utf-8?B?OEJBOGorUTYxYXdXdGxpb284UmtYVE8yUFFwbWY5UlJoc0RzeGdrTXdrRWVB?=
 =?utf-8?B?Qkk3TDN6MnQ2ejY4blFvKzJqMHFoMzdBbU8wRTN0VnN2VVlXV3MwQXZiUm9C?=
 =?utf-8?B?U1JzNFpzL0JwWEh3SWJvdnpjQzNEajJndkpPcXNWbkVmMUo2MmxsbThKRklK?=
 =?utf-8?B?amFudnpaUm1sZm81enl3N3pjSVRBMUJiMGVHQmhRSEJQREIvN1J1aFRMSjNF?=
 =?utf-8?B?bmNpT2Z3UUp3MFNRUzhXVEd2MzcxODNlRXhjNmZ0OXVZTlhxRk95cmlUVDlB?=
 =?utf-8?B?Q3ZjL0g4eVM5TXpibnlOL2M1RVlpblVnd3lpa3ZBK3RwNnQ3YUhGOWxzOWVR?=
 =?utf-8?B?enhGVitMbk1vcTkxbktadSt2alpNN01XOG9Tb0hTeTZLVlcxbDdOemhPRVd4?=
 =?utf-8?B?QitPWGhiV0RNLzJRTEh4N0Rld1A2QVpBTW9CWVRZeTJqUXdKTE40MkhTcVhR?=
 =?utf-8?B?ek1xYUdPV1dMM2JreXN6eDdTVHM0d0Z6aFJTamkzR1VBb2VHVzFCMEhGaVVG?=
 =?utf-8?B?empEWTQ5TEZwWHZ5SnZldjNCRW1EaHYyZVlYUHpoZlg1L0pSdG9xY1RueTBs?=
 =?utf-8?B?RTFFRzZldloxVWF2bjJVbXNwdGcyamR2ZTRhejBwTWNRUHRZT1VsekFmdFZh?=
 =?utf-8?B?T25JTDBVU0xxMGVEK3lpamJjaVZoRlVYb3FFYk04LzdSRDRBNjJtTXl3UjJ0?=
 =?utf-8?B?ZHREbVdsd0Z6VHhaVDIrb0h2UkRQeUNudnpvMXNNNHh2YVgrSUpmUTRiaFhL?=
 =?utf-8?B?bDl2L3JITFZoaEJla25vbFRnNEdqYzRldjl0MzlyVWIwcmdRd1pmY3lsbzdV?=
 =?utf-8?B?MVNWNHRQMTJ4emcrYStQWUliZTFXTXI3eXYwK1Vwc3crWmRvTFdGMHNSQzFJ?=
 =?utf-8?B?azdURENaYWdvRE93V0lpQlh2MlQwdk10ZUdTYmd3K2NYb1RFNnMxcGN5Vnlv?=
 =?utf-8?B?RGo5cnBGSlpCakpnM05XTDJCcmU0QUdyWnJUQUFtdU1UYU5rQUhsdk0xNGM0?=
 =?utf-8?B?TW1wZXdQRkxQQUtoS3VobnVVZTM5NEJwa2hnTVlkM1lTODRxNU0rRzNDZ0xy?=
 =?utf-8?B?ejFjb0oyTzl2SjBmY2owYlpkY3IvMHUxSW1ZMTMxQnUwcW5BeTdKRVBxL1VV?=
 =?utf-8?B?WksvLyt1cFhnbitGVHljNGwya1NBNzBCb2Y1VTZKRy9ZV283SEhOakZpeHpX?=
 =?utf-8?B?eWIvMk1jWGJ2SEpmS0Zud04raG5YREFRVHhLTU0xV2NJeTlpMWlBd2owWjRl?=
 =?utf-8?B?ZWlpeTkzSGFOb1JhSi9CTzlsaGdkTU9oUEVyeXZjRzV1cXd5a1ZweHF5NG1B?=
 =?utf-8?Q?cNx+p0cUnO/x3VoSVsk6yI+HM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d010fff-1b4e-4a9e-66c4-08db2361d1f1
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 01:25:24.5678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 21N7MGcUhLcH1xR5FbPo2i4ww0XMRhQr7ArjMSQTnnezSD5rhekB62fn2yXTFZyE1dgay9DXEG1JzSKSrHnGcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6880
X-OriginatorOrg: intel.com

Sumitra Sharma wrote:
> More information:
> 
> Upon running the "dmesg" it shows 
> ##
> BPF: 	Invalid name_offset:2154618
> [ 2905.429687] failed to validate module [pi433] BTF: -22
> ##

Good start.  I did some digging.

$ git grep "failed to validate module"
kernel/bpf/btf.c:                               pr_warn("failed to validate module [%s] BTF: %ld\n",


kernel/bpf/btf.c:
...
                        if (!IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH)) {
                                pr_warn("failed to validate module [%s] BTF: %ld\n",
                                        mod->name, PTR_ERR(btf));
                                err = PTR_ERR(btf);
			} else {
...


$ git grep BTF_MISMATCH
kernel/bpf/btf.c:               if (env->btf->base_btf && IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH))
kernel/bpf/btf.c:               if (env->btf->base_btf && IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH))
kernel/bpf/btf.c:                       if (!IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH)) {
lib/Kconfig.debug:config MODULE_ALLOW_BTF_MISMATCH


lib/Kconfig.debug:
...
config MODULE_ALLOW_BTF_MISMATCH
        bool "Allow loading modules with non-matching BTF type info"
        depends on DEBUG_INFO_BTF_MODULES
        help
          For modules whose split BTF does not match vmlinux, load without
          BTF rather than refusing to load. The default behavior with
          module BTF enabled is to reject modules with such mismatches;
          this option will still load module BTF where possible but ignore
          it when a mismatch is found.
...

For more information on BTF:

https://docs.kernel.org/bpf/btf.html

Are you building this module in the same place as the running kernel?  It would
probably be easier to do so.

Ira

> 
> Also I checked under "/lib/modules/`uname -r`" in the "modules.dep" file it do contains the  "kernel/drivers/staging/pi433/pi433.ko:".
> 
> I also tried running "sudo insmod ./kernel/drivers/staging/pi433/pi433.ko" which again prints the error:
> 
> ##
> insmod: ERROR: could not insert module ./kernel/drivers/staging/pi433/pi433.ko: Invalid parameters
> ##
> 
> Other than these I also checked the ".config" which contains: 
> 
> ##
> CONFIG_SPI=y
> CONFIG_STAGING=y
> CONFIG_PI433=m
> ##
> 
> where the module dependencies were given as 
> 
> Symbol: PI433 [=m]                                                                                               │  
>   │ Type  : tristate                                                                                                 │  
>   │ Defined at drivers/staging/pi433/Kconfig:2                                                                       │  
>   │   Prompt: Pi433 - a 433MHz radio module for Raspberry Pi                                                         │  
>   │   Depends on: STAGING [=y] && SPI [=y]                                                                           │  
>   │   Location:                                                                                                      │  
>   │     -> Device Drivers                                                                                            │  
>   │       -> Staging drivers (STAGING [=y])                                                                          │  
>   │ (1)     -> Pi433 - a 433MHz radio module for Raspberry Pi (PI433 [=m])  
>  
> 


