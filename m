X-GM-THRID: 6536479698699943936
X-Received: by 10.80.242.133 with SMTP id f5mr498073edm.9.1521903102493;
        Sat, 24 Mar 2018 07:51:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.190.10 with SMTP id a10ls5398261edi.6.gmail; Sat, 24 Mar
 2018 07:51:41 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtgGPRQDUi12nIeC+8nGNdPYutSKcP6SZWAr4yLQ24UjpYurxg1S7tvMy3w2DkR5QPYfO+t
X-Received: by 10.80.165.8 with SMTP id y8mr8513045edb.11.1521903101405;
        Sat, 24 Mar 2018 07:51:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521903101; cv=none;
        d=google.com; s=arc-20160816;
        b=D0NbgseKDK5XRIae5q4awhyZl4zKB3jC0/e6algxLzbEQWMfeOqXM7DW8aZ9wHq0U+
         QiynTshbrxoZ97BO64AMf225N2IyekcRDV2gqX/UeisyYtXsnWs6ikqnItAQNVnv4Q94
         nIM0BVL71kYT0PVLbMHeYHHaQBBqJr1nYIqgHqrmQ25ucwAHEWfh9zNz4X0EuynHu2dC
         U1LdpjdZ09Zz0AnaGpH6mBi8aZXVj1drD4cOAeSm6tXn8k7nlX+GAAC5jgax8ztlphHC
         T+c1hVnwaUegrGnRRw+YepAqFvCt7SLZw22Lk5QwwBrW2HbZZWdypVG2wrcg0W7m34aF
         OzVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=vqoK2bJTmfNY1vOcvivu4K3gYiooPavaY07rlSefDqs=;
        b=Sn8dxhmjrRkbUe/UgW+aie4GtiSybkCjVaBGbRKIgPDQe7nJVOy870Y2zuQLuhmNbH
         jTPXQc15WP5vNJeUIs7aZk+xAFBkOvyxWJSaciQejI8KGUPCM+aGoKcOUWHp42OVz8/6
         n960nMb+41hgvnsRD6WzqaUyqCL9tU4UtAFmHQ5PlaJL21ozputcRMkhNJvOL2s9EhKC
         vtECa8jgiw6doJ9ZN/OILm5AA/+MgIQP1ZveXS7D5TuaP7tqeBZ5LWxPYudl+KbZGpOk
         gRr+jPpDLYdr3pXAFad2tMcWu9VLbOOKN+WpdB29q4Dn3W8aHEB4U+/Yr8VMtXRDY/nO
         nmGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id g21si371597edm.4.2018.03.24.07.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 07:51:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,355,1517871600"; 
   d="scan'208";a="319734592"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 15:51:40 +0100
Date: Sat, 24 Mar 2018 10:51:38 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 3/5] staging: vt6655: Delete unused
 typedef struct _version
In-Reply-To: <1521892758-27981-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1803241051270.6044@hadrien>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <1521892758-27981-3-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> Delete unused typedef struct _version.
>
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>


> ---
> Changes in v3:
>  - Delete the typedef.
>
>  drivers/staging/vt6655/device_cfg.h | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
> index 73f904b..b81f9dd 100644
> --- a/drivers/staging/vt6655/device_cfg.h
> +++ b/drivers/staging/vt6655/device_cfg.h
> @@ -16,13 +16,6 @@
>
>  #include <linux/types.h>
>
> -typedef
> -struct _version {
> -	unsigned char   major;
> -	unsigned char   minor;
> -	unsigned char   build;
> -} version_t, *pversion_t;
> -
>  #define VID_TABLE_SIZE      64
>  #define MCAST_TABLE_SIZE    64
>  #define MCAM_SIZE           32
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521892758-27981-3-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

