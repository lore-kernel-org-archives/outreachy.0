X-GM-THRID: 6394807331810443264
X-Received: by 10.46.33.163 with SMTP id h35mr313433lji.17.1488907681848;
        Tue, 07 Mar 2017 09:28:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls120902lja.32.gmail; Tue, 07 Mar 2017
 09:28:01 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr303427ljp.31.1488907681286;
        Tue, 07 Mar 2017 09:28:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b186si1474489wme.1.2017.03.07.09.28.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:28:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,258,1486422000"; 
   d="scan'208";a="215920214"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Mar 2017 18:28:00 +0100
Date: Tue, 7 Mar 2017 18:27:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, abbotti@mev.co.uk, 
    hsweeten@visionengravers.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Replace ternary
 operator with min macro
In-Reply-To: <1488906954-25933-1-git-send-email-gs051095@gmail.com>
Message-ID: <alpine.DEB.2.20.1703071827310.3150@hadrien>
References: <1488906954-25933-1-git-send-email-gs051095@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 7 Mar 2017, Gargi Sharma wrote:

> Use macro min() to get the minimum of two values for
> brevity and readability.
>
> Found using Coccinelle:
> @@ type T; T x; T y; @@
> (
> - x < y ? x : y
> + min(x,y)
> |
> - x > y ? x : y
> + max(x,y)
> )
>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/comedi/drivers.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
> index a5bf2cc..6a413c7 100644
> --- a/drivers/staging/comedi/drivers.c
> +++ b/drivers/staging/comedi/drivers.c
> @@ -815,7 +815,7 @@ int comedi_load_firmware(struct comedi_device *dev,
>  		release_firmware(fw);
>  	}
>
> -	return ret < 0 ? ret : 0;
> +	return min(ret, 0);
>  }
>  EXPORT_SYMBOL_GPL(comedi_load_firmware);
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488906954-25933-1-git-send-email-gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

