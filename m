X-GM-THRID: 6466031542191783936
X-Received: by 10.223.182.165 with SMTP id j37mr1937814wre.16.1505727816621;
        Mon, 18 Sep 2017 02:43:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.65 with SMTP id i1ls800869ljd.43.gmail; Mon, 18 Sep 2017
 02:43:35 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBlkUJVpurVSY0NLGgFbNkOZ48UtWQsQCEilIMeblnXtJU0WIei2cLygiz2RCZT9mxAwJGi
X-Received: by 10.25.195.206 with SMTP id t197mr775829lff.40.1505727815417;
        Mon, 18 Sep 2017 02:43:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505727815; cv=none;
        d=google.com; s=arc-20160816;
        b=nVuKzA23N2LO5SEnSW8VeMP/w2yRInSn6AkHYyCP78/gZ69pYpTPqgITL8rdQtx6NK
         +7gHFEdNRVxuDeYoBS0/pxzLvsHC4q4ROk2hjzRd5dwjoqkER2jKCwbCbnlA48dFYwpr
         MYeX4dq+95wixrJbiWtdKdrlqwfRMNx3iUcR0xUZMz4WdhXeujz7RtD7VHUmR16Q1Vq8
         c58umVRTO+AOeEmL5YRJOlQlMNeRQkQJXdAL1Qw5hvYP3PIp5bAGWTlLMxoG77Td0Js7
         cAm/OEYdYSzqG2fh+nXTJKYnJDNO2Dxsr3HNDzlUX63r3XCYY0SsPmSBD2CU7brYSEx9
         ReFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=eJjqQrYtoCxamD84GfZDP82lC6ymttAgW7AvaOaVeC4=;
        b=sUVQLCmSXNZsfjQ6jIpjC9OnQhYBHTe7uDO1br+uGwsHUDuyCSeUj51NvXCTaHE22i
         MRna0GtejpeWL7aR2E+5dwmo86IDB/X5llsd/f9nN/8Ubq1QOeId3Dw144LcWcmFZJTp
         qgFfbowUP8QEdFGjFeFF/wS1mbU6lpb+oM9+JF0rj+DX+usCKZhExsEohZa8vtcU6qlp
         sI0I4NMvZF1APDqmNK2kB5435nO/uUjAhjvp6GafKnsaFCpYZZJDqeOy2hyzcqRHCpdX
         AC6olkfiurfQB/vu/ZAXaF7Ublj9drqxVMBz33BUFd+0Y9tq3exrOXnNiVoI2upA8NYV
         +/Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j4si530978wmi.2.2017.09.18.02.43.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:43:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4C73BB7B;
	Mon, 18 Sep 2017 09:43:33 +0000 (UTC)
Date: Mon, 18 Sep 2017 11:43:44 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Keerthi Reddy <keerthigd4990@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: Dgnc: Remove unnecessary comments around
 control statements.
Message-ID: <20170918094344.GE9461@kroah.com>
References: <20170915154434.GA15633@manoharreddy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170915154434.GA15633@manoharreddy>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 15, 2017 at 09:14:34PM +0530, Keerthi Reddy wrote:
> Remove Un necessary comments around control statements

"comments"?  That's not what this patch does at all :(

> 
> Checked with checkpatch.pl.
> 
> With this changes, I am also able to compile the code.

That should always be the case, no need to ever say that :)

> 
> Signed-off-by: Keerthi Reddy <keerthigd4990@gmail.com>
> ---
>  drivers/staging/dgnc/dgnc_cls.c | 16 ++++++++--------
>  drivers/staging/dgnc/dgnc_neo.c | 22 +++++++++++-----------
>  drivers/staging/dgnc/dgnc_tty.c | 34 +++++++++++++++++-----------------
>  3 files changed, 36 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
> index 9639035..870ae3d 100644
> --- a/drivers/staging/dgnc/dgnc_cls.c
> +++ b/drivers/staging/dgnc/dgnc_cls.c
> @@ -706,7 +706,7 @@ static void cls_param(struct tty_struct *tty)
>  		 * unit is NOT open
>  		 */
>  		if (!(ch->ch_tun.un_flags & UN_ISOPEN) &&
> -		    (un->un_type == DGNC_PRINT))
> +		    un->un_type == DGNC_PRINT)
>  			baud = C_BAUD(ch->ch_pun.un_tty) & 0xff;
>  		else
>  			baud = C_BAUD(ch->ch_tun.un_tty) & 0xff;
> @@ -719,8 +719,8 @@ static void cls_param(struct tty_struct *tty)
>  
>  		jindex = baud;
>  
> -		if ((iindex >= 0) && (iindex < 4) && (jindex >= 0) &&
> -		    (jindex < 16)) {
> +		if (iindex >= 0 && iindex < 4 && jindex >= 0 &&
> +		    jindex < 16) {

This is harder to read now, don't you think?  And yes, it might be
"correct", but it is good to keep () around things like this so you
don't have to go look up the order-of-operations to ensure that the
developer got it correct.

thanks,

greg k-h

