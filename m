X-GM-THRID: 6477576827810349056
X-Received: by 10.107.183.142 with SMTP id h136mr12829125iof.44.1508362812600;
        Wed, 18 Oct 2017 14:40:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.34.21 with SMTP id o21ls72860ito.7.gmail; Wed, 18 Oct 2017
 14:40:11 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RoocBdnSL9CzMGDU4ThlzeWSEcGXsPTl4EicUW9umL0FQNUobxXtDTqyLVLuSCxu9xL9Lx
X-Received: by 10.107.168.102 with SMTP id r99mr13340868ioe.11.1508362811834;
        Wed, 18 Oct 2017 14:40:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508362811; cv=none;
        d=google.com; s=arc-20160816;
        b=ubsVLGXk+lR6KuWvapNbjG90/sFlur1KJrdnp2uqMOoUmIZ4wZkKoIl+UYoIB7FHVC
         g8sSuG+UBifWYqL0kExUNm03s5o6eGwlBnYH9lmFobHpOEita0uE83v+G+5Y21NBOmhl
         8/I47ggL8gBYsWSy3ICnjp64B3fP5WOsj53l3NHHjZ0gH+FPhjmwfNXnByDPxkwqjnRk
         SmaYtDc1+SMJIzIyUy5Gxv6zlhXeXLEtQA84UxPFshnwt3eqboIij0+ZGWizPhC2Fgyv
         TALpr9O+3NwyVO6JTVOZZeuSisT/Y7QnrfYo+5tXtmmYsnFXEJdthBC7ur1X2g0cnhWi
         XaHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :arc-authentication-results;
        bh=5vTUnASW3Zb1X5dpSyS3ADopGVIC921K80rDnuUc+r8=;
        b=f3ir1Ygrp3aSWl7d2MfwPu2+/NaqUABWPJV4YniV12xl9ja1bjN+a2LdsbkXwMQ/lm
         VE+0q0y+gLLVBVg1NH1FbxVClJ52UlkJjODjmEFYJ73ZQPEak/ulMznt/7k3MxQiM+bQ
         m05EuEqD46f/ZX1+ASMVtrbyQrvtsEd5z5jsM6EJqQYQMnb3XzmA9N8ZWuR8s1AjCB2x
         JGvWEuPLzaVt2xfiPRlAvVCtsL3oBjQJwB0zVG3vj76EErZUlNYdKB/djsKpWTTjabUx
         0VF2t180yTrIuo/2Abn4/+6nnp1zaaK/hCukIAQkTNvu+/9t7q90/H/NbBS5rQRYjMO/
         /6jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=TkWUitPU;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=UIto1Orh;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Return-Path: <me@tobin.cc>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id g5si307127itg.1.2017.10.18.14.40.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 14:40:11 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=TkWUitPU;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=UIto1Orh;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 5A1FB20E2C;
	Wed, 18 Oct 2017 17:40:11 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute5.internal (MEProxy); Wed, 18 Oct 2017 17:40:11 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=5vTUnASW3Zb1X5dpSyS3ADopGVIC921K80rDnuUc+r8=; b=TkWUitPU
	C/8ABtDyBnDfBTNZ3egQTlaY/4/UVmwEwUJsrCc0l5RTToG5SMO/ghU+cesiA6nS
	RxR8KXr3F358TzCZB/Wf836/Z3EarkaOr27BJZI3lyCb2xqdheHkmIhunLNtBI7z
	EN2170j855+eIXKZpbLAR9t5Q4lME7CwTTjcgeE6dWMlYAN69s/Nyd34Ug4wH4B1
	E7v9TabtC5lRHpFF8LfJxnkZ6b6sFSSv5Gsv/mDbuVU6mgf9KmM18kDIlL58+Mh4
	giklobk8wSAQmDWl7Ndq9WdMEiPJCdF3XO1gs+91Tu7aU7cMvxJRn9e2org22rCz
	3xgHW65CnbqxyQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=5vTUnASW3Zb1X5dpSyS3ADopGVIC9
	21K80rDnuUc+r8=; b=UIto1OrhIiCW31xKM8ITePaCLP1HEFuzFcFGpq/NKZ/z6
	tlxuNSKyKyVv8Lnz6nDlN9m8NYljLjNj5v3r5LS4qmqlQoOuhgayIVP4+gBjNAbN
	icu2B07Zap7b2LmxH83oOX4fToT00OBCZEN9HSpB5OprKKu9uCxXkMm2ret3DYAy
	yFMlLyD1s6iBILVP7IjuUg83pXEcX5ljXfabnVPO1KLDuOyLvW5T0Qq9UcDBfK7t
	QzuyCQCFOVHn6n46aBlE3pb79NNBZU0dWxEiBYgN/HA6giUEyQh9Qw3nEffNPNzV
	GnXMy48NNe7EDPQHzp+BQdt6h09UJmpqRNINC8nzA==
X-ME-Sender: <xms:O8rnWS-QnOabDWo1_Z9UESzsupatvVosdUINg5CMPQI3NSIiKIZjBQ>
Received: from localhost (124-170-207-147.dyn.iinet.net.au [124.170.207.147])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9D6D6247D9;
	Wed, 18 Oct 2017 17:40:10 -0400 (EDT)
Date: Thu, 19 Oct 2017 08:40:08 +1100
From: "Tobin C. Harding" <me@tobin.cc>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: gregkh@linuxfoundation.org, Julia.Lawall@lip6.fr, pablo@netfilter.org,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171018214008.GC31318@eros>
References: <20171018145522.GA27138@kroah.com>
 <20171018154821.GA2002@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018154821.GA2002@ubuntu-server-1604>
X-Mailer: Mutt 1.5.24 (2015-08-30)
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 18, 2017 at 11:48:21AM -0400, Frank A. Cancio Bello wrote:
> Remove unnecessary parentheses to comply with preferred coding style for
> the linux kernel and avoid the following checkpatch's messages:
> 'CHECK: Unnecessary parentheses around'
> 'CHECK: Logical continuations should be on the previous line'
> 
> Credits to checkpatch.
> 
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
> Changes in v3:
> 	* Exclude any parentheses removal that makes unclear the order of the operations.
> 
> Changes in v2:
> 	* I rewrote the log message to improve the style taking in consideration Julia's suggestions.
> 	* I merged in this patch similars changes that initially were in theirs own patch. I will reply that other patch email thread, saying to discard it, to avoid confussion.
> 
>  drivers/staging/wlan-ng/p80211req.c  |  2 +-
>  drivers/staging/wlan-ng/prism2fw.c   | 21 ++++++++++-----------
>  drivers/staging/wlan-ng/prism2mgmt.c | 23 +++++++++++------------
>  drivers/staging/wlan-ng/prism2sta.c  |  4 ++--
>  4 files changed, 24 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/p80211req.c b/drivers/staging/wlan-ng/p80211req.c
> index afe8477..0d1556c 100644
> --- a/drivers/staging/wlan-ng/p80211req.c
> +++ b/drivers/staging/wlan-ng/p80211req.c
> @@ -124,7 +124,7 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
>  
>  	/* Check Permissions */
>  	if (!capable(CAP_NET_ADMIN) &&
> -	    (msg->msgcode != DIDmsg_dot11req_mibget)) {
> +	    msg->msgcode != DIDmsg_dot11req_mibget) {

While this is not making the code _harder_ to read, it is not making it any easier either. So all
the change is really doing is quieting checkpatch. Usually it is not a good idea to make code
changes _just_ to quieten a static analysis tool. It's just a tool remember, there to help us write
better code.

On top of that CHECKS are just that, things that should be CHECK'ed, not necessarily fixed.

Hope this helps,
Tobin.

