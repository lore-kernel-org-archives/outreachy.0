X-GM-THRID: 6389640527251243008
X-Received: by 10.223.160.227 with SMTP id n32mr253895wrn.20.1487778627040;
        Wed, 22 Feb 2017 07:50:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.41.69 with SMTP id p66ls108988lfp.27.gmail; Wed, 22 Feb
 2017 07:50:26 -0800 (PST)
X-Received: by 10.25.79.23 with SMTP id d23mr3329615lfb.27.1487778626259;
        Wed, 22 Feb 2017 07:50:26 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p185si169470wme.1.2017.02.22.07.50.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 07:50:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,194,1484002800"; 
   d="scan'208";a="261668710"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2017 16:50:25 +0100
Date: Wed, 22 Feb 2017 16:50:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    johan@kernel.org, elder@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v4] staging: greybus: loopback_test:
 fix device-name leak
In-Reply-To: <1487777901-8577-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1702221650010.3145@hadrien>
References: <1487777901-8577-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 22 Feb 2017, Gargi Sharma wrote:

> All the device names were being always leaked. Also,
> illegal free was being called upon namelist[n] which
> was coincidentally NULL. The pointer to dirent structures
> must be individually freed before freeing the pointer array.
>
> Coccinelle Script:
> @@
> expression arr,ex1,ex2;
> @@
>
> for(ex1 = 0; ex1 < ex2; ex1++) { <...
>   arr[
> - ex2
> + ex1
>   ]
>   ...> }
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> Reviewed by: Johan Hovold <johan@kernel.org>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
> Changes in v4:
> 	-Fixed subject line, added reviewed by tag.
> Changes in v3:
> 	-Edited the commit message.
> Changes in v2:
> 	-Made the commit message clearer.
> ---
>  drivers/staging/greybus/tools/loopback_test.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
> index 18d7a3d..1c01833 100644
> --- a/drivers/staging/greybus/tools/loopback_test.c
> +++ b/drivers/staging/greybus/tools/loopback_test.c
> @@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
>  	ret = 0;
>  done:
>  	for (i = 0; i < n; i++)
> -		free(namelist[n]);
> +		free(namelist[i]);
>  	free(namelist);
>  baddir:
>  	return ret;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487777901-8577-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

