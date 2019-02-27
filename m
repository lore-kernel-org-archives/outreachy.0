X-GM-THRID: 6662713846690480128
X-Received: by 2002:a1c:200e:: with SMTP id g14mr64671wmg.13.1551296662810;
        Wed, 27 Feb 2019 11:44:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c843:: with SMTP id c3ls26280wml.7.canary-gmail; Wed, 27
 Feb 2019 11:44:21 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZG0jQo7B4oJ3VLoAS+N/XNI3JU2m59AZNhvkCbowm2lqr/hk+IXzQjRm7LS2HsR85+tx7f
X-Received: by 2002:a1c:a846:: with SMTP id r67mr65942wme.18.1551296661898;
        Wed, 27 Feb 2019 11:44:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551296661; cv=none;
        d=google.com; s=arc-20160816;
        b=0QrZOHNhyEIr/gTj+RSC7Q6L5IQc2JZQOswNLmNp38kgLjClGiTWhNUFsnhjeg5L49
         AphdDVyYr349ODeT/mRYhp7A2CD795s5i71ZngbCYvcKKkAexiY599gLQ6Xv6weEZ8rr
         tQ9MjCmdkDRTHudXOf0zce/ePtHT2Y7/7jxLIeukjQFsZyLtRPAcitgeNJ+nm+ZTgMrQ
         8XtXHIynuSV4eMP8kf5VCjRf+6DTVnSiE5sem1Rqa2/oBO6zjUTbl/cdWK35bzzJV7Bt
         F78B4JrkpnAUIDCd1lfATFa8I36Fe83D4Bij9RXzI0//iaDQX/G12zOzhFUGRnrjABRr
         2RYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DsU/Zhi3Ot/JnYgnvjdH3YG3mdE0GY5kbcrjpbykZFw=;
        b=PE3G4K8dyiW/1RIJ2K2+4DP5BwgCZDaiAYskS0ScIRhGo0LnCSEj8GvABA4f0i/1bf
         J6h80mMmDNl11Or/FFygMDh3C2Mlo0auk6e7wqpZg1IDMA1Tx6wUqXg6DuV2t1WRvk+Z
         OyPgw0ivyEiaFCQHV9GofhIhcNqfQxA0NWCiqroqx/RAdSofVTTgO4Rf0mwtXNBc5nss
         oYS869Ji7PmcoSe1zAG6fRC6wUmW/3SxzgDywH78bA46kR0IkMI6u5b/yv6ixXMMC7Q7
         yVteP+tVxbwmKDBRZV3BcBdWHSlxw07nUnolOoRqS29K7041wOAEh7JrSBTf84cCkPrA
         KjCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 60si97011wra.3.2019.02.27.11.44.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 11:44:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,420,1544482800"; 
   d="scan'208";a="371203528"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2019 20:44:21 +0100
Date: Wed, 27 Feb 2019 20:44:21 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 function declaration
In-Reply-To: <20190227161227.22128-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1902272043301.2561@hadrien>
References: <20190227161227.22128-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 27 Feb 2019, Madhumitha Prabakaran wrote:

> Align function arguments and function type to improve readability.
>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
> Changes in v3-
> -Included driver name in subject line
>
> Changes in v2-
> - Modified subject line and commit log
> ---
>  drivers/staging/vt6655/card.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> index 2996bf614caa..8d0182f5725c 100644
> --- a/drivers/staging/vt6655/card.c
> +++ b/drivers/staging/vt6655/card.c
> @@ -499,7 +499,7 @@ bool CARDbRadioPowerOn(struct vnt_private *priv)
>  	return bResult;
>  }
>
> -void CARDvSafeResetTx(truct vnt_private *priv)

This is invalid code and clearly was not in the kernel previously.  I
think that you are making your changes based on some change you previously
made, rather than based on the code in Greg's tree.

julia

> +void CARDvSafeResetTx(struct vnt_private *priv)
>  {
>  	unsigned int uu;
>  	struct vnt_tx_desc *pCurrTD;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190227161227.22128-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

