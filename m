Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2333CC941
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 22:02:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678399331; x=1709935331;
  h=date:from:to:cc:subject:message-id:mime-version;
  bh=OrGvA7IbmkW1tEztjSXkqtjubjqAhgzMsgxv9VbYw8w=;
  b=WBkeFV4sKUfpwr+VnFMHY4+uP5TRlPS4CGqY/OjZwHDgC3ZOwjfNAWV8
   66ji4qdvaC8tCj0P5X9dA7+QZmEq0sfHRSwJRe3BXWPH7S+AmIu9P8l6v
   r7vPB/Rzw8s+TV2bgasilwrn+ufuDB8VmBhcubxY1KmDGrqk55AQzQYJH
   ZJ0zYIUE8GGISjoaLp2ro92+snhORf1WbwE4tHz5NOx/x/ZrlKoVWqx5T
   S/y8cgQWWqtU5+VVGDt9FTRFJbGEGtTrJMNwF1JAOOAznA8ETOJ8wQ7Dp
   HcV0XKmKp8gPfcQeZ8qvGDmrfjro3mVIoO8Kf10XAS3HJTtBY5uM0+vdM
   g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="335279648"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="335279648"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Mar 2023 14:00:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="627560564"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; 
   d="scan'208";a="627560564"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga003.jf.intel.com with ESMTP; 09 Mar 2023 14:00:54 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 14:00:53 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 14:00:53 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 14:00:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C29U28iZFKK3rmoPD0fcYrkIeYf1mBppSU0frnQ2m9Tr3Fer32sIZGdbzMa86jraz3mKlzzX4T7nfzJp16O4VU8ZlLXVZXwlSj00yqIWZDfnbgxRqfXQP7ALYWBQ5xjyWc34UH9zw5GJ4qY9j0SholmRQPik8I+DyRR3XcXhA5T/cAd/+ajx8VaeNkBOosXCF6YF5y/fGkRFSrZFr8ncHacHz+Ap9nBKtqyb2/8JLrjpXuOCVFFiKe9fsCpsQHOY+GIcXznKTqaft3HXs9IwsmSo256566sSLo8VraTQQHMiSQ3F9o4pE6sw7aiaChDnnYWBuSX5xrzzTAfCmotXjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GOe7jTTiOTOhkMR4I2o2MgtfE+M58b3LtjZRPSH4Prc=;
 b=lRXTwNkFjfyN7xuvLQhPi9A3jG5/aK33K45bhdnfl9e37Fl2c4mdvQ3ubb5BgEoNbluD8xuOLVLvZal7r2Zw+xusuL1pEstfbRiBxk+bY/I11u/oo46IZCJCJCqCBQxS9w47dBmIAw7gApVegvYwmNvemelN5ycQMovnoJwld+6CZvmq9Ro+L2pbUryQ1bi0345HtRgMO8+VRItGGr/HrR4r6iMmyK6FDsawCS/gr4qHZreUZyDKYrp87lPwbTTOdQ24febaydUMsWXrhoHnKdWy0BfUSoKeUVsd6ezMj8MiD2U1MjmGBMdXaXveBUM8ZsjvCnIvZbnrjqgxpYFheQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by SN7PR11MB8111.namprd11.prod.outlook.com (2603:10b6:806:2e9::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Thu, 9 Mar
 2023 22:00:51 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%8]) with mapi id 15.20.6178.017; Thu, 9 Mar 2023
 22:00:50 +0000
Date: Thu, 9 Mar 2023 14:00:47 -0800
From: Ira Weiny <ira.weiny@intel.com>
To: <outreachy@lists.linux.dev>
CC: Julia Lawall <julia.lawall@inria.fr>, Kloudifold
	<cloudifold.3125@gmail.com>, <alison.schofield@intel.com>
Subject: Useful kernel tools for dealing with mailing lists...
Message-ID: <640a570f330e_1ab05a294a@iweiny-mobl.notmuch>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BYAPR08CA0013.namprd08.prod.outlook.com
 (2603:10b6:a03:100::26) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|SN7PR11MB8111:EE_
X-MS-Office365-Filtering-Correlation-Id: 2ee561ad-da39-47d3-3223-08db20e9bea0
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g1+JfTB+E/3S9ZKSsU4oXwK4Y5S3p1EMOUFnmu6WWQtdC6JD2mCsR+6FxV4joQ0R/gbPHSUGBSuMS3o6Jrzt53iflo406utLTnAeOYd096buS6w6nlxn9XP3iwzd8KIM2O86XXEE/fyx8TA42DC4iu38MmT5xIzjkQzYW2FoJX5XCB47iBrIfsigTQwXIL84O+Be1sffEoY1eKJR3MlX9EI6acUIsnic5OcxzFw/Nzl9e8uTxMxbVGY8tIG2jzcnmv7xq+HSIQan6n5+e0KqyAKZ6lf9FGXbCnhmZjA8/Pjsbs0sBtdE1J3tDk47ZAYqCCvek37sO4qCiIPRwKVwW2fe1avw08PrB+Lho0DZevby0H7dSgK5a073o0OY1THll5uLy5Cz10qKfTZtcvlNQupzgTsiAPBqqA7v2k9FFzS763CjDlhcHFPE3EU82P0Tk2l4Sh67v537IGkZIdwyP+iJaeRcdGC4e10T4rnwPDDe21/TvlGAwSsQ2UwvjGEF5HMeCmNO7KHXO4kIS3ucY6B9Xojp3ltU0YNB4SwDQlf5OjRJzwH9X3DbxK99beO09oDsqlkUDzXsyW3j6wbhUwKm5L4dSFGzEqOdaGcAAmojx3yX1cTgCPD/6/jiJAQeAFGnRxTnYCN07SIoqmqpHbgpYeoXIbQzs3aRhWMKHnsSNd6q+ar9rRE1rNVTwl+mdOOWteyaaGvYZ4Fl8sH72buO49Pmfofz9H8ALikAJe8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(366004)(136003)(396003)(376002)(346002)(451199018)(9686003)(54906003)(478600001)(966005)(6486002)(316002)(5660300002)(2906002)(44832011)(8936002)(66476007)(8676002)(66556008)(66946007)(6916009)(41300700001)(4326008)(82960400001)(86362001)(38100700002)(186003)(6666004)(107886003)(26005)(6506007)(6512007)(83380400001)(130980200001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?y0tFOSEURN3u3oLCNKcgwDplqd2reE4QTe718fhBkjyn0Ae5+smr+H8aMOny?=
 =?us-ascii?Q?+b8SoVoEcnXNgp5KgqUplqHF813f0lSz0efWBpFMwRzC+0oQoIR9Tkc3FQ0z?=
 =?us-ascii?Q?2fBxnP+4g1jVHip9mpUH6281kWlsUJZ/HAVmBY43A7tI215vHBnh3gK8pEA+?=
 =?us-ascii?Q?g6x8ot5ckSrp1Gh6tu4f2dGC/UYPyeoP9HFzmxFRVGufWATAdVMW7VDPrgoG?=
 =?us-ascii?Q?i97DquAjYm1wdhxSHVXQsNL50PdAuTICKnJ69kID6MQAnhpYePCMUDsR23ju?=
 =?us-ascii?Q?sAF1ftUo0eZp4PBoykm+OQiVfU2hDg5Heim9IEzDv23lNIaeB6HQ6HXy+R6c?=
 =?us-ascii?Q?SISOlxo62Vz9TZwyATQZiihaNXNapFYM4uTQETGS+8Z+49EqX74MIjsCSimj?=
 =?us-ascii?Q?rh810EATOHVU6aQmr4ttouDDafBzlWPJ8fuB+idSPoLiuUwehZ8hc8OAna6v?=
 =?us-ascii?Q?xDaS4MC4jNOpfWjP8uKKqZli5vYxnDMSqICa3rDIG77fAbLOIf9LgwXNndUB?=
 =?us-ascii?Q?AZW9ZGP6SvuTUWpERb2CVrBbmPoUi0rHiOSivV7+UKvfauQPuVqvd/Gei/Hl?=
 =?us-ascii?Q?NDXNke6CALdlY4t3Kyk50lNP5v/S9rNxi+/5fI8EJPmqxpm+CVL9kNmuXoW3?=
 =?us-ascii?Q?OUrF0b1G8jRvf4SdLv2+xk00Ksk0XyiUQOlTgs0THBQ/oaGQhMQSUDJ78VsB?=
 =?us-ascii?Q?v4UIHxGt+SaeMUQPhBXscjBq+ijJTgkCwAObl7Fu7df49tvYR2VWMGsdYJFX?=
 =?us-ascii?Q?DVrApHh4lxVjjHIH8kLc/lo69zsqG5pJjbRGZY+XGmoOg8RU6kH0XDetbiD5?=
 =?us-ascii?Q?oblhslh0gQ1UXaIs1BJM9o21dlkDySPuoZoR2zw7dKKpOtU7BasSBTp6JXjh?=
 =?us-ascii?Q?ac5J1nMhoUnLwJlHe7zD9GeSFsfKjRq/8LFhjurvZcvGJhymG+SLblhEgmhu?=
 =?us-ascii?Q?caoLFUrsmsa00m2F3wmh4RuCaQFMCehJiQm3qLpziOl9CyPMVSYhrShuESDq?=
 =?us-ascii?Q?YJPNak7+H6RATrRLyPMsmvra449Hfcd5ZeU6YTyRl365XFUrqsvJ/ByVBals?=
 =?us-ascii?Q?QDb1tb2DZ15IA+ETBcN/XhTC+wxu/qgWXnCJkB57F3JRyCYMAjXFBzBIULWh?=
 =?us-ascii?Q?JPInugF1UGwq3r2b+qrvu/edpfkhuQ9xCam/awa+s2fP3RI3izCIe53yd7sK?=
 =?us-ascii?Q?vhLPlEk5hFIgRWp4dW+kRiGlw5/gO9cYd1DTH0VcNKisosozeFqiJpxl89CD?=
 =?us-ascii?Q?ANthVexfqQbYECYD5DDzPJkTbxxPctRPMU3U62s5VMb3JxNjrWYUax2Um5pN?=
 =?us-ascii?Q?J0fEKhPjNNFRqsjPRkC8IjuPQPY0A96ONyEh2beT6kgNfv8gHPBvqetXpKb9?=
 =?us-ascii?Q?8L/rNBtQF9sGePlR5H6ruIBP1kTpYnk4mftFMgkMvr9NWimGMItpWN3BxvPM?=
 =?us-ascii?Q?PDTHBkYLed4XweJ9XEHzf1Lu1KP++kTHg6q9b3BZei7W6lVKgH/QCQWRjP32?=
 =?us-ascii?Q?rzv8teJnhdihd1l78aaRORqTwoHnZSl3V0lq4NZW8slshdtNF9/ZsgxQCOSp?=
 =?us-ascii?Q?NqMpkuZry3QCGAngyudGZzO4qTmSZfW078+bPCjR?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee561ad-da39-47d3-3223-08db20e9bea0
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 22:00:50.2726
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: npdW5bZjniPbIt8PYTQQWdJkj0hgHrW1AB0jPNKKgw02f50sy7gs7nM3W9OuV2pjOLO8dQkrV8IA0HvW8QoUFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8111
X-OriginatorOrg: intel.com

Specifically the outreachy list but this applies to others as well.

After I saw Julia's post here:

https://lore.kernel.org/all/alpine.DEB.2.22.394.2303090726250.3294@hadrien/

I realized that Kloudifold may not have seen her post about a list of
things to clean up.  And they may not have known how to find it.  So I did
a quick search on the lore.kernel.org mailing list archive to find that
post.  It is here for reference.

https://lore.kernel.org/all/e06f57e6-2a3a-7fde-742d-9d5dd8dd49b0@inria.fr/

To that end I wanted to mention to our participants that the outreachy
list is searchable via lore.

https://lore.kernel.org/outreachy/

See the help there for how to search for emails.  lkml and most kernel
mailing lists are there as well.  If you use this link:

https://lore.kernel.org/all/

It will search all mailing lists monitored by lore!!!

This is very powerful to find the history of patches and to see who said
what when.

Related to lore is a tool called 'b4'.

https://b4.docs.kernel.org/en/latest/index.html

(Latest source here)

https://git.kernel.org/pub/scm/utils/b4/b4.git

That tool can interact with the lore mailing lists to get patches
downloaded and applied to your tree.

In addition 'b4' can be used to manage your patch submissions.  See the
'b4 prep' and 'b4 send' commands.

Ira
