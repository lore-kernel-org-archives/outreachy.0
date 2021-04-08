X-GM-THRID: 6948788358969556992
X-Received: by 2002:a05:620a:22b5:: with SMTP id p21mr10020283qkh.196.1617903676571;
        Thu, 08 Apr 2021 10:41:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:622a:1447:: with SMTP id v7ls2553277qtx.4.gmail; Thu, 08
 Apr 2021 10:41:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxw/LxRmOHJFL5Qx2ZvGc64lk/ftnOHptCJynJdxdKadbDD93sgRtPUREcSIvG2yC/82lUS
X-Received: by 2002:ac8:45c6:: with SMTP id e6mr8629097qto.228.1617903675438;
        Thu, 08 Apr 2021 10:41:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617903675; cv=none;
        d=google.com; s=arc-20160816;
        b=aQa20BCI4YxAxE1iIlrB0HyuUIcrMB2nyIYkwVlX262Lvd0Q5gCQve1rvKegpKsAcp
         zpRPGJ8n6dUY+avqabEAuh4013/b99P4zHazB/Ri1yNh1/SU0SzNUWdj0TPrmHs3jwy6
         Vnk/57OWnpsnVClHAfgCCKG38WqzDf6kzgVKC5gwNGFFGHQr3VYz6j9o9Iv1O0Xob0gq
         Oi2/o98PEs+Tq3EBf/n1qLsIUB7lELODN5QOtPhVJscqriyV81ETIm1w05rDSX43OPE7
         i11Hlx9MAfiZUM7HelK/RB8Z5PSoYFEuKG4j9k6yFI3nmGWyy33tt+FFHNIa5GxPzqUx
         nP5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=mdN1Jw+gb2OecTVeF2v17EO+ynpqxrd3oGCmcBY+OBM=;
        b=K6SzeyCyWYm8CZf4UrnLbccEeKigdreOblk+c1RwjU0xk7H/RbwstSgZzkK98tqrCT
         no4UNQ9sSiFY+qdkSBFdm34B+hYnxF1jqj3ezTBxDmTvZS4O/xPw9YHaqEm0YehIL4yB
         riGmQFLo3urcqjP9xDYatT6dJtJbviLL1IW5MqDyw291kwUcj674rRODxJ8y1skqJU50
         4TOaxUwI2jQSknWO6j1T7a04AwjQWBu+ci/1trRXybEI1ja8izsUTxz+GX4fbSbLNwIh
         3Ik3CFK07/HprtGP7i6x7gP+TjvH5p7xdLg3H3yPXs17PNC7AwYFRZ0ZmDH95qURJGhm
         qbxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rQ/FpK2Z";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com. [2607:f8b0:4864:20::730])
        by gmr-mx.google.com with ESMTPS id c22si10036qtg.5.2021.04.08.10.41.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 10:41:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) client-ip=2607:f8b0:4864:20::730;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="rQ/FpK2Z";
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::730 as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x730.google.com with SMTP id g20so3085873qkk.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 10:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=mdN1Jw+gb2OecTVeF2v17EO+ynpqxrd3oGCmcBY+OBM=;
        b=rQ/FpK2Z0CI3YxPS+hWS4mebh5dGyrxeoRFSIvHIUZCutspu4O5XOqMS3IVisPgFA8
         rbSjgrxIysU4gO2j25SNe694SSJx9g3BRpn1/kzNqmHISxn6pVoMJmeahsg7y5Mc0rwB
         a9IgI/LPySkZi+BOS4DBnh4mnlEsRPSuQRMg6OLAHLyhhQWIsyt5pjvP7sD8XZJJYpWY
         mCroKgdLoRPSzVIqj6+/91K+OWiLKLTb5/6P6ch3y8YnkC0i7GuKXtHlIJTlcLfqhCzB
         L8msNiKFv3QOT75WWHp9CLjTpAeBgv+p8J4fq96KhCMsBDdoEzRMNs8Wi+FBIdgcATxi
         9+pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=mdN1Jw+gb2OecTVeF2v17EO+ynpqxrd3oGCmcBY+OBM=;
        b=dZi0KBfNXEsxS0fwV4w6wq+8O+gnjq6TINHuVXOCQI8McJFk9KFjUnNUkFrXx9kcuE
         3D0O4pvwikp5v/Cxk04vqXSQuwSxoo/1SoouFG3m72PjvlTDVRs1tm+91y7oFCrHgOzA
         QffAqpTjMxPQ/w0opsypgMx5kiortyzgJ0v0sgVmOM5rdxRgaw34Xam7Ruc4KTJtPv9n
         n/hwpzxIDpQEf3/wXXRs/C5Jc6RvXrXW17LAyngLFtLppcLFKfQHZMl78hFV2/dvG1RH
         fLFEWHjktGPab/Kapvw1uKxA5gILzUAf3gnr7k+KH2AwqvpuAQ1E1QikLGnCkthkTUhc
         GpeA==
X-Gm-Message-State: AOAM532R2TeCBLwd5EWWJlM5IHbp7DXlmgPu8tUiKuKZrXgiyIudiPsS
	27J0KBtvftyPyrzfINJVKGs=
X-Received: by 2002:a37:ae44:: with SMTP id x65mr9633255qke.9.1617903675135;
        Thu, 08 Apr 2021 10:41:15 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id o30sm129666qtl.8.2021.04.08.10.41.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Apr 2021 10:41:14 -0700 (PDT)
Message-ID: <6bba0e0a5768e902ffec4bda563d4ca810412f84.camel@gmail.com>
Subject: Re: [PATCH 1/2 v2] staging: media: hantro: Align line break to the
 open parenthesis in file hantro_hw.h
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Thu, 08 Apr 2021 14:41:10 -0300
In-Reply-To: <d4000598fddcf45e578462aa04b556c0ca057091.camel@collabora.com>
References: <cover.1617890467.git.alinesantanacordeiro@gmail.com>
	 <1e6d73432d60dfb8bb3f7f2bd6bf3084091a2a39.1617890467.git.alinesantanacordeiro@gmail.com>
	 <d4000598fddcf45e578462aa04b556c0ca057091.camel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em qui, 2021-04-08 às 13:20 -0300, Ezequiel Garcia escreveu:
> Ola Aline,
Ola Ezequiel,

> Welcome to the kernel community. Hope you enjoy some of this
> Outreachy adventures.
Thank you!

> Normally, when you submit a v2, we want to know what changed
> between the first submission and v2.
> 
> If you are subscribed to linux-media, you can read some
> of the series with a vN+1 and look how it's done. Examples:
> 
> https://www.spinics.net/lists/linux-media/msg190043.html
> 
> https://www.spinics.net/lists/linux-media/msg189923.html
> 
> I'm sure your Outreachy mentors can tell you more.
Thank you for the examples, it won't happen again.

The reason for sending a v2 is that I sent my very first patchset
yesterday and I sent the cover-letter together, but (I think) I wasn't
supposed to, and as the patches weren't marked as [PATCH 1/2] and
[PATCH 2/2] in the email - since I commited all the files with the same
message - I tought it was wrong and sent again today.

However, I just realized that I've changed just the subject of the e-
mail, but I would've to change the commit message, right? And then, it
would be a second version, am I right? 

Thank you in advance,

> On Thu, 2021-04-08 at 11:07 -0300, Aline Santana Cordeiro wrote:
> > Aligns line break with the remaining function arguments
> > to the open parenthesis. Issue found by checkpatch.
> > 
> > Signed-off-by: Aline Santana Cordeiro <   
> > alinesantanacordeiro@gmail.com>
> > ---
> >  drivers/staging/media/hantro/hantro_hw.h | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/hantro/hantro_hw.h
> > b/drivers/staging/media/hantro/hantro_hw.h
> > index 34c9e46..a650b9c 100644
> > --- a/drivers/staging/media/hantro/hantro_hw.h
> > +++ b/drivers/staging/media/hantro/hantro_hw.h
> > @@ -207,7 +207,7 @@ hantro_h264_mv_size(unsigned int width,
> > unsigned int height)
> >  void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
> >  void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
> >  void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
> > -       const struct v4l2_ctrl_mpeg2_quantization *ctrl);
> > +                                 const struct
> > v4l2_ctrl_mpeg2_quantization *ctrl);
> >  int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
> >  void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
> >  
> 
> 



