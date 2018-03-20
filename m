X-GM-THRID: 6532398432427966464
X-Received: by 10.200.46.119 with SMTP id s52mr11216307qta.32.1521555637644;
        Tue, 20 Mar 2018 07:20:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.77.8 with SMTP id a8ls828188qkb.3.gmail; Tue, 20 Mar 2018
 07:20:36 -0700 (PDT)
X-Google-Smtp-Source: AG47ELszjT2EjvCU/FBIQlGtWbOn6PxNWK7TghNRSTAe+rJ/9S2Xn+ss0O7el6fCghddQss9hZ8C
X-Received: by 10.55.105.135 with SMTP id e129mr10957379qkc.43.1521555636802;
        Tue, 20 Mar 2018 07:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521555636; cv=none;
        d=google.com; s=arc-20160816;
        b=P5An1MyejQakUKI82IjsNUs7Ik4tBg2KBIVZFmYGU/UEuLdbXqN3DCF+j+abyZOxF9
         qpBmaiLKtvzSwGHbpxbbl9F1VZLX14O6SAlgt8mnnkTh4eJt+IgYycZICMtpb6oZPGZd
         drq3UtOmipyNfT/VRCc/wN2AuvsDgcEYyd6g2KoTlDOjg36lsR7l7XQjHRA9ZIeBDlu9
         Ed7WidSbMV16btkHWJBnVcpyKhShk1iYcrTDQInDvPdHWAMJM3bwP4OmDK0z1JjxXZgD
         x/vnkKT3gf7p72PcTHK9HAl9f6zyDyt6ES4PEEs3OcmL9V/5+gYQZtSAOvVdofiJg+vJ
         Jo0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=spamdiagnosticmetadata:spamdiagnosticoutput:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=gyhpHvGKIYkve3xaXj0BZPDuaSndnL0SkqIKGBi3zrc=;
        b=lalLf+kZkkCEhjg7vSL7891aJC3tfI5y8/cXKcCWhlaBFxMc2VZNXJo2IzvN2vaYf+
         cpP3sxxR6dH8qwQjAHVbcz3+hkhNuBBM7TDIhoMmaDkz+QpTrIQY515d9ZbVKvJSsD47
         Cw6zZH4opAh3nVqIm9Aw31l0gRgfYViOuEQ3Cb3NwlqsrCEqE5E8NfXUpjXXZzym3Jar
         MeWwmAG8UfHegYRCwGU4baJHsPNS+4DGw/7jHGtWOWAc3JRQ8NjlaWiaucstlFijFfWo
         PpLtBDFAn2V2IU1gAt23YqI2yWjWCSSJlq22f8CL0nO+N0t2TJjHzL6BqqMXFRKG34J1
         d/eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@onevmw.onmicrosoft.com header.s=selector1-vmware-com header.b=XLio6O4I;
       spf=pass (google.com: domain of syeh@vmware.com designates 104.47.38.77 as permitted sender) smtp.mailfrom=syeh@vmware.com
Return-Path: <syeh@vmware.com>
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (mail-bl2nam02on0077.outbound.protection.outlook.com. [104.47.38.77])
        by gmr-mx.google.com with ESMTPS id k20si95805qtj.1.2018.03.20.07.20.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 07:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of syeh@vmware.com designates 104.47.38.77 as permitted sender) client-ip=104.47.38.77;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@onevmw.onmicrosoft.com header.s=selector1-vmware-com header.b=XLio6O4I;
       spf=pass (google.com: domain of syeh@vmware.com designates 104.47.38.77 as permitted sender) smtp.mailfrom=syeh@vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=onevmw.onmicrosoft.com; s=selector1-vmware-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=gyhpHvGKIYkve3xaXj0BZPDuaSndnL0SkqIKGBi3zrc=;
 b=XLio6O4IWvogdMMcqYt4ktA9Tw+/vMuJD5/dqW1dIbmCyL+ZCldiY2NT+87B08sDhanYdrF5FMcsCB45BJNQhDf70oQuXgKdgiXHDBUzUL2kNwSMmj1bNVCzNI2B/fjjtebNxSzlygWadKFV9RSKW2uVXLQO05r0dxtQMzMiO1o=
Received: from vmware.com (66.170.99.1) by
 DM5PR05MB3290.namprd05.prod.outlook.com (2603:10b6:4:3e::29) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.609.6; Tue, 20 Mar 2018 14:20:33 +0000
Date: Tue, 20 Mar 2018 07:17:12 -0700
From: Sinclair Yeh <syeh@vmware.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
	Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
	Thomas Hellstrom <thellstrom@vmware.com>,
	Alex Deucher <alexdeucher@gmail.com>,
	Daniel Vetter <daniel.vetter@intel.com>,
	Gustavo Padovan <gustavo@padovan.org>,
	Sean Paul <seanpaul@chromium.org>, David Airlie <airlied@linux.ie>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	dri-devel <dri-devel@lists.freedesktop.org>
Subject: Re: [Outreachy kernel] [PATCH DRM] drm: Introduce
 drm_global_item_{get/put}()
Message-ID: <20180320141712.GA12103@vmware.com>
References: <20180313120205.GA12094@Haneen>
 <CAKMK7uFhPg88FAB6Q4c7VkLu8OvNdwpSyKtH9QJw2F+WwcxMxA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKMK7uFhPg88FAB6Q4c7VkLu8OvNdwpSyKtH9QJw2F+WwcxMxA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [66.170.99.1]
X-ClientProxiedBy: BN6PR14CA0008.namprd14.prod.outlook.com
 (2603:10b6:404:79::18) To DM5PR05MB3290.namprd05.prod.outlook.com
 (2603:10b6:4:3e::29)
Return-Path: syeh@vmware.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b191ecb7-b319-41cc-cdbf-08d58e6dbec9
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(5600026)(4604075)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);SRVR:DM5PR05MB3290;
X-Microsoft-Exchange-Diagnostics:
	1;DM5PR05MB3290;3:j2RdNmd+DfBw3BqbaJlvHMG2bUD1uAK/pVssPUWsfIfgjFL0ZpbTIsXlTWRmXgVegVApfmAh3oS1Mhp3Jgnm69x6tzd8f9aPHdRME5rVklrUaJ2Bf80UJ5CMpF7hEUT79nJtd9JM2uDIO5jHx+fcrW7OSUsZRfv5sM+Gu5VauTtJVbPVTVWzUIGmBVPnSCzU8O3jXizq7MtAZgvOEaX9IOvZ8q+K40vl4Qe1Y8Vis3qEFqAHUHOJ6rMNPNPqF6T8;25:CESh2T5VucQrqqjNnqvpAzuzivgWXBUY7bNdftT+4l7Iyj++qqAL4kZ771QYpfesw7XEC26IqeDCBmQeyA+uxrMb9QEofBYLsfSl8cGCD6B743/Nmi26CdpFdyJgp2mYNxHx+ckgba0sAGMXVCgFThIQId2VgECYdoOOKC1RRk1sN4/zR+bAL3KvmZJWMxe3bJO0suCkq/XKVCn/05I6GhNhSHpgJfaaY/D6tqCuUxXFSNgoEgxWIebKboCJ5cE27vWJOSfAFOBhw/3NLh75NoOd90PxSacqkIY0RTM6sPrlv5mMthTq+ir3zi7C4JdL9W34q1Tb2XaOZJTfidLsZg==;31:V+th+VX1iFXXxXjKvbKyxXAKcvcwNwrqPWAe79+aQe9hpss8///HEihmNBch4dRSde6LrRc0dd6gqnn+oCS4Riv80qBGdxdPQQh/tm30g98OgpUiAHTDlf/U5opR82ZS+6mVqmVfHJ51sx0EBk+wt5Vz1mzo5+wxtUBqi0JkIQcLu6gcWx9YeNC8FM0oGc9PeuRTf2JYG9uelRLFabyFugqDNAOFWtPgDufHHea7tFM=
X-MS-TrafficTypeDiagnostic: DM5PR05MB3290:
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=syeh@vmware.com; 
X-Microsoft-Exchange-Diagnostics:
	1;DM5PR05MB3290;20:R49e6jkj88aPyAu/ordOuIYuQNtybbAamoLlFk/iU74DF+nCSVlsVOtVPZihxc/y2SOE2hvPbKZIQF+aV7h0fU3W7kQPddKT6XLHIAtJJJ8eotXpDSH6fjRerAzpg70VkkeeRICDFWZ2k8T72s+qAvZE+WqhtTO30DvTefPwpEpsRhNqwH/yeoNCG9SUNRGMBKRQbUUQuv3J8EW6N5pi2vluBjnSexA8QVLAMWSAX1xHtA6h1UpwKSj4mq4B2k/CEkyPbW0N5B/Qzb28fIcDe9QaBU2DuHLfAjCx7FJYB+Mqqy4725ze+j/QCzxMzAZsuXoBGgjss1QgfG0RnPsMu5/rQBYdtRYn00HvheZ7ezuIsyrVA6myTuqDhK4vAa5d3vRB2UKtHP0PBTzjEyL8LjxYv8GlW1luwG/KtyH87HzMOdKbNtvkeWVD0RTPE1ELxRCtcD1hlF57j6X7EJyWsOA4kNv7P13j4LrGc3SoWhT0D9ICIDtm9Rv1nxtib7M1;4:b8iDbQP5wZgaryLNSWJzIJMXgoClupSxFNEGzGAMOz7Kk2kZ+E+0mdyjExZKrLYW0eorVuaNMs1WU5r+veo6HYN3s4KiCOe+E7sOeA71b33st9z8dilOCs5afG+JHFxuQQC2JLCUceUOk7dVQJxiXAKJeyYeoa+/4qz5PC8d6S3hFipvXUbiJi2IY83FToHxKczqteSf+e78Lc8bOXk7DM793BM+eXCGacDP/mnsSfpOFXpUWd/9XFuW57BnQb0N/3zVUlE/cTCQPOTUbVSYn0RU85J/mAvF9yyrA3Ao6SDOEC2pGPvo2DuqtKXWJ0UInuJ9wmaD24UOhxMZIPg8E9arH+b1iiVcYIoBPnv0Q2sQVlU5trYn1RhndkGpjIBF
X-Microsoft-Antispam-PRVS:
	<DM5PR05MB3290109F911101EDC6BAB9EBA8AB0@DM5PR05MB3290.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test:
	UriScan:(10436049006162)(85827821059158)(211936372134217);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3231221)(944501311)(52105095)(93006095)(93001095)(3002001)(10201501046)(6041310)(20161123558120)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123562045)(6072148)(201708071742011);SRVR:DM5PR05MB3290;BCL:0;PCL:0;RULEID:;SRVR:DM5PR05MB3290;
X-Forefront-PRVS: 061725F016
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10009020)(39860400002)(346002)(366004)(39380400002)(396003)(376002)(189003)(199004)(81166006)(81156014)(66066001)(53936002)(50466002)(97736004)(6246003)(2906002)(47776003)(16586007)(86362001)(575784001)(316002)(69596002)(76176011)(36756003)(7696005)(8666007)(5660300001)(33026002)(55016002)(6306002)(68736007)(59450400001)(7736002)(54906003)(39060400002)(58126008)(229853002)(966005)(33656002)(386003)(26005)(52116002)(23726003)(4326008)(3846002)(6116002)(21086003)(53546011)(105586002)(1076002)(106356001)(2950100002)(7416002)(8676002)(6916009)(6666003)(8936002)(25786009)(478600001)(186003)(16526019)(305945005)(18370500001);DIR:OUT;SFP:1101;SCL:1;SRVR:DM5PR05MB3290;H:vmware.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
Received-SPF: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;DM5PR05MB3290;23:JG/90tpXqbWoR5qNupRGF48s8WGXKIamKkZUkPJ+i?=
 =?us-ascii?Q?ORE/hvPNVFID2za6iMewis6eMxhUdLe90ai7HP+4Eym5nvniQvNmt91nChYw?=
 =?us-ascii?Q?OgNcLlvwK+PK1OdnFP6k2RB4Uxxj5VnhWVV+so3pQ4ap7Bu3+UcbhO5zhwPV?=
 =?us-ascii?Q?/ruwaJGiqz8iO6DmF0cwvVrLEpX/Ke5HrFcvpY6knKUpeBgTxiWXFYAv4mct?=
 =?us-ascii?Q?GKnEaPFNi4jC54hqXteAuNHlejUpnvoiixdukkkUO+htXJEtAT/WmX8hjVaN?=
 =?us-ascii?Q?DRvxj2JX1nj1GyCQ0Tl39SGRf/ioPpESt1VKES7DvI15TNNCSEfiE/MvoyEk?=
 =?us-ascii?Q?FxO4JyCZpgQg9LTteKxoRtvFNP4Pvvtv28uRCLVTdL1fuvxzPmHr68yHw2gM?=
 =?us-ascii?Q?eJfOP+iSILDSDhj0+MzgljMzN2xoVjIuSXOv3XIYI3NX2WLktTlbj2XQuHAU?=
 =?us-ascii?Q?t0kk4i5D3suGTgxqUEMI7rVNjZ6L4/x84GtjnOHqJjqsHY71jwZvmq4VZpxA?=
 =?us-ascii?Q?n/MSt2+qSsdCTGbZOtXpoawmnzQe5dyQ1kPI7Z5/HqOaYBlbnWj0hJbrSUkO?=
 =?us-ascii?Q?JoVUwQW6MluWJrXR42Ziho1XZRokCgO8oZRxsUpP1DXe9pvJCeY2kT+Kifwf?=
 =?us-ascii?Q?WBhLWZ8WYG8G8QDD6yoFrWO4Mg2ieTZdw3IAYR6l9APXTmwLTu2Au7AgoAkm?=
 =?us-ascii?Q?WKJT1GHB7m6NMqhyhwDJRxC67kXGDD8ezkLceetGu0LxILs6D4mh5WfbUc28?=
 =?us-ascii?Q?KEROmxeZLe/b6oZvkhOTdmFrB8/OQSx1+DUkJmFj8KZwnG6fOb3RU3RWGKKf?=
 =?us-ascii?Q?NNPTCeor9MdGlsLlZohR51jaYTD2zmu5UXRCkRhzJU/hdBzFAZx19H+ERf9i?=
 =?us-ascii?Q?eqs46qZlz2w/IFwqRBRfH7qbuCGo6JdPf/XayU2b0HZrKxCNN7/jzn/qJr0f?=
 =?us-ascii?Q?R/V7cs8mVwegrfYsnUdu3XmETiOG6J7kKFjZJ2EIeP5rMtxeSjfp8zypFEyH?=
 =?us-ascii?Q?+hsXkluYvenX94t2HpiDatSJPHDt7BSDQpZOwjaZm0X8Zr8CfyNP+K+Py4Ue?=
 =?us-ascii?Q?YsBIRjwspyVcsR1Hb513x1GughKq7xfIE6iwl/4sdc9+rc1RouytJ7pvmGJ8?=
 =?us-ascii?Q?amLkjIDmI+CjNnN02v4oGy801ef5vL8dLmHGFizSWgDqbTICdHsLZ80Zz7QR?=
 =?us-ascii?Q?l1lGR1ymsUEp/Zk/IWGysp/iNMROYPiTZHZC52ACeY3LucdGoCxrTX1LzU4V?=
 =?us-ascii?Q?q86c89lmr7CordAy1PtHmMjeXMkxlbP1OyykmY6hN1nGCw0wajQwF2wfsFWI?=
 =?us-ascii?Q?vT1kMy7EftQpIXvn6ufnhCQn7S5/e64IpU8dV2vUJLSf69MQfvwBSWu7GL/Q?=
 =?us-ascii?Q?EKAliRwf7rwLUPJEg8nJZYwKtZp5xz4wYGCjnaVwNznijDvx9vbRpb78Pf50?=
 =?us-ascii?Q?fxI8jKNjA=3D=3D?=
X-Microsoft-Antispam-Message-Info:
	DfaWMBPD29PZHm5bj43neOwdNgvRRPEcQBCts4T/tq89yy+C5RNdnPl6Z/MIMk3SElkTcsysMSrYLAXYRU29VdZKuof8+5KUN8naC56gCrroDeJjc3uaK4b1an2n4Bp3IaVwQO4PjNmGConct5diIDfvU6LTvHuJJJwpWkDWXY5EzHlaiDR5b8nCmVkN47z0
X-Microsoft-Exchange-Diagnostics:
	1;DM5PR05MB3290;6:UWrltyAyQ/6tzOaCypEJskOc+xVzusL16jB6yZlkR8u2Ay9X+9Qz3yXSWfyiXgL0e57qNpyISSL4GouczQ1fi5EXpHfMY8ZM0Ri8klLVxQcc0mQsKzSokWcvpHzjjCqHg46cBuglhhf2QKObqMfreQCww8UU7KArH735w8EGWm4DzntjinMqtD+1ulIFz1NM5Po44DVhWn0vkPyHD6h0QNK3Cm8JKqUz4/BpuLNGoqDkUhwLVR4whBd+f/1hAjWMsnvtB/jI/Y3S0QW+/BJTD34RBgD7l6t0Eo0FKn60DPwQvMsLU5S85fDZGM9QCtySsLqwx6jK818O5ChJ3XbgRRiHMg/1gslzurvHJ14BeSxNDiVm2+O5RNRClQmpE7I5AtPGnq7xZf8qT8KTHwAqPIHHpAESV1ZmQeqcKWXkqKZFXeRz8NkLAw99WiWBMfO7+GvpFCU1L1o9MQ5O1uzOaQ==;5:4/A7BQliI38cyRyeUfEkxobYwI1YClHyYVs4j3YB2CuUVf0kAx82eUKu790fHAVGykm+57OGys/77spsEY1oB+nxv+6RsZo1WyjSyVp/xclw8uMr8J393+2BhKIK9LB3X7W2Nqn9vOH3HucHXa/FHe5u3blI5YJkuSoLdi4i4eI=;24:N/XKZgjBNhwZx9c3zUzxKbNz4UlsXQ3fxnNS65kHp5uwLwi/1INMPpc9X30TBtd3r+0uZoxYo3yRSJSszX+dU13/BEuJP+PUSB5KTTpJJgc=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;DM5PR05MB3290;7:9abd3z2e8suaZKmaZtbt05GP8krQZ8NsW30hOf2AYGZ/+RICIRwwia0d/8RmRXW5U/gt5Gyb9gVuXy2ivm5O2NlgI8sHjz0jgHnApvBlNtS2LgrX4U/VBaaAHAaNV+6b7K1WwECdVM7E1HlSja8MnsZykQ1Uz8OoXQRqc/KlWn/RDztjUDg/JDO8lhlFox36HCjF5D3MLWnADm/34OmDOHkIwSXi4hMbMYjeBy4Qb7okYkV1fEnWIi3Mplt6nfAU;20:zO3UM8PT+x2bXJvz7MIRHuLE5bLIZdggX7v+0p5NlbTQoAwPXZ023v/b1+ugq5RtDlWufplx2apX4uvBQVVU7X/kb4RsZfdqMhn8uSNZ+Ca269NRVwHMb6r/OQadJPSUphj577BxWlxuULvowCLCrOPzWvYh1YR+MQJiTBiZheU=
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Mar 2018 14:20:33.2389 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id:
	b191ecb7-b319-41cc-cdbf-08d58e6dbec9
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB3290


LGTM

thanks!

Sinclair

On Mon, Mar 19, 2018 at 10:06:20PM +0100, Daniel Vetter wrote:
> On Tue, Mar 13, 2018 at 1:02 PM, Haneen Mohammed
> <hamohammed.sa@gmail.com> wrote:
> > For consistency with other reference counting APIs in the kernel,
> > introduce drm_global_item_{get/put} functions instead of
> > drm_global_item_{ref/unref}.
> >
> > Compatibility aliases are added to keep existing code working.
> >
> > The semantic patch scripts/coccinelle/api/drm-get-put.cocci has been
> > extended to account for the new helpers.
> >
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Somehow this fell through the cracks. drm_global.c is only used by ttm
> and vmwgfx, adding relevant maintainers.
> -Daniel
> 
> > ---
> >  drivers/gpu/drm/drm_global.c             | 43 +++++++++++++++++++++++++++-----
> >  include/drm/drm_global.h                 |  2 ++
> >  scripts/coccinelle/api/drm-get-put.cocci | 10 ++++++++
> >  3 files changed, 49 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/drm_global.c b/drivers/gpu/drm/drm_global.c
> > index b2dc21e..76cf948 100644
> > --- a/drivers/gpu/drm/drm_global.c
> > +++ b/drivers/gpu/drm/drm_global.c
> > @@ -64,7 +64,7 @@ void drm_global_release(void)
> >  }
> >
> >  /**
> > - * drm_global_item_ref - Initialize and acquire reference to memory
> > + * drm_global_item_get - Initialize and acquire reference to memory
> >   * object
> >   * @ref: Object for initialization
> >   *
> > @@ -75,7 +75,7 @@ void drm_global_release(void)
> >   * Returns:
> >   * Zero on success, non-zero otherwise.
> >   */
> > -int drm_global_item_ref(struct drm_global_reference *ref)
> > +int drm_global_item_get(struct drm_global_reference *ref)
> >  {
> >         int ret = 0;
> >         struct drm_global_item *item = &glob[ref->global_type];
> > @@ -107,10 +107,10 @@ int drm_global_item_ref(struct drm_global_reference *ref)
> >         mutex_unlock(&item->mutex);
> >         return ret;
> >  }
> > -EXPORT_SYMBOL(drm_global_item_ref);
> > +EXPORT_SYMBOL(drm_global_item_get);
> >
> >  /**
> > - * drm_global_item_unref - Drop reference to memory
> > + * drm_global_item_put - Drop reference to memory
> >   * object
> >   * @ref: Object being removed
> >   *
> > @@ -120,7 +120,7 @@ EXPORT_SYMBOL(drm_global_item_ref);
> >   *
> >   */
> >
> > -void drm_global_item_unref(struct drm_global_reference *ref)
> > +void drm_global_item_put(struct drm_global_reference *ref)
> >  {
> >         struct drm_global_item *item = &glob[ref->global_type];
> >
> > @@ -133,5 +133,36 @@ void drm_global_item_unref(struct drm_global_reference *ref)
> >         }
> >         mutex_unlock(&item->mutex);
> >  }
> > -EXPORT_SYMBOL(drm_global_item_unref);
> > +EXPORT_SYMBOL(drm_global_item_put);
> >
> > +/**
> > + * drm_global_item_ref - Initialize and acquire reference to memory
> > + * object
> > + * @ref: Object for initialization
> > + *
> > + * This is a compatibility alias for drm_global_item_get() and should
> > + * not be used by new code.
> > + *
> > + * Returns:
> > + * Zero on success, non-zero otherwise.
> > + */
> > +int drm_global_item_ref(struct drm_global_reference *ref)
> > +{
> > +       return drm_global_item_get(ref);
> > +}
> > +EXPORT_SYMBOL(drm_global_item_ref);
> > +
> > +/**
> > + * drm_global_item_unref - Drop reference to memory
> > + * object
> > + * @ref: Object being removed
> > + *
> > + * This is a compatibility alias for drm_global_item_get() and should not
> > + * be used by new code.
> > + */
> > +
> > +void drm_global_item_unref(struct drm_global_reference *ref)
> > +{
> > +       drm_global_item_put(ref);
> > +}
> > +EXPORT_SYMBOL(drm_global_item_unref);
> > diff --git a/include/drm/drm_global.h b/include/drm/drm_global.h
> > index 3a83060..5eb6f0c 100644
> > --- a/include/drm/drm_global.h
> > +++ b/include/drm/drm_global.h
> > @@ -47,6 +47,8 @@ struct drm_global_reference {
> >
> >  void drm_global_init(void);
> >  void drm_global_release(void);
> > +int drm_global_item_get(struct drm_global_reference *ref);
> > +void drm_global_item_put(struct drm_global_reference *ref);
> >  int drm_global_item_ref(struct drm_global_reference *ref);
> >  void drm_global_item_unref(struct drm_global_reference *ref);
> >
> > diff --git a/scripts/coccinelle/api/drm-get-put.cocci b/scripts/coccinelle/api/drm-get-put.cocci
> > index 91fceb8..db1c465 100644
> > --- a/scripts/coccinelle/api/drm-get-put.cocci
> > +++ b/scripts/coccinelle/api/drm-get-put.cocci
> > @@ -54,6 +54,12 @@ expression object;
> >  |
> >  - drm_dev_unref(object)
> >  + drm_dev_put(object)
> > +|
> > +- drm_global_item_ref(object)
> > ++ drm_global_item_get(object)
> > +|
> > +- drm_global_item_unref(object)
> > ++ drm_global_item_put(object)
> >  )
> >
> >  @r depends on report@
> > @@ -87,6 +93,10 @@ drm_property_unreference_blob@p(object)
> >  drm_property_reference_blob@p(object)
> >  |
> >  drm_dev_unref@p(object)
> > +|
> > +drm_global_item_ref@p(object)
> > +|
> > +drm_global_item_unref@p(object)
> >  )
> >
> >  @script:python depends on report@
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://urldefense.proofpoint.com/v2/url?u=https-3A__groups.google.com_d_msgid_outreachy-2Dkernel_20180313120205.GA12094-2540Haneen&d=DwIBaQ&c=uilaK90D4TOVoH58JNXRgQ&r=HaJ2a6NYExoV0cntAYcoqA&m=lzwHnvRNz61FBHPvl4HfIBLShUjYqqwqPa71bjZfD8s&s=DyQDIfuyq7myO_vPBFx2Q0Zcfw02bS6dmgl7-0Jpu_g&e=.
> > For more options, visit https://urldefense.proofpoint.com/v2/url?u=https-3A__groups.google.com_d_optout&d=DwIBaQ&c=uilaK90D4TOVoH58JNXRgQ&r=HaJ2a6NYExoV0cntAYcoqA&m=lzwHnvRNz61FBHPvl4HfIBLShUjYqqwqPa71bjZfD8s&s=e6bdl63FX0aaxoLxsziLGjrJMNg0yc4DcP9y9tRi7AM&e=.
> 
> 
> 
> -- 
> Daniel Vetter
> Software Engineer, Intel Corporation
> +41 (0) 79 365 57 48 - https://urldefense.proofpoint.com/v2/url?u=http-3A__blog.ffwll.ch&d=DwIBaQ&c=uilaK90D4TOVoH58JNXRgQ&r=HaJ2a6NYExoV0cntAYcoqA&m=lzwHnvRNz61FBHPvl4HfIBLShUjYqqwqPa71bjZfD8s&s=__U-EO6t1rL8vdlANyHATVi-smcnlKxMwyznL5ntZ7s&e=

