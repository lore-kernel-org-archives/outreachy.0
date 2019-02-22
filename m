X-GM-THRID: 6660888898978185216
X-Received: by 2002:a2e:909a:: with SMTP id l26mr373316ljg.1.1550869274812;
        Fri, 22 Feb 2019 13:01:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:4c06:: with SMTP id z6ls712046lfa.1.gmail; Fri, 22 Feb
 2019 13:01:14 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaAThXQcY4RLzhCr5cn4bVyLD1Ul7+Er6D9mfnCWeVFNUWsqHc7kQtlNgvlQTqUtGss4rSA
X-Received: by 2002:ac2:515a:: with SMTP id q26mr380781lfd.6.1550869274018;
        Fri, 22 Feb 2019 13:01:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550869274; cv=none;
        d=google.com; s=arc-20160816;
        b=oCrX3cyX7wj0vA6CoxETfjfeKyNR43XxOc2vwx0RQtjXtRhrRpqa9EIRjbILQnKCId
         o/CcoCnkTS7f1YQxk3FlXAivgkr9xuu7Rmqo92ENEf+IDBpdW3GCyOGlQZvWD6sFM+zx
         OTe8oZDGSx3epPutW4CZqPheUekNddKlAupeN4WwcUzL+lF3ngv1+a+O/V+GiS6cH0C4
         3m1LhLbteIVPIqrhf8xi5INMjkJqAY2HPnK8KOTe9D6F7PR3TGUd5uqIJ+90sNhsZI6U
         Eg9lTOl4XZCmrLf4RDAUKCEMmDpa596OYEA20ujIDC/kzyEB/eww0yngmBYNX1Tl1bKH
         7b6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=nj1iRS9LGuF9d1esxXgg34Qbu1K32bwGRCWysSOtck0=;
        b=DYgOBHF7zRhx5BV3A6ghjWDjAKwbgI8xsGVdUFwg/kp0qXTVDpZFaLzZ7n2HhqElG8
         iiY8ZPhuFcxnojNx+bFt0EQHOKEHmBKu3fpIgruENrdts52dT1mdFZ95NWoEMLQ3CGmr
         q9QYww7GWj+d/J6UyNlADINgRnZMzkVaALlpbNYTloX8G2cVq0A7N+E7gBpd7Af00f51
         Zwvv1uAB+32es6Vn4og/d4gfwRnuMRH+E8pGuqeBob1cLx8BeEgP6MPKIYkCnhb6NV7x
         5QvTmikkDCG9AAZbWeraHIaSKCClw6WwJcPLOruYwjRXM0gGqKu3u8LSv8U0iHhndcn9
         G3Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a26si93152lff.2.2019.02.22.13.01.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 13:01:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,401,1544482800"; 
   d="scan'208";a="370557647"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Feb 2019 22:01:13 +0100
Date: Fri, 22 Feb 2019 22:01:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Alignment Should
 match Open Paranthesis
In-Reply-To: <20190222180905.10618-1-bhanusreemahesh@gmail.com>
Message-ID: <alpine.DEB.2.21.1902222200050.2579@hadrien>
References: <20190222180905.10618-1-bhanusreemahesh@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The capitalization in the above subject line seems sort of random.  In any
case, just capitalizing the first word would be fine.

julia

On Fri, 22 Feb 2019, Bhanusree Pola wrote:

> Clears the warning found by checkpatch.pl from various files
> WARNING:Alignment should match open paranthesis
>
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ssd1351.c | 2 +-
>  drivers/staging/fbtft/fb_tinylcd.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
> index a8980d9f7557..9ac78ce30619 100644
> --- a/drivers/staging/fbtft/fb_ssd1351.c
> +++ b/drivers/staging/fbtft/fb_ssd1351.c
> @@ -164,7 +164,7 @@ static int set_gamma(struct fbtft_par *par, u32 *curves)
>  static int blank(struct fbtft_par *par, bool on)
>  {
>  	fbtft_par_dbg(DEBUG_BLANK, par, "(%s=%s)\n",
> -		__func__, on ? "true" : "false");
> +		      __func__, on ? "true" : "false");
>  	if (on)
>  		write_reg(par, 0xAE);
>  	else
> diff --git a/drivers/staging/fbtft/fb_tinylcd.c b/drivers/staging/fbtft/fb_tinylcd.c
> index e463b0ddf16d..60cda57bcb33 100644
> --- a/drivers/staging/fbtft/fb_tinylcd.c
> +++ b/drivers/staging/fbtft/fb_tinylcd.c
> @@ -38,7 +38,7 @@ static int init_display(struct fbtft_par *par)
>  	write_reg(par, 0xE5, 0x00);
>  	write_reg(par, 0xF0, 0x36, 0xA5, 0x53);
>  	write_reg(par, 0xE0, 0x00, 0x35, 0x33, 0x00, 0x00, 0x00,
> -			     0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
> +		  0x00, 0x35, 0x33, 0x00, 0x00, 0x00);
>  	write_reg(par, MIPI_DCS_SET_PIXEL_FORMAT, 0x55);
>  	write_reg(par, MIPI_DCS_EXIT_SLEEP_MODE);
>  	udelay(250);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190222180905.10618-1-bhanusreemahesh%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

