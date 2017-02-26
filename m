X-GM-THRID: 6391116518625640448
X-Received: by 10.46.22.68 with SMTP id 4mr1611699ljw.14.1488140376086;
        Sun, 26 Feb 2017 12:19:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.65 with SMTP id 1ls392915ljv.35.gmail; Sun, 26 Feb 2017
 12:19:35 -0800 (PST)
X-Received: by 10.25.210.76 with SMTP id j73mr1444136lfg.15.1488140375126;
        Sun, 26 Feb 2017 12:19:35 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f7si627435wmg.3.2017.02.26.12.19.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 12:19:35 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,210,1484002800"; 
   d="scan'208";a="214775123"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 21:19:34 +0100
Date: Sun, 26 Feb 2017 21:19:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v4 7/7] staging: sm750fb: Remove blank
 lines after { and before } braces.
In-Reply-To: <58b2fbe1.43a3620a.b7aff.5a80@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702262119040.2056@hadrien>
References: <cover.1488122987.git.varshar186@gmail.com> <58b2fbe1.43a3620a.b7aff.5a80@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Varsha Rao wrote:

> Removed unnecessary blank lines after open brace and before closed
> braces, to fix the check patch issue.
>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> Changes in v4
> -Added proper version number to patch.
>
>  drivers/staging/sm750fb/sm750.c        | 1 -
>  drivers/staging/sm750fb/sm750_accel.c  | 4 ----
>  drivers/staging/sm750fb/sm750_cursor.c | 4 ----
>  3 files changed, 9 deletions(-)
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
> index 57ae743..9548863 100644
> --- a/drivers/staging/sm750fb/sm750_accel.c
> +++ b/drivers/staging/sm750fb/sm750_accel.c
> @@ -259,8 +259,6 @@ unsigned int rop2)   /* ROP value */
>  	if (accel->de_wait() != 0)
>  		return -1;
>
> -	{
> -

The removal of the open and closed brace is not refleted in the log
message.

julia

>  	write_dpr(accel, DE_SOURCE,
>  		  ((sx << DE_SOURCE_X_K1_SHIFT) & DE_SOURCE_X_K1_MASK) |
>  		  (sy & DE_SOURCE_Y_K2_MASK)); /* dpr0 */
> @@ -276,8 +274,6 @@ unsigned int rop2)   /* ROP value */
>  		DE_CONTROL_COMMAND_BITBLT | DE_CONTROL_STATUS;
>  	write_dpr(accel, DE_CONTROL, de_ctrl); /* dpr0c */
>
> -	}
> -
>  	return 0;
>  }
>
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b2fbe1.43a3620a.b7aff.5a80%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

