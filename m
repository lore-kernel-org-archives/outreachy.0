X-GM-THRID: 6464551056446586880
X-Received: by 10.28.145.206 with SMTP id t197mr953575wmd.11.1505145819113;
        Mon, 11 Sep 2017 09:03:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.66.88 with SMTP id p85ls291007lja.44.gmail; Mon, 11 Sep
 2017 09:03:37 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAJGDUiNt5vlUFXiyH7NWNQ5Ud+7M7C9IQYV2h8YS1ZaUYyHXsFlfdrm9w1GTvjho9Zl2Qu
X-Received: by 10.25.205.75 with SMTP id d72mr838836lfg.19.1505145817318;
        Mon, 11 Sep 2017 09:03:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505145817; cv=none;
        d=google.com; s=arc-20160816;
        b=a5Lyi2gr3lbkwv5LNCDyOH+fFF5BOK3L/F8XMxHQCJFos2KYAAfNShq06O0hVs3grK
         7pgK37x9g1GNYfFyL1/tGI8/mJDorcbRnZr1xJwI08tTS3ctM0fo358T35KlZvymoZth
         tpJ/TzMQZeb+EAAzxdpGmVkSe5gAIeIMprhZmQfltVI1y6jIJ7RvqDTGKzwfByoQMm2k
         kzUqoDDeZ1ExbBd6xfsU59vzvPA5iUAW/ESvKOYfkkJ8+mKmNvMTL95LjkE9t6mhbSzS
         P4LNj1DpYpgDpnG9vY2aTEBZl4HjQQAjY30cNdYOzdqRkT1cq6+YuwVTWCw1PwxdAS4s
         BsmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=PftEraxWTwetWeC866rGT9vL3415xWDKFQ0EF/vJ3Zw=;
        b=y0RBZSdac9WqWGAvE9mzn6PjsuBR8X2TAD/L94VodBaIAIYJn2sHGOgofn/w1y/tFn
         jho99UunhBQ0czvTust0hlCsxTgXMWIKdb+RmXqs4/3hENUoiaMP7W4/U2U0+Ga0Qj9a
         x5poNtoFPpS4isDXYyR45ace/Fqg+csK4mntluTXRCve6/9KS3TgEnABIH6TYJxKQiFG
         Bbs7qosbb6+M9bprzWnMjoPBr4Pt4jSEbDZc1nqHeUL2xsX58ndW60PWB4UqyIqCRapr
         zypKmzt+QTie8qa5zpNSsUFnZptj5q0TZfqJPmHzdUUoi3RP+1hxcJ9GPI86aZQUHO/R
         4/rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e84si373541wmi.7.2017.09.11.09.03.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:03:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,378,1500933600"; 
   d="scan'208";a="290542525"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Sep 2017 18:03:32 +0200
Date: Mon, 11 Sep 2017 18:03:02 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: gilad@benyossef.com, gregkh@linuxfoundation.org, 
    linux-crypto@vger.kernel.org, driverdev-devel@linuxdriverproject.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: ccree: Don't use volatile
 for monitor_lock
In-Reply-To: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709111801590.13726@hadrien>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Sep 2017, Srishti Sharma wrote:

> The use of volatile for the variable monitor_lock is unnecessary.

You need to give more evidence of why this is the case.  How is the
variable used?  I guess this comes from checkpatch, but checkpatch has
only a local view of things, and doesn't know how the variable is used.

julia

>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
> index e5c2f92..7d77941 100644
> --- a/drivers/staging/ccree/ssi_request_mgr.c
> +++ b/drivers/staging/ccree/ssi_request_mgr.c
> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>  	dma_addr_t dummy_comp_buff_dma;
>  	struct cc_hw_desc monitor_desc;
>
> -	volatile unsigned long monitor_lock;
> +	unsigned long monitor_lock;
>  #ifdef COMP_IN_WQ
>  	struct workqueue_struct *workq;
>  	struct delayed_work compwork;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505145571-11248-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

