Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E443A7EC
	for <outreachy@lists.linux.dev>; Sat, 18 Mar 2023 06:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1679120363; x=1710656363;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=c74AQXtYPSsGGkIV0DeI36jKtMdAcVgbjjn69PycXNQ=;
  b=bfVeySvDG+ImuAgIA97Gpe/VrVZp6Cgo8VfBVHF2rNqjYYOF67SDaw/X
   +Zugj0UAMxgNfc67wNKFDJsqFpstqDlgB16EiS+qo4sltRvP7lh0nGw19
   VrWKAQesguHOEqnUwmx+dpDcGM+xWPYaMyKMbeEnvwLenX4oQ2rcDgmZ3
   XsvF0SOm7h8yVg9U14noh7n3GuCM6/bI0QZkalpgrC886Fl5jzF+6sG+q
   rIVWbSM1et8FIJONjZtA/d6qYPolXg4j5pKhSfbQS9e7OzMmzGg4EK/mL
   kzlrEMk25Ov/8spiqtAqZ75aVRjRa7QbD2ezFNy3QT29iXwvWpttSiOHE
   w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="326775616"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; 
   d="scan'208";a="326775616"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Mar 2023 23:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="749519462"
X-IronPort-AV: E=Sophos;i="5.98,271,1673942400"; 
   d="scan'208";a="749519462"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga004.fm.intel.com with ESMTP; 17 Mar 2023 23:19:23 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 23:19:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 17 Mar 2023 23:19:22 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 17 Mar 2023 23:19:22 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 17 Mar 2023 23:19:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KJgQhjqbaNDg6trbZaGRHqnimlIkv4Hk7JJIUDtABhymkGr+1l2wC48MDbkzzVPL6/rmGCD2G2PkQ8i7q5cAajq2Jrzjpbz3aWjk/fWsNUqXxJSNAMMcRNPGluAIoXfja1j2QuGhq5iKGF9d+1GnghlZLHnKORxTpgqw1gCXBJsijnx6ts1Uu0aNz6yG+ubFYQrH0A6iOioQWShhOm+Y6K+YxG0H+QVrR0wq4cBU6APZuBZhM3gDqtN2FcHpCPJ/TRVGEDgf9C8Yj+b1FZ5X688NRVao50+i+Bax8fQJ2PSzQK8mS89Ym6uuhXAgMe71s/PThTV32TkeiHL4S2KRiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BuFUsVPKc66GQpMEb8H6Y1G9ZjK5sJN5++j2R5X1Dus=;
 b=d+kb8cTiW2iHRW/ullFmSLoT6uXZ0z46L6wEB4jcxEYf3JpJ8wLtb/wgnjCZSYiRYCWx+zhUDpbpnpWIBEZIPTb1RzByr8jabHJtYrD+4uUnbD59rVIGy8mGps0MpJs2EmpFeETEZbY6FJiiUH+x5yeB7xDyLM6Sb2mlTCZJUZdGYOcXUZWBWH4XGXihuP6OwIOWX6e5abf+p69Wouy6vH0xLIo9DKQwBPBrHXGHqo+cVxNzntpwB7n2Yz9xwsFKHp1X2vAO42hnsj3AjWWrntGxqdqw2DIKvoCsJ146a2bw0afx0wq9efYrVzZTWvDSMogZ3s1YLs/vUBCCaq+VLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by BL1PR11MB5413.namprd11.prod.outlook.com (2603:10b6:208:30b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.36; Sat, 18 Mar
 2023 06:19:15 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%7]) with mapi id 15.20.6178.024; Sat, 18 Mar 2023
 06:19:15 +0000
Date: Fri, 17 Mar 2023 23:19:12 -0700
From: Ira Weiny <ira.weiny@intel.com>
To: Julia Lawall <julia.lawall@inria.fr>, Ira Weiny <ira.weiny@intel.com>
CC: Sumitra Sharma <sumitraartsy@gmail.com>, <outreachy@lists.linux.dev>
Subject: Re: Warn on macros with flow control statements
Message-ID: <641557e06a958_28dc5f294d7@iweiny-mobl.notmuch>
References: <20230316080834.GA43491@sumitra.com>
 <64154d438f0c8_28ae5229421@iweiny-mobl.notmuch>
 <alpine.DEB.2.22.394.2303180703470.3122@hadrien>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303180703470.3122@hadrien>
X-ClientProxiedBy: BY3PR05CA0050.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::25) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|BL1PR11MB5413:EE_
X-MS-Office365-Filtering-Correlation-Id: ca6196cd-eb36-4d84-d83e-08db2778b2a9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XnjDbEmy+9pdNh+NLBoJ5HMUUIqfLFQf4eUpOC3TnDyKRxQIBEgzHGnpQegk+/48vNFP2upUbH8T0p+QZVTZMJ+c/i1mQzDwCzSVqjDtXONL7Reh5vfIhJqnhTZwv4uDeiq1xdEcFLKXlFU/NfHqdsPTXkh53bLksvk9QPmCb0aETKCc7+NmCz247caDNWTAOi30tIuHwgn4Vk68zD8o68r4LZWZ7a6/NMzTHGmNl5Ex83XIjYR1OM0QxPW/wqufV4RZUoiHjhK80b6YJO03jPSki77ostlsfnaHiz9P85bl+xEq10B0z3O6meS51u2UpmcImvNoUQ0iLr0VqWtgNiLEOrQjd4R2zGNp2UnhybcfYe30N0GKeAk0vl/LLKDb3JLhcCcAaJEVM+xVLOxxk+Z/cpuWqyxHIPEwphyqA2PXQLb20+3gw9EqImllUz1/vdvBmlSn6NXajqjP3GvUO0tluqbeXAShaI5E9aJQ7h6zpuuMI2baUlqm7pm9+WdUd99dCweEB8jpjFgBZKJGFUY8Fumfhe11zYRc5qMIa+hWV40tCDLMB83zY1D5epN0L1XOpOZAVptaQZrqj4j8OSXLvYm8E0jS80LtMk4FiTCvDQG+/vvvYqAkV62GDIDKjmOvHo1wVhjASgNWGVuIsQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(366004)(39860400002)(346002)(376002)(396003)(136003)(451199018)(86362001)(316002)(66946007)(66556008)(4326008)(66476007)(8676002)(83380400001)(478600001)(110136005)(186003)(6666004)(9686003)(6506007)(26005)(6512007)(6486002)(38100700002)(8936002)(44832011)(4744005)(5660300002)(2906002)(41300700001)(82960400001);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sbktsNp8ITBomuntynuEqoHTaleSrnQoB+LDl8I4ad081zZjb3Yun+jDmeLd?=
 =?us-ascii?Q?5pxsr7LmnRQHzzVglo5HC+K+M+p0tXzNh3lGEg/B/BoIH05BJ7/GUcVkOIQ2?=
 =?us-ascii?Q?Id1q83iayaNfeyB6qXDY0VVaQ2pcp4QSaugaQl8tkByrEyGC1lIYxwV36IS7?=
 =?us-ascii?Q?fONREQ3YA2IsfYAXf90rupuoFgihlASM1kuw6dkFhTn8xHBRyF390QWngpFc?=
 =?us-ascii?Q?uweAJngXjCRNvURkJo6MarAcb1OfLvmBR87914pxZ9khbtUZf1uaD7mzX+49?=
 =?us-ascii?Q?hCL6hPo+SlvaeSBcK2T0vN/ncTxl8MZga25bFJk/nNNbFHGv8hGSSBXPZSR1?=
 =?us-ascii?Q?PPVJRhFcEQBP11MT5FSltCkBFo2ovVmS1h3xYdz/jo1I5ohx9O8mwUMFJ8Vt?=
 =?us-ascii?Q?sM3dV4xGLUalV/a2e7NWC4ioUVA1kZ7mDYW85zwJ78j+fdPfOHxIsrQmoPtg?=
 =?us-ascii?Q?4kD/qOWC/ieNnHKrc4hzgeAxgEg2RjinyC49/fHeje0CGmb+S6vB8V7yrvaX?=
 =?us-ascii?Q?MCxwFJv/IEmp5YbmZVa3itou7Ijmv6cBoC43gYBVZlvUUMacXk/7LH2EuwjN?=
 =?us-ascii?Q?zk/0VKtuvgJ7EThDP0LDzWdqhkUs5n6pXQsayS7cZ2ptfH2ebyb5HsUXhGy4?=
 =?us-ascii?Q?ffvpMSaqK5QRDQGp/RZ97BpEOAl25SzU3aqBBlX7vwfNWLUtoswU2BoZG18W?=
 =?us-ascii?Q?H3BQ5knOQ4ZVnoXQE0fdAG1YkUhSUrM/JkCRwI12iqe/n/oS7NsfaDvUoAlp?=
 =?us-ascii?Q?zeiF5Ox0wkBEokDa581Xyw95lMLpN8hrFl/yzYdddSDjDNbV25yuxq3k20um?=
 =?us-ascii?Q?f4J2dO96T5tbojf7NCVyeOGPfb7TOW8HO7k1zlhm4DaRKznYj2/iU8Sqw3qq?=
 =?us-ascii?Q?ObCfX11on7MTiyVLikpW+Z5zr8X6003hCB48sNSwMRO+GSe27D7VVBL517iM?=
 =?us-ascii?Q?0q8KCSUK61peX14XAzCe5Dp9YD2dDp7nlTgdJR0zIoTT5s5R2jRwicTrXsD2?=
 =?us-ascii?Q?mlFco24eI08TBSSuKDpNcfRBQ4wDMlXaovVD1+LhgxNpKpwPwzwpmS1Rdmb8?=
 =?us-ascii?Q?HwutnEA9LfKaMj3jz5E9pr1spD5NcAsX8oHIGc8/g20ZR0hOhBKucdPYDKsA?=
 =?us-ascii?Q?ReAS58pugz3q74NzY9ZbmaP9xIRmLFtcL6O6uZADl0QVBmosQUP0T2pQe1J6?=
 =?us-ascii?Q?X7pihZdXeFXFz53Zi5Ht1+kYQtWlJz0isKltYegtH3M7iLkYlXeIv0SvRXAi?=
 =?us-ascii?Q?zh+KDIUzFZHwLCQ6GyL3r7wT33a34sF4HBHk55Ez++utaBNIXlPW/+x2Cjb7?=
 =?us-ascii?Q?vjYHg7Ma8kIcT1qki9x5bORlz2KxJchQEnoSd+pj66mMYMUI4cG7Ifk+iKfZ?=
 =?us-ascii?Q?+rP+0E0+DaSb1vKevbhNNtF9DkrBfQFfCKrbJBPEFqtSc/62Yp6dKJgOj8hO?=
 =?us-ascii?Q?al+uAuRH4CD1rJGWETOvXofvk8Jv/5VaKZvtQPDaj7aXtyaUHhOhIebKV0zC?=
 =?us-ascii?Q?4xPNXqVEvCS5B4cQNG7jnFuaPyBnpKp+O2NpFwhHGWjHn3xJk2GcOwcg5yyM?=
 =?us-ascii?Q?ybUTZXDyhwX9+JeGQ+PT0BL1wZZvmcWexSd0zb9j?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ca6196cd-eb36-4d84-d83e-08db2778b2a9
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2023 06:19:15.2590
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0jzMddzBekEqB5ZNKtNF1VokehXFd8NTD8LR9LjOsfuR45X0zWjMj1GQf7gghq6Z0jdQ00l301yIFwcHETOAvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5413
X-OriginatorOrg: intel.com

Julia Lawall wrote:
> > Based on the flow control I would do something like this.  It is a bit more
> > verbose but is very clear what is happening.
> >
> 
> Ira, what do you think of my suggestion of
> 
> err = err || qlge_fill_seg_(...);
> 
> It would avoid 40 lines of ifs, and would still avoid calling
> qlge_fill_seg_ as soon as there is a failure.  On ther other hand, I don't
> recall this being done elsewhere, so maybe all the ifs would be
> preferable.

Oh sorry.  I miss read your suggestion and I thought it was going to
continue running qlge_fill_seg_() for all the other calls.  I read this
as:

err = err | qlge_fill_seg_(...);

Not sure why.  Just late I guess.

Yes your suggestion would work.  I do think it is a bit odd though.

Ira
