X-GM-THRID: 1263646277632
X-Received: by 10.140.152.140 with SMTP id 134mr9820963qhy.6.1424985273527;
        Thu, 26 Feb 2015 13:14:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.132 with SMTP id f4ls2041237igt.43.canary; Thu, 26 Feb
 2015 13:14:33 -0800 (PST)
X-Received: by 10.66.97.97 with SMTP id dz1mr9145051pab.2.1424985273278;
        Thu, 26 Feb 2015 13:14:33 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id ri9si263579pdb.1.2015.02.26.13.14.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 13:14:33 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 05C76B12;
	Thu, 26 Feb 2015 21:14:33 +0000 (UTC)
Date: Thu, 26 Feb 2015 13:14:32 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: dgnc: Add blank line
Message-ID: <20150226211432.GA30079@kroah.com>
References: <1424433670-7218-1-git-send-email-yeliztaneroglu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1424433670-7218-1-git-send-email-yeliztaneroglu@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 20, 2015 at 02:01:10PM +0200, Yeliz Taneroglu wrote:
> This patch fixes the checkpatch.pl warning:
> WARNING: "Missing a blank line after declarations"
> 
> Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_tty.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
> index 67dc8ef..7a31fbf 100644
> --- a/drivers/staging/dgnc/dgnc_tty.c
> +++ b/drivers/staging/dgnc/dgnc_tty.c
> @@ -3066,6 +3066,7 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
>  	case DIGI_REALPORT_SENDIMMEDIATE:
>  	{
>  		unsigned char c;
> +
>  		DGNC_UNLOCK(ch->ch_lock, lock_flags);
>  		rc = get_user(c, (unsigned char __user *) arg);
>  		if (rc)
> -- 
> 1.8.3.2

This fails to apply :(

