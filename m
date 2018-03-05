X-GM-THRID: 6529310178951561216
X-Received: by 10.80.202.69 with SMTP id e5mr3922244edi.9.1520234213026;
        Sun, 04 Mar 2018 23:16:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.213.199 with SMTP id g7ls2285130edj.2.gmail; Sun, 04 Mar
 2018 23:16:52 -0800 (PST)
X-Google-Smtp-Source: AG47ELvP3Qo+Aov4C/HgFfSpuEMuAFAgJOFu43uWyEEAp66qsH9RE81Ic/3dgVomDQ3E5J1r2iuW
X-Received: by 10.80.149.230 with SMTP id x35mr3912174eda.3.1520234211852;
        Sun, 04 Mar 2018 23:16:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520234211; cv=none;
        d=google.com; s=arc-20160816;
        b=HKeTpLXfRDdpM5TWDSdM8AEkTIItCeQEMc6fczCc86KuvtcsZ6k1bynE9ReqJZn8ds
         dzEELzs+K1aHtWk6kMSJ9W2zw1hw5HLrI0CI2xZxUVrD4rn618o7D4XltQclSn5SPQAC
         XNf/xZkQWgzaTfDMzbgFU2HVqDLKZIOEc9NCANOAj/M3hUFrvrfPCpvKeDSbX7PxP1uG
         6H8bW6n9LHjRHQvyzVaZmiNJe8Me1KW6QRlHDKyIYGEQBTEZrAOfH7DJ+XqY9v9Zp5yO
         u+Qr2GPVlKdQHA1iRDq8+szCoY51JPL5/oRHDrRGaCB4GbgDC3qQz6S81ckbiJjBrKdf
         O6tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=22yl+OXnjFWvTWAW+PKWBNZlPKZshSfakbD4pAifq2U=;
        b=Ed+531wUd9olS3aokCDjpSpGx4vs7JjdtdqTcIbHN8mszDz6+DYCaKyTKo0x8NEnJQ
         /EbrmE4r6XrpTXc8Ua5dYpvK9hT5f+nXpWJMYkZ5kQl1UnHFLHQlHnpUuR81d1amXVaf
         ViXgmdKN2SQmzbTa8HuNC/cEJSJIcYyuf46vNbf/wloCpzKr7ZDWsw9+gTdaZOfNuE0i
         MFbBzOeqpCnS75CYmh4KE6PQGW2Z/yQQkmfOiF3/PNBaD5M6RQHi21Xk6QJ99Dkb/g5D
         RJN2R1v2Q8jFPdYiYaIYr4OcZLgmy2ybFD/i43a/pss7P11Yc1vcKnetkJG3dqPca0wq
         An0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f24si588423edc.0.2018.03.04.23.16.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 23:16:51 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,426,1515452400"; 
   d="scan'208";a="256957767"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 05 Mar 2018 08:16:50 +0100
Date: Mon, 5 Mar 2018 08:16:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] staging: ipx: Replace printk()
 with appropriate net_*macro_ratelimited()
In-Reply-To: <20180305041740.GA23378@seema-Inspiron-15-3567>
Message-ID: <alpine.DEB.2.20.1803050816230.2306@hadrien>
References: <20180305041740.GA23378@seema-Inspiron-15-3567>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 5 Mar 2018, Arushi Singhal wrote:

> Replace printk having a log level with the appropriate
> net_*macro_ratelimited.
> It's better to use actual device name as a prefix in error messages.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
> changes in v2
> *In v1 printk was changed to pr_*macro(), which is used
> in kernel instead of calling printk() directly. And for drivers,
> dev_*macro() or net_*macro_ratelimited() should be used for calling
> printk() directly.
>
> changes in v3
> *Indentation is not changed, as line is exceeding 80 characters limit.

Put the v3 changes on top of the v2 changes, so that one can see
immediately what has changed most recently.

julia

>
>  drivers/staging/ipx/af_ipx.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/ipx/af_ipx.c b/drivers/staging/ipx/af_ipx.c
> index d21a9d1..5ec6591 100644
> --- a/drivers/staging/ipx/af_ipx.c
> +++ b/drivers/staging/ipx/af_ipx.c
> @@ -744,7 +744,7 @@ static void ipxitf_discover_netnum(struct ipx_interface *intrfc,
>  			intrfc->if_netnum = cb->ipx_source_net;
>  			ipxitf_add_local_route(intrfc);
>  		} else {
> -			printk(KERN_WARNING "IPX: Network number collision "
> +			net_warn_ratelimited("IPX: Network number collision "
>  				"%lx\n        %s %s and %s %s\n",
>  				(unsigned long) ntohl(cb->ipx_source_net),
>  				ipx_device_name(i),
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180305041740.GA23378%40seema-Inspiron-15-3567.
> For more options, visit https://groups.google.com/d/optout.
>

