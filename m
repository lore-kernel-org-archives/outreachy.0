X-GM-THRID: 6463425318244843520
X-Received: by 10.98.86.216 with SMTP id h85mr1661573pfj.5.1504884596262;
        Fri, 08 Sep 2017 08:29:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.59.79 with SMTP id i76ls295897ioa.47.gmail; Fri, 08 Sep
 2017 08:29:55 -0700 (PDT)
X-Received: by 10.129.52.131 with SMTP id b125mr2085127ywa.142.1504884595516;
        Fri, 08 Sep 2017 08:29:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504884595; cv=none;
        d=google.com; s=arc-20160816;
        b=Uu70owla/xLgtfe1tMBAVa8AUvIsbpFgUfZqO7hG3ShUVJM54ZZkeXkqSjuOjt2/JJ
         mwPXAuuJHZ2wHGYm0SBYj0zeijUnB92xaUtxxdoDiY1mMcmICXpN4S+gVEIUQ0pWLZ6u
         Ei14XrgcPFkQgCSelTYGHkVpu3PYdTqcS2XyTD6/X/5qYe3Rd49X0WKPg+IgSfft4Crj
         WmnR9P3B3ZNH2ZA9ppTpBh5wyH0tG5pV8mxAeV2cpIjhG0BaYqoKjS4YzlSfi5RDIHiE
         eMmCymU4Wc6pbiIDUcI2PpN6V6X9IGGuOSERXi5UKH/J9M89/uyluSoSWj1TARWGN4yZ
         rzpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=FYof05+GaTpvAVm0GnKQuyJ7+nRNrWCNahj0KrHDbFE=;
        b=sD+DmZgJVQksIBHXhhxqMSKNJuG/cSMaQIaArIjxh8VqckaGQXYHNcWmFmBHHFNWYr
         BP9gtiuc038LZFVtXjP9u6IE9PxUqh12+IQyQ7/qZHzA1nKmNx8w9kDYie0S4Qzo43Vy
         QxPamaehNpg8HbdCJXcD/NkL3ltrTrzaqxnhJ4jwd7y73pipvTrtXoSlhOlDOmmRRhpx
         mJBYI2WNHISPTe9XgtAoeMA+6yWqk7ZtPzXE0K0Y/71aZ4l6OFc+DX4EV0cO3EV3zQpU
         SIHEnBlRd0IRX/LInAZOPyq5lKN44KDfDYb9PgqwBGKZFD7CJqgYi84To3fak4rc1Af1
         uJTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dd1kqqOv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22c as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x22c.google.com (mail-yw0-x22c.google.com. [2607:f8b0:4002:c05::22c])
        by gmr-mx.google.com with ESMTPS id l1si178474ywh.0.2017.09.08.08.29.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 08:29:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22c as permitted sender) client-ip=2607:f8b0:4002:c05::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=dd1kqqOv;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22c as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x22c.google.com with SMTP id r85so8448192ywg.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 08:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=FYof05+GaTpvAVm0GnKQuyJ7+nRNrWCNahj0KrHDbFE=;
        b=dd1kqqOvlFyWyp3XRVtb+DSfrRNsIYKBjNOTSDzyVtGos8pI7otvmnwM8I1bgzVzpm
         AWv6EPeUPkwdV9who6/4XcV/aCtitNieCfpW+X5cEKhgvQeXpc3IqguUEoTkraJ9qrg+
         yFrqaGz8KeyM8Q4ktC/RL3md2Jof/JgpFjVAE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=FYof05+GaTpvAVm0GnKQuyJ7+nRNrWCNahj0KrHDbFE=;
        b=BWuIYsPYke/PjnCZ4WEs1tQN3Bjzf3GH3y0+439TLwYpWy/W/xadtOTphcBP9Le+1h
         2VBzpUEz1z94qbZOkwFL8tc2rA/ABi/rdgviayFItUGWPZ0uW+7mhd1+I3FWKccbgIda
         ek0RsUauUAIbm2piSHBg4g9e2Mwb2e2sSbxce5TFv64ZVL9hESe/jWZ/ZnOCgeCnXPJk
         w1kyNmkjzlIYx49vy+qKz4KSKcun8XmmThIryZ0kIwdKY5IrDS2scvArhCx0xrCh7zOd
         VE/INaqEZAp0klHBTkkHE3rl2bCbL14ZpbRnJt+hrMwq2VS70OYH7iTIrHcQUkfiq4QK
         hwgw==
X-Gm-Message-State: AHPjjUjtd+wOaxbFEP2RdDT5p1kAXMn9z2ctcBFeNwe8A+3rvDQN6qK7
	//u9hSFmMebPwyb+M/+zxQ==
X-Received: by 10.13.241.134 with SMTP id a128mr2844558ywf.180.1504884594800;
        Fri, 08 Sep 2017 08:29:54 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com. [209.85.214.44])
        by smtp.gmail.com with ESMTPSA id p125sm747465ywb.29.2017.09.08.08.29.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 08:29:53 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id c195so3177984itb.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 08:29:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QD2t4QfhudMMk1LeR6MU/XrkYWQX7nbks78184+mYB7mPh/em4B9qIAy4WGJiGYBYG1o72iFHq25FTEg83o0MM=
X-Received: by 10.36.2.136 with SMTP id 130mr1515404itu.83.1504884593358; Fri,
 08 Sep 2017 08:29:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.143.88 with HTTP; Fri, 8 Sep 2017 08:29:32 -0700 (PDT)
In-Reply-To: <1504883469-8127-1-git-send-email-srishtishar@gmail.com>
References: <1504883469-8127-1-git-send-email-srishtishar@gmail.com>
From: Sean Paul <seanpaul@chromium.org>
Date: Fri, 8 Sep 2017 11:29:32 -0400
X-Gmail-Original-Message-ID: <CAOw6vbLPfzZ5WzY0Qd9sXp40SGTZAxqVB7x+cTkNuHX79uazzw@mail.gmail.com>
Message-ID: <CAOw6vbLPfzZ5WzY0Qd9sXp40SGTZAxqVB7x+cTkNuHX79uazzw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: imx: Prefer using BIT macro
To: Srishti Sharma <srishtishar@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, slongerbeam@gmail.com, 
	Philipp Zabel <p.zabel@pengutronix.de>, mchehab@kernel.org, linux-media@vger.kernel.org, 
	devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 11:11 AM, Srishti Sharma <srishtishar@gmail.com> wrote:
> Use BIT(x) instead of (1<<x).
>
> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> ---
>  drivers/staging/media/imx/imx-media.h | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
> index d409170..e5b8d29 100644
> --- a/drivers/staging/media/imx/imx-media.h
> +++ b/drivers/staging/media/imx/imx-media.h
> @@ -310,16 +310,16 @@ void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
>  void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
>
>  /* subdev group ids */
> -#define IMX_MEDIA_GRP_ID_SENSOR    (1 << 8)
> -#define IMX_MEDIA_GRP_ID_VIDMUX    (1 << 9)
> -#define IMX_MEDIA_GRP_ID_CSI2      (1 << 10)
> +#define IMX_MEDIA_GRP_ID_SENSOR    BIT(8)
> +#define IMX_MEDIA_GRP_ID_VIDMUX    BIT(9)
> +#define IMX_MEDIA_GRP_ID_CSI2      BIT(10)
>  #define IMX_MEDIA_GRP_ID_CSI_BIT   11
>  #define IMX_MEDIA_GRP_ID_CSI       (0x3 << IMX_MEDIA_GRP_ID_CSI_BIT)
> -#define IMX_MEDIA_GRP_ID_CSI0      (1 << IMX_MEDIA_GRP_ID_CSI_BIT)
> +#define IMX_MEDIA_GRP_ID_CSI0      BIT(IMX_MEDIA_GRP_ID_CSI_BIT)
>  #define IMX_MEDIA_GRP_ID_CSI1      (2 << IMX_MEDIA_GRP_ID_CSI_BIT)
> -#define IMX_MEDIA_GRP_ID_VDIC      (1 << 13)
> -#define IMX_MEDIA_GRP_ID_IC_PRP    (1 << 14)
> -#define IMX_MEDIA_GRP_ID_IC_PRPENC (1 << 15)
> -#define IMX_MEDIA_GRP_ID_IC_PRPVF  (1 << 16)
> +#define IMX_MEDIA_GRP_ID_VDIC      BIT(13)
> +#define IMX_MEDIA_GRP_ID_IC_PRP    BIT(14)
> +#define IMX_MEDIA_GRP_ID_IC_PRPENC BIT(15)
> +#define IMX_MEDIA_GRP_ID_IC_PRPVF  BIT(16)

Hi Srishti,
Thanks for your patch.

Perhaps this is just personal preference, but I find the previous
version more readable. Since IMX_MEDIA_GRP_ID_CSI and
IMX_MEDIA_GRP_ID_CSI1 are multi-bit fields, you can't fully eliminate
the bit shift operations, so you end up with a mix, which is kind of
ugly.

Sean

>
>  #endif
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504883469-8127-1-git-send-email-srishtishar%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

