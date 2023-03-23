Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128AEA93A
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 16:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679588583; x=1711124583;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=uwTCdkTjF/iBe5lOEYkiJvaXJbfbakGWJU7bKKlesog=;
  b=ipnefrZEaGnMV4vPOQFwrmpdJiD/EsBu3KrVxMMhHNqZbN+MPbDNjoSh
   BiCJGc305Vcywyn9lLOrAnXKIpYlFAQUnMly7p6uoOdcQZap/2f7NlbST
   2qmzP3bqh4zcITXCe7DW+fzy3pgViqXmbE+zsYvV+o8lss6OioAXyjw+i
   AVPoC5PVAdrwo68fvwpwldJ+aKSzba7MBDhfl7BEK6t69ClysKlZrbfKN
   0wg1lWarW3rkY0kFrTWQcFxAqCcSbTevJEYRRja6BwY5t7RsGeTMC/DS1
   h9yIUtYIQXBsBXghce49mrIDMDaCJQ4vrl1edymi4qVNu5XJ2i76S8CMY
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="402124107"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; 
   d="scan'208";a="402124107"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Mar 2023 09:19:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10658"; a="1011876141"
X-IronPort-AV: E=Sophos;i="5.98,285,1673942400"; 
   d="scan'208";a="1011876141"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by fmsmga005.fm.intel.com with ESMTP; 23 Mar 2023 09:19:24 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 23 Mar 2023 09:19:24 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 23 Mar 2023 09:19:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 23 Mar 2023 09:19:23 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 23 Mar 2023 09:19:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DZd7kftncruiafIQ68Hp0K1oFosPI/JtsWl6emLITWcpdXzsl/WkhyotrgrR3VwlUfpRF+WVIypHwTH3bLyt1LRHHR6j2FjsFnqsvFSOFgP/ACiLx3ls52Sv0IAzhQRZ+axzTXFJfV1gJ6FpSDpyMDA+oMhuVPufTxUNNkn+JH7/aWdd3h7ujNkjSKK5/lLSIdiiCW7PykB+9wYbUlzBooCi51oRppdYIDjwC+D/z2iDEyx29P1mUoVeTSpotPh+6wB5D6INrJHhuajEv3E1xi4TLrKE5psMtgdI5cOEKYgk0qLX6MP3LuNVD1Sy7F8tU7DvxqV39nFRld1DpH20xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cS9C+ps3VAYsGapaMdg4QzcaL3Ycbqx9fzR7JbfnYYI=;
 b=IGONUcOklRzlEtz/Co/uPG2m8qVyceXLzlk/AtnPocEtMkY5H5/7ZcwNFiGG2BHxwOTca0ZHEUDmGd1xFofsWNn6UNVXPCN7OyTIGYE9PiG4oFHeduKyzTWI6hzaO3ExyQLu4ZwOlGkFndWk7NPJl3SdrjTO9IZUP4l6xhSEom+hgWZAStekw3z4BtAG8o2lgpFos9t2aYPOUUohAb3tzMTHb1p1GAuT2BFLyezcsQUeOWywQWCCusX7xQ9Mg9EkoaHWZGNE+ulLiYVF1SGuLajAMo3kxaygzzSV6TLU/tfDfDVy4UPJ9vZGci1WlVdEPO7Rr3jIDviO/p3nc5/erg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by BL1PR11MB5319.namprd11.prod.outlook.com (2603:10b6:208:31b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Thu, 23 Mar
 2023 16:19:21 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.037; Thu, 23 Mar 2023
 16:19:21 +0000
Date: Thu, 23 Mar 2023 09:19:11 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, Ira Weiny <ira.weiny@intel.com>
CC: Julia Lawall <julia.lawall@inria.fr>, <outreachy@lists.linux.dev>
Subject: Re: Warn on macros with flow control statements
Message-ID: <641c7bffa237c_3030592941f@iweiny-mobl.notmuch>
References: <20230316080834.GA43491@sumitra.com>
 <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch>
 <alpine.DEB.2.22.394.2303180703470.3122@hadrien>
 <641557e06a958_28dc5f294d7@iweiny-mobl.notmuch>
 <20230323062853.GB155612@sumitra.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230323062853.GB155612@sumitra.com>
X-ClientProxiedBy: MW4PR04CA0311.namprd04.prod.outlook.com
 (2603:10b6:303:82::16) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|BL1PR11MB5319:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c5f30a9-1178-42d9-e07b-08db2bba5c0c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5NHeT0JM/OiDrrp98OHI7ZXdZs882vnVcfHyWksq+ZkSK/2ufe/gcg8k8SMwJenLZnIi0RcAddYp1XmYi+skSDiAYJbdSyHPnz+3Ms5TketjLxuB0BVtsf85ubaV/ZNYxH3pn+OR48Xc3HyLYuQOYWzWgfNeSfc7aYfgBTSGGRcgHYgIOlU7buqKdzB4UoP2xkPoR0yV54vYYZxRLMxSyFWSKLDmFrYHCMUyuwHzAi7cCeEJ9jZYgZ+apytEE6COC7YkmcLK8GO5M3G/oJbVVWxpKyQf5+ZbGoF+sigCVdodH1iHqmTRxNjIXaz6LVi0jKdy6DLN0pnpGtUn9l99ZqhWo/FZV/4ey9DjIrETEzAbKIVc605rkP1p6wLPpLCdGMkE4GGCM7qgRxAT916RFWE5ohemndT1M5zD/fy92pdsI8RD8yF41mZ/QhQ38Xvap9mtIfEtQRvA6JhywUHjqTuiWCqkTBGQ4Gia7UURZnd65grdvRRmuG2t9DhBmvsrwd/RbHr2gSBOj+sGmvK2hyls/a/iAkUmD4SLkiE+/e/7bHGMHdhvKvHh90CsWUIPvONMKpyIzWAxdaKJyCQNvD8EfqLEeaJb9CcBlRDnuG2ACfCx1m/SJXkrERNfrJ/z
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(396003)(346002)(366004)(39860400002)(376002)(136003)(451199018)(8936002)(66946007)(66476007)(66556008)(41300700001)(4326008)(86362001)(8676002)(38100700002)(6512007)(6506007)(9686003)(26005)(83380400001)(186003)(6666004)(316002)(478600001)(6486002)(966005)(110136005)(82960400001)(44832011)(2906002)(5660300002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gu/GZZ0Ad90MCzEHVE/sARg4ViTxtwIxBYHplGgVYy1x9sQHP7fQ/ggkY4B4?=
 =?us-ascii?Q?6S61EmawyS5JxbjXNe4bPJKSVg6gJ/+prfv2tJHbduJ9GTYLdxyjlXm7/WRu?=
 =?us-ascii?Q?7rPr+Wl/t8EiTGFtMJscyYfc/RqK7Tccaz9U6M5K9C4g8sJkq2c5KKV8eu2s?=
 =?us-ascii?Q?35cUruM+p1Zrck+NO7AHCnI7u0cRk5PnXvhzyfLEqzzVgGmXdJS3oN1N0yVI?=
 =?us-ascii?Q?C5epBINC18nJ/vlBxi1Jywd+J868aSoaAd6CvWjJT4XTV7JtB3hG6PlfZXXF?=
 =?us-ascii?Q?UmG6panLc94bHFOwXnYaSc/OosrE1L2+MWtENetaFrP067rf8O2cwjK5VqoQ?=
 =?us-ascii?Q?Hkr2XHbUUXnYsjcczP6vij0WGD0EIw4W7cjL8Z9A+XsayofAIsb2nnen5qgl?=
 =?us-ascii?Q?FMxqtN88hmiD2KqIjlRHl2Ex/pAWQ6zOLrQ7GHfOj1IQ/OyP9Ockf2OTn72Q?=
 =?us-ascii?Q?IgoVL9f+D7fyMiCxzUs08TB79i3d5uyGxTMIdO8pz5ul3EA0vB1om0oCs0jO?=
 =?us-ascii?Q?HnvqipOeSEUuPsf5YxFWKdhH+0HObRDKShVDGzCtDpsjytv7dVlPA4YUtnNs?=
 =?us-ascii?Q?QZlOk8bmMI2UND3dqd/+lYHzZUr0HU97BJs7UsFTHsjygCJVqBIVZDYtRjhK?=
 =?us-ascii?Q?Ot4ljdwwbGrVFa5uh0nZ5er6fOvMiuIR7a0vE5HE/lSdTkWX+ujAoqfEN87C?=
 =?us-ascii?Q?X78mILrZIPPt1Lio8ISJSuRauqkHNeNTSw9V7I6x0PLCo+sP0Pa7Pm/HuDJK?=
 =?us-ascii?Q?ObSpqtm+pw05TMISPGfH7tCwhSXGkyQh4vNmMHCmJxt6kf9MSf9Etk1na8Rp?=
 =?us-ascii?Q?kVAEMWN5Ro6e/glPgVoUKvkwlUSYz9/v4TPkrgq9Ku+4rqhhWsJVR9sCY7Zy?=
 =?us-ascii?Q?QatFmAdnaEZYqluLQ63HS1Cq2uSQWbJcCPN7yJ8mRzV4MdkTWBAZ/4X+bbph?=
 =?us-ascii?Q?JDE66LP6AjB2yXOMSCZBDhKpmNzYzRWU9IMSOnlL4oFS58olfOqt85rvPnw+?=
 =?us-ascii?Q?aPd8aFxHwAdObv91/axxAvvWloksezKSzHeet6wUiTdQe5r3zNDXBhNUGliT?=
 =?us-ascii?Q?AVI8CvIIJzwcr0QNYTTiYoeV1n64xRzCPhiKkWrST04c6+t+roCb5gMDYsWv?=
 =?us-ascii?Q?NnPaCOK2hKNc19bT/s/BSEMgC7kKQxHGDtmMNQjdHZ5ZRQm4bhW4ojyhpju8?=
 =?us-ascii?Q?kSDczK1UmwKyg15+dKo4HeF1z2144NMjLUezhCtrXGyb65e5Y3EEO7vEFoCy?=
 =?us-ascii?Q?+Ih6z1wL+HgZjLLcUx3FKViy+a0N5htEla3e0qdXZQYbOAQa+XujRJkIX6Na?=
 =?us-ascii?Q?m6FD3dtPnQs4KNgbjdIUgCRMmy4QiiZ3sHz9HPtV+JoDwYeJTAq8ozc/JwM8?=
 =?us-ascii?Q?RiwXGRBXDCcqpPeI96XaUrX7nBi8OWozZLpHcYuvTODS1c+7gdFZqHM625bJ?=
 =?us-ascii?Q?IaYpeAJ1StaippQdP5qKeWUNOBiiH+q+YLBsK0m6D5z3JQ5N1UEi0rzQCk+n?=
 =?us-ascii?Q?UBggI725op23iJxvJ/yJjN4Ck3z+Mfzt4AaKCzpZG62LHc6qZmzldlcKoGGL?=
 =?us-ascii?Q?e/udeG/9fO9szp3Fagdw6UG+mZFKTXbb6wTsRLWV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c5f30a9-1178-42d9-e07b-08db2bba5c0c
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Mar 2023 16:19:21.3347
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hJ4V62xJ8lzirKsJfaLu3KVDQQZGy1FHlKJXHNL1qlqhzuVwZxDGIqzWC4q0tAYq3OgkJ3Bm7jJzCq5KKgqwXg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5319
X-OriginatorOrg: intel.com

Sumitra Sharma wrote:
> On Fri, Mar 17, 2023 at 11:19:12PM -0700, Ira Weiny wrote:
> > Julia Lawall wrote:
> > > > Based on the flow control I would do something like this.  It is a bit more
> > > > verbose but is very clear what is happening.
> > > >
> > > 
> > > Ira, what do you think of my suggestion of
> > > 
> > > err = err || qlge_fill_seg_(...);
> > > 
> > > It would avoid 40 lines of ifs, and would still avoid calling
> > > qlge_fill_seg_ as soon as there is a failure.  On ther other hand, I don't
> > > recall this being done elsewhere, so maybe all the ifs would be
> > > preferable.
> > 
> > Oh sorry.  I miss read your suggestion and I thought it was going to
> > continue running qlge_fill_seg_() for all the other calls.  I read this
> > as:
> > 
> > err = err | qlge_fill_seg_(...);
> > 
> > Not sure why.  Just late I guess.
> > 
> > Yes your suggestion would work.  I do think it is a bit odd though.
> >
> 
> Hi Ira,
> 
> I would like to know why do you think this is odd? 

First, it is _not_ wrong.  Just was odd in my head.

> 
> PS: I was trying to implement your suggestion and was able to connect to
> what julia wrote here. 
> 
> For reference this is the link to your suggestion https://lore.kernel.org/outreachy/64154d438f0c8_28ae5229421@iweiny-mobl.notmuch/

I think what Julia proposes is better given this is a pattern is used
elsewhere.  I've just not run across it myself.

I find it odd because the parser in my head is not used to it.  :-D  But
sometimes one has to _read_ the code carefully.  ;-)

Again, I think Julia's suggestion is best given that mine will result in a
lot more code in the end.  And when reading the function you really only
have to grok the first call.  Then the pattern holds through the function.

Ira
