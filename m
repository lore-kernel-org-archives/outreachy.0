X-GM-THRID: 6463425318244843520
X-Received: by 10.31.173.202 with SMTP id w193mr1749513vke.40.1504886522419;
        Fri, 08 Sep 2017 09:02:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.36.140 with SMTP id f134ls1521211ita.16.canary-gmail; Fri,
 08 Sep 2017 09:02:00 -0700 (PDT)
X-Received: by 10.31.69.216 with SMTP id s207mr685362vka.86.1504886520154;
        Fri, 08 Sep 2017 09:02:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504886520; cv=none;
        d=google.com; s=arc-20160816;
        b=p6bjpmsszGVx2/uPmjpNvHGpNtVyChHdolLnEzVK2H4ZwLg42JZola5g38CJmrGda9
         T0Dlm0AI4UmtXqsxFsCKSKXYnFRywWqk8Z+eYeL2C6c5g35fe4KXdvgfwecp8Or0dNii
         AZlIfwBgUuSHkXY0xxPIme4n4h3kqVgJgcYO6oSX7s/2jNjKi7571XIri/rj96x8crDO
         OXN2MH61Lc+seccZ/4WLnY4PfQkXGDNEDAJpD4P4fkmHUrczwK3tf4OVPDoRqXpSjngV
         ec+At1jKeA7gOj0Ksg0XFQd/2DP+xxyB8ANaAC0mD7vaQyA4MWL7+Sldvv/uQY5WU4x3
         7yYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=Zttm6w2KPi7fsnMnLvcOjfydKlWqTGvqz5ubq6R9Ouw=;
        b=AJ42DHQUxDRbLgBLkaIMZCQ4ldv7eWBYqppFrFh5X42+tff12x752gdftWOd+XmDYV
         BLs+WtLRlm+LyMghqFr0ZuKCWdWs0meuVR7fkT9NNvLTaWZQ2dNlPTJDsudKl1AocJOB
         lJxJUtiDBW4qGyHENQqe81+55FV5RZmmUc5NcFB2nmchYgQUFSj0gMN9MSMX0+P9w33X
         6t61DOA3ulve5BzvJlpXSO7EyUCN7OhUqkoVh1PfRduCmxjFN9byvF4unD/NXrCO8atQ
         Vnl+iIBHqaPnvjUpL3s5bG+NDgstYe/yLpivPqajRiz+wfLLn4gsSBVdXbORk4bSwKfu
         kyXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r6vtkLQD;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id e5si90548vkb.2.2017.09.08.09.02.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 09:02:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r6vtkLQD;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id d70so1777505qkc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 09:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Zttm6w2KPi7fsnMnLvcOjfydKlWqTGvqz5ubq6R9Ouw=;
        b=r6vtkLQDAM5k6HfivJg7NxQ98bQvC2/AM9/yrjO2w0MQ4T34Qxl/YiDauoTQnYOIOL
         r2Zj3P7ACAGQ/T08b9fWjIyeFHhSQhqQXu5uvoxIasTJBgUtzYfrjBT2PgmraQyS7XSx
         OM8Eekkl7ddJwIGzlV7l7mVFWyNlvZaHnCKLYGrXso9Q7l/URp7b8NNDT3rmx9oPgq2r
         QdrZMGP3/nxdzI7kd+GSttEzMs+xOqvJqMn5OQnzBxp9jb7z0k8kkeToSHmNTgLTKFoW
         Qpoi5zszhKGcLLsQgg0P/GGBuLfMWriX9UoPaSDI3E7DQaaYW6YAWyTwb1o3OoB2AZLa
         CdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Zttm6w2KPi7fsnMnLvcOjfydKlWqTGvqz5ubq6R9Ouw=;
        b=foeMln6r1ZtNxexWPFusmCwW/fFMUAtpAik/KNXixdQvMvZAQDT7PIZC15NdHKXMF3
         pwKNxdLCkss/wT6l051cGxJYxgGNoetBE0qQPfjd94u8WLZDgTACusX7MwP56mzNLPtY
         Cu+QBfqmKLqz0gqdE93/9ktq0X9Dp3CAU6n0cShg4M1mbHC0w2mTx2ca2N22RuznOe+d
         v9/pbSWrEv1DSzYwNvGn9E2t3di++RVDNUbONUwheBbM96WDT4RU7ny83hpLywOxEjRR
         y3F0wnk0/op4W4UikaUW9XYImhzPQOrJhtBUJmVuAXKBZFOnQOs7akZZtns6vzShnGYd
         SGxg==
X-Gm-Message-State: AHPjjUgoDBeS28sNr5Y4sYh0o5h2zEGAZ0Bkvhf+Cp0DJPETc2maUZE/
	fg0qMYrmnPg2mc6YB2ggRZq2HsCqpQ==
X-Google-Smtp-Source: AOwi7QBDwAcmK4SRKxPKMcX8657343PJ2OsLGYdUQpygjLXzuEHrEAm0939FI3rVSZhI9zhAczQ1stnRwbKDdFmaWX8=
X-Received: by 10.55.52.19 with SMTP id b19mr4347832qka.77.1504886519798; Fri,
 08 Sep 2017 09:01:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 8 Sep 2017 09:01:59 -0700 (PDT)
In-Reply-To: <CAOw6vbLPfzZ5WzY0Qd9sXp40SGTZAxqVB7x+cTkNuHX79uazzw@mail.gmail.com>
References: <1504883469-8127-1-git-send-email-srishtishar@gmail.com> <CAOw6vbLPfzZ5WzY0Qd9sXp40SGTZAxqVB7x+cTkNuHX79uazzw@mail.gmail.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Fri, 8 Sep 2017 21:31:59 +0530
Message-ID: <CAB3L5oywbZLHop9i+D7GsXg0=uete4Z2Y+PmzN_kdB3-6W6u+g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: imx: Prefer using BIT macro
To: Sean Paul <seanpaul@chromium.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Steve Longerbeam <slongerbeam@gmail.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, mchehab@kernel.org, linux-media@vger.kernel.org, 
	devel@driverdev.osuosl.org, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 8:59 PM, Sean Paul <seanpaul@chromium.org> wrote:
> On Fri, Sep 8, 2017 at 11:11 AM, Srishti Sharma <srishtishar@gmail.com> wrote:
>> Use BIT(x) instead of (1<<x).
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/media/imx/imx-media.h | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/media/imx/imx-media.h b/drivers/staging/media/imx/imx-media.h
>> index d409170..e5b8d29 100644
>> --- a/drivers/staging/media/imx/imx-media.h
>> +++ b/drivers/staging/media/imx/imx-media.h
>> @@ -310,16 +310,16 @@ void imx_media_capture_device_set_format(struct imx_media_video_dev *vdev,
>>  void imx_media_capture_device_error(struct imx_media_video_dev *vdev);
>>
>>  /* subdev group ids */
>> -#define IMX_MEDIA_GRP_ID_SENSOR    (1 << 8)
>> -#define IMX_MEDIA_GRP_ID_VIDMUX    (1 << 9)
>> -#define IMX_MEDIA_GRP_ID_CSI2      (1 << 10)
>> +#define IMX_MEDIA_GRP_ID_SENSOR    BIT(8)
>> +#define IMX_MEDIA_GRP_ID_VIDMUX    BIT(9)
>> +#define IMX_MEDIA_GRP_ID_CSI2      BIT(10)
>>  #define IMX_MEDIA_GRP_ID_CSI_BIT   11
>>  #define IMX_MEDIA_GRP_ID_CSI       (0x3 << IMX_MEDIA_GRP_ID_CSI_BIT)
>> -#define IMX_MEDIA_GRP_ID_CSI0      (1 << IMX_MEDIA_GRP_ID_CSI_BIT)
>> +#define IMX_MEDIA_GRP_ID_CSI0      BIT(IMX_MEDIA_GRP_ID_CSI_BIT)
>>  #define IMX_MEDIA_GRP_ID_CSI1      (2 << IMX_MEDIA_GRP_ID_CSI_BIT)
>> -#define IMX_MEDIA_GRP_ID_VDIC      (1 << 13)
>> -#define IMX_MEDIA_GRP_ID_IC_PRP    (1 << 14)
>> -#define IMX_MEDIA_GRP_ID_IC_PRPENC (1 << 15)
>> -#define IMX_MEDIA_GRP_ID_IC_PRPVF  (1 << 16)
>> +#define IMX_MEDIA_GRP_ID_VDIC      BIT(13)
>> +#define IMX_MEDIA_GRP_ID_IC_PRP    BIT(14)
>> +#define IMX_MEDIA_GRP_ID_IC_PRPENC BIT(15)
>> +#define IMX_MEDIA_GRP_ID_IC_PRPVF  BIT(16)
>
> Hi Srishti,
> Thanks for your patch.
>
> Perhaps this is just personal preference, but I find the previous
> version more readable. Since IMX_MEDIA_GRP_ID_CSI and
> IMX_MEDIA_GRP_ID_CSI1 are multi-bit fields, you can't fully eliminate
> the bit shift operations, so you end up with a mix, which is kind of
> ugly.

 Thanks, for pointing that out .
 Regards,
 Srishti
>
> Sean
>
>>
>>  #endif
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504883469-8127-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.

