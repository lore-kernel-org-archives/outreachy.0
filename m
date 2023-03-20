Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9C068477
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 21:18:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679347092; x=1710883092;
  h=date:from:to:subject:message-id:mime-version;
  bh=/SHQrXDZFuEStN6SOxCQ2ZB0My5lD5oc9SkZPByXvUI=;
  b=fcD3fZMN25CZU7tiz4muOoZH9AQ3Sn3ajSCWLDgP/dOktvwK2i1rd8R3
   r4lXqIYO5rS7VuIkkqICQH05BuSU/nyKEJmM9/G5kDGr+uoI7TmeKSaqk
   MLEhEEUt4Q6+1DGRDS5YEfpFrHgFMOnB8QvKQoTfIIbWTseEoEstwCucV
   mGfhpI+Ck0IXXlFP/EAJOSUrCcHI/ci/AcB/eTsc/VUyySxZqSjvrrzPo
   NxxBY257ZBmFaHlEmbupmxIdcrUS+Cne74KA9vrLWL+NeZZd7Q+c93BhB
   aD5oilklSysgMmXXLC7O29pPA+dj2rK9BU9mTSr7s83Ii2y5Eb8HUBs0Z
   Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="403653463"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; 
   d="scan'208";a="403653463"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Mar 2023 14:18:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10655"; a="631280799"
X-IronPort-AV: E=Sophos;i="5.98,276,1673942400"; 
   d="scan'208";a="631280799"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga003.jf.intel.com with ESMTP; 20 Mar 2023 14:18:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 14:18:12 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 20 Mar 2023 14:18:11 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 20 Mar 2023 14:18:11 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 20 Mar 2023 14:18:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h11Yl9y/pWm91f8Ahn2lUNucsGvTmMjrb7KJ+0p5Rti9i4vtbWYke0HPwRoeJ655O0Q5ynZVyV6kSDejhE+Dg0ZvfVtASZh4hJAv6ykBbgCUoV5y97BT5sX6sHRHgTgEctM4GibuGa/TwO/O+7UQYnt3a9ypJTaiMFZzut9C6tAg4RofTOVwzytpr/FGXDuV8d9rghgzTFASaHcftPMEJX7Hb+9jPxWecI0PXrHO3tdvs63TZEDAcDcvX7/rITHt548sAib004it+zWGtSRfwQvLb17DFBQcr/RVdyXT4OPvTHEM6e8a1/TNjvmbLOWF2yiO4nCBv952k/kOsGICCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l09Md/V2Zzw9swIzeUUJ58gFTUgwLsJP+0jVCjDbDtU=;
 b=Jgxi4mmYhCpaNEPdKjcl3MLngFtRPsaVwgpBf8NwHLkxsNWP8AMSOvOQacPtcJ5q6Al/yjKX8AoKTT2/vS4qejGUwuvnnS3Jcw6660p+iW2fmQbNz4H5BESvzTDZCw8Vc29vGa2P2RhOr4+0JZZ8xpbfgGbbDlWB83UFhXtdicWsFKorfRrwIMIVcIjZuFwUDGvvEOsdKy9k8ZGlsn2xmtGUBzofJwXBYQQZW9r3qtFZrvtefICcD1WNIL40KfHDmfwN9UheEd8iEieOymtACyCrJ/TquuNqvfpbDEexMgjH87OR26OouosE5Qy+CZpE+zb+Ispqj52dTeXRsOgzqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by SA1PR11MB6686.namprd11.prod.outlook.com (2603:10b6:806:259::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Mon, 20 Mar
 2023 21:18:09 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.037; Mon, 20 Mar 2023
 21:18:09 +0000
Date: Mon, 20 Mar 2023 14:18:06 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: <outreachy@lists.linux.dev>
Subject: '---' lines in patches.
Message-ID: <6418cd8edc101_2c274e294cb@iweiny-mobl.notmuch>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
X-ClientProxiedBy: BY5PR13CA0004.namprd13.prod.outlook.com
 (2603:10b6:a03:180::17) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|SA1PR11MB6686:EE_
X-MS-Office365-Filtering-Correlation-Id: fa5bc74f-831c-4797-cce4-08db29889ae1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: aV3DvSCykLpyZQUXYfRo5urRrwxQUJ4Jd+h3KsUrBaKYeBxH6jZqGHQ2nIgIZ0LQ/HEVWkhNWZDAkzlFf6YYlcnw4X+levSPqUnYhcT3nvZ+6Dt7NWYeBab9ZXJxyOPcJTqdi1oWeGdJ8uQ8GkIRmqdVWXTWdNOabIxkFsEouu3WsCRXaqPg3Pi4kWXJVNwZ8Q9jWrd5OzRyDdd1revFirfO4Q+yKw3N3HUKQ0RoqB3Kw22D0HgmqnLDjTnunxlyrjrwxnXcEoYBgLqXArza6vLGqMHfXn50vARbMTIAAt+zPkogNdGbANpcNFC5pAU+Gr7L0n+NwrkwLw3huzX+5+D4V/bcUc0YakZjRIrPhqyAyYcfs5UE7XtlYe7nj8CLy/073vINg0548h7dU5cexnorr0ZJPoOEbxUwdPMLrtlkzL+N7DOZjqEZ+hMhEc5oD2WoqPTYLH8yS2w3F53l4qJzP2KQF1yaQouSF/9ocfk9EwIafScX8sCtPe40im2oBSRHXz0VDG9UlszdD+rjbsuj441geMD4qsZtOwEN1b7flSYsXcuuguB/3z4BQxQqyX5QzrOUwn0M6iP1pdWJSe6tHV4W1rp2BFBLDwfpnMMtSrHzhquXiUQKM/ySdgcA
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(136003)(39860400002)(346002)(396003)(376002)(451199018)(66556008)(966005)(6486002)(66476007)(66946007)(6666004)(478600001)(4744005)(2906002)(5660300002)(41300700001)(44832011)(316002)(8936002)(6916009)(82960400001)(86362001)(8676002)(38100700002)(6506007)(186003)(6512007)(26005)(9686003)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FTu7gsHdZDyR1fLNcEX+t5lFzq7Gl07FdxU6lLU6m0WYYVqZSXZ0W/lM/I43?=
 =?us-ascii?Q?Cm67W2zQi2dOl8h3XE0mB3qYFICta6KqDZafc1foJ1gll2mphUuXtONRqwAW?=
 =?us-ascii?Q?0BEWcxhHTW/fAb0mJ2cXmMosFl029pDjztlLWShOAE8rYOm6wnniNhAjnetC?=
 =?us-ascii?Q?ZZWOBzFizhI50osAqNq68Vg+gihROwqlwTUZraQWU5OOxXMAXdPmicl6eDp1?=
 =?us-ascii?Q?sJmJ/6ahESG2D5Jz33bO10n6Ggf662Z1oNXAR+rDc9Ki+nE9sl6Fvyaw2Tna?=
 =?us-ascii?Q?qVfN3XTOhcESCdxaZesR2TO5JmkH1FtSkljnHghjFcWuox/bN0eJluUxFcOl?=
 =?us-ascii?Q?qXACik0rt2GikeKgAGfYN8VbL5F80RuZYzLOQ3svYq6kCQAACWv6dkE41zBc?=
 =?us-ascii?Q?8j3Vw+EqgDc0XmDMlYYE4buVkJsJu+T9tYAPCh0ta5cvpYgqsWm+DlJHhRYO?=
 =?us-ascii?Q?z9bjHREiX3TTY35XhYJgOvd6qg9LsIgT/hqBJCkZd1BzZicx9gFLg81qeHIV?=
 =?us-ascii?Q?J7Sp+r0ndvZvclrCalBUCthdXCEoNxtXOnzLPVldnD5f9b/LxbARFpBTnm0h?=
 =?us-ascii?Q?c6cxbjWXiBFo3gX47TD7MhZmDJcTPmEVUuuYAcTdQkuAksl7oF1RUoDwthaf?=
 =?us-ascii?Q?aJI/U26z6ZcRMaTmnDr2gSuxYX3/D3zn6uVz2S8XRxZN5itMeGaZWDvCkqZu?=
 =?us-ascii?Q?fJIBMzS0pbrU0Gzf/TW57ssfhkKqTgUXHBXi9n5/rcYTZbG8nfUxZddc1NT7?=
 =?us-ascii?Q?i8Q3BdkQg/z8nZGaG4qYeV1wSgNW4yvJJA2kBdvbq+nR+fd1CUyxhkQmCtKA?=
 =?us-ascii?Q?ZT//KtG1FADv7H6llCiKoEFqCQitKibe1uhpfCqWRib3eZEl/pqADJqLDxbW?=
 =?us-ascii?Q?zgmT3lWMOVt8547oo/IMKcTHGY0LquXaeIiAwYphSDjqQYr8T28imld9VBG+?=
 =?us-ascii?Q?v7/twZRchoyrYwtveKgpDkswXjkMvtYLu39sbTkXigEjvq/nrtXA8RQ2OCIK?=
 =?us-ascii?Q?7C96PZ3l5wcdz5sN5P28Qk3t57LOr3OkBbsp07yuSO5k40/f9psrKvAoy75y?=
 =?us-ascii?Q?s5k6+Mlw+wgzbHv4FdOthq8xxM6SmejT7WbWNcRqapW85APXdjyWDszRhjvK?=
 =?us-ascii?Q?5rQy0rHH0g43/2MS2T9XTViGYt84fkb0mTz2Sbdtvqta8uCQ5CV1OBomc03Y?=
 =?us-ascii?Q?9scQgiJ3VI+EeQPtViVn87m8iAJcy0/QryDpIy4sg7ANLEPEpG0Kf1DsVcBP?=
 =?us-ascii?Q?gRNP6TIGrnCZu4AlxnW59RYKlJKe3MQ4/qmQtWHzkWvkVR8sT85Ch+g1O54Y?=
 =?us-ascii?Q?+TSUvrKRFDgnieDRonFjhQC2ApaAAIBNRfJMJKq89F5IHs0qtlnI1NWqxElg?=
 =?us-ascii?Q?hZt06ND330Y+nOcbsCvblK943jze6iuTClfwdm6QIGQPckdCDmPHL5ntcc9x?=
 =?us-ascii?Q?EOhBX361o6baNSY9z/SGRY0ifOZ+7iWsk1SCoJnmLYFRk89UM7UET3Lmqv3M?=
 =?us-ascii?Q?sXC3mLJ/Gv6WQn83TNDh1G+zd/AZ+UgARg4Yzo7656Cm9ubVxb20H3/MM81R?=
 =?us-ascii?Q?o9Z+8RrthYyED0avQsdX0ZEpfUDHNpbRkPBvLT5k?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fa5bc74f-831c-4797-cce4-08db29889ae1
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2023 21:18:09.5555
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UQnSAKOuZoY44UMk7mOxlkJvCgfMMDhAT+q1Rp5jMCVVTAOtfepdzPYJogT+tdgjC2rGY61OBDmcBdFe0UDMsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6686
X-OriginatorOrg: intel.com

I went ahead and created some examples in a reply to Dan and Kloudifold
regarding the insertion of '---' lines in patches.

https://lore.kernel.org/all/6418ca43e651b_2c274e294ae@iweiny-mobl.notmuch/

I wanted to email the list specifically about this topic and call attention to
that email.  Please read it if you have questions about how to use this
delimiter to add notes about a patch.

Ira
