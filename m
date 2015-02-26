X-GM-THRID: 1229525614592
X-Received: by 10.43.53.71 with SMTP id vp7mr10117885icb.12.1424985299727;
        Thu, 26 Feb 2015 13:14:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.247 with SMTP id m110ls331717qge.81.gmail; Thu, 26 Feb
 2015 13:14:59 -0800 (PST)
X-Received: by 10.236.20.234 with SMTP id p70mr9791687yhp.46.1424985299430;
        Thu, 26 Feb 2015 13:14:59 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si275944pdc.0.2015.02.26.13.14.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:14:59 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 27811B12;
	Thu, 26 Feb 2015 21:14:59 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:14:58 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Remove space before tab
Message-ID: <20150226211458.GC30079@kroah.com>
References: <1424433970-7764-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424433970-7764-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 02:06:10PM +0200, Yeliz Taneroglu wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "please, no space before tabs"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_tty.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index 7a31fbf..8a4e8fe 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -3088,7 +3088,7 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>  		struct digi_getcounter buf;
>  
>  		buf.norun = ch->ch_err_overrun;
> -		buf.noflow = 0;  	/* The driver doesn't keep this stat */
> +		buf.noflow = 0;		/* The driver doesn't keep this stat */
>  		buf.nframe = ch->ch_err_frame;
>  		buf.nparity = ch->ch_err_parity;
>  		buf.nbreak = ch->ch_err_break;
> -- 
> 1.8.3.2

This patch fails to apply :(

