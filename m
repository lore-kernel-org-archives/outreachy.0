X-GM-THRID: 6529194595681566720
X-Received: by 10.46.89.156 with SMTP id g28mr823667ljf.32.1520196847249;
        Sun, 04 Mar 2018 12:54:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.23.194 with SMTP id 63ls1455358ljx.8.gmail; Sun, 04 Mar
 2018 12:54:05 -0800 (PST)
X-Google-Smtp-Source: AG47ELtP8fUSGUVMXAya2wtj6bgojtxpmh5/sDkjaycug7aL+XpxOAFx9F2BiOwwbf1FTflU9dMV
X-Received: by 10.46.118.15 with SMTP id r15mr816365ljc.23.1520196845823;
        Sun, 04 Mar 2018 12:54:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520196845; cv=none;
        d=google.com; s=arc-20160816;
        b=IottUqKtlP406+C8hcKb4cbu8W15U1UeidLR3+2IWtWBSkBiLl/p6AtTqZzRNAUaq8
         z+RFjY7tbWGDKsY59obx9c1/n6xj7LINm4g1IB+KHci9D92DA+nMSN3qqIZ7eKhzx3gr
         np9lKskijB5TAE7oGBoB5YBG3wxlyGKdNadndEdtqlDvxGRONh1WAgsiMCZUDLi6S0fC
         yGVqNkhhjnaAAZRbbMCt32qJbECvxuLMe53ofopi+Axr3XWz/Y4MzYHCkYRw5Hv1taAn
         YAAJOR4l7Tv8qKdSJ4hjPn3FEPR7EigvJk5g01/+RPQjUX2h6k5/QCaj2PU7972uRNKm
         +eKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=RomIOm44uyDcnfJbJ65oCeIyquItc7IXRID7c6lB/bA=;
        b=MLHqJv2lCp+1JNY5vqZ84vtbenPQnmvmk639IGMZ5G7lL5wjppfsbj1f6wlur/TZCf
         xBlPSZ3Zd7M1qdYuQOyv5DuHSQbzPxlLJbhdvpiPD6tBNkQP64bj1rRb7Ee3k/vaJbbv
         DAEAKkJQYFxzNcFc84Fd95fujhmieX0zOvjfWI9Htp+z1SzdmkkHOXMA8YZjgGu/fZ6r
         z4DqDVus9jvDdsmAbPq30matR65zSNFRRdnz4I65/Jc9pnwrPOhvY7YkIt0/eMFuVypY
         GvM+FxDouVpIHQkRZFZD1MZ5owDiU8B4EUhpkx05UxRWiU6i4oAaCPXZ//lMZraYvRQJ
         HL3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z25si429974lfg.5.2018.03.04.12.54.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 12:54:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,425,1515452400"; 
   d="scan'208";a="316328578"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 21:54:04 +0100
Date: Sun, 4 Mar 2018 21:54:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] staging: Replace printk() with
 appropriate net_*macro_ratelimited()
In-Reply-To: <20180304204910.GA4840@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803042153160.2182@hadrien>
References: <20180304204910.GA4840@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Mar 2018, Arushi Singhal wrote:

> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.

Why did you choose this function?

> It's better to use actual device name as a prefix in error messages.

What does this message relate to.

> Indentation is also changed, to fix the  checkpatch issue.

It would be better to no exceed 80 characters than to follow the
suggestion abotu the argument being to the right of the (.

julia


> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v2
> *In previous version printk was changed to pr_*macro(), which is used
> in kernel instead of calling printk() directly. And for drivers,
> dev_*macro() or net_*macro_ratelimited() should be used for calling
> printk() directly.
>
>  drivers/staging/ipx/af_ipx.c | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/staging/ipx/af_ipx.c b/drivers/staging/ipx/af_ipx.c
> index d21a9d1..9a96962 100644
> --- a/drivers/staging/ipx/af_ipx.c
> +++ b/drivers/staging/ipx/af_ipx.c
> @@ -744,13 +744,13 @@ static void ipxitf_discover_netnum(struct ipx_interface *intrfc,
>  			intrfc->if_netnum = cb->ipx_source_net;
>  			ipxitf_add_local_route(intrfc);
>  		} else {
> -			printk(KERN_WARNING "IPX: Network number collision "
> -				"%lx\n        %s %s and %s %s\n",
> -				(unsigned long) ntohl(cb->ipx_source_net),
> -				ipx_device_name(i),
> -				ipx_frame_name(i->if_dlink_type),
> -				ipx_device_name(intrfc),
> -				ipx_frame_name(intrfc->if_dlink_type));
> +			net_warn_ratelimited("IPX: Network number collision "
> +					     "%lx\n        %s %s and %s %s\n",
> +					     (unsigned long) ntohl(cb->ipx_source_net),
> +					     ipx_device_name(i),
> +					     ipx_frame_name(i->if_dlink_type),
> +					     ipx_device_name(intrfc),
> +					     ipx_frame_name(intrfc->if_dlink_type));
>  			ipxitf_put(i);
>  		}
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180304204910.GA4840%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

