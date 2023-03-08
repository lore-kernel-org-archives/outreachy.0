Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B969B79F5
	for <outreachy@lists.linux.dev>; Wed,  8 Mar 2023 17:15:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1678295713; x=1709831713;
  h=date:from:to:cc:subject:message-id:references:
   in-reply-to:mime-version;
  bh=7bv29A7loRvLZXbwudD9nIKb6gopJxZk84wc6PLcZ8o=;
  b=cdqUcQpk1XjXp7AvGLTfrnm68ADyO7Qx1SXjQe7nNSz5tJAnuKpcuaem
   jHn1UQV92qXo7XSYWIjWcwk5fRWiD8GMBOG9N1Q93c/f1C8coRW5Z4UUq
   kgd4o/l1doGaKaF0MNdnzC2VYGtpeedVfdxErMS4mOIT1fZCUUZCC3CE4
   d2819l36gk8nbBGtGayBijXXEa6RTMAqjasQtMnoxhdWVyDxsVhC+gWkR
   T44XWhVVRb7BK7skOcK02h+lRq9Z95BA7OKyLGnCF1eS9L3DYE+5/hA2z
   w6r2+uaCZPlLqtD5ezt6MOo6HbOPOmZvaCO2eLsxKCX9V+EBZEBuMDBTO
   A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="334928462"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="334928462"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2023 09:13:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="745975806"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; 
   d="scan'208";a="745975806"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
  by fmsmga004.fm.intel.com with ESMTP; 08 Mar 2023 09:13:39 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 09:13:39 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 09:13:39 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 09:13:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SRrY2LJX+W/8t8yW8+EwJh+1KYgbQKTXeqc7hfgxFWG9a3ezQw/AeWhBCGmkSKu5X3F6uVZ4bUYliLDLa61pt7EyOpzfeiDyWFiPtnlKqA+UU/tBC3p8ZPFK6utGVlkfX/4gTF63OfMCApkA9N6ZKVf+tP43MZWbmOWU0a4vCEiT1GcuPsnDtVF71PsCfcWxsyB3TMCxgQCZRwwxRQK4xrbB23bwrxNdHHiyAgJBoK7JcYBaF4I7pWpEOGoUm29d/PdbxMZXYlrG9ARDSR130SaUNmcgdRkektDsaXUk9ObZ5JqdL2MWo+Ub1lBrJut0m6mmhrqdq8GyZqpw5i6efQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XFJw9jD2bFHY+mAPeGdycLd0RY98bdsUJlqRzQ81ZBU=;
 b=JUCVcDEA2IdyDrFsxdSyQun7FHH3oDlwR4QB81mfm1W6fbTjKkneIf3UgJIAdMr8J/ZzuDzTlkw18u7EXIV532kBY0UMMo16zOTk9xOKBviMCGHcT5q0COD1YVZAx1IzFcTV/YSq5mcP9jRa4VFCVUQlAvaQQ1AMxMAKpLAeX5+bcyTf0ubRIzh6JOiO6H5L828xQ/4i0v+wlQNw6nRCJ6x+ordPukoyOQhI74zcGRorOo1IrhbOVdeU/0UnIZijsdy7vlu8ILx2ibN1YTvXg1CdJ65wIt5zayxyyStfgBFUqttU4PAoe1LuDWj9x4tDV1dHOB2c++wE9/4fSrPUpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB6733.namprd11.prod.outlook.com (2603:10b6:806:25c::17)
 by PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.25; Wed, 8 Mar
 2023 17:13:36 +0000
Received: from SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff]) by SA1PR11MB6733.namprd11.prod.outlook.com
 ([fe80::84dd:d3f2:6d99:d7ff%8]) with mapi id 15.20.6178.017; Wed, 8 Mar 2023
 17:13:36 +0000
Date: Wed, 8 Mar 2023 09:13:33 -0800
From: Ira Weiny <ira.weiny@intel.com>
To: Julia Lawall <julia.lawall@inria.fr>, Sumitra Sharma
	<sumitraartsy@gmail.com>
CC: <outreachy@lists.linux.dev>
Subject: Re: Introductory message
Message-ID: <6408c23d58ec5_f3f4a294e1@iweiny-mobl.notmuch>
References: <20230308114122.GA312977@ubuntu>
 <12ef38a-fd4c-947c-4ea3-a641ef5b1310@inria.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <12ef38a-fd4c-947c-4ea3-a641ef5b1310@inria.fr>
X-ClientProxiedBy: BYAPR06CA0013.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::26) To SA1PR11MB6733.namprd11.prod.outlook.com
 (2603:10b6:806:25c::17)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB6733:EE_|PH0PR11MB5902:EE_
X-MS-Office365-Filtering-Correlation-Id: fd3c79c3-567c-46a9-7183-08db1ff8740c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LZgg72g9m4L3b50G/Z70zhMjPrF4Ref6w7xCkjpbjI0mCnrHMnmpbaPS348dyya+bOuXT7b84VfXimNC5XAzXgJTI6Fo5Qf+wyh0BMslmQlArBrJ3Wp7M1hi3oM/H4VVA6sB4qmSZ1TWf1GayUkPHsY+NM2gMqdMQKDGdV1CSsibrUYhNar/4KgxofzqrippFiFWSXR8EZ6qvvS8vQt7qUVsU9BeWIK6CaAUFC1PEDT2dsqKeISumSfopgLtQvbASZXwySTjFqCif5lVOs2UnIeiKNhMaCVHRls3vxUP+JpFV06NMaWnqtjRkrpU8yNfqj9zdrYUa4TLQ5rJYw+W8dGz/EUM4ZQLdeCidSB45jK0sMJHUClXO09aixM3BIBNO8MLIgXGY2n5KwDnAPXMcLUOofCQjy9dK2Mck4uY3ZdIV7FARVMElgcomwwQh6mpNr/oObI09pl1j3lNLJL8nD1tu8Z0/WrnRhPvOPFCWYP+lYrudvHC9VAQvHS7n0XFZjZwpcKG1EjiaLXOO+Tr4Y2Mzj40oXLGIoPLXpHnVu+lx6c7xwrtU5zJhn8q4EoNd4m0Sj8mtgIa84zDe5YKyw6Pi1dMRBT8rSmvf87mg8VVgl6mhTsKVkpNUFc+1SbcuoIAZFMevrUhxyg0iKLyIw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR11MB6733.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(39860400002)(136003)(376002)(396003)(346002)(366004)(451199018)(9686003)(8676002)(66476007)(4326008)(66556008)(66946007)(83380400001)(26005)(316002)(6486002)(110136005)(6666004)(478600001)(6512007)(6506007)(186003)(44832011)(38100700002)(82960400001)(2906002)(41300700001)(86362001)(5660300002)(3480700007)(7116003)(8936002)(66899018);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zovUFTtrkW/u8M58OlbX/tWqEVHOoQ6CIcr4516Y4TKCO6XY/NP2tpvVf2/K?=
 =?us-ascii?Q?i89ZEldqsYhyq9FGOG6hspnJQH9GDtd4r2EcycTgf6sHGPLcqpjAIK5EOh76?=
 =?us-ascii?Q?ekzKnj6z9XZocu1tzhngLMORQPenu4LUA+7S3gSqxf/8r1svO44U8pGS91yz?=
 =?us-ascii?Q?pwFfSsXjbjLT3wXbgDrY0MFJ7+aDxrIgX9Y3xa0sTJRCsJeUPRe+GoIZhG/6?=
 =?us-ascii?Q?5cEm/upn5cgRPB/VjclZ03XMhTu5z31ULuj7nk8rEl5kVw8X9LoLFSglwTSP?=
 =?us-ascii?Q?9pDy0+bdi3V29be0K0JRZ2DQ0FB8mkZpMNzDBjGH8lHz/W6LMTxN94+EgtbI?=
 =?us-ascii?Q?6P5nwhRu04s5MhNkgWfp5K8VBIahq3f1rWPehkuYEncN+zBsEu5ys1lDh4nW?=
 =?us-ascii?Q?TdR0shPzwDdk0lcIufHxqDlIceYsMjjgV8pbD6jDBCd4g9hoA1TvSWHQwnCx?=
 =?us-ascii?Q?SZE4XqK6mkK7CG29npTGJZ5ga8LCyiyjfqqPZUsTJM5PpBiz7mEgEwWZKogr?=
 =?us-ascii?Q?7Brlwwj5oX3kvu8i3CiXh3Y4GKRcw5BgoDsMpY5s5S/wDP2qjk5XuZZBCEWl?=
 =?us-ascii?Q?MJtbotPZJow2tiazH1rzQyJO+pOLqgfmu4RQoJ1WV7WCQqUL+OYM/14cGFBT?=
 =?us-ascii?Q?hxgck1Hk9NK4zAHg8FHYmlqCFVjyN6G2ISq+77w+813jKQNzxPbwmGeY7LFw?=
 =?us-ascii?Q?OH+YFGkQ8RMazTz7wZ52XCijtWUPnmot/NIPV/479ZSO1JSojQjpTYrqJomk?=
 =?us-ascii?Q?Zibgh0+YmaJ7zGCf1Fc7GoAUjJzEW7vWbzAqMSUpjxDFVdh+YL5gwgclAifd?=
 =?us-ascii?Q?NAeuYiJD9Y1EeClpnNmUo4VCW44bX5l1qZmXl9vnFaVxbKBhVpr8MCuz7xcL?=
 =?us-ascii?Q?aQb/pGn2BENxHS4ItGP2pQ3vV8sipKeIVlqFyt5lpKApd2MUludsaqsMLMBt?=
 =?us-ascii?Q?jXBNLxSD/z2AuL5L/rYlHAfFjR1+RP4fZP25BtHmFICa6OVpU4/58qxZEbfQ?=
 =?us-ascii?Q?hmebxFza2kZWbJoxtU0THh/m6GFJZshMJlX5FE4QUffZrvCED/bjQnPPva63?=
 =?us-ascii?Q?gqHLhpg61Kdrl/+bxyiEUynFryMazvArDRzBWecnUOo1Da4pAB4qzpXd5hQS?=
 =?us-ascii?Q?YVKa38mJAqis1z1z80INO4LkA6t1WDYf5krwLuU1zQ5oNfi/nDq5rBTnI2vs?=
 =?us-ascii?Q?N/HLZ2cUSAAz0gtz0BjgAo4IlziGQtCYCxX5uERqmkuz3BdB5OAjTHovtxL/?=
 =?us-ascii?Q?+LkYflvzHyMUmQTCPMQqxFhI4ItSdVKMkVUIiNOhsooqcGwFWEp3Nrfd4x3k?=
 =?us-ascii?Q?1ZHgNFJqrei93GbK694704DgnUavtPcvMZXx6xG9ybnxnMpgpFeH/7ufyY1B?=
 =?us-ascii?Q?czODcwOlvya0djcvC72s/fjHOi/vAtIMGE/TDqi7dSWyihgq/mShg7BueDtl?=
 =?us-ascii?Q?LjS+c4rSub1BMjE8BEIketFrGl0zyo3J/XrmbFdUrrL8/c4QneUonT3GTa1M?=
 =?us-ascii?Q?vFZiit/36ENjWUB2KassWbNIaVRg/zcGspnqFFFVIZ05eoSuzGwE/AF4o9g7?=
 =?us-ascii?Q?DBWWZ6XwEbsPecDsVB+Qdc2wsdVBMj8aaEcCZrP4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fd3c79c3-567c-46a9-7183-08db1ff8740c
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB6733.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 17:13:36.4254
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Q1RLZfPmkbZZCgyYqCWrS2kCGb7GAoVMJM15bSKhOp7BgQzsZGWPuzIcNBq+GE26m4EW039UFKaYZEEpoPqM7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5902
X-OriginatorOrg: intel.com

Julia Lawall wrote:
> 
> 
> On Wed, 8 Mar 2023, Sumitra Sharma wrote:
> 
> > Hi I am Sumitra Sharma, an outreachy applicant. This is my first time
> > applying to outreachy and linux-kernel. I am currently working on
> > setting up the enviornment. I observed that building the kernel i.e.
> > running "make -j2" command itself is taking a lot of time. I would
> > appreciate some suggestions on it.
> 
> I think it would take a lot of time...

Also:

-j is an option which chooses how many threads to build in parallel.

If you have enough cores on your machine you could increase '2' to
something larger.

Ira

> 
> You may be able to optimize your configuration to what modules are
> actually used on your machine, rather than everything that your distro
> wants to offer.  Maybe make localconfig.
> 
> > Also I recieved an error stating "make[2]: *** No rule to make target
> > 'debian/canonical-certs.pem', needed by 'certs/x509_certificate_list'.
> > Stop." to which I edited the .config file as below
> > #
> > # Certificates for signature checking
> > #
> > CONFIG_MODULE_SIG_KEY="certs/signing_key.pem"
> 
> I just have "" as the string.
> 
> julia
> 
> > CONFIG_MODULE_SIG_KEY_TYPE_RSA=y
> > # CONFIG_MODULE_SIG_KEY_TYPE_ECDSA is not set
> > CONFIG_SYSTEM_TRUSTED_KEYRING=y
> > CONFIG_SYSTEM_TRUSTED_KEYS=""
> > CONFIG_SYSTEM_EXTRA_CERTIFICATE=y
> > CONFIG_SYSTEM_EXTRA_CERTIFICATE_SIZE=4096
> > CONFIG_SECONDARY_TRUSTED_KEYRING=y
> > CONFIG_SYSTEM_BLACKLIST_KEYRING=y
> > CONFIG_SYSTEM_BLACKLIST_HASH_LIST=""
> > CONFIG_SYSTEM_REVOCATION_LIST=y
> > CONFIG_SYSTEM_REVOCATION_KEYS=""
> > # CONFIG_SYSTEM_BLACKLIST_AUTH_UPDATE is not set
> > # end of Certificates for signature checking
> >
> >
> 


