X-GM-THRID: 6391116518625640448
X-Received: by 10.25.212.76 with SMTP id l73mr1095577lfg.13.1488055922647;
        Sat, 25 Feb 2017 12:52:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.31.14 with SMTP id f14ls658168lff.18.gmail; Sat, 25 Feb
 2017 12:52:01 -0800 (PST)
X-Received: by 10.25.167.5 with SMTP id q5mr1087174lfe.18.1488055921311;
        Sat, 25 Feb 2017 12:52:01 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c188si382879wmd.0.2017.02.25.12.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Feb 2017 12:52:01 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,204,1484002800"; 
   d="scan'208";a="262076781"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 21:52:00 +0100
Date: Sat, 25 Feb 2017 21:52:00 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 7/7] staging: sm750fb: Remove blank
 lines after { and before } braces.
In-Reply-To: <58b1ce9b.19c2620a.af7bc.d941@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702252151090.2179@hadrien>
References: <cover.1488045682.git.varshar186@gmail.com> <58b1ce9b.19c2620a.af7bc.d941@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Varsha Rao wrote:

> Removed unnecessary blank lines after open braces and before closed
> braces, to fix the check patch issue.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
>  drivers/staging/sm750fb/sm750.c        | 1 -
>  drivers/staging/sm750fb/sm750_accel.c  | 2 --
>  drivers/staging/sm750fb/sm750_cursor.c | 4 ----
>  3 files changed, 7 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
> index 332a3ef..c618c56 100644
> --- a/drivers/staging/sm750fb/sm750.c
> +++ b/drivers/staging/sm750fb/sm750.c
> @@ -806,7 +806,6 @@ static int lynxfb_set_fbinfo(struct fb_info *info, int index)
>  	}
>
>  	for (i = 0; i < 3; i++) {
> -
>  		ret = fb_find_mode(var, info, g_fbmode[index],
>  				   pdb[i], cdb[i], NULL, 8);
>
> diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
> index 57ae743..a842831 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -260,7 +260,6 @@ unsigned int rop2)   /* ROP value */
>  		return -1;
>
>  	{
> -

I wonder why this brace is here anyway?  There is no if, etc branch, and
not even any variables being declared.

julia

>  	write_dpr(accel, DE_SOURCE,
>  		  ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
>  		  (sy & DE_SOURCE_Y_K2_MASK)); /* dpr0 */
> @@ -275,7 +274,6 @@ unsigned int rop2)   /* ROP value */
>  		((nDirection == RIGHT_TO_LEFT) ? DE_CONTROL_DIRECTION : 0) |
>  		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
>  	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
> -
>  	}
>
>  	return 0;
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index dbc8bb1..aa232c3 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -131,10 +131,7 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
>  		} else {
>  			pbuffer += sizeof(u16);
>  		}
> -
>  	}
> -
> -
>  }
>
>
> @@ -178,6 +175,5 @@ void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
>  		} else {
>  			pbuffer += sizeof(u16);
>  		}
> -
>  	}
>  }
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b1ce9b.19c2620a.af7bc.d941%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

