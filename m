Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D0315A6
	for <outreachy@lists.linux.dev>; Mon, 13 Mar 2023 01:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678671301; x=1710207301;
  h=date:from:to:subject:message-id:references:in-reply-to:
   mime-version;
  bh=hjnutn+5ZJUE6EiPSA2e/pwRIdCWEUg7VTw8s0r560E=;
  b=mwKxsySleIujQmbf3AqFERYDijYV2ceSx50kVAoMpGR3bzZ3R3sjEnyY
   7I/FwaSetA1N+cIIakH3xNNcnxKxhE81MQE33qxlu/DVEz5cWnT6JnlEQ
   Gr5mfN7HnN6Cc0QFQplPAW85B73C0W+aIlbiDt9SW2Ht0zdZGWsaSsGqV
   xf/pzizpoVnIb7nEjPrpb0R7JPL3mYH5pQazLrb6+3QjL4Vc4IgYT8xW9
   lzJmq5RJ2gEr0ccSa5jtJejaVumf+GLKoAw7a+M6M1VQCkvnngnwXJ2wo
   MyT9ZVNmVCVQ5MH2DUgOU0fUerAhg8fUG6tKe16ZZci/oZVi2z3bOxX1J
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="316689230"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; 
   d="scan'208";a="316689230"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Mar 2023 18:35:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10647"; a="742682561"
X-IronPort-AV: E=Sophos;i="5.98,254,1673942400"; 
   d="scan'208";a="742682561"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga008.fm.intel.com with ESMTP; 12 Mar 2023 18:35:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Sun, 12 Mar 2023 18:35:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Sun, 12 Mar 2023 18:35:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Sun, 12 Mar 2023 18:35:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DpKBRIusz180n1iKKWWB8511/U9gcVMCyBRGA7tWUr9uFOENbPA1n6tv2d8a3z2nF/0BhoitQbGiLqtNpw9iMI6Zyez2KqL7DWXYQt/St9dWaUYdAaWsR4UINgzm07cTd6rWoFmbtwVWVeZsXDMIMXVPwyMFHESW58df1BPdjjX8itnHJxLIkYDVfgkGMljVA6GSc+hNEa16aJ9BDjT6H48OVhqTjyoBdrbCm6b9JZ17U+lUX8oAgUYDT+ATCmyZNa1hZ9E/W46PKpGjTJtOZO01mBG8eMwGnLn7gieHNMg85RAvPqP/oLpuXBt6zq1KJZ2P7FA8fVpZLZkiaNfiIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0E411mo2ZghSBv/0Fgfn6LS/kbzRIeksx3A3edp67E=;
 b=lSQgRVothKDRb4gCX9VRuoXrRrPHygBI2LeH9EMTpBeKnuVSlCCpMk+7E+R98sczJJty6n8Wy4OQuEqE6cXmH4bzCmDvNX22SubdGNTjy9Cf3Icy/ZcyHd3xiEn7SH2y7dRIlGuYNXjkMqx51+Ko74n4oo14ukomwVXELJBalJ+i6SJCbGt42tCmCYWo18YwtIm60IfwEHEziawF8pCIZ9/VR+Aa3MwGq9yxeIwd3pYofwNt9cEslO13AII8CWH2N7Y+/jd6ohkjdwQaRJ7/xBF7PeIOdFBh5y8qM56cK03SeZAqL8T59FYnC7N4LnG+HSP+p1CzuODK4oDx/hJsPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by IA1PR11MB7386.namprd11.prod.outlook.com (2603:10b6:208:422::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Mon, 13 Mar
 2023 01:34:58 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Mon, 13 Mar 2023
 01:34:58 +0000
Date: Sun, 12 Mar 2023 18:34:55 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, <outreachy@lists.linux.dev>
Subject: Re: [PATCH] Staging: pi433: Change bit_rate type from u16 to u32
Message-ID: <640e7dbf181dc_229a8929410@iweiny-mobl.notmuch>
References: <20230311114212.GA21407@ubuntu>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230311114212.GA21407@ubuntu>
X-ClientProxiedBy: BYAPR02CA0025.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::38) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|IA1PR11MB7386:EE_
X-MS-Office365-Filtering-Correlation-Id: 977a6461-f8ed-4a01-b3d8-08db236327e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aWuL6Yk2tYeui6CM/QzGhgekleO0TejRzoaVA7YC6ue5wr6U3MPLxGPpKyFMNL7TMoNJSETlndC6UPBgnvlVor31k8XS22co7id5s71C6sMI5RE/FjR0HnP0R3g1qB1VaiWdcg46a3/Y9Eu91azMn8H6kO+dBT+U8S1qxqulWDi/6T88O30Fk0eJAqOp8Mrzeq0QVwvb8SYhiks43rrfGbjYc5+hMReVUQj35o4MwaMyhBJHACBxGrAiXnEKZSApxBDKat21XjgcmJSJZoHi/s/acWy4y95LcqvWh/1WlZc9jEcdpXCpPGTxWghWfhO/BVmJH/wyrigEhJrrHnxICVIdXXVJlv5BZRO4IHOFpGV056CLpCPylnsk+kfpG+IGE0KvpMopKONzRfDDEp73CwipK/WMRSBhvAxBSLnGvaPDLSC603YeGJSoM8WRRcJPTkkTf5TS0yw+M8Jlph9ir3YOC/88QPC69Yj6WW6Xs2S1ybuuUZK2Ei251EIsCeL7EQbSjCvMOd4ny2TxcMrYSqtTBtQHqZjbGAYBWLN4YMPywEOhUXboTjPpTqANX/f8BFGuLOXvIHWD8RHtbwOZSqR99vvDDkI+zkW66NKhVepgfV85dNalEgRlp2+eP+BAf4TLWvuY2VFQNvwbHyqqqg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(376002)(396003)(136003)(346002)(39860400002)(366004)(451199018)(86362001)(38100700002)(82960400001)(66476007)(8676002)(66946007)(66556008)(41300700001)(8936002)(478600001)(316002)(4744005)(44832011)(5660300002)(2906002)(83380400001)(6512007)(9686003)(6486002)(186003)(6666004)(6506007)(26005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sSFuV7T1EB0whNcYjMIlzI74if9LV7r/sGjsb23hvZndMTW3k07Ou3shiqsO?=
 =?us-ascii?Q?7KRctxyidZGie2sGdDWTsHJvW8XBl3jsPG1BkMs6kqub1UYlWoXQJVTrejt3?=
 =?us-ascii?Q?DIg2ykv5oWN4+Z9NJmUEjF3zlEH0MT/GZ2oGFW3qY4a/1gae6DpRjUnzuZxn?=
 =?us-ascii?Q?1SKydfWKzaYiuMoBcgzHJuaI5Kz/8msz0IIT3SpSZRmzLqZdPnAXkMR4VjlS?=
 =?us-ascii?Q?byvyWi5ZGtlZepIZeLkstdVYdj9eD3X/SnqoGoYjjatfwoy8jvZVVtT+/wAY?=
 =?us-ascii?Q?O7HRU5x9gm0nwdYJQ8RZSIIOxQErbDvbqZQGpntuxBfO23dH7eFMgkNOTS4F?=
 =?us-ascii?Q?EzWDgiauIExbODs+ZFcDjGzzeI4p6xFrcZ7iFMjgmjQOC7Vex1CoXAMT1+wX?=
 =?us-ascii?Q?Dt+O2S28STu4EdQW70k22qMJePkSnKJR4WFu4UkoiwrXPI5BulIJf+rFcdB1?=
 =?us-ascii?Q?i8m760/7wM6ywbuSZuV1IpjSLuVauLPz3GSTIyvLz5tkw7LA5tHvhMQoeQMj?=
 =?us-ascii?Q?lEXlFvnleU7L+cnBU5rNUt5teL15s9H4eSV62bj5bPA+9p6iUx8ZzYnSb/xD?=
 =?us-ascii?Q?YXQHa6y3wWUaXoVVHGIjG1dI4FJ/8leJ/1fplH2Cs+5ZxEYlQDPSbvym2oR5?=
 =?us-ascii?Q?TzD03XcPtlJqO0ziXqvGlg+HXnRc49HxV06T/feVKYWoT3EXo89AX2Sd34OB?=
 =?us-ascii?Q?wyUUx1zNPpBACMV68RAlSQQ1eZpYFu+IpEqHmOoiC+Zm5bnJ1ayYjXKA7lcd?=
 =?us-ascii?Q?s/uib+SFktsg8HHDMRod6tLpMMW6ooOKfUGUacxFM7m+EbLXdb7rsJrowaSY?=
 =?us-ascii?Q?grq0xC+rqknSn1Vo2PuxUBdSXUJSID/V5YeHJq8EKMITeEfh73+1FEpAeUDH?=
 =?us-ascii?Q?WcPiM5YUX9lyP8+zzNeAoY+rQpuL0VKHTNSjBMkb8UfSbpbhU4duogVOmy3p?=
 =?us-ascii?Q?DwYXxL1cjdLC6opBS3Cgr9650okjMlHrEE/HOSQKo/MSjHvDt6ADGHuJA6g+?=
 =?us-ascii?Q?eci09ypBGADUnr1JOVMf/9t7fple1s8i+oHlA0mw5e69io9Eek69stvG/ojq?=
 =?us-ascii?Q?89k1Pt8vpSByiBVPAnnrwjgDbwGPj/skU80BzaXU4600bW75jGgYpXoASpN3?=
 =?us-ascii?Q?lPnf2cIpMSPxMhBM0zDa95FuZB8toeSWIEuI6M0imhvLwHgi3XyzokJRVNWT?=
 =?us-ascii?Q?W5iy3BKip7dVNZrxFZo31FKofi4SonWNGGzbbYvrS2r3kDl/hP1O2krKNmE7?=
 =?us-ascii?Q?26d3FQf7UfWIH4scZcrTJp/81+JoaMdRfyat/Ga2owjB1WuoB9WQq5lrDVNY?=
 =?us-ascii?Q?pzKyUJnRNrFZ0+ltxp0eNxiPI0g2IxGK3b27q8xNGZUpUY6qSd5VjRL1shle?=
 =?us-ascii?Q?NmSRyaeQxCfC2MNFsDq4MUh3kWP2E5ORqqJ/VCOQa8Mc8EgxfobcUXTvtRJN?=
 =?us-ascii?Q?nkwBS694yLPbwcd+o5PYO2ZAvCisy+Vxhq29oeEQC4vb/GU9Yjk34K2VWAhx?=
 =?us-ascii?Q?A6BvuAmXEe8rqMODZGUeVcXn4ArEc1ckaeMexkipF1fkMHOIhlYQ+TCtgBWo?=
 =?us-ascii?Q?xyT8VmSP6BquzovLmqEq/ODHfJU2E+k3lGUtAkAv?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 977a6461-f8ed-4a01-b3d8-08db236327e0
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2023 01:34:58.3016
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N3YERTJBhgC/Cx468XKXTLerVObAmwEwxLE6AO9eaHSz/ftvklSH7xtlO3uxY5GQnU8b8wLgWtRlejTFcL5WzA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7386
X-OriginatorOrg: intel.com

Sumitra Sharma wrote:
> Change bit_rate type from u16 to u32 inside struct pi433_tx_cfg to
> support bit rates up to 300kbps as per the spec.

From this commit log I'm still unclear by how this helps.

Where do the invalid values of bit_rate come from and how did the u16 value get
overflowed?

Ira

> 
> Signed-off-by: Sumitra Sharma <sumitraartsy@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/pi433/pi433_if.h b/drivers/staging/pi433/pi433_if.h
> index 25ee0b77a32c..1f8ffaf02d99 100644
> --- a/drivers/staging/pi433/pi433_if.h
> +++ b/drivers/staging/pi433/pi433_if.h
> @@ -51,7 +51,7 @@ enum option_on_off {
>  #define PI433_TX_CFG_IOCTL_NR	0
>  struct pi433_tx_cfg {
>  	__u32			frequency;
> -	__u16			bit_rate;
> +	__u32			bit_rate;
>  	__u32			dev_frequency;
>  	enum modulation		modulation;
>  	enum mod_shaping	mod_shaping;
> -- 
> 2.25.1
> 
> 


