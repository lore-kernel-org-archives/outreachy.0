X-GM-THRID: 6253009211887714304
X-Received: by 10.194.19.195 with SMTP id h3mr2615053wje.1.1456010905018;
        Sat, 20 Feb 2016 15:28:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.39.209 with SMTP id n200ls177530lfn.36.gmail; Sat, 20 Feb
 2016 15:28:24 -0800 (PST)
X-Received: by 10.112.205.164 with SMTP id lh4mr2543255lbc.6.1456010904326;
        Sat, 20 Feb 2016 15:28:24 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w197si648538wmw.3.2016.02.20.15.28.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 15:28:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E0C2B1064;
	Sat, 20 Feb 2016 23:28:22 +0000 (UTC)
Date: Sat, 20 Feb 2016 15:27:10 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Merge three
 statements into one
Message-ID: <20160220232710.GA13165@kroah.com>
References: <20160219142909.GA10262@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160219142909.GA10262@amitoj-Inspiron-3542>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Feb 19, 2016 at 07:59:09PM +0530, Amitoj Kaur Chawla wrote:
> This patch merges three lines into one, removing if branch.
> 
> A simplified version of the Coccinelle semantic patch used to find this 
> is as follows:
> 
> //<smpl>
> @@
> expression e;
> @@
> - if(e)
> - return false;
> - return true;
> + return !e;
> //</smpl>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/vt6655/rf.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index ae10da2..f32d18e 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -518,10 +518,7 @@ bool IFRFbWriteEmbedded(struct vnt_private *priv, unsigned long dwData)
>  			break;
>  	}
>  
> -	if (ww == W_MAX_TIMEOUT)
> -		return false;
> -
> -	return true;
> +	return !(ww == W_MAX_TIMEOUT);

That's crazy, that's much less readable than before.

Remember, kernel code is ment for people to read it and instantly know
what is going on, don't force us to think :)

thanks,

greg k-h

