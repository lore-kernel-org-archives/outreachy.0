Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A3ED6110
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678905480; x=1710441480;
  h=date:from:to:subject:message-id:references:in-reply-to:
   mime-version;
  bh=5B/9jjRpAFjCcFojbfHlGqUkKOY8uVDR0eNr8ArnqRU=;
  b=lfIWobXxTjLVpeej6tnJTaodKe2EN6sdObUPVfEYvrw26Qv//yoUXFL7
   Y9jUZAc0h0LPp1FECq55yUuZDyIOkJZBoOh9S/m5mT6BTuj/ykpo+/P5p
   GpUgu6sHdyaE7UKbxzBo4+6bRhwSOFvflNdBtRn+srR1K58TITy+Nnzxp
   XXWXlBXv980hQelVs6vPI4y+//0oyVAGg3FFpPRYDi0+7SMElH/RePKWr
   brGdAn7jshven81GO7Uc9dBMsx2gUqqbp5AEKBrHIUfjT7+v6HGkCfBFJ
   6LKRytpQQhpnFpGssQJiMIKJshDpVpKg8jbP1wOG0mZdkPxqT5da7FoeK
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="335282117"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="335282117"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Mar 2023 11:37:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="743829306"
X-IronPort-AV: E=Sophos;i="5.98,262,1673942400"; 
   d="scan'208";a="743829306"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga008.fm.intel.com with ESMTP; 15 Mar 2023 11:37:57 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 11:37:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 15 Mar 2023 11:37:55 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 15 Mar 2023 11:37:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 15 Mar 2023 11:37:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nbrQowFCftaGJJjsTtIOzPPBJ2i5rRcRrR362qCxVY+f4ZDlOIO1s0otAmLGjy+3GsxOhrzKXeAcncXjMn6IQ/CaGFjKmJVFLrpi+5vYGq3G29q4Zj88k+WLx8VcPFlGXqOxxs3lt0HFoTCML/kYxOerOO/ovcZcIG3P0jJ/7o9cTsxsqKAVS6E6Db/V9rrbOWq7fgtaNQ95tYw4p9y0b/yxuodXDG1OffT2SwkJIIiuiU9Q+yHi1VdKaTjSGE97Xf7BwO73mfrNDLwkdXhyRujFfy7UNbsa+fCRo6AdE9DaITy1hwHv8wtxdbLwBPo4DCbNKKIpLeG6YZyC2uDRnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s31R0QkbKNQ/ZRpq1QuXKxPdgk5WbGupDg+jdvFVEyY=;
 b=Nzv/eMqHEUZmWCN8Y8iWM23N3NLEMcJs6ZT8KddJw1IhjdaOGJWAWSCMzyEkuUZrflxx/aNFo+Tu1DFiBGAm972vdn9zZ7XgWDWYHm0wnCDaqIKlxUz7R9c6yVlkfdT3+7eOsjuOj/exmsTft8x5y+sWhqCSuXTB+89U17J/clJUqc/Bp9ydhw4r6gwoSumdkFE6HWdEs40j7e9Pd4U5B+jE+Bj3XiPhXVQV2vXgbYi6FaPF524shLIJC45oNx58JrWoBkOJSATy4vOLEKSdvErOBGsQRwXaUSJN4aYCZ8b/xis5iLyXf9CGh49oHOvorhMXpH7JKGQ2CEg8EKyQzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by CH3PR11MB7390.namprd11.prod.outlook.com (2603:10b6:610:14e::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.24; Wed, 15 Mar
 2023 18:37:53 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Wed, 15 Mar 2023
 18:37:52 +0000
Date: Wed, 15 Mar 2023 11:37:49 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>, Outreachy Linux Kernel
	<outreachy@lists.linux.dev>
Subject: Re: new patch
Message-ID: <6412107d9fcab_253a1e294b3@iweiny-mobl.notmuch>
References: <1cf83508-9fea-05c2-f197-16fdf3edf030@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1cf83508-9fea-05c2-f197-16fdf3edf030@gmail.com>
X-ClientProxiedBy: BYAPR02CA0049.namprd02.prod.outlook.com
 (2603:10b6:a03:54::26) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|CH3PR11MB7390:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e346f3d-49f5-4349-c091-08db258462c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oUCGrKVb0jxSzMdLFAXR/oXdefwOFAMsVe61M/xnENcUQe8DXZ9iQkzApV96APQLMWHz+0YSultY57d0UTJP/KDe++oVeH8E/dlM6W0b3C5RmizaFbjYKjkm2YMrcH4b4SCjCjlrx/pRzb2neA9AxB549DQPu+udkYYBQFH+Eu8tZZrjhV9GTKf9ICb3zTD6/bbKikdB/QrKQJb9dO1bx8qgv1mTkdICh2qNiwSPCqhGLxGWxJrqP1x60p+fnZTKs1kGK+gwaefvPN/hO6hvPfGbm3p5uwc6xnvvhWikDccXYoDuGZ5t/AGTXq4TxHUt/9+fuv2vESgkXECvEEo7LJ5xTdVXlmjzjpV3ghjWVjsKFdrH49omZBvhTGBPCXFdnrb+7TUXqlqNiPOGZi7v+ulCGpo78+TinGcyyOZzYrxua7+a3zyQquLta4UljZAnaAq/SL0TKqOUt5FC4ZLiUwJu6c9R/9D1/wgAfnEZdR9yJ2cfYo7SngwAzzPYpWQBTBSxkfz2LE2sIA5KAK4hF7X12Obp1gKYsaUN69UXC2+3ymzkdrOXtYz254EChW4RecaoEAqOwbEmyKnqlKSi7kzQwpCwrCpsA6Uq+K/Dl3cnoD1gHOdPs63cuCpQAtIt8fwVpDKllwn8U9ZKlo8flw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(396003)(136003)(346002)(376002)(39860400002)(366004)(451199018)(66899018)(8936002)(5660300002)(7116003)(2906002)(44832011)(86362001)(3480700007)(82960400001)(38100700002)(6486002)(6666004)(66556008)(41300700001)(478600001)(8676002)(66946007)(66476007)(26005)(316002)(110136005)(186003)(9686003)(6506007)(6512007);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Wk7pGfjihukFug1VWgalF+icD57sjw6oZOGvO8U+QFcYetyUwOL/umDHHQPW?=
 =?us-ascii?Q?3NkZkurYvTn7tvrI5kYyJyJFKKfvRUhnGjXYmfrQAghhcfVBeJUXg8QcnacI?=
 =?us-ascii?Q?2UIMkrkZJsRLYj71aezS4Im/KM6/b+uVhVXwUEwvQB4SUy2tuRUSBZet5498?=
 =?us-ascii?Q?vp9lK1VTPkjxrbfFAmB97yB2TO3u3g/R9vtwhI+WPZONEh4+LeqLGhs2N2sA?=
 =?us-ascii?Q?hwCngbSJ7Lr5kreaHYQxdGfXubY39Yn0qdp6+X9PgNEQU8XPceI9fskhZ0l8?=
 =?us-ascii?Q?YS7y1ZjupHpd/v39jBw5t381cn+xvpL2T09N0DgQIhYgKgo7bh0IJqHx+SL/?=
 =?us-ascii?Q?PM4Fj4ISCZkRmnXCfegrNxyYuqi+TEKyVcH3NgWoMLsP2dOUp6uTV1wcMp3+?=
 =?us-ascii?Q?A4wypa64MrRWCS/bIbkoD+sg233mbGZW1/bjcCs74S0JMxOQXhfKtWqGCznz?=
 =?us-ascii?Q?2TsMdZoECWTimn6UtiVCDV7uggcq5tZvse+gzrUyQBzKiFvpCOkxopFT9kxs?=
 =?us-ascii?Q?Da5ZT+elvdZHO/xdg3Ev4jKjzBxdvgwV2PrPeDln51hO0qfB1/0GSF/m/F/u?=
 =?us-ascii?Q?fZxXvejwXCAD4j4wVmGoTvtYw7nVMa2BNZTzMcyqiosQDBMXUiiDCeIHGI6B?=
 =?us-ascii?Q?eOdQ2WSwpwA40t+8bFLMxPlp/ZbDOoOEa9/6GzLccIvERgwZcQojZwiKmS+m?=
 =?us-ascii?Q?vyaRB31OSwcHiUanGjkOtpp/xg7VMTz/Pnnocn3PVVkOQRZ6NRMHrNIaLsnB?=
 =?us-ascii?Q?bQJvpWpuNDdJbihn2ZQFcxKdKBWVaiBXx+EUGxzWsFL8Mjzwi2aXyw9yHO4l?=
 =?us-ascii?Q?Nsdg2ngaK60jwayxPF82em2ChpfjJNn2kbIwdvQGd3od1Aob+CuqeCyJrXDB?=
 =?us-ascii?Q?tsZ53Q3uAIP1jE4u0gR76PW1VH1Squ60vpyl8f+Q4XOHE85ddinhz9XoqwaK?=
 =?us-ascii?Q?WWe4JlOPFti3VhYarkU7QmrWh9Gt1hxxQ10xxRNl9qlEUeidBE/l6Qexdgcl?=
 =?us-ascii?Q?j4ApxDUCepf4mfXUSNoEn+QBnnkKMfAhL7QPkC/sIg+e6V4ZEdjCoQNzc/HR?=
 =?us-ascii?Q?Rv02d8A+6HcG4+bVkZF7tKiHhH+WKyDhtQ91dTJWw//mVTbJxkc+PTrK1uk/?=
 =?us-ascii?Q?bSzdjvd5pIQwd5PBAajHUODUdhGYgRnkUHoh99SVXiv7DwVWRtzkDa+XG2mA?=
 =?us-ascii?Q?OuU5tCq1eZHv3mIVpckvM6T2NCPvmr3BsULiECZ02hcj31Q0cpGjLt3c5Fc6?=
 =?us-ascii?Q?h7QnJYxS2KDNUvmo3m2hS1YSL5VntnxzKIRgBuYwa4pWppOp7q5w3v3e6TmS?=
 =?us-ascii?Q?Q9zxs1KXCEyKibLE0prSa8QOL6QrQWTEQifFhhHgAgSWZXNhKQggBqEIcsv/?=
 =?us-ascii?Q?JK7ILBGPMW4rogRNWtlFHFmvrF84A0JxeKI1UTH2I5CpphcakmCk2Bm3hwFu?=
 =?us-ascii?Q?v6YfiHheWzqe0sBO6k6YkNsJu7cui873ykhURCQ6lzO9C8XVcpAxH2YKUmGw?=
 =?us-ascii?Q?q337Wdb58mvwk3i2x0/WwyRFuhIkAEeagrgmkD7zk1ONq/XqyDth1ZV9GCS5?=
 =?us-ascii?Q?1TzzlIxtbmRSbepVeGJSSttS7K7gt/++ORi1ra83?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e346f3d-49f5-4349-c091-08db258462c3
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 18:37:52.8151
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 61QxYX2Mq5Y88mjF6Ph8Vk154N5u6dGjFdbfbGHezx/Po/8M8NsQDrMA3z1/BDcjhyQ+n3HudIyceeNch6oHOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7390
X-OriginatorOrg: intel.com

Menna Mahmoud wrote:
> Hi Mentors,
> 

Hey Menna, welcome to Outreachy!

First I'll make a small comment on your email subject.  Remember that when
posting to a mailing list the folks getting the emails may be looking at
100's or even 1000's of emails on the list each day.

A subject of 'new patch' is pretty generic and is unlikely to result in
any interest in reading your post.

With that in mind lets look through the below errors.

> 
> Is it okay to work on this error reported by checkpatch script:
> 
> 
> ```
> 
> drivers/staging/iio/frequency/ad9832.c
> --------------------------------------
> ERROR: Use 4 digit octal (0777) not decimal permissions

This error is trying to flag a mode permission which is not in Octal form.
Are you familiar with decimal vs octal vs hex notations?

> #256: FILE: drivers/staging/iio/frequency/ad9832.c:256:
> +static IIO_DEV_ATTR_FREQ(0, 1, 0200, NULL, ad9832_write, AD9832_FREQ1HM);

What do you think is wrong with this line?

Hint: I'm not sure I see the problem.

So your email should have had a subject which reflects this question.
Perhaps a subject like:

"Is this a valid checkpatch error?"

FWIW I'm concerned this is some corner case checkpatch bug.  But I'm not
seeing the issue in checkpatch (My perl is very rusty).

Do you see the error checkpatch is flagging?  Or do you think this may be
a bug in checkpatch?

Ira
