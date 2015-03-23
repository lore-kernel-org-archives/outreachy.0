X-GM-THRID: 9654834823168
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,3dfed47488d02918
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.70.90.4 with SMTP id bs4mr1933750pdb.7.1427152907808;
        Mon, 23 Mar 2015 16:21:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.17 with SMTP id u17ls2681026qgu.3.gmail; Mon, 23 Mar
 2015 16:21:47 -0700 (PDT)
X-Received: by 10.236.40.42 with SMTP id e30mr1875360yhb.35.1427152907638;
        Mon, 23 Mar 2015 16:21:47 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id l3si290550pdo.0.2015.03.23.16.21.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2015 16:21:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AC431A79;
	Mon, 23 Mar 2015 23:21:46 +0000 (UTC)
Date: Mon, 23 Mar 2015 22:30:38 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Marianne Moeller Knudsen <marianne@masu.dk>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Replace printk with
 pr_debug
Message-ID: <20150323213038.GA26335@kroah.com>
References: <20150322200502.GA7693@debianvm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150322200502.GA7693@debianvm>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 22, 2015 at 09:05:02PM +0100, Marianne Moeller Knudsen wrote:
> Replace printk without loglevel with pr_debug. Issue found by
> checkpatch.
> 
> Signed-off-by: Marianne Moeller Knudsen <marianne@masu.dk>
> ---
>  drivers/staging/sm750fb/ddk750_display.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
> index c84196a..9f768a3 100644
> --- a/drivers/staging/sm750fb/ddk750_display.c
> +++ b/drivers/staging/sm750fb/ddk750_display.c
> @@ -51,7 +51,7 @@ static void setDisplayControl(int ctrl,int dispState)
>  				POKE32(PANEL_DISPLAY_CTRL, ulDisplayCtrlReg);
>  			} while((PEEK32(PANEL_DISPLAY_CTRL) & ~ulReservedBits) !=
>  					(ulDisplayCtrlReg & ~ulReservedBits));
> -			printk("Set Panel Plane enbit:after tried %d times\n",cnt);
> +			pr_debug("Set Panel Plane enbit:after tried %d times\n",cnt);

It's a driver, it should use dev_debug() instead please.

thanks,

greg k-h

