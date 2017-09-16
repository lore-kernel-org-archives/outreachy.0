X-GM-THRID: 6466260847323774976
X-Received: by 10.28.63.130 with SMTP id m124mr366484wma.20.1505546064328;
        Sat, 16 Sep 2017 00:14:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.169.70 with SMTP id s67ls368678lfe.33.gmail; Sat, 16 Sep
 2017 00:14:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCYIWQbDx2lyfW6U8/gtho2/npIVDhH3Fvmahl1so6vpa+JJtdOcgZM7Kht9+Xwvi8vp09d
X-Received: by 10.25.79.23 with SMTP id d23mr367156lfb.34.1505546062690;
        Sat, 16 Sep 2017 00:14:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505546062; cv=none;
        d=google.com; s=arc-20160816;
        b=ppKNwzi/YnJt/rRxHzTfSqnivrUsOJQRF0rWlX233TbNlPdTJJUldNMRuOXhApmDLy
         fiif9Rju6hiXkBy4pbIXrzJ+Ycr3PiSmAgNA3o2iGPWVcUHcuXVGmlhZ5G1qslxqbTd+
         niOgfliPNfchQGeIaVKXfkdlguDKLkb8tmiYCkcL7DS3qMCMt3LtmHzcKqHKnt3avDYs
         w/lwI/LTz4ZULeLLwQ7+a2358asIlWEH+12Q8yCJ0VuHYZdxsS8Ll+pJ8qjh33J01EuJ
         hVuhegOv25dkDo46Sh/aaOyNXw+Nn1N+V5cvfOI5kpL0dpjZI5QRzv9pugbQCY7c58Cx
         CYwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=xOwSaeOD7AkZoSLYCJ6KMIOYTOLm0hKbNw/AigaesgE=;
        b=FRkuvrpHSPdZ5bqzsL4qFsUTojP4n7q0VnPHXjGlLhpNktV88ePd7MiB3JMJf+Zv5X
         4T34uhz4WEpxDnx9iKMXOGN6ohQbBAv3/SHBHRmZg5+hOzZheXev9BwXV9WMbV4iT+XF
         ghi7MEo3M530D2SaYy3Faa0zq/GfhchDdn4ZzLeOM4k2tbSHuPzrP9k1PWrAzjheN8+w
         Lm+aiB1pW5+CU4N3eEIJJrptAIfhWVYkw3sh6dy3od+ET55rX58hjsKCwnMhedphdRoQ
         lyhzaluWZ4MBdc6BpnGg64uFiD0slzlwnI3ogXXpBCKBa91eOCywd9ayY9uFoEOJ95hR
         SXBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c142si98950wmh.3.2017.09.16.00.14.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:14:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,400,1500933600"; 
   d="scan'208";a="291359800"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 09:14:22 +0200
Date: Sat, 16 Sep 2017 09:14:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: samuel@sortiz.org, gregkh@linuxfoundation.org, netdev@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: irda: Use !x instead of NULL
 comparison
In-Reply-To: <1505543667-4670-1-git-send-email-srishtishar@gmail.com>
Message-ID: <alpine.DEB.2.20.1709160912540.2943@hadrien>
References: <1505543667-4670-1-git-send-email-srishtishar@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Srishti Sharma wrote:

> Test for NULL as !x where functions that return NULL on failure
> are used. Done using the following semantic patch by coccinelle.
>
> @ is_null @
> expression E;
> statement S;
> @@
>
> E = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
> usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));
>
> (
> if(!E)
>    S
> |
> -if(E==NULL)
> +if(!E)
>     S
> )
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
>  drivers/staging/irda/net/discovery.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/irda/net/discovery.c b/drivers/staging/irda/net/discovery.c
> index 364d70a..1e54954 100644
> --- a/drivers/staging/irda/net/discovery.c
> +++ b/drivers/staging/irda/net/discovery.c
> @@ -179,7 +179,7 @@ void irlmp_expire_discoveries(hashbin_t *log, __u32 saddr, int force)
>  				/* Create the client specific buffer */
>  				n = HASHBIN_GET_SIZE(log);
>  				buffer = kmalloc(n * sizeof(struct irda_device_info), GFP_ATOMIC);
> -				if (buffer == NULL) {
> +				if (!buffer) {
>  					spin_unlock_irqrestore(&log->hb_spinlock, flags);
>  					return;
>  				}
> @@ -291,7 +291,7 @@ struct irda_device_info *irlmp_copy_discoveries(hashbin_t *log, int *pn,
>  				/* Create the client specific buffer */
>  				n = HASHBIN_GET_SIZE(log);
>  				buffer = kmalloc(n * sizeof(struct irda_device_info), GFP_ATOMIC);
> -				if (buffer == NULL) {
> +				if (!buffer) {
>  					spin_unlock_irqrestore(&log->hb_spinlock, flags);
>  					return NULL;
>  				}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505543667-4670-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

