Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D13A7EC
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 06:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679120680; x=1710656680;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=dTllWRdOCylUMuAnrM+yiWukLEXlEiX0jlwjg9e5XHs=;
  b=f4wUHuBOjfvxB0agF2Pd8srytb6wAy5r3rUY+tUdYTs0d/GshEQlR5XC
   pGe5WoMekP5AgnS1pgprrr8jnZtxkpZFARNxalnpvEH7ZQH53r66YExip
   3PU0APfZiHUEBAULfFzsqrNY4rU5rkJn1V911l5JCAtKg4rNFLjaQxKEA
   wT4ceWWGZSaqpVUqQ/+qD1/XO2+BJh+ay3zbPpwbtlenOfDv+LGsvggAy
   1bcugAazmca5tahDPiSBJhgT67yJeuPbKQBjJ+qyEueZMDPyknhIePBlg
   mjqoOQu9cBNdpiU5WggrDzSBhXK2KVlrSmtsEqXriojv6DoJYgEVF+j6q
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326775865"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; 
   d="scan'208";a="326775865"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 23:24:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="657810112"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; 
   d="scan'208";a="657810112"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga006.jf.intel.com with ESMTP; 17 Mar 2023 23:24:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 23:24:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 23:24:39 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 23:24:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GxlbksjxoiRYbR/L4bhaPgIvbk2TkuAnb/KJLmYjubrIg4uv2naV/K2B7ugsE8rViNaBifHG4qak4zduXhz3h7JjhmoVVrjACY0PcxNRY0uDKhW5soRhIdtkbTr1Y9H91OPgb1pQTXFqZ1dgB6AHmkI43UlJbmkjeZLxqVRYh15rddqOOqGD5DiaCnzROiDbBDAvNWDA/zqMpj1q10xPqigQ6ANHVNPydY4Yd8f9x2G3kU4s5D2dGsqqI7dWXatizNDD6QNTAEnDqNp2zBaK0fhXiaqmP/YhAy7+jdA93asCpo1x+ygrZUWT80p2hvXqsfGq+gN9C97F0KzS2wqqqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n0QRm63l9B0rWN1yVpb6u6FgFsCsuKOrK8OpRY8npgY=;
 b=Kppwv3fiBRuG4tKdGwwylxjmAQ9ZYEBT54g88NGStMBWdprgppOLQpt/LHf4pf2IdyJ3mZOpri/wNMMog+b3tmLB+fySr2LfYnEGO8OI+kYUI+Rrz63r17m+tZIgsTNeN8nnrXKHdVW40DmNUFsJaUrivZ82YlhhsqB3fciiv7hFr+mYZTqrEnSi+Auza1C1A0a3yzZx20dpskCbak99ztPRHPUDpsvMYjlkcMSVMYbNfEohyRxafbAyHtw47DSrorF14xFz1Jo2cA67XrUu4vQ6zaAnmtnWkuZJmGquhYIFpAAWs8n9rL+JuNM6TEwkYgZ7mg6Wryi97BZ7DcIdcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by SJ2PR11MB7671.namprd11.prod.outlook.com (2603:10b6:a03:4c3::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.33; Sat, 18 Mar
 2023 06:24:32 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Sat, 18 Mar 2023
 06:24:32 +0000
Date: Fri, 17 Mar 2023 23:24:29 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Mark Heim <questioneight@gmail.com>, Julia Lawall <julia.lawall@inria.fr>
CC: <outreachy@lists.linux.dev>
Subject: Re: Patching spelling errors
Message-ID: <6415591d3f258_28dc5f294c7@iweiny-mobl.notmuch>
References: <20230317191154.GA57413@pikachu-Z97-D3H>
 <alpine.DEB.2.22.394.2303172116300.4097@hadrien>
 <20230317205743.GA78907@pikachu-Z97-D3H>
 <alpine.DEB.2.22.394.2303172201370.4097@hadrien>
 <20230317215000.GA86759@pikachu-Z97-D3H>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230317215000.GA86759@pikachu-Z97-D3H>
X-ClientProxiedBy: BYAPR04CA0023.namprd04.prod.outlook.com
 (2603:10b6:a03:40::36) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|SJ2PR11MB7671:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cd9fcae-5dc8-4d6c-a6da-08db27796f8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OHy6sDfnXV0tmhZGXatCf2hFmNV9gWn9htnYdfg+H7FbpSwYHWriGUysb87NjPqHZbCa2BCzVm3GCRYehsnxA619OLrJIgi+iRWmnVXYBlX6vEr2sB9h5sipze3DwqGfkFt6IDkcmXtLxvImCAunvb4Iz8CwlphbUUkilC/VFoUopak4MkNB4oxtDg5QYlPoTXiHiyT1itSkrbTn+zKPqjpwg7f/vzG795j3g9XYFqlYJE6xyJEfrwWzTnXdf194155xgYwFiGYIZJTlGbEBEHPPwvngMmy5UDjf5npENJzrU2tCEgvRYJNsaQq3FukzKfeGXQMbVwQ77n9YvP87dt8WWPQzbxPU+R/WuQsffGDEe8rFdVHz1c3BdExBAdMpcVlpy3YBw8I6/8U92zZF1Cb1MFIaWECHKmIIe7mFD0qGXLjAlziVE3FcAPoP6FcqSnGTgvsBlVpdsh8byCAgM5JQRpetnI8GiyZv7F56rvnqeT/n095APgiJ07loocLbva7fK115v8kC1Fp5tM68jmaJhNQdKuAxroTKmwKKtRi2mk0avLYvn8Z3vCU1ZlAnM1AHAfGxQ2aPsb+x81gjVtrOkhi/Zlk64Jg0gGhAdqDhLXemmsUFVk42DdvSmv/p
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(136003)(346002)(396003)(376002)(39860400002)(451199018)(110136005)(83380400001)(478600001)(316002)(41300700001)(5660300002)(2906002)(82960400001)(44832011)(8936002)(7116003)(3480700007)(38100700002)(4326008)(6512007)(66946007)(66556008)(66476007)(8676002)(6506007)(26005)(6666004)(6486002)(966005)(186003)(9686003)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?axBbubiyKpJ/HOxHsZ8ZjqvvY3/xD9gErQ61ZGMEoWJTBdk3W+HR8AkRhdO7?=
 =?us-ascii?Q?P4HU2K3QZXHpUMwNaUM2sdk21Yog3bYNWsz7uNNDxnIY1VFy6VKLUu/t5nG/?=
 =?us-ascii?Q?fWhK9SPh8SAn1PTFAfZvHC9gLVr8TcforlBRs76By8tRkD1CdpjXPiZXi5Kw?=
 =?us-ascii?Q?NC2sRh9fk9WfEvogpcFpETe2YOHC936eCvPaQWDz4BdWwB1AFrO4Ohm46M9Y?=
 =?us-ascii?Q?z/90R3m//fCKfUOctWJAFNLjRAu/6rCqkTURXNGLHWKu0L71wyCgGiJh3lup?=
 =?us-ascii?Q?5bBU5IkoIRfKApN82MBYQFrUYU1OrcSOXu0oixDnWfxgHwfi28DDzGk2RNP5?=
 =?us-ascii?Q?DuAuQJWW/jOZWzMGZfaw3xeGt5KuP35ELPGwi5bB8d1POWL4GLluSm+E7wdl?=
 =?us-ascii?Q?bky6rc2PfmWXNsxycGI2zm9Iw6vC3Ank5LCdK/Wi0Grz9UDNoqFzkv3LifM0?=
 =?us-ascii?Q?LtxMgnJNtQBzVYRPOgMZGgbxSLqRsCqBZ8F8d/TqmhBI7gsUzRk9TP8uq0Uf?=
 =?us-ascii?Q?VrcboHJSCYxnf5HP0uiKo2oJLIish0BRzYM0fPkiS8yBj/+7IsFdSQDb5p2N?=
 =?us-ascii?Q?tPoGhhx8yHRokyC6sMnex/cBWcayZreCCVnA9p2UaqUoHVSelW9kRganUHke?=
 =?us-ascii?Q?x97M/aS9282/zAVE0zB9hxSuxfLQbQ3nBUkixq8/Z7edGl4YKU1iNjVmzP2n?=
 =?us-ascii?Q?CcJdvKUwNGkzzR7qWahMCugkehNSYeVltUYUEDxrxrhYOr9wweKNWp09sfXH?=
 =?us-ascii?Q?6d/8Td3BAVjNw2B9Bsdl65wYEH6ecl18s2sGHezHoamkacdV8tTb0ICDR39g?=
 =?us-ascii?Q?vq9zit6ufs2bYxi7CNnPzVPvQPGha38c2JE3fxxDsQ0CNMrhmYLvEqx6QSM5?=
 =?us-ascii?Q?cp+LFxUEP9A01q0gHK0PZ+7W2B3zWDUPrtywT9MYCfo/hR/HUsYInDs5wmX3?=
 =?us-ascii?Q?6gVMr8DZ83nE2nnBp+xrLuYVUF6VH6paHMf2Peq97RKwHXKpKZ1OwEgtyRVD?=
 =?us-ascii?Q?+kZe3jTWYpkhN7mQ+DfEXQCCCkXNejr6Qtp8Mo0Nc7xv7JvSEsvBrda0OERt?=
 =?us-ascii?Q?Ep32uce7icz2+nzv36RtEsaAbUnEoUlq2ow/bJjOfsypeU/pggOHEBwYpWd8?=
 =?us-ascii?Q?vtcLJrxGF9NdKVN5rbad/hnpj/0VoZSKLSNKBLlqYTwcyrOLnTY43+Wd8WO7?=
 =?us-ascii?Q?nArx5HnCj/yzxlDDvFik7IeWVKe5RXkkBBII4HNJunN/2VYKqfowbK4Py/TR?=
 =?us-ascii?Q?T7CMRZ3DgUSXwjnnmdYly3PK/7DlDygfFDgeCg/l1T2NSiL/VC2h5bbIi44W?=
 =?us-ascii?Q?IcJOF+whD6sXMYVmcgEmACBAoSsc6XjS4goSOP8VfV10pwhF7UYx9Uv8rH49?=
 =?us-ascii?Q?hhuc2Fuv5/Fd2PL2daQrpIY7Jeu71JyAySrgSxtjz9t8zR80HUnV5xdn02Mt?=
 =?us-ascii?Q?X3oRWwiP6WfrrpTbrs+uB0CBPtMsI1TH6X6XBaOsZuaxxInREOVwlY++m/+7?=
 =?us-ascii?Q?NPZGr5Ppjv46P5GwEq7XPY8ykQzeRZUK3hf3reLAN719xXq6OQxQIBMauL9w?=
 =?us-ascii?Q?VM5zEIcnO4SHyz40jyNknojGMRhh8bxP7RJe8SuL?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cd9fcae-5dc8-4d6c-a6da-08db27796f8a
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2023 06:24:32.0659
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XxIZ9gF2qrJbZgO/0OlBXx27lfgFlNbzjwhPkTgBEOSeU2ydwLfJleTckU4EPPEoN2J9WOdmAFtpkrWasiJCYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7671
X-OriginatorOrg: intel.com

Mark Heim wrote:
> On Fri, Mar 17, 2023 at 10:07:05PM +0100, Julia Lawall wrote:
> > > There is a quirk with how my directories are set up due to the commands
> > > I used to check out.
> > 
> > It's not at all clear to me what you mean by this.  The one and only
> > proper way to get the code is to clone the complete repository.  YOu can
> > use
> > 
> > git clone https://kernel.googlesource.com/pub/scm/linux/kernel/git/gregkh/staging.git
> > 
> 
> Consider the greybus directory that I attempted to commit my patch. On my machine, the path is:
> 
> ~/git/kernels/staging/drivers/staging/greybus
> 
> I'm getting confused because I did a checkout of the repository inside a
> folder named staging, correct?
> 
> > (I can't access the tutorial at the moment, so I don't know what it
> > recommends).
> > 
> 
> The command is:
> 
> git clone -b staging-testing git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
> 

I'm confused when you ran this what was the current directory?

~/git/kernels?

That would make the kernel root ~/git/kernels/staging

Which is fine.

$ git clone -b staging-testing https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git
Cloning into 'staging'...
remote: Enumerating objects: 517, done.
remote: Counting objects: 100% (517/517), done.
remote: Compressing objects: 100% (155/155), done.
remote: Total 9354360 (delta 414), reused 396 (delta 362), pack-reused 9353843
Receiving objects: 100% (9354360/9354360), 2.54 GiB | 2.48 MiB/s, done.
Resolving deltas: 100% (7672184/7672184), done.
Updating files: 100% (79608/79608), done.
$ ls staging/
arch/   certs/   CREDITS  Documentation/  fs/       init/      ipc/    Kconfig  lib/       MAINTAINERS  mm/   README  samples/  security/  tools/  virt/
block/  COPYING  crypto/  drivers/        include/  io_uring/  Kbuild  kernel/  LICENSES/  Makefile     net/  rust/   scripts/  sound/     usr/

That is what you see correct?

Julia is referring to the 'staging' subsystem not the staging repo from Greg.
The clone is of his 'staging' repo.

Does that make things more clear?

Ira
