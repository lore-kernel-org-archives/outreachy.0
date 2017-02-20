X-GM-THRID: 6389055061138341888
X-Received: by 10.46.6.26 with SMTP id 26mr2017479ljg.31.1487573221227;
        Sun, 19 Feb 2017 22:47:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.92.129 with SMTP id q123ls16271ljb.23.gmail; Sun, 19 Feb
 2017 22:47:00 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr1919616lfd.12.1487573220416;
        Sun, 19 Feb 2017 22:47:00 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h198si632344wmg.1.2017.02.19.22.47.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 22:47:00 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,185,1484002800"; 
   d="scan'208";a="261221132"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2017 07:46:48 +0100
Date: Mon, 20 Feb 2017 07:46:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Katie Dunne <kdunne@mail.ccsf.edu>
cc: outreachy-kernel@googlegroups.com, greg@kroah.com, 
    sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    sudip@vectorindia.org
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: add spaces around
 operators
In-Reply-To: <20170220051429.GA3847@katie-Inspiron-5748>
Message-ID: <alpine.DEB.2.20.1702200746360.2222@hadrien>
References: <20170220051429.GA3847@katie-Inspiron-5748>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Feb 2017, Katie Dunne wrote:

> Add spaces around operators -, *, ?:, >>, << to conform to kernel style.
> These instances were found with checkpatch.pl
>
> Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/sm750fb/sm750_cursor.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/sm750fb/sm750_cursor.c b/drivers/staging/sm750fb/sm750_cursor.c
> index b1651b0..dbc8bb1 100644
> --- a/drivers/staging/sm750fb/sm750_cursor.c
> +++ b/drivers/staging/sm750fb/sm750_cursor.c
> @@ -111,14 +111,14 @@ void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
>  		data = 0;
>
>  		for (j = 0; j < 8; j++) {
> -			if (mask & (0x80>>j)) {
> +			if (mask & (0x80 >> j)) {
>  				if (rop == ROP_XOR)
>  					opr = mask ^ color;
>  				else
>  					opr = mask & color;
>
>  				/* 2 stands for forecolor and 1 for backcolor */
> -				data |= ((opr & (0x80>>j))?2:1)<<(j*2);
> +				data |= ((opr & (0x80 >> j)) ? 2 : 1) << (j * 2);
>  			}
>  		}
>  		iowrite16(data, pbuffer);
> @@ -165,13 +165,13 @@ void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
>  		data = 0;
>
>  		for (j = 0; j < 8; j++) {
> -			if (mask & (1<<j))
> -				data |= ((color & (1<<j))?1:2)<<(j*2);
> +			if (mask & (1 << j))
> +				data |= ((color & (1 << j)) ? 1 : 2) << (j * 2);
>  		}
>  		iowrite16(data, pbuffer);
>
>  		/* assume pitch is 1,2,4,8,...*/
> -		if (!(i&(pitch-1))) {
> +		if (!(i & (pitch - 1))) {
>  			/* need a return */
>  			pstart += offset;
>  			pbuffer = pstart;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170220051429.GA3847%40katie-Inspiron-5748.
> For more options, visit https://groups.google.com/d/optout.
>

