X-GM-THRID: 6392997475785900032
X-Received: by 10.107.139.139 with SMTP id n133mr5523008iod.100.1488491011027;
        Thu, 02 Mar 2017 13:43:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls8637412otc.30.gmail; Thu, 02 Mar
 2017 13:43:30 -0800 (PST)
X-Received: by 10.200.33.233 with SMTP id 38mr4705240qtz.87.1488491010356;
        Thu, 02 Mar 2017 13:43:30 -0800 (PST)
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0023.hostedemail.com. [216.40.44.23])
        by gmr-mx.google.com with ESMTPS id f73si80096ita.1.2017.03.02.13.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 13:43:30 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.23 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.23;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.23 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id C14E53520A6;
	Thu,  2 Mar 2017 21:43:29 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::,RULES_HIT:41:355:379:541:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1373:1437:1515:1516:1518:1534:1539:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:2915:3138:3139:3140:3141:3142:3352:3622:3865:3867:3873:4321:4605:5007:6119:10004:10400:10848:11026:11232:11657:11658:11914:12043:12296:12438:12740:12760:12895:13069:13255:13311:13357:13439:14659:14721:21080:21434:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: pets14_1219ce699659
X-Filterd-Recvd-Size: 1839
Received: from XPS-9350 (unknown [47.151.132.55])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Thu,  2 Mar 2017 21:43:27 +0000 (UTC)
Message-ID: <1488491006.2179.14.camel@perches.com>
Subject: Re: [PATCH 3/5] staging: lustre: lustre: Remove unnecessary cast on
 void pointer
From: Joe Perches <joe@perches.com>
To: simran singhal <singhalsimran0@gmail.com>, Larry.Finger@lwfinger.net
Cc: florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org, 
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 oleg.drokin@intel.com,  marvin24@gmx.de, outreachy-kernel@googlegroups.com
Date: Thu, 02 Mar 2017 13:43:26 -0800
In-Reply-To: <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com>
References: <1488489544-25941-1-git-send-email-singhalsimran0@gmail.com>
	 <1488489544-25941-3-git-send-email-singhalsimran0@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
X-Mailer: Evolution 3.22.3-0ubuntu0.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Fri, 2017-03-03 at 02:49 +0530, simran singhal wrote:
> The following Coccinelle script was used to detect this:
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
> (
>   *((T *)e)
> > 
> 
>   ((T *)x)[...]
> > 
> 
>   ((T*)x)->f
> > 
> 
> - (T*)
>   e
> )

NAK.

Nice, but you still have to verify correctness
before submitting these patches.

> diff --git a/drivers/staging/lustre/lustre/mgc/mgc_request.c b/drivers/staging/lustre/lustre/mgc/mgc_request.c
[]
> @@ -1034,7 +1034,7 @@ static int mgc_set_info_async(const struct lu_env *env, struct obd_export *exp,
>  		rc = sptlrpc_parse_flavor(val, &flvr);
>  		if (rc) {
>  			CERROR("invalid sptlrpc flavor %s to MGS\n",
> -			       (char *)val);
> +			       val);

Try compiling this.


