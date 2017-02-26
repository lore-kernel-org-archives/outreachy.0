X-GM-THRID: 6391116518625640448
X-Received: by 10.46.80.82 with SMTP id v18mr1161198ljd.27.1488109833469;
        Sun, 26 Feb 2017 03:50:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.19 with SMTP id s19ls145647ljd.52.gmail; Sun, 26 Feb
 2017 03:50:32 -0800 (PST)
X-Received: by 10.46.9.81 with SMTP id 78mr1399237ljj.30.1488109832919;
        Sun, 26 Feb 2017 03:50:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si566004wmd.0.2017.02.26.03.50.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 03:50:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,208,1484002800"; 
   d="scan'208";a="214750562"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Feb 2017 12:50:19 +0100
Date: Sun, 26 Feb 2017 12:50:19 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, 
    Teddy Wang <teddy.wang@siliconmotion.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 7/7] staging: sm750fb: Remove blank
 lines after { and before } braces.
In-Reply-To: <58b287a8.437c630a.85d25.3295@mx.google.com>
Message-ID: <alpine.DEB.2.20.1702261249560.2166@hadrien>
References: <58b287a8.437c630a.85d25.3295@mx.google.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 26 Feb 2017, Varsha Rao wrote:

> Removed unnecessary blank lines after open brace and before closed
> braces, to fix the check patch issue.

When you send a v2 of a patch in a series, you need to send the whole
series again, including the unchanged parts.

julia

>
> Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
> ---
> changes in v2:
> - Modified commit message.
> - Removed changes in drivers/staging/sm750fb/sm750_accel.c
>
>  drivers/staging/sm750fb/sm750.c        | 1 -
>  drivers/staging/sm750fb/sm750_cursor.c | 4 ----
>  2 files changed, 5 deletions(-)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/58b287a8.437c630a.85d25.3295%40mx.google.com.
> For more options, visit https://groups.google.com/d/optout.
>

