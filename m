X-GM-THRID: 6950525312871432192
X-Received: by 2002:a05:600c:4145:: with SMTP id h5mr2537716wmm.53.1618296896777;
        Mon, 12 Apr 2021 23:54:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:c205:: with SMTP id s5ls777918wmf.3.canary-gmail; Mon,
 12 Apr 2021 23:54:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxZpO3QoxwrlLGHj/0XBGHCEpYsuvwgnHluj/Rggzt2NJ6FVNz/mwVj88V9yfN4MVyyYOrB
X-Received: by 2002:a1c:e309:: with SMTP id a9mr2502050wmh.63.1618296895194;
        Mon, 12 Apr 2021 23:54:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618296895; cv=none;
        d=google.com; s=arc-20160816;
        b=NKo7YAAZGUVy/YfVOd/X1QTm5DaF3o0u9ScE9HnS4Ykbk5rUQqRJXeyEUQA3cwkczZ
         Gp5BdbhZIzq13kF2H1GMugsNV/orvRKnZh+IkfoPot4PyF7fJIMi6VQUO1qOtULbuGcw
         Gi4lzm3Tq9EAEb8xzNBH0lu9jAr9c4MQlSBVugKWgOAg+bm66Q9VOVWq/7K3m9BIPKL0
         hJN8eGrrJYUp9WkGUCdr3UxqoLpklLQx+ePPhiOBydAyz/Ofxl948nrJjUGQnifmCswZ
         p4MeREOVV2JxV4OYArP9mF+/xPFDwiKawMQpD+px/agFc4fBsl+A1rocic9khem7vudR
         6fvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=pmLiaOjr490uvmvaEk+9GZCVX7L+f8AX4Yb8w/vK2wU=;
        b=VX9Lx+zufYFgxS2/nRAh4azyMLuEXL4i3blwLt5V6gu70wfWLaEoUSFK613gh7ZA2M
         EY+lLhhSOr91lZ7zzTcv1Cmtj+cTxAmXTcgiRHevy4gqPTZChRdeQMW6Zx/nVuuN0xHl
         Eg/xYrNG6zUu6GAttJ77xogvWt/ZyUnmXEORAm7nFkWmk5mVFHPCvEmZpAN1K4aPX3gZ
         JrBeXYzYo4h0sgQlJgVVfsUvq8Wzy3YwmFKUNK3BPB5VHAPPijk61Ve73iYPG6v+CODh
         ce0km0mgRxdEyogloIrtkzgBrAKBJiPYURLv3LuvpsweAiJcxJyQ8wHETKaPbxqvcQ9z
         GJqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p65si95001wmp.0.2021.04.12.23.54.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 23:54:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AwHZfk6n4K7+29Y6IxAZYFs5SH8TpDfLd3DAb?=
 =?us-ascii?q?vn1ZSRFFG/GwvcrGpoV56TbfjjENVHY83e2RIaXoex/h3LN8/IV5B9afdSb8vm?=
 =?us-ascii?q?/AFutfxKvkhwbtAijvstNavJ0BT4FbBMfrBVZ3yeb2iTPUL/8FwN2KtJ+lnv3f?=
 =?us-ascii?q?yXAFd25XQppt5Qt4FQqXe3ceLGJ7LKE0G5aG6s1MqyDIQwVzUu2AGnIHU+Lfzu?=
 =?us-ascii?q?ekqLvaZ3c9dnwawTjLqTup7bLgeiLouisjbw=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.82,218,1613430000"; 
   d="scan'208";a="378481933"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Apr 2021 08:54:53 +0200
Date: Tue, 13 Apr 2021 08:54:53 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Mitali Borkar <mitaliborkar810@gmail.com>
cc: narmstrong@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org, 
    khilman@baylibre.com, jbrunet@baylibre.com, 
    martin.blumenstingl@googlemail.com, linux-media@vger.kernel.org, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, linux-amlogic@lists.infradead.org, 
    mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Subject: [PATCH v2] staging: media: meson:
 vdec: declare u32 as static const appropriately
In-Reply-To: <YHU56OM+C2zY34VP@kali>
Message-ID: <alpine.DEB.2.22.394.2104130853520.2850@hadrien>
References: <YHU56OM+C2zY34VP@kali>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 13 Apr 2021, Mitali Borkar wrote:

> Declared 32 bit unsigned int as static constant inside a function
> appropriately.

I don't think that the description matches what is done.  Perhaps all the
meaning is intended to be in the word "appropriately", but that is not
very clear.  The message makes it looks like static const is the new part,
but it is already there.

julia

>
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> ---
>
> Changes from v1:- Rectified the mistake by declaring u32 as static const
> properly.
>
>  drivers/staging/media/meson/vdec/codec_h264.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
> index ea86e9e1c447..80141b89a9f6 100644
> --- a/drivers/staging/media/meson/vdec/codec_h264.c
> +++ b/drivers/staging/media/meson/vdec/codec_h264.c
> @@ -287,8 +287,8 @@ static void codec_h264_resume(struct amvdec_session *sess)
>  	struct amvdec_core *core = sess->core;
>  	struct codec_h264 *h264 = sess->priv;
>  	u32 mb_width, mb_height, mb_total;
> -	static const u32[] canvas3 = { ANCO_CANVAS_ADDR, 0 };
> -	static const u32[] canvas4 = { 24, 0 };
> +	static const u32 canvas3[] = { ANCO_CANVAS_ADDR, 0 };
> +	static const u32 canvas4[] = { 24, 0 };
>
>  	amvdec_set_canvases(sess, canvas3, canvas4);
>
> --
> 2.30.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/YHU56OM%2BC2zY34VP%40kali.
>

