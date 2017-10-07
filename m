X-GM-THRID: 6474180643558260736
X-Received: by 10.28.27.86 with SMTP id b83mr582296wmb.7.1507399617647;
        Sat, 07 Oct 2017 11:06:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.157.214 with SMTP id g205ls359290wme.1.gmail; Sat, 07 Oct
 2017 11:06:56 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAUgjHmKj03oKQ7AnUKAV/JF5HOOaC8MBGFjmzNEnRdv2/ZFnuTnTaxvcoea2iZ8J+tDMea
X-Received: by 10.28.27.86 with SMTP id b83mr582293wmb.7.1507399616713;
        Sat, 07 Oct 2017 11:06:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507399616; cv=none;
        d=google.com; s=arc-20160816;
        b=FTrcHi4K1t5OP4TujvTqbPQn9RJXXOEhgNg0stMWkB9i0w0gr2sdlnzLTAuO+VPiGp
         wfMsWFnBAFr7x2bEALUEh2cfIgE0VGXQ5/+bTS7ujigbNMfU6ofbQpG2As3CRF+PfVnc
         3gd58Pp7gOihdEVcqaQuJTa/E6nnWxIzBcvrftuXJX1ZS/RnL5tTrwjsPlJSD86v13oD
         d1p5WxnJaHDVcnYVfqgP/kDAZWLt0WOvSVynGWak2i0zfVkZOG52nlsQlMyzBY+G4t/w
         y99fkhAinpmn1NxqN2XWQpKRaszvkbpiP/gMpefDe8EJahmvaOkMWZ4Z+8LXjs3QIVPj
         NWqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=3PvXSpvYLYWqLQt4eDytvy5yc+px/JHqzjwAQuzxrFA=;
        b=z4/vNaDigrgJHWsS6iKyOSrcKcc/cD25MfH5fwpbTIwWYiw1yHh0IZH2eFX1FURjxB
         +jrbfJ+HVDS5iDn9+8PS8R7qPiv9Nzjgna1kJRYchGX1dWQLHhg2mryDBorZgeRxd0ue
         PSBhhA7dZHgX1f3yUAzUoS890zIOnrfqJJbMqugWk0cI9qnKv6FJ7YO6ZlOb4Jj3upss
         ixPLTqLuFhmpSyp+nhZ5cGvZCbv2MSADhXrnBB3L2zNOUP0diSY8i0AAE63zKWXCcsLS
         neX4TcPMUAaHZPlEz+03aBnm8W87varEq/1tNYPgQHtGG1+o+5j60IpQQZTzp2Z+xYKc
         8Nmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 196si576644wmk.4.2017.10.07.11.06.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Oct 2017 11:06:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,490,1500933600"; 
   d="scan'208";a="240114502"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2017 20:06:55 +0200
Date: Sat, 7 Oct 2017 20:06:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: remove unnecessary
 parantheses around assignment
In-Reply-To: <1507387638-17906-1-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1710072006410.2134@hadrien>
References: <1507387638-17906-1-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 7 Oct 2017, Aastha Gupta wrote:

> Parentheses are not needed around the right hand side of an assignment.
> This patch is done using Coccinelle:
>
> @@
> expression a, b;
> @@
>
> b =
> -(
> a
> -)
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/fbtft/fb_uc1611.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fbtft/fb_uc1611.c b/drivers/staging/fbtft/fb_uc1611.c
> index 48e3b3f..8eb5e7f 100644
> --- a/drivers/staging/fbtft/fb_uc1611.c
> +++ b/drivers/staging/fbtft/fb_uc1611.c
> @@ -225,7 +225,7 @@ static int write_vmem(struct fbtft_par *par, size_t offset, size_t len)
>  	u8 *buf8 = par->txbuf.buf;
>  	u16 *buf16 = par->txbuf.buf;
>  	int line_length = par->info->fix.line_length;
> -	int y_start = (offset / line_length);
> +	int y_start = offset / line_length;
>  	int y_end = (offset + len - 1) / line_length;
>  	int x, y, i;
>  	int ret = 0;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1507387638-17906-1-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

