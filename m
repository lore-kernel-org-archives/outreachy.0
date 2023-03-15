Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413C07E
	for <outreachy@lists.linux.dev>; Wed, 15 Mar 2023 04:08:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678853297; x=1710389297;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=f4zDBv6MmJe+S93/rAANleccfUqLnFsDraRYRo7IYRg=;
  b=dkSKYOLDHtT2t4fCOvgp6aTOQI3lVjh3IxQaRehq76yWjixuBr3JN/gS
   8l1wGq6nZEGulE2vDWPWG0HUNJfOpqHlh/xy03Wv2s3BbaU/hr2m3IgTs
   TzVR8hkzutQF0tNYU2qii+TdF58oKw+/+yAhNEcTHBTr1464VCWv+15wo
   2H9WnrraF56gDniQ+TBE5nLPiZkwcs96/HTGsUETabY+VQtgu7HvGt7YG
   IXpuhAmYipaum39EXWxTedxdi892Z3XVAULucdABr8cKvEihc3waZgAoP
   dZ+f26VuZeJ4zbdPDol/VyXuL9NAr4wDSplCVKcb1c6W5isLKOUkQdS3Q
   Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="423881560"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; 
   d="scan'208";a="423881560"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2023 21:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10649"; a="711766938"
X-IronPort-AV: E=Sophos;i="5.98,261,1673942400"; 
   d="scan'208";a="711766938"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga001.jf.intel.com with ESMTP; 14 Mar 2023 21:08:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 21:08:16 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 14 Mar 2023 21:08:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 14 Mar 2023 21:08:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 14 Mar 2023 21:08:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZi/EGacilFySU5oufWOGNTSGbiSJcZZnQP4S/F+xiIlh71QP0nOekAgKeVjzCmz+K8IG2QKzf2ITfwdFbHT3lsQpBlwH2GZDhuDCjt81E757CfFH6Aym708FB1R6CIQcbPeU4Zq5WaewDPzSIhfJdDM0q/d4cQjeap+JhCn+OJuzTWyNX8NsO7Emo61R0KcioV1V9sicR/gntF2Aakl60vS967H8LzXVEyZfsrOsOMjONQetPMDXD4ZFESOC4M8mAR9lfQYGHSEQqJ87yOLTDZrUFVyE0Rb9emAOBOdDp4mWFyy+5VmwLIUAsqYoOXy7E/CSJWOho5yKvCmJ0uYTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PmNL2OV0BrL+iCFfjYPTlX4S6AZytYT/JCoL6P4lTm8=;
 b=NZga30+w3nM18TOAMX+/TGy8ROvJRGz/E8EB6s2IviQUCZM39p3WwEp5Af8KQ3GTqF3RJvo4XwcBhuAsaS4sANuL/Gz2TmtL8RLLhlZoc1wdPzVkC0tFnpGXjarTsGFbep38tuv0c3xkiswhFXRYc6/hP7Rs2Fb7TiTlQ43M+Nd0caH54gEgzr572/aR+mGnZ+ealW5dBvqMt6UwOGyOn+f5DUmnW8TCaCG2Ky+ojwfUDZmfRpMmppTbw1oYNo1yCKGOgFdOqrXiKcgqBQQVV+UKI8Hi+IXRK6Lm+M8Ao8q/i4AV/ErQGm8br+9KppNBJILjsjbBAhcYnLLA234yDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by CY8PR11MB7897.namprd11.prod.outlook.com (2603:10b6:930:7d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.27; Wed, 15 Mar
 2023 04:08:09 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Wed, 15 Mar 2023
 04:08:08 +0000
Date: Tue, 14 Mar 2023 21:08:04 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Alison Schofield <alison.schofield@intel.com>, Menna Mahmoud
	<eng.mennamahmoud.mm@gmail.com>, Khadija Kamran <kamrankhadijadj@gmail.com>
CC: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Outreachy - for Menna M.
Message-ID: <641144a4551ca_24390229488@iweiny-mobl.notmuch>
References: <ZBD8Db61WVPsNVmO@aschofie-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ZBD8Db61WVPsNVmO@aschofie-mobl2>
X-ClientProxiedBy: BYAPR21CA0014.namprd21.prod.outlook.com
 (2603:10b6:a03:114::24) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|CY8PR11MB7897:EE_
X-MS-Office365-Filtering-Correlation-Id: b5c8e9c3-ebf2-49b3-acf1-08db250ae271
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CJ+Rii65f5FlUjH7u/kJJhEZf2Yi7fd7+1cy3sKmfp2U9FubUmEq/kpNSypcV1pLGYbxQYYMD9Zpk9EkhJX9s6riPWEzNx9M4arRqjwIkvaC3T8m2Q7K7qCQk8pe74SwHQd+VazazbBe2B25E5PswHaMgpsKNJieirOz6yaWJemOQTsi+7IOYDswgIXoTRSlKRgnefhS1+krtt0F6wDDpjtbhuvN89pVRdXfCvKkJ6M8oCM6yL1C0D2OH/3eklghnJTfBypvB1snXLepttKHfslKWik9MLJMrNyK4c3psLNZpdIKZ9FiMpfvovAbwrDno1PSPxZrF0/gyXe0xk4/JlnmwjAlWamW03YM6lLf896jdPFzKLDZxsJ5zyCXhxDVamz4bIlGBlcz08junLpEboayrGxFkYBIeDHgvSPHnBocpuueUZMnkUK8nX+SwNraRcfCbeOIU4yWfcbJ1dIgnjkeFKXQ3A9B4IG6Khx5N7m47EsnEEILIay6vFzqA0oWHnw0FM1OUIpfEkSkgmbFGd0KjpEo5PoyX3UQtp39CS7bMzKmW5DvEl9BtMmW4llCFhvqg26WRbfqCEskcSZBq+2C67ZoSIIEeMNkOb0vHEIdy0hBOAb+IosIA4O0o+Vy
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(366004)(136003)(346002)(396003)(376002)(451199018)(6512007)(4326008)(26005)(66556008)(9686003)(6666004)(41300700001)(8676002)(66946007)(6506007)(186003)(66476007)(4744005)(44832011)(86362001)(2906002)(8936002)(5660300002)(82960400001)(83380400001)(6486002)(38100700002)(316002)(110136005)(966005)(478600001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KnjZ+le33yo8/zr/Ppqf6KQsQOm6WnTC2HZK9By5RVY4yap9dRfeZaxxRMxz?=
 =?us-ascii?Q?f9cPc7Sa6KJhjSX/MwQLCovd6nACUJHk5gyZAIIQfbpSrvAQvUXBu0j8WzD+?=
 =?us-ascii?Q?purtJgnZddve1x4c7p/4u5skMqShJDN/c30BGXpXK1MGCaZGepvqyryWmtRW?=
 =?us-ascii?Q?xjuPnDsVT11LUgRvwGIa7WBiq/RYdalFIerYvPLKkMskKZ3izJ6RNm/9wotG?=
 =?us-ascii?Q?WrK/iBI/X5qM788YVXOZ4LVb0rmo90kbw1vrtYtRCJoFP9sqStzkFtEJf9ug?=
 =?us-ascii?Q?WMeXen0wlU3aZQHgOUaYpU23NPACZBOHrBxiZ4nwWqnTf4oP4qVipAUyMqSw?=
 =?us-ascii?Q?fv/0ott2+TjIVljUiJt7MFcIYcnoEVfMZgTco7evWJttYbpFOkX7o+B6gr2/?=
 =?us-ascii?Q?/2m4JQIzQDUyo3oyRQuwANRleNAQHTt6CKm9OYMYd1AKopOvkk9CyF5k3QHS?=
 =?us-ascii?Q?V+9nKq/v08tL27nPXgNNjGjTpPPqTfRe1XrmNo+RFe1TE1bqUL/COY3RtzeH?=
 =?us-ascii?Q?PrRgn8JIQX5oKPxa0U2Quq0Xjs6TKKYG4UOBfIW8rT9wylWjYqRObEoI79CG?=
 =?us-ascii?Q?+4mBTIyDpZrkKJ8JxgscDadg3DQz5+ZlPs/QJrLuSLm9RRrEh07ZAL+N7SAI?=
 =?us-ascii?Q?wdCZInVB6BmG2+rQRK/rEZI5UPK2Cgru+9PRwsk+Pf9PEVUnkjrDFvT+61D+?=
 =?us-ascii?Q?xFErqnprUHCqqYBEm8uNA/MyAnSQGioQ+2RBGroG6L1uZMIShDp1btnr+bBt?=
 =?us-ascii?Q?pg1MqaJ+BD7vpUWit9aW0hdYSvkhniNN5I+5e0vckuxlHGJ8DdDLIjn5CO8l?=
 =?us-ascii?Q?uX7TMtmo8Q/FWMTqYXgMpucFuwIIBoTnZOI87C8u1LN6aFdd/1h27+Yao5bL?=
 =?us-ascii?Q?AAMH2PO6zLt/q6MEy2BK0Aue7daDUj6l5cwBcTgm88f84h3Ppbpw+FmhzaQU?=
 =?us-ascii?Q?6tDno6WmY8VsycG8Vv/Lbgl1amZwOe94KSlxk6zRgp/a0L5E4n+l5FuQgNGQ?=
 =?us-ascii?Q?rBORR0DCpuyILBhyZTZKpwCM2C2+XGkocnjAtbAN30XF0r6Wbk7wP4alRwDX?=
 =?us-ascii?Q?xYHverXa3sFCQl25W8mfMEancjVIzY6xEt5cnUpJDD4t8U3rDZn7ijULQG9Q?=
 =?us-ascii?Q?3GDdkMgqVRtVlgu+i4j3xONkdSpPuYTy8gU/V504LN6Fv+k6qF1kRXSpP61m?=
 =?us-ascii?Q?+ON3/qWsEOYwg3qFLi4wcxcWuamKJSoOu0S/snz6tbmyX10UtoKIC7ao1nAD?=
 =?us-ascii?Q?DQPXTjQVa8/TbpHxiw0+xIVafsziLUCK5066un3cpiF87lhVVeYPAILQCHAI?=
 =?us-ascii?Q?c/0T3VkTn33prSyJU/caTT0axPEl4LDS/y4JWx2VZZ5fTiCYNHx6MBwLSKlO?=
 =?us-ascii?Q?ILjm5R9tBy/8CnmLsf2PPTKs5bmts8sDc2ktUTN+G+cTZWJSZVyGlhTt+Lvv?=
 =?us-ascii?Q?MW9tStNcNcEUxS0odha2cDz8wJoU1nYuUhHh55PIyICOOVzylQojYlEySEUK?=
 =?us-ascii?Q?PbzkrPNpD5eJQpG3qAfdDfpgAls1jdcOIIP/JSUlglRuYCGhyEIxzZ1h+u7W?=
 =?us-ascii?Q?O/elUAJ1EY3A+4VLOuoA/exTLWYCqZp6bDiVMP3j?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b5c8e9c3-ebf2-49b3-acf1-08db250ae271
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2023 04:08:08.6745
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3E97UmqPvJCXEcFmo8wfIIPCq2TnPz++iN+oNljxfn2xB2TVb906m9qRKG/3yvYQqGzzKuG1FTul0HCSycVEvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7897
X-OriginatorOrg: intel.com

Alison Schofield wrote:
> Hi Menna,
> 
> It seems like you may be looking for some first patch material.
> 
> How about trying this one?  

Alison, I believe Khadija was working on that one.

Regardless of who takes a stab at it my advice stands.

https://lore.kernel.org/outreachy/640e75cfd8fc_229a89294a3@iweiny-mobl.notmuch/

Ira

> 
> Refactor arche_platform_wd_irq() to improve readability.
> It has excessive indentation. A side effect will be
> eliminating this checkpatch CHECK. 
> 
> drivers/staging/greybus/arche-platform.c
> ----------------------------------------
> CHECK: line length of 101 exceeds 100 columns
> #182: FILE: drivers/staging/greybus/arche-platform.c:182:
> 
> No warranties or guarantees on acceptance but I'll support you
> in giving it a shot!
> 
> Alison
> 


