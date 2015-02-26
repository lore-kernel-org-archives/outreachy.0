X-GM-THRID: 1543619215360
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,e39e096578d5ba86
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.50.23.75 with SMTP id k11mr9441778igf.3.1424975393438;
        Thu, 26 Feb 2015 10:29:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.177 with SMTP id 46ls280387qgb.89.gmail; Thu, 26 Feb
 2015 10:29:53 -0800 (PST)
X-Received: by 10.52.236.196 with SMTP id uw4mr9161499vdc.2.1424975393209;
        Thu, 26 Feb 2015 10:29:53 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bo1si229052pbc.0.2015.02.26.10.29.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 10:29:53 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E060CB8D;
	Thu, 26 Feb 2015 18:29:52 +0000 (UTC)
Date: Thu, 26 Feb 2015 10:29:52 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Hatice =?iso-8859-1?Q?ERT=DCRK?= <haticeerturk27@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: vt6655: changed C99 //
 comments
Message-ID: <20150226182952.GA7115@kroah.com>
References: <1424472008-9544-1-git-send-email-haticeerturk27@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1424472008-9544-1-git-send-email-haticeerturk27@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Feb 21, 2015 at 12:40:08AM +0200, Hatice ERT�RK wrote:
> // erased and replace it with /**/ used.
> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
> v2:
> *Some /**/ deleted.A row in a single comment line was made.Added a space between the ; and the /*.
> ---
>  drivers/staging/vt6655/rf.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
> index 0b58927..d5fae3e 100644
> --- a/drivers/staging/vt6655/rf.c
> +++ b/drivers/staging/vt6655/rf.c
> @@ -438,13 +438,13 @@ static bool s_bAL7230Init(struct vnt_private *priv)
>  	MACvWordRegBitsOn(dwIoBase, MAC_REG_SOFTPWRCTL, SOFTPWRCTL_SWPE3);
>  
>  	/* Calibration */
> -	MACvTimer0MicroSDelay(dwIoBase, 150);/* 150us */
> +	MACvTimer0MicroSDelay(dwIoBase, 150); /* 150us */
>  	/* TXDCOC:active, RCK:disable */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x9ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
> +	MACvTimer0MicroSDelay(dwIoBase, 30); /* 30us */
>  	/* TXDCOC:disable, RCK:active */
>  	bResult &= IFRFbWriteEmbedded(priv, (0x3ABA8F00+(BY_AL7230_REG_LEN<<3)+IFREGCTL_REGW));
> -	MACvTimer0MicroSDelay(dwIoBase, 30);/* 30us */
> +	MACvTimer0MicroSDelay(dwIoBase, 30); /* 30us */
>  	/* TXDCOC:disable, RCK:disable */
>  	bResult &= IFRFbWriteEmbedded(priv, dwAL7230InitTable[CB_AL7230_INIT_SEQ-1]);
>  
> -- 
> 1.9.1

This also doesn't apply, please use my latest kernel tree.

thanks,

greg k-h

