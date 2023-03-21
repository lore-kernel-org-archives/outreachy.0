Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0A7399
	for <outreachy@lists.linux.dev>; Tue, 21 Mar 2023 00:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679357352; x=1710893352;
  h=date:from:to:subject:message-id:mime-version;
  bh=/Dh9BfvgJSmi+1VqnesKa7UTW8+2DH9G93b9qXTGtU4=;
  b=Lx4JP4YHrpJFtvAp7SRuNnA+lQ4ut9cXL1VKjKbl4IRz6rddJYbEsDF6
   qd76Qm5p5lcYXcShpoWLArb2TjDTX0sUM72toXEU2DWPqTjqkDoRZE/nu
   mjXqhf7n8KfKZvpGU9NiJEwPi2kTVjLi8h/Ka3p4dPWmKsTreZHfhbIhy
   /5fPssvKkZy4IWU7pL/uOAT+gCmzVjQsT6qqMkpBPoDlMJUEiY3iZMikk
   NGvrAyVer7ndUTQL68gTHKm+qeze47UEKxLIsO26Yor85egh0Ae8jaRPJ
   cRRmfbQXFt0Xl8DTbkKe5cfZjBA7XVJVy1ebKG8ZGkgtHLahKmbTySc58
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="337524668"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; 
   d="scan'208";a="337524668"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 17:09:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="631337159"
X-IronPort-AV: E=Sophos;i="5.98,277,1673942400"; 
   d="scan'208";a="631337159"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga003.jf.intel.com with ESMTP; 20 Mar 2023 17:09:10 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 17:09:06 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 17:09:06 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 17:09:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C1n6ggtHOn3yGahvMnhgUv6/fBSmPk0sUi+UDCZDbadhDt0Jbqf3zrD/Hu9ZC8QZ4S2C4uVXDpAxpvpd0tfoxTU8GA4IUvFcrbuizlDzdm2YkZiwLsVfuUgQiWdErtZFCvyyzx0+QXUIz80hxM9agECBnQDyXHRcXy5uHEIrBn8GILR4erl1cfKw1RddYXPLEbBtLf5tpAJGj5eRysAEnVJ1h3hPNGflINZdPoOc3CJqBZTcMOi6EF3M8TKqu3XTyuwaWgH3/GG/WTztAfb/pz/rqoZBt4A2KXQ83JflfdUT4ycag6WodcTLUwUDiXWaFm2HViK7XCOMPd/QhEhRyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wc2KqX42vtB+SpnNeACJ3znsLSfU481ZShLw0xfnMdE=;
 b=ffZIXuqqh5uSfrTH4zThbOr2RKuOMxbV21pJxvudYQhJcfo1Hv8RsxmWxsAT4W1DECVNX+sAWfsTsd5j5kfRs2Ee+wEEJmLpvh1nKF2gsD3t1Q2ct+yCbkC2wCFYMx9xMIxivXT7o+w2OmT6on69C0WgTPft2eC/KlQ7hvge2ToVHsJJydLXatjPCjwWRiJVP+Jv1TVkcvub3taiyOCI3A27isUrb7+vnNcQjUY76qWbQ4IxOlWD26/86PfCE2FiG4Lie64tci/v0s5OqL63OtdtVnwRLWPs4aguPkLdNmUQcShpWW2D08elBIU9GLwsJszxzJLm1VboT165J8rsCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by MN2PR11MB4597.namprd11.prod.outlook.com (2603:10b6:208:268::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Tue, 21 Mar
 2023 00:09:04 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.037; Tue, 21 Mar 2023
 00:09:04 +0000
Date: Mon, 20 Mar 2023 17:08:58 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: <outreachy@lists.linux.dev>
Subject: Code cleanups are not always simple.
Message-ID: <6418f59a8b3c1_2c274e2942e@iweiny-mobl.notmuch>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR07CA0097.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::38) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|MN2PR11MB4597:EE_
X-MS-Office365-Filtering-Correlation-Id: 62ef18bf-d95e-4857-7941-08db29a07b1c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YkEWfTI0akE7ztPxnK0ylxZ4sUSdhIcGxzRBcsqDVeXN119wePHa9FYkq9QJUQrdIKxZbbvUlsbojKiuaOneFBsuF1Mv/MnYn/f+NR8t8aUvpXkiKixoky7mBP/z2HHIZjVI7cwUPTJeH5OgY9ycH15jBsVLNLPoh2oRNAbBwZtECR1x99JsEiWC6IiXedvxLp5pbAFoNZJlEe+Nt8uYxRJ6T1gti/cHxoEMUaeC+rKK+oP7UfZSsnPCYymO8gjRKWEvBxJF394myN+8AgovmMwy3jIJlF1Q2d5jc+Tt4iq30B6Xw5rw8FPUVW5ODnrd7/Tsj3XIUciHitFybakox+BV7XDvwCOBLxIOXIZgYwWRI2UyIGiaMB7mpJOFpWjV9CVkEksdUjd8ly0Xev610B5nILklxwz8UJPFbcMNpikEk1SHfhC70a8jgVzwjw7us9XCbO+z/lFCRuO4GwbIHiypRVYOy6ZKihT8tQxLey9lXj2X9f4VaUk2FfDYSmD3BPcLIkJ+Ld64rkToSvV+8E2lD3fQLOtjgceBR7pGgD6PKqgUJRZ6+T96etSsb7UpZ/uvTDMuhD/ar83E8VSaM6VINsG8DNfu5FGDkxKFIM4bF9fwuj7tcSH5lj+43iJ3kYJb8pd4pDwsfJ7203EYO7grANkv3zBd8tu/19YM1hw=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(136003)(366004)(376002)(396003)(39860400002)(451199018)(44832011)(5660300002)(41300700001)(86362001)(8936002)(38100700002)(82960400001)(2906002)(6666004)(966005)(6486002)(478600001)(186003)(6506007)(9686003)(6512007)(8676002)(316002)(66946007)(66476007)(6916009)(66556008);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Tj0vnYJmOCFX0Rq9nbmoz7YgkpcqIEHbBXeyYQR0UJVHak/mMgUElVqH3VCp?=
 =?us-ascii?Q?ahiqvMfpbviWt2IL+NfyN6/DdgfJO0LvGEPzWfAUGQL1mm+TCefrrFScg0vc?=
 =?us-ascii?Q?AV2Lk96IqiHpj9MaLX9h8VO8zWX/mCZD/Q1X9sKfNfIrYMBgUtC0HngFNEGv?=
 =?us-ascii?Q?CcJuBFMydEYvHpKYONh6uMkPt+llfsf6AzkC9vZS9ozp78Uyq0TSZhcXyKBo?=
 =?us-ascii?Q?WFP+Zj4uJiNc3qMGSF6mI7DkOMXnSI62rIH+IFfL2jrcCpMYhPyEtjOXf35p?=
 =?us-ascii?Q?6TUn/jDyyo0JB04Dp7/zSHnUiUieUJHjTW7J+QNb25isn09681tPYiQrVv0u?=
 =?us-ascii?Q?I5i5G6U2M0dqudCPlBUqy+/NPP7PuTCejSb0/4PXNmlBwdrrQU61hRyhVdLq?=
 =?us-ascii?Q?UhHAJ1uXx4jdM653drTddKGNyMxbbfcbZhNBH02BOxa6FausDiUpauM6don6?=
 =?us-ascii?Q?VgdMmy0y25z/NaBa3ZOm0q8A2wqwC1cYrwx96R5ymPVFWNvfpzBQiiZOPnBY?=
 =?us-ascii?Q?LAG+xKyRtbtPIp+p5tPSgdpe0HZ+VApsMAgPQY2vhO2ztJNg4SGgOypZ2SIA?=
 =?us-ascii?Q?ApbhuNzrQzonwy9CrEscw7O95NQZKn6qxs8ZasYAPDFNa6M/OU2ItSBQgBLE?=
 =?us-ascii?Q?GvhSoiKEWW0j4h9piGkruUPWJ4KEacRaXX+E2pge4JxZqySgOrcOem8LBsHY?=
 =?us-ascii?Q?xR6OolF2WZPnDtF8ukFNefn5DKrAZkrP0bQyZ68sd24rYMsn/eTHlHYF4O7M?=
 =?us-ascii?Q?sZPsaYxpxU9kGv44/Yqz2XU/GKt39l5X06ossGp6WhNLlosUxT5YG0FL+Vvw?=
 =?us-ascii?Q?dT+dCsdS9wdXapuesbxRdAer01BRFKDofY5rI0TsS96MNGVWpJcsmxZp+TiD?=
 =?us-ascii?Q?ZHinhMvyRwl+2eyNs9wx0ux6Yw8JntAjE4DTHcnm/1zlHMHYGWdJeMzAYqG0?=
 =?us-ascii?Q?X9OdyL/qj6JW/KVkUDfRMUExbBAEywmQEB1kXP1OMeJoSrBEhfM7iWJMbOFw?=
 =?us-ascii?Q?VmRr8s+xGdxOc/Ta9NBtPk0C+rxBQqWYLxEbi+Zd7pfY6XW8/1372Miinb+g?=
 =?us-ascii?Q?XDYpXe5gxX4bC4cL19E0NiOoY5+ul+lhNHHbTtlhV84u/wj6hVZfE3ZmtFJT?=
 =?us-ascii?Q?PpbAHnwVc4m616grW1BuAnpGneslPWhoedTWGWkinugJlZc0JnA8Ad3bPGKB?=
 =?us-ascii?Q?VlZh0k4EH+WMAoZFGafMuXew/8WTtKWlXKyngUY58e06SijBL1j1J38nY20l?=
 =?us-ascii?Q?yfIl4zZYnbFbD+KESTk5cQ4/WRSVXIqT53KXPgEkouyl10yAtMBO4CHQTcAK?=
 =?us-ascii?Q?yxpIOVq5e14O1xbJMI+IaPVzO5dOZPD68xR4ZJNUqBL2W3Ju9/ZQWOHT5/i/?=
 =?us-ascii?Q?2RS2znR+/oHxuP/7z9DpZ5tHnyhS+t0/miaB3sfGfZLonV9S62QLOrxR6etX?=
 =?us-ascii?Q?vQbB1bcbiu+wwd+IHUrWJgYWgpXX7wJ99rEdUJ7y4BqKPUjwow5t7OWO5RNK?=
 =?us-ascii?Q?ro5c8F76sF/GcGZJJi8925brTkShZwOtaHXGb8jG2XpiJlWBdTCm1ZQa3jZX?=
 =?us-ascii?Q?XP/8mPwhpk9InZhHsf44GP6ijDclm3+fqPtVdX2sFSdSXsOAz6w2ddm7LSXN?=
 =?us-ascii?Q?MSihWnP0P2omDbNvplYUwZAwzDcdsOL8Rg+UseD4d1RH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ef18bf-d95e-4857-7941-08db29a07b1c
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2023 00:09:04.1915
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a95a12ZTqU2BK9hGVpSUTW2bdHLhFPSYfr82cMP4IbTX4FVFGF3sYC08ckIbR6HrG/eLTyF3+PMH5EA712309w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4597
X-OriginatorOrg: intel.com

Cleaning up code is not always easy.  Yes there are various rules, coding
styles and tools which can automate the process.  But we should all remember to
think about the problem being reported and determine if a simple search/replace
is the proper thing to do.  I think this is becoming more apparent as the
number of things checkpatch reports on is dwindling to these more complicated
issues.

So I'd like to call attention to a couple of problems which have required a bit
more attention.  Hopefully by highlighting these problems folks will be more
aware when looking at future issues.

The first problem was a week or so back when Khadija was trying to fix line
length formatting.[1]  The repeated attempts were causing circular problems
with checkpatch failing on different checks.  The core issue was that
checkpatch was only checking the symptoms of the issue, not the issue itself.
Checkpatch and the kernel coding style are in place not to enforce random rules
on how folks write code.  They are there to make the code cleaner, less buggy,
and easier to maintain.

Today I saw a similar situation.  Julia called out the need to make macro
definitions safer by turning them into inline functions.[2]

But Sumitra took that a bit too literally.[3]  The container_of() macro is
useful on it's own.  The only reason to create additional helper functions is
when the conversion is either more complicated or used so much that the bulk of
the code becomes much much cleaner.

I'll end this with a recent example which is part of the kmap() project.

I was looking at the call to kmap_atomic() in memcpy_page_flushcache() inside
the x86 code.  At first it looks like a simple substitute and replace from
kmap_atmoic() to kmap_local_page().  But I took the time to understand the
context of where memcpy_page_flushcache() was called.  Doing so made me realize
it was not called at all!!!  The proper fix was to simply remove the call
entirely from the kernel.

I know you are all excited to get your first patches into the kernel.  But even
simple patches take time.  After removing these calls I needed to ensure that
x86, powerpc, and arm all compiled without issues.  I used both 'git grep' and
cscope to ensure I removed the header file declarations.  Even then there was
discussion because I accidentally submitted as a series which made a bit more
work for the maintainers.[5]

So in summary take your time.  Try to understand why checkpatch or other tools
are flagging errors.

Most importantly, don't be afraid to take your time when submitting patches.

Ira

[1] https://lore.kernel.org/all/640e75cfd8fc_229a89294a3@iweiny-mobl.notmuch/
[2] https://lore.kernel.org/all/124d2ef9-6f1d-2652-c88d-161f1bc06443@inria.fr/
[3] https://lore.kernel.org/all/ZBh%2Fs5lyONaF37gs@kroah.com/
[4] https://lore.kernel.org/all/20221230-kmap-x86-v1-0-15f1ecccab50@intel.com/
[5] https://lore.kernel.org/all/3523ddf9-03f5-3179-9f39-cec09f79aa97@intel.com/
