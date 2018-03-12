X-GM-THRID: 6531834360584208384
X-Received: by 10.157.41.66 with SMTP id d60mr5241157otb.64.1520889735354;
        Mon, 12 Mar 2018 14:22:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.19.15 with SMTP id e15ls1644093oii.20.gmail; Mon, 12 Mar
 2018 14:22:14 -0700 (PDT)
X-Received: by 10.202.182.137 with SMTP id g131mr4718041oif.50.1520889734417;
        Mon, 12 Mar 2018 14:22:14 -0700 (PDT)
Received: by 10.202.196.9 with SMTP id u9msoif;
        Mon, 12 Mar 2018 10:46:23 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsaYKbe8B131vn3GVUa6pD/VRmVExBMSrqPTJkFkoIad8ctCdJOfIeBlLjEdCfC52gOBU8D
X-Received: by 10.157.26.43 with SMTP id a40mr4607235ote.23.1520876783330;
        Mon, 12 Mar 2018 10:46:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1520876783; cv=none;
        d=google.com; s=arc-20160816;
        b=Ohwrcp65FxQKFopscFsbjp8AK1DkC5zvUkuaRI8nPx3RYLoNv4BK5kFw+9q2CEKGDb
         B1ntN4bH9VR1WyWVD0R0Gsk2Dp71hLmEE87gWE9BvHaTHHHH1tQplq9DmhbngP2g2v5H
         jIoWkKsVPNvv2H+AM8n4X7FRPJ5iUUsc5i5XTzc1sp06kqCSVc7wGSUutMpYxoVGkEZ6
         7Gn8ZEdjaAGl8J10HHJqdiBQZ5AQDKVxwJOUdvOAgqO3Zj0WYSV9PlfattRonfnjL/L+
         irbP/kNV9bgKOGX4jt+xeMbawqPDkM2sCT/qGfdMwfJYeIpLffLq+K6THKYHKrTGca0c
         mcUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=spamdiagnosticmetadata:spamdiagnosticoutput:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=u+BN8LmCMWMngDLWkiDjxYnTu5YxgQBdpUWhh81wlhs=;
        b=xwOAc9G5+Xp2IGe4+T2ElBSgKOhlcNdf7riGyIZOsUnOopJlRWZEOE8iCzbudDt1hD
         f5YwCq9RJPervAAULogseLs+bnEz+a/X7owWG3NqktCZ2luKgtKYwI6wI6PLDQBhuqWQ
         AoZIYgzdPp+cnOuURuJte1hP5dEo9gC6fxPJgiUTYuByJ6lwtDM49mMyRa5H7KT//LwR
         k3MKIrx0bN5vjQIyKWl2RA6si0wCKyhjsJP2aWaVGg6vfrvu1U7K3gPbZ+OLllSy5acr
         NyBgxEZ0A98uDqlxbsVISRAaOsWLWCyteRU9HJL/5P4QnezAiWVF3j4AUQFFgCmTZ1TQ
         xfMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@onevmw.onmicrosoft.com header.s=selector1-vmware-com header.b=sGJOW3SZ;
       spf=pass (google.com: domain of syeh@vmware.com designates 104.47.33.48 as permitted sender) smtp.mailfrom=syeh@vmware.com
Return-Path: <syeh@vmware.com>
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (mail-bn3nam01on0048.outbound.protection.outlook.com. [104.47.33.48])
        by gmr-mx.google.com with ESMTPS id x2si550635oia.5.2018.03.12.10.46.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 12 Mar 2018 10:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of syeh@vmware.com designates 104.47.33.48 as permitted sender) client-ip=104.47.33.48;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@onevmw.onmicrosoft.com header.s=selector1-vmware-com header.b=sGJOW3SZ;
       spf=pass (google.com: domain of syeh@vmware.com designates 104.47.33.48 as permitted sender) smtp.mailfrom=syeh@vmware.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=onevmw.onmicrosoft.com; s=selector1-vmware-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=u+BN8LmCMWMngDLWkiDjxYnTu5YxgQBdpUWhh81wlhs=;
 b=sGJOW3SZcSwkiCxK4BUqHx3GLyfHqYZxpomjfm8JhVRjSr7HNNsBybj+2h3erwss+s+V/sAs4NLr0+jJWcOadpVDlADo0P3SZpuajg24wWAN7a8REO4pGsv5INfXB9LSiM/CPeHDCAYC77/9hixsOwwvuSnrTpGpkXNdpJ77blo=
Received: from vmware.com (66.170.99.1) by
 BN6PR05MB3283.namprd05.prod.outlook.com (10.174.95.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.588.7; Mon, 12 Mar 2018 17:46:11 +0000
Date: Mon, 12 Mar 2018 10:42:47 -0700
From: Sinclair Yeh <syeh@vmware.com>
To: Daniel Vetter <daniel@ffwll.ch>
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>,
	outreachy-kernel@googlegroups.com,
	VMware Graphics <linux-graphics-maintainer@vmware.com>,
	Thomas Hellstrom <thellstrom@vmware.com>,
	David Airlie <airlied@linux.ie>, daniel.vetter@ffwll.ch,
	seanpaul@chromium.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH DRM] drm/vmwgfx: replace drm_*_unreference with drm_*_put
Message-ID: <20180312174246.GA32341@vmware.com>
References: <20180311233313.GA19721@Haneen>
 <20180312173443.GP8589@phenom.ffwll.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20180312173443.GP8589@phenom.ffwll.local>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Originating-IP: [66.170.99.1]
X-ClientProxiedBy: MWHPR1301CA0011.namprd13.prod.outlook.com (10.174.164.152)
 To BN6PR05MB3283.namprd05.prod.outlook.com (10.174.95.30)
Return-Path: syeh@vmware.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7f6ab7a0-cb20-4f22-9823-08d588412587
X-Microsoft-Antispam:
	UriScan:;BCL:0;PCL:0;RULEID:(7020095)(4652020)(5600026)(4604075)(4534165)(4627221)(201703031133081)(201702281549075)(2017052603328)(7153060)(7193020);SRVR:BN6PR05MB3283;
X-Microsoft-Exchange-Diagnostics:
	1;BN6PR05MB3283;3:mnfFvMluF37NqRgN6d9HzYqnVHvwPsdQP2B4MjrhYjqTzgKWwI87ibVvch414o413SmarKYrWvjrdDuZWuc92wYT5+M6cpfL04HpXNzAA1XWpUokXMkpuiQM6qX5yCJqJDm2RSoLx7QVkgl7ahxZKvG0PevcLhLMnTvOmEfFzNaBNA7vGgIIh5A5Y3kdd/36vgNfCVIzaH+6EyNFYZ1QvkaVmU3eBBUCY2jHAOIQZO0uuNmFBgRGvfaHs0lXOTRS;25:5LJ9WrFPfi3qfFQfNu51s67bUuN3zktUIh4R/43bWgkH/RCEP+ifGQdOLtEioWJ36XTVTK+pQiS2F8J39b9jCRh5LJrNrMOrYW/Y5p+tOSa1ORW5Gn7yAcf1XG9bvCsoWIrUPua7+VKxQLzTryKWKSmGQeIvMkKvedSX2dk7BLkp8jylK4tAJEy0PftexJEiIbzNT+8TorimVTIdHixeKR93D/vn6TzL/5kXZe66FaICw62N+v5J89LQ8kLGWWyNNrDpNrXKtMfrLJqh44SDqCfY/HFW6Fxi0AomK2wJHEncZ7HMTFzq+v6ofvz7B3cWJi6kn4yqbg1gzcFqf3lGIw==;31:VajwBzlYYmSSHUrw3jo5QIp2EDS97iwpRydtSvQv+/bRFi6FU4XlCgsMh6SRRXVSDkXlYd+7DJgJqy05rlVeX+GHkY8qB5uxWtzx4XdYeN1RnEidCd5Ize5idF4N+EF+TApxP2lgFLOnRGAljs0h+Y7JBHyMMAFUl8qpFL/QK8dleSep5RRsB1OxeZRJ8nm++UICyrgohHS+0vRDTQLBRuYqDz6M0CESaP4scFMTLoo=
X-MS-TrafficTypeDiagnostic: BN6PR05MB3283:
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=syeh@vmware.com; 
X-Microsoft-Exchange-Diagnostics:
	1;BN6PR05MB3283;20:na1GkpWDBx8Trfmt80fYR16SDv3c68O0kiBnr2S+HvksT/v/s+o/S76SR9Yj/sKZhb/EOPko8j8MTad8l09SLLh3bUq1J1lGZJSFNSobKIKqbMlJxbDmbChv8R0vtZZKRnma9dFwiUEJxWNMuqjVtnuhCsXzOZPimHx1iV1Y5YhUdF6dZuReuaHtVyQseGh7ymwlJo//wWbSftnotUXBx8Wuv/+lyA3tmNl9LyBbVMn54ijJyMrifhJhRspcnVZYCFPX4zc/DdGP/QskJN6s3h+EAs9lh9RGA7QBKmhogpVRQ6Ulz3gazTIcHKybCh+spkT1WqxbXeqZi0MtGNukfNnU/PVbZlH+Ls1n18Yx+BUeg7hl6USrQcZpTU77g+dmSYvoksk8Ii2xGE9NcVVuJE12TycMKoVh/R8VrzrMybeBTSdC15IrT7SA3/t1/pJNfV52xmwE8G/sdInRK4WynDZInSRWcu4WtFO0YIaMRwvQDjE9y0CKHdhfFXdPhmXe;4:64xek0o0uCuS/ooL4f492QEjbCh1HXDohJP1Koe8Wnq3gMs/ejFj1CQe/9GrnUhrtwN02vck7HZ7+07ZroDzLL1tPrR6Y5QLH2OJ90KJaTUEmkkeSowSdygDJP3CKB1DrjO/mcklQilO5UIAZMa8lWB5MJ65qKCp7fzmxX/mOjoI7Gm/pN853EWjnQdkNl3kSijXupkfpadcAHWD3geOw+wLxMq7gFafSLdTjnJN8ny4s2mZd8azQ5pvB7sVyzDCPYX3PrxCOxYeKKwOkTvknNOLa6V3dVtD6DOlZ0GGx24e0X+0JHDm10it+8MJPMCakQW9tcgQmU6SzRwsdDowcjbSEA5Hukbi9+nGjAWdQyM=
X-Microsoft-Antispam-PRVS:
	<BN6PR05MB32838C38D708E8ABADC38C26A8D30@BN6PR05MB3283.namprd05.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(85827821059158)(788757137089);
X-Exchange-Antispam-Report-CFA-Test:
	BCL:0;PCL:0;RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(93006095)(93001095)(10201501046)(3231220)(944501244)(52105095)(6041310)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123562045)(20161123558120)(6072148)(201708071742011);SRVR:BN6PR05MB3283;BCL:0;PCL:0;RULEID:;SRVR:BN6PR05MB3283;
X-Forefront-PRVS: 06098A2863
X-Forefront-Antispam-Report:
	SFV:NSPM;SFS:(10009020)(39860400002)(396003)(366004)(39380400002)(376002)(346002)(189003)(199004)(86362001)(21086003)(58126008)(26005)(54906003)(186003)(97736004)(3846002)(6116002)(6666003)(1076002)(105586002)(2950100002)(6916009)(23726003)(7696005)(81166006)(50466002)(81156014)(8936002)(16526019)(76176011)(8676002)(52116002)(316002)(229853002)(5660300001)(16586007)(386003)(66066001)(53936002)(68736007)(25786009)(106356001)(55016002)(47776003)(33026002)(39060400002)(478600001)(2906002)(36756003)(69596002)(6246003)(7736002)(4326008)(305945005)(33656002)(18370500001);DIR:OUT;SFP:1101;SCL:1;SRVR:BN6PR05MB3283;H:vmware.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
Received-SPF: None (protection.outlook.com: vmware.com does not designate
 permitted sender hosts)
X-Microsoft-Exchange-Diagnostics:
	=?us-ascii?Q?1;BN6PR05MB3283;23:mKaTtDbKUuWHanb2WAwFYXmBUGGmcUqUN4Q5oj8mp?=
 =?us-ascii?Q?7tA9gaXkNWwpaONaRpoD45E2XxeV5tlpG0dSomFpcrnk9CXpU1YrQ09IyYvM?=
 =?us-ascii?Q?X0Ceil82W9qcQAuN5Wtk3VK4uQuJhLRm2TctsVRXH95ETO16mkVZ/kGuyTXc?=
 =?us-ascii?Q?5woiLnY/BMPyJR2bWPHd3PhCoRi7V1it5eAFg/PRKd79DdnAJreu3FEzFXyK?=
 =?us-ascii?Q?voJkhX1I//1W0QhgZiuxLP3p8t1OpFyD4wkSz0eRR1AiuQbZoRNktv5twV1e?=
 =?us-ascii?Q?7SSVE76Ete3SkZ14BaSlOCj3sNhGqAUdSZJpNsJoIq3Om4D3FZPq9YEZUJ0g?=
 =?us-ascii?Q?N4BQg0AOIsRgJ7fHOCBZx1R38fToZ6D8vzUT0YnDunPcDy2f4XWVFcaNv4ju?=
 =?us-ascii?Q?qWaDl5LWEBt5agfphUHhgyLgJs27FUafwZL7t1KK9VSdg7G3MvJM0pQvADIt?=
 =?us-ascii?Q?bTm0co+BDbxl+2LhU6K2RLD/AAdMs+lom5Cjxq6EIJq08AJHfZaBQrcREiAE?=
 =?us-ascii?Q?89hOF7PG0yRG69wATF2XjVesMorooKtIDX5wr6q57NKMbTDBfIS/l0XeGPXR?=
 =?us-ascii?Q?ov0YQ0gijnvZ7Lngqg6KZAJXhU92FC/xThFmrQNgHKYkLWUBSYxjSOpfnUhD?=
 =?us-ascii?Q?qR1vWK7YN0JZJ9eliTSFp6PyR33vaiOZVvit/dsfMKRpsLZZv6sbIIWFdZoe?=
 =?us-ascii?Q?C0UWeORtIKv7l/dXsM7y1BPnnYP06VOVNTncE1pHDazJuVBxuNtfW0NpbqgC?=
 =?us-ascii?Q?judNubGxwDowMsYk4XnrIjNR0Kn6KQlYpRoWGuD+9rhFqJ1E+AKbQH/recLH?=
 =?us-ascii?Q?K5NWUL5yEndzO9+FBHYnDamcClQ/pkdiZ5xZbUZd1CP9gRBWnTVqOst+0j+Y?=
 =?us-ascii?Q?XgpVdVcJVZZ9xxBV8KFs0ZeJQg8TLDKs3q2fRTNVeMi51rLS/y42l9xXyL1k?=
 =?us-ascii?Q?fljDKjIRlurXllZWP2F9OC24oHSHyTUTMxNG4tHV3/nmgfONIcHco0WN3GfN?=
 =?us-ascii?Q?dWZ9W+eyFWfrXvw6VC4g5af2f7GI5MZIcMYygli2mS7X5fiq67e/3Sto/9gs?=
 =?us-ascii?Q?c2+VCRjhx6Vtlo8edtsSIrK81YFy3m97+IrVC1eNkSbGkz2+1vc+mpULep72?=
 =?us-ascii?Q?Bl4vpXLaNgSMm2djmRNFsoC961SjkpCxVY2Nl9KTwVIXSXMOJ6vrbLdl5udQ?=
 =?us-ascii?Q?JHvxCODi48JhQwAPezvAcEeE3B8BaitL7B+hCr2cPWxjagl8fuV7UMvCPcfl?=
 =?us-ascii?Q?zt+pO2VKjnehLvI+r6G8qXEewDRb964M7xqgFuDBsgSfdMo9qoqxTq+zwctB?=
 =?us-ascii?B?Zz09?=
X-Microsoft-Antispam-Message-Info:
	yXeWKXCAXMd/87scmdLuUY1MTsw06ATciOmwG+koxdXHCzeqOjQ477HHLCpQtkDB7cJNPTMiA427t/TFDrn/oE2kJrve+Oz+FCZfCVOhEhZy9L6Q2yc1WhfXMvV1EHvgvQRqW/nSkMmml1T+517/6ZGqy91BXob4oImJHVEwOFyoL7R10xIbtBD+e0g56gBx
X-Microsoft-Exchange-Diagnostics:
	1;BN6PR05MB3283;6:4BxCDae3yi0NkcSg38+ifdp20VkHm4rW9ktyNso1CyfXSxnyLZEB9tmoLShaRT1nfb4AdV7C0Sm2GDXytlvh7UbDLhi+z3cOFQ4dfgzh1/h4BI846Urj3qj8prUKezMg/KrQmM7y6nwMDX33Jerbg910BNCbtBxaVD7T2yjaGv/f5ROQaTc1zGLI3O5H5VldddBYkFyzsfFK0MNzN4YSV5uNB3pih5P1Zungkvzo1OBOSaOa8VKwsLOs5plY76eUZTCRFGZLOYvYaNsuD5YsjkTqXbk1cNftVBvhMl03BMCoPWIDl+Ggogf/8H0tItWyjYmp/odbO8Y9ONcHKR2eiPWyjKW3qrxLUcIhCVBy41U=;5:cxLrBL5bIPNNykFcsHgW4fjhwGU0142E6k1RjvKk7gTpqRnWdADxAv7E6He1SnxZ6bwJivNK72f2JAQAIfollcC+xcH54rquteI5qPQpADmcgJ/S6ejanGV/dMVmF8ZAZ6C2cqmZDkVRHqjN5bj31M09fJ1lXqzD57J4+skSuww=;24:irdeTe2Yga+7tQUPrj0TBEn7zRqKu3hihu03JrvN55yeaHwG7/vDrw+GmcD6JdmAxdbGaBAgxYKmUkzS9BIXcIw2KIPh2H24VVGJsO8iFeg=;7:3PV3XgtBmOP9Jd+Z1tTURF//pkMxL6UFWz1rJOPsK7ePalDRnNvUQEkfZcuQtY1JPM5rQKKy9EatcroaE934z3gAp+1JUYAF9i/8nwG9HZvAr5MsgaM1CXwxZVky7Gg+13XnbSi75NRAFd1bGEXozsi2VMRAxi34GNruq+HtgrlLmdkJFyCGECl0Pk2tbJY2ouUTbvlahVTs7HRNyTByK4SVOsIsbvNWuuC1wA4eGxvs7LHb+kHH3psdpz9KPFZX
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics:
	1;BN6PR05MB3283;20:tvT3o10IAQeotM/y37kcVvWYT2E6gT93mONQmnRPbzthvSzwY+gBgRXSBauPLpmwrSg375o7UpabPE0ObnklfR0TI3roMUKykP8cxBPfQG904lgbPhT36BEUo1nqF3kfxOQByI/KhOq0zQmSvmjANQMduuBS4hatdel1m9rJ2qw=
X-OriginatorOrg: vmware.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2018 17:46:11.5450 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id:
	7f6ab7a0-cb20-4f22-9823-08d588412587
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: b39138ca-3cee-4b4a-a4d6-cd83d9dd62f0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR05MB3283

Hi Daniel,


On Mon, Mar 12, 2018 at 06:34:43PM +0100, Daniel Vetter wrote:
> On Sun, Mar 11, 2018 at 05:33:13PM -0600, Haneen Mohammed wrote:
> > This patch replace instances of drm_framebuffer_unreference with _put()
> > suffix, because it is shorter and consistent with the kernel use of
> > *_get/put() suffixes.
> > This was done with the following Coccinelle script:
> > 
> > @r@
> > expression e;
> > @@
> > 
> > (
> > -drm_framebuffer_reference(e);
> > +drm_framebuffer_get(e);
> > |
> > -drm_framebuffer_unreference(e);
> > +drm_framebuffer_put(e);
> > )
> > 
> > Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> 
> Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>
> 
> Sinclair/Thomas: Ok if I pull this in through drm-misc? Makes outreachy
> applicant book-keeping easier since iirc the vmwgfx tree isn't in
> linux-next. But ok if you want to merge it too.

Yes, drm-misc is fine.

Thanks!

Sinclair


