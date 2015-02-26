X-GM-THRID: 3510455238656
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5a5ed1d62f254d20
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.65.109 with SMTP id w13mr9803070pas.28.1424985108934;
        Thu, 26 Feb 2015 13:11:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.126.35 with SMTP id mv3ls1991264igb.5.canary; Thu, 26 Feb
 2015 13:11:48 -0800 (PST)
X-Received: by 10.42.81.68 with SMTP id y4mr10345441ick.17.1424985108753;
        Thu, 26 Feb 2015 13:11:48 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id m1si275137pdc.0.2015.02.26.13.11.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:11:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 682D7B88;
	Thu, 26 Feb 2015 21:11:48 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:11:48 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Add blank line
Message-ID: <20150226211148.GA20619@kroah.com>
References: <1424905944-7658-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424905944-7658-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 01:12:24AM +0200, Yeliz Taneroglu wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/fbtft/fb_ssd1351.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
> index 062d986..b59120c 100644
> --- a/drivers/staging/fbtft/fb_ssd1351.c
> +++ b/drivers/staging/fbtft/fb_ssd1351.c
> @@ -72,6 +72,7 @@ static void set_addr_win(struct fbtft_par *par, int xs, int ys, int xe, int ye)
>  static int set_var(struct fbtft_par *par)
>  {
>  	unsigned remap;
> +
>  	fbtft_par_dbg(DEBUG_INIT_DISPLAY, par, "%s()\n", __func__);
>  
>  	if (par->fbtftops.init_display != init_display) {

Someone else sent in this patch before you did, sorry :(

