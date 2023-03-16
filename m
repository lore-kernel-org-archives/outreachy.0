Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A717F
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 00:25:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678926320; x=1710462320;
  h=date:from:to:subject:message-id:references:
   content-transfer-encoding:in-reply-to:mime-version;
  bh=8Q0XwFO5RaCabX0y2GBMOa0+A5v6ynU9LUnG82iHw3E=;
  b=WvCy3Y1iN0P+DujN4ljAfqb4AufMwPMHWRB9HEX/0UZVmbz8O/TpBZDs
   8phsJrKCV89btQY7r5eU5dL9ygq9CXdUqDkRRoLklJmE7AQElkOG1mTuo
   bI8DZ4NiEfvd8VkDNnv777tRxWg2y0vMK+l6tDiUHWvNmboEXSwsO5GkA
   W+xvxw2oGL1Tn7JgnRSfT8SyawUDj+CQk40HH3JSrGD0FBDXk2TQU4R91
   YSISxn+nhAmLZj0DTPH3MXE6OvTcQNswYnoLan1w5OXgRO9JxTIdRSsta
   w0Tp0MuIxBvV4qItBqurjkr0rLhmgIgHMn1/0n2Xo528zD8XEV2dQsQjR
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="336539700"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="336539700"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 17:25:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="709868456"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="709868456"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by orsmga008.jf.intel.com with ESMTP; 15 Mar 2023 17:25:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 17:25:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 17:25:06 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 15 Mar 2023 17:25:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 15 Mar 2023 17:25:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbIeGIKQg39dGe4ugcpaQkZgqVVxG3vudmHbIEhuuMWFqxpRMJpMA3y3q4PXTmesq0eWQV4CRHMc/z6t88g2JwrRPC43JeSuUvQAkcRgJnNgLmjyswj+2Jf5tIUwQs65RMijQAQi/0cp+JU7BAiwxe4eSxTGWKygtvriSD6zX/T9wwp0IMeX3GJcFMGc5mSW/M9Zks75/SAY+4AVcjEFnmSlis8mfaEl0ZdyuO5U+KTKc+GSTcDPpHisToZ2s7T5iu+iydVjt0Rd4CUUbYLMguCDf7EKZ4NZsN+3GdHlGO3zBwBX9zRK0jvPxdnGrYsYm99NnNQwUnjpSnWQ54xhgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M70gNTKqVbvqQyOBQULWqSUYX4Zz6XckzQmo4MaVjis=;
 b=UHJiq2RW6DDWpHCYyGDFl8t2gqkXXAGVVQumBMbrOOa2MPxFQTnlmrmLduaTMvRyb5QQBE3NYzKS/jCOciu68PFJVIRu/teY6DGnSTm4ebp7yB1C7jvgVNA81a2TKE7F0pN6GFrEAB6XR1AdTc51Ja5/jkOl09wRwU1vnl+BOSplqRa/FheHeDy/RXZ3/37M6J1oisvCBP46BUFTUrujSmecqKJARAVIzL6yRPxJ1EyJ72uwYITrmdEwFtV0cAJapyhKY9CNo8X1NpthjpCxbjNgr7Q36U2I9Vrak4TE1uFj5xsd36q0upSqy4RPWBZdqrFWw+sZevVDR4WKkEQB9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by BN9PR11MB5323.namprd11.prod.outlook.com (2603:10b6:408:118::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.29; Thu, 16 Mar
 2023 00:24:59 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Thu, 16 Mar 2023
 00:24:59 +0000
Date: Wed, 15 Mar 2023 17:24:34 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>, Ira Weiny
	<ira.weiny@intel.com>, Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: new patch
Message-ID: <641261c2c3083_25952229423@iweiny-mobl.notmuch>
References: <1cf83508-9fea-05c2-f197-16fdf3edf030@gmail.com>
 <6412107d9fcab_253a1e294b3@iweiny-mobl.notmuch>
 <0dbd4f7e-fc49-491c-0b7f-99d900aea7a3@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0dbd4f7e-fc49-491c-0b7f-99d900aea7a3@gmail.com>
X-ClientProxiedBy: SJ0PR03CA0061.namprd03.prod.outlook.com
 (2603:10b6:a03:331::6) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|BN9PR11MB5323:EE_
X-MS-Office365-Filtering-Correlation-Id: e4c05d8a-1cef-446f-fd1e-08db25b4e07f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Fh2LnLvkfNXNEexyTVwD1IIZ9GMYc2/SnL2vs+43mk0xvE57Tu4uo+Un0IwFUcRJLeK4C7V3tsRPkk39edZohTMzhTGBVw5ckidMKT/WPPMrRJAIIXw0lL/bckW6gfat2pM4zC++tWu996sMTWXq0A5San7Q5XDHx9ZdlFHgVbUuJAoSqz7nYGx2eiSj7KNE8r8biE1Tunhjz62zP5MuWZ/9rWAOM7LJWHClmE7lIQ++evMhgL9QeIkbAbBc8eppIl3lu+/oDaIiGfDs4Q63BvlvWWdopnDuYxFqfVKDjHjYr0v9WN4Lm6ks2i/xaT/V16G/GnxMYBKE/hepaxpjvBSRk75/9neU2BTuPOIl9sCHUl4Dr5+zNxEO+oB0TRrUNejglm7IcjFMjfH9B0ZvZGjNPStScBns7KCiUw8i/v+WwY81tKAKhcqIMdrzFYFmRcat7smw8Guu4jPHGn5AV6dQtoTr6ujWeXkhXdSB5oPcmsBnb6ANPjLszBaymTXk3HORla7XmGefBeGfzRXaHJeOVTWESKpbLWhwjeklwzAUqdcL5rWAtyn2xOeUZrt5IuYD5RuFIbIw6PFvulYe35qaFlyeblGf9BLR+T9hlrH/ngWvRDiOY0Md4zdg4YN
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(39860400002)(346002)(396003)(366004)(136003)(451199018)(83380400001)(478600001)(186003)(6666004)(966005)(6486002)(8676002)(6506007)(9686003)(6512007)(110136005)(316002)(66946007)(26005)(66476007)(66556008)(41300700001)(3480700007)(44832011)(8936002)(7116003)(5660300002)(38100700002)(82960400001)(2906002)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dFl4ZFBYS0FwWmQrbjk0NFUzNmpZT0Fra3YwQWhWMk1jUlRsUmw4bFY5YkpB?=
 =?utf-8?B?R2hOeHd4M3NQQ0RzYmpIenF5U3dLMFVuSUdqblFCdWpCN3c2YTdTZTJKRWVv?=
 =?utf-8?B?RUlYcnQwMi9aZFFTU2MrcWs5bU9qd0pkc3c4di8zZzF3UHBBOWYyNSt6Smxw?=
 =?utf-8?B?cGsxTW9PQWtJNjVraEIxcG42eFdSQ2xuOHdpK2MzYTdXaFVZMjZQTTRRZmFE?=
 =?utf-8?B?VUg3SmJVSTNLZ0JkeVYrbjlueENtM21HazFFV2lyeVZqaWZOUTNYckxXblpT?=
 =?utf-8?B?a3JWZk1yQkIreE1BMUR4ZUg2eEJsMnkxWk10NFlGTFpaWlRqMC9qOWkvQ3Zi?=
 =?utf-8?B?bUM0Skd3dVl2V0RuTzVxNDBJdU5KOHJBNDVTTUk2a1IvUEFDWTVQSXBidjIw?=
 =?utf-8?B?ZGYzWTUwZVh0aEthL0RnN3kwUk1lWnJkSjNpcTJZVVl5VVdkYTVuSDB4c0Jm?=
 =?utf-8?B?QklNcGgrYnR3MERzRTlSMUFzQjl5dUpsS1U0Q0tlWFN0N2FvUGoxTktjZE10?=
 =?utf-8?B?ckphRDE5aURsVlYzSTJESzUrUWUrYjNmaWptZ3hkUmxpK2Z2emtRWnVSL1RI?=
 =?utf-8?B?UTZJUWtQVTRzVXpzQ3UrVXVabzd1SUwrWTNPSk83T1VBUE81STJDWmNDNUxj?=
 =?utf-8?B?Sks4L2tIaEVUQVdLd3ZLY0Z0UCtYd2ZYVmpzTXRGZzRROUFGamVldjFqSHZE?=
 =?utf-8?B?cFVWcDZLT24ybmllRmYzQ1lwMVcwaE1wMGFnc3ZvdWRkZG52TVhhSER0Tm85?=
 =?utf-8?B?Y09lNTRXR29UMUhybmQ4TEtvZk9mYVpicjZwS0Jha2ZxSXFzQTlCY2orS1BE?=
 =?utf-8?B?VWhwMDNJa24zUXJ2alhEOEJoQld5dmJYNFM4Ykt2b21IR0RVbWtsTWQ4emUy?=
 =?utf-8?B?TG1icjJ6N0JVWktWRmhhbTlNRWluYkY0ZjRFTGxrWDZ4ZTkwT1l0TFR2eGNv?=
 =?utf-8?B?SUQraU5UeDlHVTd3eEsxM20yWFZqQ2J5VWJ2eHMzZit2Nm51RUZXYmkrWU52?=
 =?utf-8?B?THJZd05nRDVSWVgreFVleWZkYTF2RmgzL1M0Wk4zS3E1UlUrR25HZVBWTHI0?=
 =?utf-8?B?TER1ckR6SG5OMHFiaXVHY0lqbmFQRHpRR0h3dnpXTVA5VFEwNEFFd2VURTRu?=
 =?utf-8?B?eXlTR09PaTdjc2crTnAvMkFabmZLUkU5MEl5R0U1ampEemZMdWRHWXMvNFlX?=
 =?utf-8?B?RVJ0SDM1VGV0TkRaUnJKaTY1MktrNDJZWU9xdklKTU52VFlkSitFbDEyY0h0?=
 =?utf-8?B?am1qNnJaRUlEUk55c0FnN2Q3TlpWaXRhb0l0U1FqcU5KNnVYQlNEelpTcnZ1?=
 =?utf-8?B?MUpYbUd0R1d1LzZPZDVObkFNcHhNK1JQb2V3d2VmcFFpVlR4WkZPTDlVMG1k?=
 =?utf-8?B?UzhieTBrVUZxdCtybnAzaWlyT3Nxb1VvZjl0dUdWdVlDdU96R2l4dkJueGVy?=
 =?utf-8?B?WERyWVYydnBsUzBEV29JWUZyb3NSOU8wY1o3YTBDaGloVmtkdmR6WTRTVW43?=
 =?utf-8?B?RXBVQXMzMUI3WUN1Y2xoK1UxTHNpVUozQlFCa2xGZFFYUVpLdlBDU3NFSGFn?=
 =?utf-8?B?S01qaWxLem1rUzE5eW9nUGEvN2I4ajM0disyODlaMlp6eE5WU2IvL1B1VDJM?=
 =?utf-8?B?d3BCZVRyMGhWaDRMU0RjQmxYZ0JWUmRGaUZQQkFDbGZocVBPc056bDQrdW90?=
 =?utf-8?B?d2FJRmQrL0NvMzIwMU9wZXdya0VoZTluZUVzVmE3L3N0ODRHV2Y2alFUN0NT?=
 =?utf-8?B?NWxiTjFIVENxdXlIOGFBOW83akFYVG9CUmVDQ0NLRThVNjNmbzlCMnppa0gx?=
 =?utf-8?B?LzJmdjdpcW1TcFJPOWU1Z0kxZy9CQk9jL3RidDd0OUM2UndvT0UvZGtvalpG?=
 =?utf-8?B?aVdNTmhWM0ZUbGljVmV0MnF1QUlPNkRIRU1wWWUrclpsV1V5dk13MDRlcDM2?=
 =?utf-8?B?NnVMaGYyNGhwQmdLWHBWSmpQNXA2cncwNy9TZlhKeEUxOWNhU1pkMjRWa1I2?=
 =?utf-8?B?UEVxeHVmb2RZSlFKNUR4VVVkZTNiOXpHay9tbVVNVEFlQXEveVJZQUV1MnZF?=
 =?utf-8?B?Z0hTeXVoSDRSWFZFaitWdmNjRTR1VC93ekNuaVo2MldybS9kNHp6VVJCSXVk?=
 =?utf-8?B?SkJLSnd0V1ZtcTRoVXQ3bUlNU3BQM3ByNGQyK2JpV1RpOGppenprN0pabkQ5?=
 =?utf-8?B?QUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e4c05d8a-1cef-446f-fd1e-08db25b4e07f
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2023 00:24:59.5602
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0XWNscQPOj5fsnyVcLwBWUy8Bjdx489HN0k5y/uqnzc+TNwAjDOP4BgsgHdfetmpMLDT7QP+awIr+D62IJBzgw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5323
X-OriginatorOrg: intel.com

Menna Mahmoud wrote:
> 
> On ١٥‏/٣‏/٢٠٢٣ ٢٠:٣٧, Ira Weiny wrote:
> > Menna Mahmoud wrote:

[...]

> >
> >> Is it okay to work on this error reported by checkpatch script:
> >>
> >>
> >> ```
> >>
> >> drivers/staging/iio/frequency/ad9832.c
> >> --------------------------------------
> >> ERROR: Use 4 digit octal (0777) not decimal permissions
> > This error is trying to flag a mode permission which is not in Octal form.
> > Are you familiar with decimal vs octal vs hex notations?
> 
> 
> yes, I am familiar with them.

Awesome!

> 
> >
> >> #256: FILE: drivers/staging/iio/frequency/ad9832.c:256:
> >> +static IIO_DEV_ATTR_FREQ(0, 1, 0200, NULL, ad9832_write, AD9832_FREQ1HM);
> > What do you think is wrong with this line?
> >
> > Hint: I'm not sure I see the problem.
> >
> > So your email should have had a subject which reflects this question.
> > Perhaps a subject like:
> >
> > "Is this a valid checkpatch error?"
> >
> > FWIW I'm concerned this is some corner case checkpatch bug.  But I'm not
> > seeing the issue in checkpatch (My perl is very rusty).
> >
> > Do you see the error checkpatch is flagging?  Or do you think this may be
> > a bug in checkpatch?
> >
> > Ira
> 
> 
> I'mn't sure too, I sent this because I submit previous patches but I got 
> comments from mentors that no need to fix them so
> 
> I asked if these errors need to fix or should I ignore them.

I've just caught up with the other thread on this.

https://lore.kernel.org/all/48571e97-8766-e67d-c263-29fd67a31f06@metafoo.de/

Do follow up there.  I think we should stop posting on this thread.

Do notice how your subject of 'Outreachy' and 'new patch' become
meaningless for these 2 threads.

I suspect you had some issue with the mail client and that is why you
emailed this question 2 times?

Anyway, I'm caught up.  :-D

Ira
