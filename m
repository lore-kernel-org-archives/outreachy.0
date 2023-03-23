Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29DCA93A
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 16:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679588941; x=1711124941;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=0OTSPB2EadPnMZxHkkpR+Y3bnlqCLGXt61RQPsjHDvk=;
  b=WvoFW+RFwE+dbPppz+AmhSaJYfo2CfvS3kqsZMGa4XPu5tnYSINIxCe9
   goinfKFMwlDEZJdGVthc6rkRRcTcDm/PZU2I3ih4foFlsOtWBzU8fpG6i
   8iGcOnvmgbOhQPldIfZsW1Ok7TK6jJO8SYU1Wnr8qeZE+gNB09gRSM9Kw
   ZUXfD92yZrY4+p0h4++Y8Tl5w75ClRaTdo5TXyum59bnIU1xvCmrLbK/0
   0Aon6E26MzjyIgg5Zy14RDq6igXUICBB4tJa2n1ETx7+Jd+duxEloNJVK
   SYLxL8yNqbH8DbzOYTJkbMThJoVid2a7sxTe8mP89iNQOAsHHt06H2BAS
   A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="337051520"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; 
   d="scan'208";a="337051520"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2023 09:25:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="714875247"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; 
   d="scan'208";a="714875247"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by orsmga001.jf.intel.com with ESMTP; 23 Mar 2023 09:25:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 23 Mar 2023 09:25:58 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 23 Mar 2023 09:25:58 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 23 Mar 2023 09:25:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Di677qR3jTwJvF+Fjg+eAyiPU1JLCuSloXHpLpbiTDSGFcVCnDDhOqOR3rQfZH5oonFcpxirvuoAvQAgX++kgIteQ8Z4s4s6XmPTjyDcDACxYLbXEPQPB0UdiNh8AdWtz0JQBezuDrOg5fIIm0Aj71REbyyt1COPIHDsSkoefg3Boc0eV7+TGM+H8u7yHqszA3I6G3x7Z+iq47k37nXVPse7GgFZNgwYgCMzcM8No9l9kak58iFCL7Mg8VJ37c50X4d+5gYpJhRBZW/kfeXl6cMEZwb3/uy1fNxiZYQnHje3JeFin+o3XDN/gV7Z9Cn7MEzeqc3nNmZHSYVDIsNppA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZK8D1dAbg7VJJF6wr+nM2w+ScHm/KLOe7NC5HmOtoMA=;
 b=lJ3t5ekZ8GUrzafXTuAEq+xx5NdsMPxkq1F6opiISjyGZgIHwSsgYpuD1dGjWz6qjODM+NJxXg4tGn0Q8RNtzM1ShrQcYl2/FphN+LjXTvuzw2tChY8+sk6Exidu0rjcE7PghpEkdEzFtHCusuH+cWpHvyVNbtrBfz55I77Wi7h3zzml8iyLY2VxPX8owUJVNj9CipfggMxar+3dsMdSkx9f9VTh10GsQnGkUq0/Yy8eLU2pXqt3s+Hr8REx6kdZR0z4W8isSgvYGHU5E07+G2WWaXe1BkNKsFg7JGl8hZMCmFtadxAWq8WXJxkKxfOKBGyW4en12SUntyWYypDEbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by BN9PR11MB5308.namprd11.prod.outlook.com (2603:10b6:408:119::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Thu, 23 Mar
 2023 16:25:56 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.037; Thu, 23 Mar 2023
 16:25:56 +0000
Date: Thu, 23 Mar 2023 09:25:53 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Julia Lawall <julia.lawall@inria.fr>, Sumitra Sharma
	<sumitraartsy@gmail.com>
CC: Ira Weiny <ira.weiny@intel.com>, <outreachy@lists.linux.dev>
Subject: Re: Warn on macros with flow control statements
Message-ID: <641c7d91a3a38_303059294c6@iweiny-mobl.notmuch>
References: <20230316080834.GA43491@sumitra.com>
 <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch>
 <alpine.DEB.2.22.394.2303180703470.3122@hadrien>
 <641557e06a958_28dc5f294d7@iweiny-mobl.notmuch>
 <20230323062853.GB155612@sumitra.com>
 <alpine.DEB.2.22.394.2303230905520.2866@hadrien>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303230905520.2866@hadrien>
X-ClientProxiedBy: SJ0PR03CA0373.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::18) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|BN9PR11MB5308:EE_
X-MS-Office365-Filtering-Correlation-Id: 799970b2-7529-4c1f-4024-08db2bbb47cc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YzG91MsEFV6b9uQvusMyvd/D5LD1Y4Xwd4g1LE09q5rKrqdRZzJ1amm6gFS8xNFznTKM4t0vifva3IMLdhNmSeLnIAHYoar07GfwdP6BI4fUyWi4QPB0iz3SrTNk3PM9NDW/4dKXbmle2le4PIINJ9KmfqpfdtUo4llWzdCsMAIoXjKYN7XF33qfqjnjXXBQgG6YcktC/q93VYn6Hlf6hFoHX0NhmZzJ6KkO7Dq9NwZ25jpHop+3N3ctzP5gKuw48nJ4Sz5lz8r9PoKyVSdqg7Hyk6lYkpfaENjYCDrrOm79A11CtjKPUX5pMC3mcNae1o547JgxTgtjP4GVz2nw3I26Pio5F4fsLfFky331VxeRju8p2r2tKN0Qu/EDDEVBUvLkiVdBVf9K4IHeJZWCgM6l1zyQ8d78wpfSr/s3Kd9uCuKZ0YekLty8hyQ5v3tmdZ+8bPPhwiHGhTh2t/AvJeyk22jHGMSemnGmX+uBGrqIrBZKhnp/yqDm37GwOu9lUi9agXi0/XC4X4ZZcQu+mcgSmEbwVyXb4NJckJBTEvaX2atUkqSUYQ/p/6Iw4fl0+wC4IsZdhxARCt7kPRTqZD8+1uq0KkQWwTszgFXKVJZ4GMPIgFlCN8TFpju+FgiqcLECiIxhefhKXhbwajt4rw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(346002)(396003)(136003)(366004)(39860400002)(376002)(451199018)(66946007)(66556008)(8936002)(66476007)(41300700001)(86362001)(4326008)(8676002)(38100700002)(9686003)(6512007)(6506007)(26005)(83380400001)(186003)(6666004)(316002)(478600001)(6486002)(110136005)(82960400001)(5660300002)(2906002)(44832011);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?p1ChJ4s7vJ3PdfieM4ohsF4MNmBVT2MZmNRC6lVRpTbCORScP1luCGufR2bH?=
 =?us-ascii?Q?aSvVpozKZMc25Zi9oAi00ehrD1JG8xSSoU/RB87q8konw8wxlpBhTs5Y0Rfw?=
 =?us-ascii?Q?VOKPBLAkf7LzBx+bT2ajVABU6LEjjcLVKKg+ENva9ir9Hknen5LqMGGb9Mxg?=
 =?us-ascii?Q?ni2/m+QPKL4HrJ3fl5fkaJWbeIHTlKCSaHNqs0RCg6HN9MxkljPBURBltXTO?=
 =?us-ascii?Q?6iotjXTt3+rxr9+8dp7Y2eA17cHTRutMyvWC4I9D8oW5ea8UTTUHrn4IbMyk?=
 =?us-ascii?Q?Yd43KUhvQtmEAk70/61hXVgxEeOtNh0EBfrWv1WWs5dopTiKhH8nFnyyDZ0M?=
 =?us-ascii?Q?PQ4pBn4pc2xMORWIOWkwzNucOACM+wa5K0MeM4TRdxHLZieqF8+hB+2fPUNa?=
 =?us-ascii?Q?F/8DzZeMOfn1SM6CEG4GJVYdkxU6psaJlgw6Lt7+saypyS73Ya6KbDwEXilb?=
 =?us-ascii?Q?XegrpO59ilgCP5Jfw+hH4/y96YE9YzgIPfsJr5+ka0H4s9qvpq5RocZG3urU?=
 =?us-ascii?Q?rSisZzPpdN4P1SKYyHM2YUOEK7CS6/zXTbCt7IJL/JY7sc3mw0Q9VcrxeNwF?=
 =?us-ascii?Q?RBgedhILZZ07CUR57LEFqTZXAnIZTJm+Qcpy65waDsXrvGFFCN1Qj1tvxRAK?=
 =?us-ascii?Q?TI39+9LpGLoW+X/9npqAXCIYiJmvp7gJpLSFbEduGfGjdH9QC8J6KzQXzplE?=
 =?us-ascii?Q?pgW3NQLkJ320PEUgT3IJny+HwgqY3XKASGq/b6gRLkeypmwxndh49RyG0dim?=
 =?us-ascii?Q?OobF1FYyIiYOu4W4SfxW3u8kREBRfjoMzAAH0MOGwiy29cbZsIP2vW0vHs/5?=
 =?us-ascii?Q?vZe+24OP+C7wYtJohoEit+LD76Bog0dD/jyEI0bVlNsopmvKX5YsMHiOhbts?=
 =?us-ascii?Q?eZR+pPwvsmuObQAbzs/1CZaqxKz16S1vBLXeawK5uujBLKPe8Ht/3Frop+Ef?=
 =?us-ascii?Q?83XYqkl1iDgL6TEfsDVwVPQ++BCvMOyVtDxTDDWMd3CwDbDDstL+zYIrgBZ1?=
 =?us-ascii?Q?9ZbL0up7g6f2b1Reku+dfPcEtJwY1UjEzUlz6p6M/LJrCOd8w+1CZDgyrMzd?=
 =?us-ascii?Q?iYM94CV+L+EnfMtQ6wD7UdOkhywnpdQQJB5AuQ1eQI2t5TApXj6AJh1FOhzb?=
 =?us-ascii?Q?OZdb+mcJT5H4IzdvafThR2dbSSReSOz7hDiW2mf66t625P77VdhRkROCFoTg?=
 =?us-ascii?Q?J7tHLEK9NT/4oRQRDr+NXsXFnbO6syZpw32/5x2PAFl4ecwgLwRPB/8JcbWL?=
 =?us-ascii?Q?077JPlD+ypbv6cO4zxpdiTdBNahi5GAGHqdgjSaFaik5FvVCMtraBzwqkxr9?=
 =?us-ascii?Q?ex67n/6WgQaONSIw3FNSH6D8FJEhRIXiF/NCejLsnlhdhjrMulxIN5s57zEh?=
 =?us-ascii?Q?AGHmOBu7WjdGr5i+Pu6SpwNygrlqX3ZfUV7BJCq9/IgNj4FqeFpY92ahEvXP?=
 =?us-ascii?Q?TrFPWpRKl0fAm1rUozmcYB4UuMiNRhMcEpy2Pm+r/hKyG4Z4y7Nb6qfgsve4?=
 =?us-ascii?Q?N28PUhaGFA9oY9pYRLlKK5kJy1bj8RlawszSNMN4vuJ/fAkCXke2GCgnAMbk?=
 =?us-ascii?Q?+6/8+mD2b8z52ObQ+Xf8nVH67h/Am3p6ahPSy+Ac?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 799970b2-7529-4c1f-4024-08db2bbb47cc
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2023 16:25:56.8222
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H3nE6Ds5dsPrsWMb6wN1GNL3ak0eGhAMPnNBB9Xlt6gAHou0q6GrZ2P93PCm1qkx40JLBgV8p1gw/8a/LHxtQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5308
X-OriginatorOrg: intel.com

Julia Lawall wrote:
> 
> 
> On Wed, 22 Mar 2023, Sumitra Sharma wrote:
> 
> > On Fri, Mar 17, 2023 at 11:19:12PM -0700, Ira Weiny wrote:
> > > Julia Lawall wrote:
> > > > > Based on the flow control I would do something like this.  It is a bit more
> > > > > verbose but is very clear what is happening.
> > > > >
> > > >
> > > > Ira, what do you think of my suggestion of
> > > >
> > > > err = err || qlge_fill_seg_(...);
> > > >
> > > > It would avoid 40 lines of ifs, and would still avoid calling
> > > > qlge_fill_seg_ as soon as there is a failure.  On ther other hand, I don't
> > > > recall this being done elsewhere, so maybe all the ifs would be
> > > > preferable.
> > >
> > > Oh sorry.  I miss read your suggestion and I thought it was going to
> > > continue running qlge_fill_seg_() for all the other calls.  I read this
> > > as:
> > >
> > > err = err | qlge_fill_seg_(...);
> > >
> > > Not sure why.  Just late I guess.
> > >
> > > Yes your suggestion would work.  I do think it is a bit odd though.
> > >
> >
> > Hi Ira,
> >
> > I would like to know why do you think this is odd?
> 
> err = err || ... is not a very common pattern.  I looked through te full
> Linux kernel for them, and found a few.

I concede!  :-D

This is just not a pattern I'm used to so it looked odd to me.

> 
> You can see one in the function rtl8723_dequeue_writeport in
> staging/rtl8723bs/hal/rtl8723bs_xmit.c.  This one is completely useless,
> so it's another cleanup opportunity :)
>

Indeed.

> 
> Some others are in loops, like (scripts/dtc/checks.c):
> 
>         for (i = 0; i < c->num_prereqs; i++) {
>                 struct check *prq = c->prereq[i];
>                 error = error || run_check(prq, dti);
>                 if (prq->status != PASSED) {
>                         c->status = PREREQ;
>                         check_msg(c, dti, NULL, NULL, "Failed prerequisite '%s'",
>                                   c->prereq[i]->name);
>                 }
>         }
> 
> The complete set of files containing this pattern is:
> 
> drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c
> drivers/net/ethernet/intel/i40e/i40e_txrx.c
> drivers/net/ethernet/hisilicon/hns3/hns3_enet.c
> scripts/dtc/checks.c
> kernel/rcu/tree.c
> arch/mips/pci/pci-legacy.c
> drivers/s390/block/dasd_devmap.c
> drivers/net/ethernet/intel/iavf/iavf_txrx.c
> 
> So not many.  But in your case the err = err || ... would be a lot omre
> concise than the version that has ifs everywhere and it owuld be a little
> more understandable than the version that hides the early returns in the
> macro definition.

Yes much better I think.  Sorry for the delay in getting back to you all.
Ira
