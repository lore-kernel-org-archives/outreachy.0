X-GM-THRID: 6613877034371252224
X-Received: by 2002:a37:1183:: with SMTP id 3-v6mr26086319qkr.40.1539943704099;
        Fri, 19 Oct 2018 03:08:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9e6f:: with SMTP id z47ls7246114qve.10.gmail; Fri, 19
 Oct 2018 03:08:23 -0700 (PDT)
X-Received: by 2002:a0c:88b2:: with SMTP id 47mr27166042qvn.58.1539943703428;
        Fri, 19 Oct 2018 03:08:23 -0700 (PDT)
Received: by 2002:a37:644a:0:0:0:0:0 with SMTP id y71-v6msqkb;
        Fri, 19 Oct 2018 02:55:54 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60PXScGCc1RJ9aTlyj/MgWOzHYNAqX/pLkE8FOcKHE14ET/KeuTcbmWjE/K7X0Qg4hGXjPO
X-Received: by 2002:adf:b6a1:: with SMTP id j33-v6mr3078066wre.31.1539942953786;
        Fri, 19 Oct 2018 02:55:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539942953; cv=none;
        d=google.com; s=arc-20160816;
        b=nrhIKPmZtpwOyhwtI8cqmj5PVZcPsKEho846vBvQrzUbU6lkeA2w1fkEdlHnMmWDAs
         ba7zXCL+c+EQH0tCD9UVhNnmVZHq1RAg1DTHF57o9bxqusJii7kTd7z+brCu55NSYspR
         IBgVXsswkd/CQKXivYsa6HaW5SCeFe26FmMdxX+RVu1SY6XeKrgDXQ1wu+aTq2vqK6He
         wj0laDLFuGka+uUx0mH8lN0Rod0Ug9mkZWT0ixpQTPzd4hi9L1SCt2I2RatfT0VZMmyg
         V0PlYlH+hBIn70ZhPulDxvCkabIsjAw79SRxQpt6zncwQyjCl/8iBD2WSKCS2NxkuEJ5
         xkjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id;
        bh=G+ST/kqg8ODlddxK9n8J8E0jaPApCbLr+TQ65nMDKbA=;
        b=YoxX0abtbrPotKpub+j0nIcSL6F9w1uogrmRkCmXmIErfRJ061T6QssK2iTByxTSX0
         STnqUz9WsA9uG8ZEy++hZcT88WjLSTxRpSRzFH5rGgMTooyNadkIB/08DzYabKn8MISM
         UM/cPAbr35i4HEtf07gVpmowFhoQn3FsS4VYwihTRy4WwlGXA0vElqy7Ls7t8pNbgUOV
         UwpM6N+/KpYXZwQwKqvhBVfwW+BTcAoc5fA9akJgCSIfoMTVLItaSmDncSnmLp5juDjW
         KQNd0/68S2ObhooOmnHGoxnMayJhpKZR0cgEOPbTezDUQKMoFc4tGN3Dmj2Q98Fegk+M
         yzLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Return-Path: <p.zabel@pengutronix.de>
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id h74-v6si190693wmd.4.2018.10.19.02.55.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 19 Oct 2018 02:55:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of p.zabel@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=p.zabel@pengutronix.de
Received: from lupine.hi.pengutronix.de ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
	by metis.ext.pengutronix.de with esmtp (Exim 4.89)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1gDRVZ-0001Y7-CK; Fri, 19 Oct 2018 11:55:53 +0200
Message-ID: <1539942953.3395.10.camel@pengutronix.de>
Subject: Re: [PATCH] media: imx: capture: Remove unneeded variable
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Kimberly Brown <kimbrownkd@gmail.com>, outreachy-kernel@googlegroups.com
Cc: Steve Longerbeam <slongerbeam@gmail.com>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri, 19 Oct 2018 11:55:53 +0200
In-Reply-To: <20181019014041.GA9250@v>
References: <20181019014041.GA9250@v>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: outreachy-kernel@googlegroups.com

Hi Kimberly,

On Thu, 2018-10-18 at 21:40 -0400, Kimberly Brown wrote:
> Remove local variable 'ret', which is used to store the return value.
> It is not changed during function execution. Return the variable's
> initial value, 0. Issue found by coccicheck.
> 
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> ---
>  drivers/staging/media/imx/imx-media-capture.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
> index 256039ce561e..f50f34b59694 100644
> --- a/drivers/staging/media/imx/imx-media-capture.c
> +++ b/drivers/staging/media/imx/imx-media-capture.c
> @@ -536,7 +536,6 @@ static int capture_release(struct file *file)
>  	struct capture_priv *priv = video_drvdata(file);
>  	struct video_device *vfd = priv->vdev.vfd;
>  	struct vb2_queue *vq = &priv->q;
> -	int ret = 0;
>  
>  	mutex_lock(&priv->mutex);
>  
> @@ -549,7 +548,7 @@ static int capture_release(struct file *file)
>  
>  	v4l2_fh_release(file);
>  	mutex_unlock(&priv->mutex);
> -	return ret;
> +	return 0;
>  }
>  
>  static const struct v4l2_file_operations capture_fops = {

Thank you for the patch,

Acked-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

