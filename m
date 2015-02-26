X-GM-THRID: 1755530133504
X-Received: by 10.66.190.104 with SMTP id gp8mr10211951pac.26.1424985497176;
        Thu, 26 Feb 2015 13:18:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.39 with SMTP id h39ls309357iod.26.gmail; Thu, 26 Feb
 2015 13:18:16 -0800 (PST)
X-Received: by 10.66.229.36 with SMTP id sn4mr10177272pac.32.1424985496882;
        Thu, 26 Feb 2015 13:18:16 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id hs7si264869pad.1.2015.02.26.13.18.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:18:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7FC98B31;
	Thu, 26 Feb 2015 21:18:16 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:18:16 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: speakup: Add blank line
Message-ID: <20150226211816.GA30749@kroah.com>
References: <1424520822-6899-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424520822-6899-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 02:13:42PM +0200, Yeliz Taneroglu wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/speakup/selection.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/speakup/selection.c b/drivers/staging/speakup/selection.c
> index ca04d36..507fc9a 100644
> --- a/drivers/staging/speakup/selection.c
> +++ b/drivers/staging/speakup/selection.c
> @@ -66,6 +66,7 @@ int speakup_set_selection(struct tty_struct *tty)
>  	if (ps > pe) {
>  		/* make sel_start <= sel_end */
>  		int tmp = ps;
> +
>  		ps = pe;
>  		pe = tmp;
>  	}
> -- 
> 1.8.3.2

Ok, I think you are working against an older version of the kernel tree.
I'm just going to drop all pending patches from you, can you please
refresh your tree against my staging-testing branch of staging.git and
resend any patches that apply?

thanks,

greg k-h

