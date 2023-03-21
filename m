Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509D07E0
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 00:29:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679358573; x=1710894573;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=3ydnBCvm87T6C3KGtgDu4LWqbGOdNsLwH9J9ou44s2A=;
  b=CcJJbW+F07m0cgONgUMGI87a7TO3F4MkufbCTe+W0u9/enQbPJkAboFv
   73trEAWagIWpXgcdnDe/ls2hxSGGomSiFP3sJiihekaDqbXQifN7gjPFK
   TY81QhN+PcJn17OCjtjZ4Kld7S1K6gJXjV3rvoJEfOi+7CQ4cSVgC+Ut3
   ANK51hpVoQv8oGd7IO2+u18dEKsKAXPAvvBXyatBkvZHmc3P0UHf+S+6L
   Lxb9tS7E4oKY6X8QRO/cySBvYAccdWO5j9Jg2lBhuZruyCX/ax0kTyDuG
   OSF6/cMKJQ6cO7wiK5WqHfM7JETf3LkM8mSxsR3GG+xP+4VCbPv1M9Uu5
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="327186307"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; 
   d="scan'208";a="327186307"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 17:29:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="824700033"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; 
   d="scan'208";a="824700033"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga001.fm.intel.com with ESMTP; 20 Mar 2023 17:29:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 17:29:31 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 17:29:31 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 17:29:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FMDUa06pZmcko9Oubpl7TvR9oAWTE61ULavBnZtoa4MebqJhPifLl1Moe8O0Dm2DPKml3ki+aSosAq/95ZGkwwkgGAac7paAEQzJSehASfCuoIh3RdzrNJN6Sdgeuinv1Hjdhn+gdQlOi/FrY9xA6BCL8ht7Py2AbyDKUOrWxPOtDd2reUQRFzsDZgfkII44gHmdfmszKd9FZLkDxjv/pbW5iHXIGC5pZiegcaF78GYgDWUOgYpPtcTohaAIUeY/S1WlsNsN34xkoeuFtg0ze+wjfFez314M8UjmWFbqdozokkJT4EDT1xkG3x0TzA8xAA1PVZWrB0VA5JFxIqIccQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lt19kwofM6OoUU90CrwEzqS+JexY001XOg0Ju8jfEXM=;
 b=WpNMl58vfBuc5cKV1tzewf8bAv9a89WJ2oIKtuVzNZDfllq4PZ1GCpo1po0H14uLf4U0uNex56s8ZEqQeQABuPV2YqAWToguALQVv6cJWeG7Vgu1+bS6cAQ60qsIE9W3Q0tZbNJGaCB1D/qsVGwPf2W0X2jVKun8qkHOnv0I2t/mFE07uWrKLcK8HAlEzZZ0maaaaDeuwNwKkL9nlwdFfD68Fg/o0eRawP3K7ND1RzlY2Nef7CYTUfHAA4ZpWmLIcgHpNLdyIG6iF3rUvy0KjmjGd104SHa0Ceaod95eZcGojiz6losoPSgVRsCEmViLMtqNwD1HRJOtgGcFnl0NdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by DS7PR11MB7782.namprd11.prod.outlook.com (2603:10b6:8:e1::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 00:29:29 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 00:29:29 +0000
Date: Mon, 20 Mar 2023 17:29:25 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, Ira Weiny <ira.weiny@intel.com>
CC: <outreachy@lists.linux.dev>, <julia.lawall@inria.fr>
Subject: Re: Help in loading modules
Message-ID: <6418fa65bea75_2c7706294d0@iweiny-mobl.notmuch>
References: <alpine.DEB.2.22.394.2303111000320.2802@hadrien>
 <20230311102824.GA14247@ubuntu>
 <640e7b815280e_229a89294ef@iweiny-mobl.notmuch>
 <20230319142313.GA119933@sumitra.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230319142313.GA119933@sumitra.com>
X-ClientProxiedBy: BYAPR01CA0068.prod.exchangelabs.com (2603:10b6:a03:94::45)
 To SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|DS7PR11MB7782:EE_
X-MS-Office365-Filtering-Correlation-Id: 94758a09-65dc-454f-55e0-08db29a35574
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yr7509eJo8uDPjayzbs/v8SOasSIuQrPnEEXQrYmuKbOkK5IC7gHWTLzx+Ds/IvA7esw2WNi7eHZcstPmijhYCPx7qEQ6I2rsyq4rPnPsvOddp8XycUgE9CEv6HDP0l5VLsFvXoqTm6Qvjs5HmYdEspb6MbHU1dRM55L4phACoJ1CGAn0h9GRe6Oy2ZzYBK1xq8YQNzBBRKUFMc8wDtHXwWtvwbjbAHfKOwJDP5j6s8fwEWEBNJYKU6vmW6l1GmDOjkVBw3Amb752SDgOfEsK7UT/I4hjMbIiThY3bg03XHpdWhHN2WACc0GtGZAE3/BtCDnY2rxtFkeEJosOYLevLSMx+7cIYsPYCIvnbXE6Pot8WcT2rRZtN3BiuyskV77N3uVwgv01V+8ttmOBkD4d3gVLILV0H+66+6bWeLWH8yA8+J2ZghH6NwZI9m5M2j5JOrFRf48BDOnJW1nYW/lyK4XwOnqoVTBTpeqHSxXzps6PoLwIQvtOHHq0StHCv10t7hUEXVaTuGTDPOfqOYzj1OjKC2S3OVv3l5altrjxJAq2QXRYoK9nbF+nlVemGpe7WExNOlVFY9IvDlU5rbZxrWAQ6jDdMemKCprY5oakzKQQzAY5HHUr2KxoRLje8WX
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39860400002)(396003)(346002)(136003)(376002)(451199018)(966005)(6486002)(6666004)(6506007)(5660300002)(6512007)(86362001)(478600001)(316002)(186003)(9686003)(110136005)(83380400001)(66946007)(3480700007)(8676002)(66476007)(66556008)(4326008)(41300700001)(44832011)(8936002)(38100700002)(82960400001)(2906002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?h/jSlZ9d52wYg6UPaWxzvzLHaNVp1M54hOKt98/x9ntGtMsnfj/aWub7G01R?=
 =?us-ascii?Q?aU8ckiNVfGLp/+AWRiuUWgWT4gF82SbfHsEvbD6hqdILluzf038c4aYhe5h4?=
 =?us-ascii?Q?IDZwlRjI9ybfE8TJxz9HfwxY5hUZ84Z44D5m3+dKEMyvrB2q51IYxxRiOTum?=
 =?us-ascii?Q?Rxt3OZJ/VGAzwWaXQWVebdr1/ybsjhO0rXKKwQit3Ss+yiaawv0JUg+1n0vW?=
 =?us-ascii?Q?n+Q78vWKEyd2mk6c+l/pCjgOIdcVIlEhlQ5w+ErLsn3z4SPlY9a8puoaWNym?=
 =?us-ascii?Q?ZTCn+0o6ta12wLiKZv0D4Jg4XEOmywcdfNSr2S1x/VIVlxX8xKxbZq3lTApI?=
 =?us-ascii?Q?4+nCMIM/WP9SRsIo7yI+2w3oUismX9SPJwDx0Z4SGPDKHohaXjiR3QvEImJH?=
 =?us-ascii?Q?XN+fGFqvuw5G6sH7B3ObonJctDxhhm+tk/7st+qlifQvb7u4NS98NS8SfIAu?=
 =?us-ascii?Q?yw6fUnppFP7I2F8HkfSfBDKrKivM55ElQYgbenyLKSL1BG2hNxdJbq91PKaW?=
 =?us-ascii?Q?Ucp49C5WUGA3tiFJGbDmbzSmtXTlQdqi9bB1/3+zqrfc1rlu9O+eyDRQnECE?=
 =?us-ascii?Q?kDmKIkXKAQHhi3oQm/iVw0mTp5VUGpvYaXVkPyXYec2gEoeB4GmDV1fN8HJw?=
 =?us-ascii?Q?qQZjBdoNr3HG9j7eQoaWUgU59qrlACd2irnb6N8CWpBFYXw5J/Am5SyQFNJX?=
 =?us-ascii?Q?B5Dfa5oW6EYrPfTV7kgQ00uOj2MPynfSmGpNt5Gm6QfNVxwkdmhhXWcko33u?=
 =?us-ascii?Q?UtCAcbJX435F4h01D1Jau+B9JXVVNJK0MSzbwoC2jiZ2CqrLAVR0gOx9TJNf?=
 =?us-ascii?Q?xPi/WL44PtHNbXIwJSqCmdsux5skxAOEZosQUqpCO5H0olvAdVN21AlJ0ZFx?=
 =?us-ascii?Q?TZrGlQ59zRuq5XHmQ02E7+GFumrOcgd9rOjQYgIlcDTRv5FoR5ZhOA9OwBgX?=
 =?us-ascii?Q?rLm5ygNTBKzDk/LrX8/Nz+Kkk0t6NEDKFVcrY1ZTTYfmZK2o6vAspoKGFP+v?=
 =?us-ascii?Q?uSHUZJ4hdmfAZfB5XrthU+zxJF5DjERtewsSyrhslkFOqHvgYyvmTX1Z+tln?=
 =?us-ascii?Q?EyLY9njEZj+k/Jgtlay4jH4mvzbek02mWXRQ8s57ms4YrkaXQmyzgbjBtreZ?=
 =?us-ascii?Q?7FGM+u7/qI0Yp0Z477OoAADRn6k9dHTPfkN9dcNdBUdGliwX87ZjhmIhtFQW?=
 =?us-ascii?Q?0GITY1pvoXyQk7YUkIWoj/vcTLsHygQ1A43yC1hOXoyINN9vkGvpXH4bcaSA?=
 =?us-ascii?Q?7Zka08g/JlOvKE9/DBWMQpad1NfuYj6ogFHuoWETnSRFui3e2s2xcw2IbSHB?=
 =?us-ascii?Q?vqnEyUoBW5hTyxA1nJM7R6DZQpuWmFvSaXSSX6+cQ+GlPMljb7DACjAWgDZd?=
 =?us-ascii?Q?ZxCVDhqYXJqsKyTz1Gi9MllJLWhJd9NYC4pbKYZBa4fSbbAMSPtT5Ll8QfA6?=
 =?us-ascii?Q?2inxQXx3KJdblf0NrFx/IOBx1PoDUeNtFCQDdO0qJ/lf/iyQzSjj/fyzIKyH?=
 =?us-ascii?Q?yUuncaw91C/zgbCaSOzcFr8yc6Cdr50JLovT/4T+jZIKXryO5aTcIfifmG2w?=
 =?us-ascii?Q?2yZ+jEip4RLi0TgvdEvLjgG/JvlFIOzOk3nKPeMiDKwolyI5OYmOPalfYecu?=
 =?us-ascii?Q?9QsSWL33W4X26bm1kUxWBsevPYLflLdtcmGN2Q6IH5OE?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 94758a09-65dc-454f-55e0-08db29a35574
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 00:29:29.5807
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6bexM/AFyC3nlI0VyXwl7S2FcOP5lln9uf//QQJAFhNcDrKkKk4XxDI0XTgz9qamLaVmIx/iWer6SuaEUftqqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7782
X-OriginatorOrg: intel.com

Sumitra Sharma wrote:
> On Sun, Mar 12, 2023 at 06:25:21PM -0700, Ira Weiny wrote:
> > Sumitra Sharma wrote:
> > > More information:
> > > 
> > > Upon running the "dmesg" it shows 
> > > ##
> > > BPF: 	Invalid name_offset:2154618
> > > [ 2905.429687] failed to validate module [pi433] BTF: -22
> > > ##
> > 
> > Good start.  I did some digging.
> > 
> > $ git grep "failed to validate module"
> > kernel/bpf/btf.c:                               pr_warn("failed to validate module [%s] BTF: %ld\n",
> > 
> > 
> > kernel/bpf/btf.c:
> > ...
> >                         if (!IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH)) {
> >                                 pr_warn("failed to validate module [%s] BTF: %ld\n",
> >                                         mod->name, PTR_ERR(btf));
> >                                 err = PTR_ERR(btf);
> > 			} else {
> > ...
> > 
> > 
> > $ git grep BTF_MISMATCH
> > kernel/bpf/btf.c:               if (env->btf->base_btf && IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH))
> > kernel/bpf/btf.c:               if (env->btf->base_btf && IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH))
> > kernel/bpf/btf.c:                       if (!IS_ENABLED(CONFIG_MODULE_ALLOW_BTF_MISMATCH)) {
> > lib/Kconfig.debug:config MODULE_ALLOW_BTF_MISMATCH
> > 
> > 
> > lib/Kconfig.debug:
> > ...
> > config MODULE_ALLOW_BTF_MISMATCH
> >         bool "Allow loading modules with non-matching BTF type info"
> >         depends on DEBUG_INFO_BTF_MODULES
> >         help
> >           For modules whose split BTF does not match vmlinux, load without
> >           BTF rather than refusing to load. The default behavior with
> >           module BTF enabled is to reject modules with such mismatches;
> >           this option will still load module BTF where possible but ignore
> >           it when a mismatch is found.
> > ...
> > 
> > For more information on BTF:
> > 
> > https://docs.kernel.org/bpf/btf.html
> > 
> > Are you building this module in the same place as the running kernel?  It would
> > probably be easier to do so.
> > 
> > Ira
> >
> 
> Hi Ira,
> 
> What is the solution to this?

I don't have a solution, sorry.  I'm hypothesising the issue is that the
kernel and the module were built with different configurations.

So were you building the module with the same configuration?

In general it is a lot easier to rebuild and run the kernel from the
source you are building from.  But that is not strictly necessary.  Hence
my question.

Ira
