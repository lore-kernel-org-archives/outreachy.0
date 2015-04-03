X-GM-THRID: 10800857088000
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e0b5b091b94f8408
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.184.73 with SMTP id es9mr216520lac.4.1428040009365;
        Thu, 02 Apr 2015 22:46:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.9 with SMTP id m9ls56362wiy.16.gmail; Thu, 02 Apr 2015
 22:46:48 -0700 (PDT)
X-Received: by 10.180.81.134 with SMTP id a6mr330682wiy.1.1428040008956;
        Thu, 02 Apr 2015 22:46:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id el6si55078wib.0.2015.04.02.22.46.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 02 Apr 2015 22:46:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,516,1422918000"; 
   d="scan'208";a="131419129"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 03 Apr 2015 07:46:48 +0200
Date: Fri, 3 Apr 2015 07:46:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Charlie WONG Super <1213charlie@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: fbtft: Replace spaces to tab
In-Reply-To: <1428039199-4628-1-git-send-email-1213charlie@gmail.com>
Message-ID: <alpine.DEB.2.02.1504030746190.2011@localhost6.localdomain6>
References: <1428039199-4628-1-git-send-email-1213charlie@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 3 Apr 2015, Charlie WONG Super wrote:

> From: Charlie Wong Super <1213charlie@gmail.com>
> 
> Spaces at the start of the line, replace the leading space to tabs
> 
> Signed-off-by: Charlie Wong Super <1213charlie@gmail.com>
> ---
>  drivers/staging/fbtft/fb_st7735r.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/fbtft/fb_st7735r.c b/drivers/staging/fbtft/fb_st7735r.c
> index 9d87430..8728347 100644
> --- a/drivers/staging/fbtft/fb_st7735r.c
> +++ b/drivers/staging/fbtft/fb_st7735r.c
> @@ -25,8 +25,8 @@
>  #include "fbtft.h"
>  
>  #define DRVNAME "fb_st7735r"
> -#define DEFAULT_GAMMA "0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \
> -                      "0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10"
> +#define DEFAULT_GAMMA	"0F 1A 0F 18 2F 28 20 22 1F 1B 23 37 00 07 02 10\n" \

You don't need a tab after GAMMA.

julia

> +			"0F 1B 0F 17 33 2C 29 2E 30 30 39 3F 00 07 03 10"
>  
>  
>  static int default_init_sequence[] = {
> @@ -119,9 +119,9 @@ static int set_var(struct fbtft_par *par)
>  	/* MADCTL - Memory data access control
>  	     RGB/BGR:
>  	     1. Mode selection pin SRGB
> -	        RGB H/W pin for color filter setting: 0=RGB, 1=BGR
> +		RGB H/W pin for color filter setting: 0=RGB, 1=BGR
>  	     2. MADCTL RGB bit
> -	        RGB-BGR ORDER color filter panel: 0=RGB, 1=BGR */
> +		RGB-BGR ORDER color filter panel: 0=RGB, 1=BGR */
>  	switch (par->info->var.rotate) {
>  	case 0:
>  		write_reg(par, 0x36, MX | MY | (par->bgr << 3));
> -- 
> 1.9.1
> 
> 

