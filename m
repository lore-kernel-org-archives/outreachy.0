Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5A3622
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 05:34:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679117642; x=1710653642;
  h=date:from:to:subject:message-id:references:in-reply-to:
   mime-version;
  bh=qClEGqCGO1026jhtlXRnVkz8mhVpXdHoRfHJpnt+uUw=;
  b=IQ9m/C4zKV8FjeDGtepIzT1wnoex6cndCVfhwM0dG/cbWdJcBFnJB5aN
   P5wV1zfGt1XBOXX6lTruKi9Xw4xMuyR8ttcK9vWY8OLo6JvII6tmwlKCR
   FYx4TrQHNK5RrwtlRKq+pydSkZhN3Ib1GPwqawbkO0OYqRVN2rnPmEDvN
   6faOOVG9QjOAPleTuvDSPsNAHM8+Ms5xM+N053YETtTVGSSu2FtIiET8T
   OUYuv2ZhtyV8Q/6qTFGUtARsMtN8JWoRxYb0U+zDMdwua+ATN071W+pMr
   +iev10z4+DzIwpBybloc5xFp1XPURySueyQ1gsNrGyGWsbrbNiHAbzVKf
   g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="338430040"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; 
   d="scan'208";a="338430040"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 22:34:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="926392029"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; 
   d="scan'208";a="926392029"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga006.fm.intel.com with ESMTP; 17 Mar 2023 22:34:01 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 22:34:01 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 22:34:01 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 22:34:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 22:34:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ihsDqldZXAIC7sxM2BiKfLXj3KZO2moBiFzTjuxjzZZ7Nc/xnx0I0XXTW3Ar3UZV75w9YHv7DDPUGrcO6CDCjrQzRjeyvb2UKXNV8CV4X2UGDtoMzv4L3S3CHe6qOCZcXyRe6Ha3aus/YVDRdm466l1+OyFCD2WnEp36BIQAlkFbXnqDoYgQzTQrhAv+MYPGFZapxg5pn6rhHHjSbvy5w9uyRSdZjndLYH9Uaw2CPEQue7Dy9I1f/kso0pdXrDVmP0/ERc6Z/45tj5oo3fW3Jhs/fbwPRm7IG7pOlfo03e5PIY0S/AzC4avAnMPXwUGDyDRBZ4hd8xnawHYoWcWOTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yZvmS6+4WpuiyZnoTntIlRedgK8c2To6l2xoat4ol9I=;
 b=f8dEYbmi1Yk5w3mWcbWgQeYF1jufIKYn/aEJ77X/xc2VcdnLsjKPFe4MmXEO+iIfC0/onNXN/Aybg8jIHwxxMNzhPdHbYcIsb++y+8pEv89VftozBtRSMdL9DpDrGefU0sMfzPS/75ry1l1fOMp45/4RTRxxlfq/ownpFOjKQPXryYfn2LUa0n87//CFNyQ/xr/CWmtKWUBNSrmfiXazjERscaX029QWOUoGePAgnHonWCt1+3MhKGtFU7i5TsR239RPsotpakZmt4IAx/jKPaH4bNTyfdixO64mXUdqijgKUnW0L4jFmtT3dc6JsEEBX6lLkONCRcaSqzvtLnXAIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by PH0PR11MB7659.namprd11.prod.outlook.com (2603:10b6:510:28e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.35; Sat, 18 Mar
 2023 05:33:59 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Sat, 18 Mar 2023
 05:33:59 +0000
Date: Fri, 17 Mar 2023 22:33:55 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Sumitra Sharma <sumitraartsy@gmail.com>, <outreachy@lists.linux.dev>
Subject: Re: Warn on macros with flow control statements
Message-ID: <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch>
References: <20230316080834.GA43491@sumitra.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230316080834.GA43491@sumitra.com>
X-ClientProxiedBy: SJ0PR03CA0132.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::17) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|PH0PR11MB7659:EE_
X-MS-Office365-Filtering-Correlation-Id: b29f7c09-8e38-448c-7866-08db27725fae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BBfncmjRBCksxffEVQfJlUNsFzRZ8sfk2Ruks51q/97g0n1/Ql7iK3iJsJhv5v9hGYBPBKwhrmPvfziaxzIJe0YblgsoxrAv7tuhX5+F7++b0YdO/TGA0Cy6C4tKXHWxab4EP4TmbMuGdCs9bDJgUXofb5UBplhgVcXLGNiSpeaUD4GJ1PYQ/x44x7UqLvVP2bO4VyEA84KC+gTAn8+C7KGUtoD0HXuXUiQn+C5y+C6SmcZhVSRh1jMnauAPBpRyBkYnXlCO2yW8UcPRImu+YDAWteMFTc+m8+dcK7ECj5trJ/A+RQkGPjZ9w/7V95Sg6+uFVyxMCMxtV+sS3oKR/4SQhF9R0EWruK80OKOwKcvqhixbY/zVN8LOAAot9oY+92P6HmEkH2R14jzuYkLqcvoaPayEBYPinH0cKZpYnvTd8A3iX5ZIdyYx7lR1Fbe8E89+03nMLLPBED+INK1UuQHdZ4yTw5l5dZnqz6kFxyH+osj0N6Yp/RF//5c2a+7kqn7DZeoQd3SPcZQi8f6Gs0MjjGJGbb3ABwQ2rgcyi/Q5u3zbnxDIvyUvZmiKkDUUx10s47HJ+SQkRI2G/Fadnfu1gWGgC+cLMYi6iJ5GFFGtP6l/6vFQXldL+JcwRm7GbwVVoBmE0hgXO/+/JyF5iQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(396003)(136003)(366004)(39860400002)(376002)(346002)(451199018)(186003)(6486002)(83380400001)(6666004)(478600001)(316002)(66946007)(66556008)(66476007)(8676002)(9686003)(6512007)(6506007)(26005)(41300700001)(8936002)(44832011)(5660300002)(82960400001)(38100700002)(2906002)(86362001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D6G6/Fl2xKquG1G3HCVwtsrGXyL+mjMjq+jcVrRO3gT144TnT+f4OOFUXiAF?=
 =?us-ascii?Q?Eb8WjXBpYC+UbVQU4DOp02wn8zYNGaEcdxbAk42T5rRpVH8ruqUt1BN/l8fI?=
 =?us-ascii?Q?CZnCthBhD8gQ0qvKxyNB/agcvOOxzpfv98SMqLLU/E9XAj/13zy6V1BhP89A?=
 =?us-ascii?Q?5vwjPPbB7wSkDy/WpUtPvagcCIRx5pAYVPWnMgbvzECqwAGMRFN06bOzPu1u?=
 =?us-ascii?Q?LnmyW3y5W+hjSVws3IbrhyRwuYFgPLmFGeZqFLPi+pTFZLM5m67dNJ4LKJzd?=
 =?us-ascii?Q?PkD1OZ2I0i2qeTMmlLE+l+Ee+t3YB1WTxyHxCP/ldBU/eAQ+f1F2wUoYINIf?=
 =?us-ascii?Q?EOrb6DH/ZZvZnd3wJxVjf+p0rY84lp702BGAZkBsX10NAv3Byh29sVKtIwIo?=
 =?us-ascii?Q?sjPodAA/1ebRszOKkaSJeBg1g5Jh35EcJuAr/0KEsTT5FHIkjPBaHwsYiC+F?=
 =?us-ascii?Q?ATbSEQlaoa4EIr40Mtkrm2t9lodYgfGgbDR2FnkfcAbxh0FWxioMIv7mhps/?=
 =?us-ascii?Q?G2/Ya3Kdbq7VMWoTA5xQ7J1whT3islWMlZO6hrzEpr68tTYyYYB7wLoijEef?=
 =?us-ascii?Q?Fi/C52hLWOB7I4zSQP1BE62BkTlf5eoY2iOC7fjBXie3tHZwfJi6tFU3aXeJ?=
 =?us-ascii?Q?Q4pWlh8TKmB9c91i2Q/dWS5gk701fY2hMHUWlGaRWIfqLnzrt6/faR8Gf/kp?=
 =?us-ascii?Q?e+sjVfqr3fkFs47KCgwpeoT7x+eDiXEmHc+4XRDqLVQIrE8jc5TjZkCZThcb?=
 =?us-ascii?Q?9GA1DF3zUJhFzwXVJfBqd5Fdhu1UKUx3w4iO4VgO6PjV4lh9R6F8Z91j8Lpq?=
 =?us-ascii?Q?CmLeJsnLlkadVWCadxyA+cjtZh2+Ax+VD0FkV3iZhgo6cnj9yHPFbejTLZao?=
 =?us-ascii?Q?WHVaNyDQHxeT67/B0z5MsFAa5pEosilCRZMnC4kH/E5tqfZE9EDz7+dF8/d6?=
 =?us-ascii?Q?oYNJ66KrWz61kMRhZSEiXoeeqvrY65XZGgpYXCjDIe72uL8xznS2W4Xolsek?=
 =?us-ascii?Q?twASfWXXOqrPl04jcmKT5hSh54akzWLUI1MieHh5ImtAPBQMXuUUUM2TmGy3?=
 =?us-ascii?Q?5vvAxhNFaMH69h/QCX+RLEHpOQkD14axtyJN3P0pwqfwEi1oFgVGeN607TAT?=
 =?us-ascii?Q?+POca686Ztbb9k/b5qajHxyc8lgxwBaIUjwPZnKe/Q0y8dQFfJtLlNbWA52A?=
 =?us-ascii?Q?e6nltbn+q3U8wMjaqxtAtdkj30bdrYE8vwyZAVu0IeLn29gswpJk/iiBZrSy?=
 =?us-ascii?Q?UNJbNV3D4Q2DmVzHVDfSPI1K4ub2ORg0XaZnB8l9DsT2Xd+p0ulDw6J7Ell+?=
 =?us-ascii?Q?tBubcVdvek/wwVyw/j2YK+fYMOcWK8VxfaAKe5CEjZ8uRpzBL96RNBoDbj+6?=
 =?us-ascii?Q?H0pGe3gkilPmpQocpB9lVbcCUqkiHFMjCJScWqHdfhE3o37oERCFuwL94fWG?=
 =?us-ascii?Q?Fg6adIEb0ez40oOd4o061ccHJGCY07UsBApgXBkEAkTW9nGm95ivWEfclUJ8?=
 =?us-ascii?Q?vbl8YPyMSpJeRmAHzecvlQ+pYEn5LCohMK3wICEus407BIQwrgXLnpbYQu6B?=
 =?us-ascii?Q?RYJgaKwjxRQ4tDJHI/XRKXUydJ79tqym6v1yv3s8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b29f7c09-8e38-448c-7866-08db27725fae
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2023 05:33:59.1362
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qt+UFMPAur45uRCLTKhZ+JSsu3aAuwzuqqyFYbkfhbxUE/LEsEdkY8UEgq9Eu2j9vSF5jGQxAcaCozNnyiigyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7659
X-OriginatorOrg: intel.com

Sumitra Sharma wrote:
> 
> Hi
> 
> I am working on the below chechpatch.pl check
> 
> WARNING: Macros with flow control statements should be avoided
> #42: FILE: ./drivers/staging/qlge/qlge_devlink.c:42:
> +#define FILL_SEG(seg_hdr, seg_regs)                                        \
> +       do {                                                                \
> +               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \

This macro is doing a couple of things wrong.  As Julia said using fmsg here is
ugly too.

But the seg_hdr and seg_regs are really being substituted for members of dump.
I think I'd get rid of it as per below.

> +               if (err) {                                                  \
> +                       kvfree(dump);                                       \
> +                       return err;                                         \
> +               }                                                           \
> +       } while (0)
> 
> 
> I was trying to change this macro into an inline function like this
> 
> static inline int FILL_SEG(struct devlink_fmsg *fmsg, struct mpi_coredump_segment_header *seg_hdr, u32 *seg_regs)
> {
>         int err =0;
> 
>         err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs);
>         if (err) {
>                 kvfree(dump);
>                 return err;
>         }
> }
> 
> But I am not sure whether I am going in the right direction..or how to
> move further in it. I am looking for some guidance.
> 

Wow interesting code formatting.

And in the middle of all those FILL_SEG() calls it calls qlge_fill_seg_() directly...  :-/

...
        FILL_SEG(xfi_hss_pll_hdr, serdes_xfi_hss_pll);

        err = qlge_fill_seg_(fmsg, &dump->misc_nic_seg_hdr,
                             (u32 *)&dump->misc_nic_info);
        if (err) {
                kvfree(dump);
                return err;
        }

        FILL_SEG(intr_states_seg_hdr, intr_states);
...

Based on the flow control I would do something like this.  It is a bit more
verbose but is very clear what is happening.

Ira

22:31:10 > git di
diff --git a/drivers/staging/qlge/qlge_devlink.c b/drivers/staging/qlge/qlge_devlink.c
index 0ab02d6d3817..043ed989f9a0 100644
--- a/drivers/staging/qlge/qlge_devlink.c
+++ b/drivers/staging/qlge/qlge_devlink.c
@@ -39,15 +39,6 @@ static int qlge_fill_seg_(struct devlink_fmsg *fmsg,
        return err;
 }
 
-#define FILL_SEG(seg_hdr, seg_regs)                                        \
-       do {                                                                \
-               err = qlge_fill_seg_(fmsg, &dump->seg_hdr, dump->seg_regs); \
-               if (err) {                                                  \
-                       kvfree(dump);                                       \
-                       return err;                                         \
-               }                                                           \
-       } while (0)
-
 static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
                                  struct devlink_fmsg *fmsg, void *priv_ctx,
                                  struct netlink_ext_ack *extack)
@@ -85,7 +76,12 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
 
        qlge_soft_reset_mpi_risc(qdev);
 
-       FILL_SEG(core_regs_seg_hdr, mpi_core_regs);
+       err = qlge_fill_seg_(fmsg, &dump->core_regs_seg_hdr,
+                            dump->mpi_core_regs);
+       if (err)
+               goto out;
+
+...  and all these others too...
        FILL_SEG(test_logic_regs_seg_hdr, test_logic_regs);
        FILL_SEG(rmii_regs_seg_hdr, rmii_regs);
        FILL_SEG(fcmac1_regs_seg_hdr, fcmac1_regs);
@@ -117,10 +113,8 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
 
        err = qlge_fill_seg_(fmsg, &dump->misc_nic_seg_hdr,
                             (u32 *)&dump->misc_nic_info);
-       if (err) {
-               kvfree(dump);
-               return err;
-       }
+       if (err)
+               goto out;
 
        FILL_SEG(intr_states_seg_hdr, intr_states);
        FILL_SEG(cam_entries_seg_hdr, cam_entries);
@@ -139,6 +133,7 @@ static int qlge_reporter_coredump(struct devlink_health_reporter *reporter,
        FILL_SEG(xfi2_hss_pll_hdr, serdes2_xfi_hss_pll);
        FILL_SEG(sem_regs_seg_hdr, sem_regs);
 
+out:
        kvfree(dump);
        return err;
 }
