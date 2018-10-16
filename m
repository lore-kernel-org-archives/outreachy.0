X-GM-THRID: 6612859760937009152
X-Received: by 2002:a1c:d8:: with SMTP id 207-v6mr1940878wma.12.1539676884139;
        Tue, 16 Oct 2018 01:01:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c2d7:: with SMTP id s206-v6ls2663436wmf.6.canary-gmail;
 Tue, 16 Oct 2018 01:01:23 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63wXU2ViIFtZ0ftns+H3fexohxS+dTT51drQvmFGEfnuadgsuqVUki8vd449FDHsKBbMByN
X-Received: by 2002:a1c:8ecb:: with SMTP id q194-v6mr1939108wmd.11.1539676883200;
        Tue, 16 Oct 2018 01:01:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539676883; cv=none;
        d=google.com; s=arc-20160816;
        b=IVDoriP1GA5kanDUOvhwRPjGcAFKhEOvJn6NhyHeariGy6zUNLhYK+dRCPPXwqWuzJ
         mi2OCnuY2wvXTgHJKbQFaYGPTqcW/4BtWDCbfs3vckXvKzKWNZFApp+2/icn3ZptXwXr
         Bq2UYlEtKcB4qrztHBenURqbjzNJ9zsNYdxCZgx565brLAARPiOEgP3w+Z9wvB1E6e2s
         k5cApR8Yn3uChfxYmvR15lygmopXyYuxfj7ZXwj4yERg3TBZGLT5Rr3jvX7v2VKhHjEK
         N2hy/SRiyHHc/sgFpMHnOyEJoTTbiikYAMu+8U0FwN6Myl6TLPrDf5kf1d/9L373f2/2
         ctGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=I9VWg3Hw+pQATrPhpPNoNFFHfxTLJs/i7e3HVwOnF0Q=;
        b=A8x1W/NJD7b+rWL/Qj3Tj9oh9/pJQF/hw+tyzf5ggNCHlFapQqBUNESItXwR4tMZhC
         CDdVB2TitWAwlONSQMK6Ff/C2ifsAmKLu+zJJHBWNebx0a8FYvCf185abqphFP5B3fJ+
         dGQFiET43uu+GmGogmshUnegdjjlP/tNFB3W+OVTsUWjIKmO1H29jDVsAqQ26swQAzqJ
         +JpqjWRVe7bygn4RpVBmQe+humCc9SCsI5Zo/3owfhAfDxcyxbgY9zRvoXs883ByZHvO
         fPw1aL8di/hZW4ac+AlyvifTtRBY71HCOpUH7j6EZdvwTu/4/VWiPaqcYv5TNJopljW7
         Z9pw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 191-v6si1673397wmv.0.2018.10.16.01.01.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 01:01:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,387,1534802400"; 
   d="scan'208";a="282226767"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2018 10:01:21 +0200
Date: Tue, 16 Oct 2018 10:01:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Maya Nakamura <m.maya.nakamura@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Remove extra blank
 line
In-Reply-To: <20181016075309.GA10445@k-vBox>
Message-ID: <alpine.DEB.2.21.1810161000580.2493@hadrien>
References: <20181016075309.GA10445@k-vBox>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 16 Oct 2018, Maya Nakamura wrote:

> Remove extra blank line. Issue found by checkpatch.pl.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/ks7010/ks_hostif.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index ca030d3f609f..065bce193fac 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -191,7 +191,6 @@ static u8 read_ie(unsigned char *bp, u8 max, u8 *body)
>  	return size;
>  }
>
> -
>  static
>  int get_ap_information(struct ks_wlan_private *priv, struct ap_info *ap_info,
>  		       struct local_ap *ap)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181016075309.GA10445%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.
>

