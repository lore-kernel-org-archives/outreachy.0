X-GM-THRID: 6330303746353922048
X-Received: by 10.46.69.10 with SMTP id s10mr1120035lja.1.1473916117815;
        Wed, 14 Sep 2016 22:08:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.218.14 with SMTP id r14ls69023lfg.36.gmail; Wed, 14 Sep
 2016 22:08:37 -0700 (PDT)
X-Received: by 10.46.5.140 with SMTP id 134mr1131324ljf.6.1473916117106;
        Wed, 14 Sep 2016 22:08:37 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w79si44931wmw.0.2016.09.14.22.08.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 22:08:37 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="193408067"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 07:08:36 +0200
Date: Thu, 15 Sep 2016 07:08:35 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, arnaud.patard@rtp-net.org, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v3 5/6] staging: xgifb: remove blank
 line before closing brace
In-Reply-To: <197d584fbdce72b6bcdcb969c9dfc963db31035e.1473888417.git.gs051095@gmail.com>
Message-ID: <alpine.DEB.2.10.1609150708120.6078@hadrien>
References: <cover.1473888416.git.gs051095@gmail.com> <197d584fbdce72b6bcdcb969c9dfc963db31035e.1473888417.git.gs051095@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 15 Sep 2016, Gargi Sharma wrote:

> delete blank line before '}' to fix the checkpatch issue Blank lines aren't necessary before a close
> brace '}'.

Lines in the commit message should not go over 80 characters.

julia

>
> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/xgifb/vb_setmode.c | 7 -------
>  1 file changed, 7 deletions(-)
>
> diff --git a/drivers/staging/xgifb/vb_setmode.c b/drivers/staging/xgifb/vb_setmode.c
> index b0ec981..8488612 100644
> --- a/drivers/staging/xgifb/vb_setmode.c
> +++ b/drivers/staging/xgifb/vb_setmode.c
> @@ -1677,7 +1677,6 @@ static unsigned char XGI_GetVCLKPtr(unsigned short RefreshRateTableIndex,
>  					if (!(modeflag & Charx8Dot))
>  						tempal = TVCLKBASE_315 +
>  								HiTVTextVCLK;
> -
>  				}
>  				return tempal;
>  			}
> @@ -2244,7 +2243,6 @@ static void XGI_XG21BLSignalVDD(unsigned short tempbh, unsigned short tempbl,
>
>  		/* CR B4[1] */
>  		xgifb_reg_and_or(pVBInfo->P3d4, 0xB4, ~0x02, temp);
> -
>  	}
>
>  	temp = xgifb_reg_get(pVBInfo->P3d4, 0x48);
> @@ -2273,7 +2271,6 @@ static void XGI_XG27BLSignalVDD(unsigned short tempbh, unsigned short tempbl,
>
>  		/* CR B4[1] */
>  		xgifb_reg_and_or(pVBInfo->P3d4, 0xB4, ~0x02, temp);
> -
>  	}
>  	xgifb_reg_and_or(pVBInfo->P3d4, 0xB4, ~tempbh0, tempbl0);
>
> @@ -2308,7 +2305,6 @@ static void XGI_DisplayOn(struct xgifb_video_info *xgifb_info,
>  			/* DVO/DVI signal on */
>  			XGI_XG21BLSignalVDD(0x20, 0x20, pVBInfo);
>  		}
> -
>  	}
>
>  	if (pXGIHWDE->jChipType == XG27) {
> @@ -2328,7 +2324,6 @@ static void XGI_DisplayOn(struct xgifb_video_info *xgifb_info,
>  			/* DVO/DVI signal on */
>  			XGI_XG27BLSignalVDD(0x20, 0x20, pVBInfo);
>  		}
> -
>  	}
>  }
>
> @@ -4128,7 +4123,6 @@ static void XGI_SetGroup4(unsigned short ModeIdIndex,
>  		if (pVBInfo->VBInfo & (SetCRT2ToTV | SetCRT2ToHiVision)) {
>  			if (pVBInfo->VGAHDE > 800)
>  				xgifb_reg_or(pVBInfo->Part4Port, 0x1E, 0x08);
> -
>  		}
>  		temp = 0x0036;
>
> @@ -4404,7 +4398,6 @@ static void xgifb_set_lvds(struct xgifb_video_info *xgifb_info,
>
>  		inb(pVBInfo->P3da); /* reset 3da */
>  	}
> -
>  }
>
>  /* --------------------------------------------------------------------- */
> --
> 2.9.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/197d584fbdce72b6bcdcb969c9dfc963db31035e.1473888417.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

