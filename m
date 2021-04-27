X-GM-THRID: 6955860329873014784
X-Received: by 2002:a19:c70e:: with SMTP id x14mr17294405lff.52.1619537513281;
        Tue, 27 Apr 2021 08:31:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5c07:: with SMTP id q7ls6565304ljb.11.gmail; Tue, 27 Apr
 2021 08:31:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyJVY7nBQ5mRrvvIfeQBWXgMOWaQS9igqzVPO2Uus8I9GjxWSE/fl2nIbCrcTT5cnROJNKy
X-Received: by 2002:a2e:a552:: with SMTP id e18mr17190602ljn.383.1619537511403;
        Tue, 27 Apr 2021 08:31:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619537511; cv=none;
        d=google.com; s=arc-20160816;
        b=PyTEjcSTkZ6tN33Daw1xk4xOX9m6Y4PHT/BydnZjTzk/fSn2yc0p+y+NbW6Xd4Xm8m
         7IhbexMc6nMlsM0AJNUeU33VL1pJ0h+rb2LSmVIG8HO20huoP2Bd8KKvq5nEVHuZtaOM
         +l2PVu4FAZVGhsLM44wjHIyUOcOfuWDPPTbrbXUOXW8x7rbmXCkH5+dDY0JTeMOiuWql
         19REgE2LUr3+anifBXSJbVMogkMO/eNuh2jX893l5KEj+SqprhuZ38SHO0NkahzVVdhl
         vdAUc8TG8qY17ycVqWwo4pXEQwN77yVivP8mtvgRuyVM1kilx9lwwLHROfDp0iisKkpM
         egqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=V1pmQLU6uGDraWZfAwgryn+hryI1IObbjq9UY53XOA0=;
        b=KKtE3k615AvRhYmm+mnJWbtSotTMfZrrKJB2DJ/9u7tVXDlpR056MoEQLst6WChI/y
         XmoLToGV9ThL5pL3XgCOugzpG0UoQeTY1/xIryL+IGqMCU9FAMSxH83dqIjC6JABKamm
         dOkkBvBqSxNfxuWOsT406OPG7slChC0zchFrGfprLA71o7t89T1R1bpdDHg8jJdw/HKg
         h6nBhwjov6Hoazwhq1FV92wSUerMBRt3JMBN4ayPuqNTcl/l68cdHODqgKQtEcmjMAYa
         y0Y/c2wMUAUFKNsM4feITml+438Ml4umlIXfZT8deOs9a1s4Yc6jFEJ6g8C0XzVmYwor
         tZYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b2si924304ljf.0.2021.04.27.08.31.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Apr 2021 08:31:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A/CbyearHGrLCveeZFTA+jtAaV5rKeYIsi2QD?=
 =?us-ascii?q?101hICF9WMqeisyogbAnxQb54QxhPE0ItNicNMC7Kk/02oVy5eAqV4uKfA6jg2?=
 =?us-ascii?q?ewKZEn0I2K+VzdMgnf0sIY6qt6aah5D7TLfD1HpOL3+hOxHdpl4PTvysCVrNzT?=
 =?us-ascii?q?xXtsUg1mApsIhztRMQqVHlZ7QwNLH/MCZfmhz/BarDmtc2l/VKqGL0QCNtKum/?=
 =?us-ascii?q?T2jp78JTYJCxk7gTP+7w+A2frKVyKV2RoTSFp0rIsK+2KtqWPE2pk=3D?=
X-IronPort-AV: E=Sophos;i="5.82,254,1613430000"; 
   d="scan'208";a="379827892"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Apr 2021 17:31:50 +0200
Date: Tue, 27 Apr 2021 17:31:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: tawahpeggy <tawahpeggy98@gmail.com>
cc: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:greybus: Add () around gcam
 macro.
In-Reply-To: <20210427153024.GA14574@peggy-Lenovo-V130-15IKB>
Message-ID: <alpine.DEB.2.22.394.2104271731350.8381@hadrien>
References: <20210427153024.GA14574@peggy-Lenovo-V130-15IKB>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 27 Apr 2021, tawahpeggy wrote:

> checkpatch.pl suggested parenthesis be added aroung gcam macro variable.
>
> Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>

Remember that you need to use your real name.

julia

>
> ---
>  drivers/staging/greybus/camera.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/greybus/camera.c b/drivers/staging/greybus/camera.c
> index cdbb42cd413b..324a26430f71 100644
> --- a/drivers/staging/greybus/camera.c
> +++ b/drivers/staging/greybus/camera.c
> @@ -182,7 +182,7 @@ static const struct gb_camera_fmt_info *gb_camera_get_format_info(u16 gb_fmt)
>
>  #define gcam_dbg(gcam, format...)	dev_dbg(&gcam->bundle->dev, format)
>  #define gcam_info(gcam, format...)	dev_info(&gcam->bundle->dev, format)
> -#define gcam_err(gcam, format...)	dev_err(&gcam->bundle->dev, format)
> +#define gcam_err((gcam), format...)	dev_err(&gcam->bundle->dev, format)
>
>  static int gb_camera_operation_sync_flags(struct gb_connection *connection,
>  					  int type, unsigned int flags,
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210427153024.GA14574%40peggy-Lenovo-V130-15IKB.
>

