Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1F67B
	for <outreachy@lists.linux.dev>; Thu,  9 Mar 2023 03:20:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678332002; x=1709868002;
  h=date:from:to:subject:message-id:references:in-reply-to:
   mime-version;
  bh=XqJofM24KJrN9MYfharxy867vuq+QJS+ZnyHud5xMf8=;
  b=fjkyJQfBfBbRp7txAncBQmdyVMXaqAEZ/8BFVa4X81cTWirIPrAEQcxk
   vriADdbYfsWWeUgOrRYNqGwWMZ+FTh2paFiNwJ9GtAecRu69/1ucjqGvR
   F5wz0How2fkyBWCtALRMh9rIozfjmUAnrjOi9um3yZjD4L0rqlq4e6U4I
   pozbkZ2aSlRPzMOD8PRKtRvi202s7K8Er92EUSG4puitwsr+LpiToAqGV
   LIgUsTjth0gRLprbKb6fIS+HdoEr22vGM+U/22t+1fyp9+QdjHVijSxda
   Mhem1eVmWmJSFv3tVd/al/MKc5Q6rvdCClR5sPxdi6hFWskdtYwOC1DBz
   w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="324659634"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; 
   d="scan'208";a="324659634"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 19:20:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="627199195"
X-IronPort-AV: E=Sophos;i="5.98,245,1673942400"; 
   d="scan'208";a="627199195"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga003.jf.intel.com with ESMTP; 08 Mar 2023 19:19:54 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 19:19:53 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 19:19:53 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 19:19:53 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 19:19:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDD33wsAQRKSgt12R1K8nd+xNj44HwogrjNWxCRV3ne29tUczM4n9w4OK3xKdf32YOAtNfc9VSs4Xst9qDxyL4fRPGijv9UIr/SMSGvW6Ev8Xg2aP8l7ZyEKZbfb7eQT7/ISZ6mOOZdvUJbcgSOG/O/ExP1NUWxTdZcdS/22viwbkgrNP9Ci4wif8HYJFsTv9G4NUlW1j1o2F34Pe7O7l55lqvaazqLG8HgTVJUYkIs63n7kfIsKFOeBt9JtHkQEpcABi6e89j3IoNR16gItGzFcMXj22hoEDPaFsvpypvDywgw3BmrohDOiDAUWW0yqjybti89UxSKZJq9A0Oyqyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H8mzwHVG9ovt3VrY4hd3G2/p9v9c+KKQMUU5BFDBZZg=;
 b=UZHpkOIGc3OLFmEz5x79EzYu0TJxt7PJGdNC0epVKqYpzoUYioSVJD4uKgfymEKq2E5mG/3ceR0Af9DrbiOivUmUZEIXDuY7URoHT8ZURde8aUfGSVcwd8CrfWSNpz5d49fjDZgK1wDjqlkIXa6ZebQ5tDwC/p5bP7XI4Cb/iyWiQ7KkFPOroRZ6kgVLDcQHaoXgtxcEbQXyJj3Dc+9I1l8QPlCKoiStrgAL9Lfij21dffN7eml8P4FngPk7tq9ciN/6qPOa8u3HIqkNE1Blbc0CCp6c1OmAlQwTjC3p0/QS/e7hol36OTFHzePRmbyUhcemQALU9YHTdMAkvXqcRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by MW4PR11MB6811.namprd11.prod.outlook.com (2603:10b6:303:208::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Thu, 9 Mar
 2023 03:19:36 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%8]) with mapi id 15.20.6178.017; Thu, 9 Mar 2023
 03:19:36 +0000
Date: Wed, 8 Mar 2023 19:19:32 -0800
From: Ira Weiny <ira.weiny@intel.com>
To: Kloudifold <cloudifold.3125@gmail.com>, <outreachy@lists.linux.dev>
Subject: Re: [KERNEL NEWBIES ACESS] Kloudifold
Message-ID: <64095044a1e26_1670ce29429@iweiny-mobl.notmuch>
References: <ZAjteyeSt2rfa+El@CloudiRingWorld>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZAjteyeSt2rfa+El@CloudiRingWorld>
X-ClientProxiedBy: SJ2PR07CA0006.namprd07.prod.outlook.com
 (2603:10b6:a03:505::18) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|MW4PR11MB6811:EE_
X-MS-Office365-Filtering-Correlation-Id: 76471719-6c16-43db-64a5-08db204d1c2f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OGL6mBkVZ3awRbNAAThtJ3Qw7ocGEav104Yevk1MlEOgm0SYAl+Sfk38jbvhES2CSs0AtbspJqR2r7fx6arTKkweGNJ9QlQ35V27K+q8OQBueyKQbPAD3N0ucE7On0LFuM+qBE8q9+ESEqhF8GViZ4yHtOLhWV8MN9F8Quf/GdUDOLBT7qANP20iOgpRdHCecCebYd3IHKDIjl76AgmeearFx0EjbsZyyPCNCJhTlaf2JPcENFaGGYdcSh+xm27qAaJ48MIh8YjNzfHr3irX234UMhHoFpGX4F5bYOrqwqDYYBiOGo+r4YQCqjoTpGwhE/IHNWnl2kVvuAplv684Yt3vBRyhTk8MhRCc/8Hq6UUX5nPd/WCAXpvYbYTgg6waZy1npYVOmfBbNMTjp0D/w1Owi1zX8VAl0L72gbgM1ZlDKTNAAuKD3k1XBWiWw6L04W9izUzNdY7fgCDx62MxA02/dSQVo9ueVfWztRL0zOwPuuNRFy3wN0A0NR/m0QKnwyaxKtbkYkLdKVvfOFNmLGTjbph0cN68fUoP3DpoE0gT+R8JqwF71aS4roXcgmfz6mGLbfmEgqOVXbT+5c/FcP2X5MrlRxd3hrkwxVeXUWGda5h08rIjaGbWKlX3sOOe7X0/L2ykLDmK+LBy6CwlDA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(136003)(346002)(376002)(366004)(396003)(39860400002)(451199018)(44832011)(2906002)(8676002)(5660300002)(26005)(8936002)(41300700001)(66556008)(66946007)(66476007)(316002)(86362001)(478600001)(6486002)(38100700002)(6666004)(82960400001)(6506007)(9686003)(6512007)(186003)(83380400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6s+6ikqqgSKpZG/prC9cp7ayHZD0n5hXtfdojiHG6HESe6BMehuR6NEvOgAe?=
 =?us-ascii?Q?Xqjz04QEuqssaQBZTFt/kcMLG6xp2yP2+BXVr2nkmJotNxXRXS+kG4V4U0jm?=
 =?us-ascii?Q?fet+TJndk/lOx8dJ2CnV3ssR3mBmddJMT6LQv3oLiNuXpGlnv2FQVw6155er?=
 =?us-ascii?Q?Eq+E9URulqfMLu1RfNodSlkYaTFRkS1aB4Oy3fq6lHkXk/grqIn0uQAs/60M?=
 =?us-ascii?Q?6GJbuRWdGWaoXug1yfCZrSMgsiQEGyCkyiky8MwlQLLlcQP1AKTQTrPeKYLB?=
 =?us-ascii?Q?vuim+XUESoxfqAy4ZgyMfOOjzWOHD65Y8pUyzagOUiJGES7enRDiZA1DIjWs?=
 =?us-ascii?Q?NpnsvtElBU8IeoeWOQ4fNXYPpFwAQ5uA7yJ9QbCILngiJ2L2Kk1pZGL6AIef?=
 =?us-ascii?Q?JLCaHaAJPurRystLMTmaJFvqwCZF0+yxcv541Y6W1nUcWqOxqXo8wzeNNcht?=
 =?us-ascii?Q?qYHX0FLIS3gJqNsoutxcoDpqINlr4IkFrBVP5xu+6NPCzr+2M7/521AQdOj9?=
 =?us-ascii?Q?IXmwlPjRromNfd7KU84slliIbUjbwOD5usefeeuhD78LHDN+kzpGksSc0M0a?=
 =?us-ascii?Q?lO7lu6rVzaH+Ndg8EntlB6u7SZr6Xlzm2lm0slmWYIbX2alvmoWokH5YkoMV?=
 =?us-ascii?Q?9vkxKKJ8l2QfdDB54I1XUxml76JX6oemwfKbTb7ECVeJpq6QzkVV2GeRzf9h?=
 =?us-ascii?Q?iOQKZPtW0EV/UzzAGEzl7wJUlosprdRS3gSytnevwpd0kWgt96HNpy5B3uD3?=
 =?us-ascii?Q?037TcMmQklb7HaMTGyLxjSlTJTSwbC+37Nl9MVK9A6fGNBY1FBek71YYKx3P?=
 =?us-ascii?Q?hnq3lp+b4RcI1VTDSUigD2vHUgvT6yAsDVnKLVQasshMnoQYhpDmZbkkIG7P?=
 =?us-ascii?Q?8cOy0UJT4a0mgdqwnxYb1BB+Ir8mfaBO4eWE7/FjtWjPXtdQX35T/kBj5QjA?=
 =?us-ascii?Q?gw9kuvVu3wFBu2ewFQWC760jCvliD+7x5UGuC32HapuIvWsRDiH5Ygm1qyfk?=
 =?us-ascii?Q?jQjc2/vB8vcNXbACYOU15VWDqyQMZ3UqbKQtvhCqeOo/RQEfjugfqHBMXUj+?=
 =?us-ascii?Q?tEKRdMeJrpOOgiBCxY147/tmGmIjj+4ykwp1coWHUpeZ3wRuCeLS2nmTa0BM?=
 =?us-ascii?Q?012iW7tQgjtBQW5Zb82cjznj+BHHJjPaTZzYsPTca4NRAyyjIErVY5HyTq+8?=
 =?us-ascii?Q?SAfrpc7r4ztbKwF2SqgLKyTzK4oyNEdNo2BjPsopLwflweuyXXksxTMK1sDg?=
 =?us-ascii?Q?dE8Q8UcTwUz2iSsmhLZujtaUav4qAqBDx6RS9DDhDB2jOsTegkzfGRcx5B4B?=
 =?us-ascii?Q?HNmndjY+roSIDM0WhghV2d4E/0qwsA2v+RVlsf0JzTQpDlhSCc/3RLduE7nW?=
 =?us-ascii?Q?X4Cr1OSn8FcTOC/jSQQEu3ySuDePlGOxdZvbuCiiuPjtxggwjk/0ahwjXRXn?=
 =?us-ascii?Q?d6+cUCRqKPrJW3e6epLn9J8Apvm6NqpEJuE0MW3R0ktrdjqRNAprVn8z+e1r?=
 =?us-ascii?Q?W0gVZ2ftLIQNG+xvLlk8PWCL9y4QT6VO/wLSbVVY148rpyNxvmeI76jz6gym?=
 =?us-ascii?Q?xukFNYe8WerOFPyOxeZer/SejcUIiNvWh6uhqYnt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76471719-6c16-43db-64a5-08db204d1c2f
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 03:19:36.2539
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q2Ke6U8fTpNpxScoJWFUGMehx1o3+5bYhMcmXgaXtKFt5awNqJofIbiJUUzXHH2XCMQ8rUGOX81d9QEKBwyxnQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6811
X-OriginatorOrg: intel.com

Kloudifold wrote:
> Dear Outreachy team,
> 
> I am an Outreachy applicant who recently followed the tutorial for the Kernel Firstpatch on your website. During the process, I encountered a couple of issues that I believe could benefit from an update to the tutorial.
> 
> Firstly, the tutorial assumes that the .config file used to compile the distribution kernel is stored in the /boot/ directory. However, some distributions, including the one I use, do not follow this convention. Instead, the .config file is stored in the /proc/ directory as a compressed file. To address this issue, I propose updating the tutorial with the command "zcat /proc/config.gz > .config" to extract the .config file from /proc/ and use it for compiling the kernel.
> 
> Secondly, the tutorial instructs users to install the kernel using LILO as the boot manager. However, many modern distributions, including the one I use, use GRUB as the default boot manager. This results in an error when executing "sudo make modules_install install" as the system cannot find LILO. To resolve this issue, I suggest adding instructions for manually installing the kernel and initramfs and configure GRUB.
> 
> In summary, my proposed updates to the Kernel Firstpatch tutorial include:
> 
>     Adding a command to extract the .config file from /proc/ using "zcat /proc/config.gz > .config"

I have no issues with adding this as a possibility but it should be noted
that some distros do this and others have it in /boot.  :-/

For fedora (my current distro) the nice thing about /boot is it tells you
all the configs for all the installed kernels.

$ ls /boot/confi*
/boot/config-6.0.18-300.fc37.x86_64  /boot/config-6.1.13-200.fc37.x86_64
/boot/config-6.1.7-200.fc37.x86_64


Out of curiosity what distro are you using?

>     Updating the instructions for installing the kernel and initramfs manually and configuring GRUB

I did not notice this when I skimmed over the instructions.  Thanks!
Let's get that updated.

As Alison says we should use your full legal name to ensure you get credit
for your contributions!

Thanks!
Ira

> 
> I believe that these updates will improve the usability of the tutorial for users who encounter similar issues. Thank you for your consideration, and please let me know if you have any questions or concerns.
> 
> Best regards,
> Kloudifold.
> 
> 


