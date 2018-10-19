X-GM-THRID: 6613877034371252224
X-Received: by 2002:aed:3805:: with SMTP id j5-v6mr28966648qte.48.1539965479702;
        Fri, 19 Oct 2018 09:11:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:d5dd:: with SMTP id h29-v6ls9626095qvi.5.gmail; Fri, 19
 Oct 2018 09:11:19 -0700 (PDT)
X-Received: by 2002:a0c:c13b:: with SMTP id f56mr29511434qvh.11.1539965479072;
        Fri, 19 Oct 2018 09:11:19 -0700 (PDT)
Received: by 2002:a37:c38f:0:0:0:0:0 with SMTP id r15-v6msqkl;
        Fri, 19 Oct 2018 08:57:24 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63UKBL/xsWhuXmoV7WcK2vYuSyMryWdw+UY5mXEpZUu3ctDng7d4xduRbg1xrrAZOfsI3ek
X-Received: by 2002:a1c:9655:: with SMTP id y82-v6mr387591wmd.3.1539964644243;
        Fri, 19 Oct 2018 08:57:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539964644; cv=none;
        d=google.com; s=arc-20160816;
        b=sOEBwvevC3wW+1V+UusZ8tFapEh5nLkPQ7IFJUZ7CJ6J+K0PXVeew1CbIxA7XPCNWr
         WZ8d1QLm23hPFf82uuv326LouVUyNdgSdxq8h3xx6+ZEvLv7dGEj4T1guwL+dkk45q3/
         iqVsV3T3dOvmJBqbbsxmmZlW2QZa49TaqmOrOO1foryBe/ysxD+u+2/EhezSAk2NNSnJ
         3qFMwEo7P8RsGDxNcrZxTHd4JJ+R9WvpvYMBmWttSydK6XIs0WCDzG5sAjO813vWzhQ6
         TT7Ty+324cYcts7p8uAmOFqn3i6N6Nb6a2YMsW7yATux1S/81q5lD+/3OfiKNe23bMUT
         NR6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=GN2GvnlZhW9Lrz7zDubK5iJr241QNk5M07vrUZXElYc=;
        b=ChN19GTEM4AlvE4i7oLu0ZzE08i7YF0mP+7+b/iTCJx4qw+bmHKT6dLB/vfuREaUT0
         fnhI30uai70LldzuWerrgZy1wW1KfPlUOEjdLz0qaFhtq2luKC8XjzNTXRgrIHTzHLs4
         UnVa/IZIklgLDhlJKBiki6EeynnImKkmk1z42FJvKn2oNWfD1cax3IU0QqeRF8oPoDYX
         XorwsJdimPUFb8aqYqVxCTOoST5OUCNHsawmfQ87nVqsIfKRPLs/ioxlBnIqrwPs6RrX
         y202N+Jcz2xQNAlokJdfOod/9xacI60vtz5DR9MOnDc9Vh0mY7/32pMeEEloxkCua7jT
         a8SA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jZxgTA2o;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <slongerbeam@gmail.com>
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com. [2a00:1450:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id 202-v6si182346wmo.1.2018.10.19.08.57.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 08:57:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) client-ip=2a00:1450:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jZxgTA2o;
       spf=pass (google.com: domain of slongerbeam@gmail.com designates 2a00:1450:4864:20::32a as permitted sender) smtp.mailfrom=slongerbeam@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32a.google.com with SMTP id 143-v6so4098582wmf.1
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Oct 2018 08:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=GN2GvnlZhW9Lrz7zDubK5iJr241QNk5M07vrUZXElYc=;
        b=jZxgTA2oiXOiQfYC9K6w5l9RHXnuB7i17ArERFIkm1u85acHjHC6FL+tKH8EYOch/a
         6rsGIsSvjC/Oa7u3Q20JAX6oC6XmC4puMgXIXi/0qGGXDt9DIhdpykaN4HgWEu1/zRtT
         mF4gfe12gM+WDdocpcF4tncGd9oc3RbO3vGE8Vi3ZUTx6+KHyzCxH2O/pc0+Y+joN5to
         zZm0fdbvJ5BtScXkhEqAemo+nDwwSNTmvgO4fwDLvvO4E88yo7SblzLyXUgwRmHeFlRJ
         qHxF2trY0J9ug+CU/z7jVUeChO+dnd1KLZoYXDPMcImvYO+WzEiiJmCqzhubkpLaJfmZ
         VyZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=GN2GvnlZhW9Lrz7zDubK5iJr241QNk5M07vrUZXElYc=;
        b=lRpE+ngnjHALNmsp5/rD4JjEr97sfMAsqQHC1FhbWezDaw61t/oJoL/HwISYX0aWjH
         pyTZMsQJvm8J5W/L8PQ4VlHTygzqnBz+dcafxX3Vt/vDcaSPIZmv1R5NjRUWD7aHdoan
         bOX4UUcPixVsQD6AC38R6uE9tRp8hH0HHOkQMWfmPX6VYHQ1wTwz8dooBVpS5cIaIyV4
         e3cut1sEAO9xy/l6fm/bQFZbUhqr13vpCXkE3zFmqjIzy08RZAWdEfIH+o3lknA1uIph
         DJOhn7FAdGhQtt4Y5odyyO6/A7OTCEPAoZ+uVwPs4ymuHRZipjgVsktH8a77CLfpxCn/
         F95g==
X-Gm-Message-State: ABuFfojODSEb/2rquPJVhk+Jgmnj8GRK1K3WrZO1XjjRwgX2OpNsYCtO
	T5SEMIYq1Iv45hepg4pxRGI=
X-Received: by 2002:a1c:af07:: with SMTP id y7-v6mr5694557wme.33.1539964643514;
        Fri, 19 Oct 2018 08:57:23 -0700 (PDT)
Return-Path: <slongerbeam@gmail.com>
Received: from [172.30.88.203] (sjewanfw1-nat.mentorg.com. [139.181.7.34])
        by smtp.gmail.com with ESMTPSA id o4-v6sm14980205wrj.45.2018.10.19.08.57.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Oct 2018 08:57:22 -0700 (PDT)
Subject: Re: [PATCH] media: imx: capture: Remove unneeded variable
To: Kimberly Brown <kimbrownkd@gmail.com>, outreachy-kernel@googlegroups.com
Cc: Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
References: <20181019014041.GA9250@v>
From: Steve Longerbeam <slongerbeam@gmail.com>
Message-ID: <605346dd-eaa6-342e-3e2d-b41e8c46c0a8@gmail.com>
Date: Fri, 19 Oct 2018 08:57:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20181019014041.GA9250@v>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Acked-by: Steve Longerbeam <slongerbeam@gmail.com>


On 10/18/18 6:40 PM, Kimberly Brown wrote:
> Remove local variable 'ret', which is used to store the return value.
> It is not changed during function execution. Return the variable's
> initial value, 0. Issue found by coccicheck.
>
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>
> ---
>   drivers/staging/media/imx/imx-media-capture.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
> index 256039ce561e..f50f34b59694 100644
> --- a/drivers/staging/media/imx/imx-media-capture.c
> +++ b/drivers/staging/media/imx/imx-media-capture.c
> @@ -536,7 +536,6 @@ static int capture_release(struct file *file)
>   	struct capture_priv *priv = video_drvdata(file);
>   	struct video_device *vfd = priv->vdev.vfd;
>   	struct vb2_queue *vq = &priv->q;
> -	int ret = 0;
>   
>   	mutex_lock(&priv->mutex);
>   
> @@ -549,7 +548,7 @@ static int capture_release(struct file *file)
>   
>   	v4l2_fh_release(file);
>   	mutex_unlock(&priv->mutex);
> -	return ret;
> +	return 0;
>   }
>   
>   static const struct v4l2_file_operations capture_fops = {

