X-GM-THRID: 6950525312871432192
X-Received: by 2002:a7b:c3c7:: with SMTP id t7mr2661595wmj.142.1618298776361;
        Tue, 13 Apr 2021 00:26:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4a04:: with SMTP id c4ls830487wmp.1.gmail; Tue, 13
 Apr 2021 00:26:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz2J2a9A8u0a9QEiY6O2UVTD3fpGgFeAHKcWYnTqacU8KitPoiqKGoMm61iYuUHTQcAbP+M
X-Received: by 2002:a05:600c:2dc8:: with SMTP id e8mr132770wmh.10.1618298774902;
        Tue, 13 Apr 2021 00:26:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618298774; cv=none;
        d=google.com; s=arc-20160816;
        b=tJp4tRTwGahtaLGi3JR8ZiVW33e2P9QAeW9Uo6Al3puErG3xfKXitjXlJMs0h1vUmw
         UUOM3KXhPy2peio3YbYdJac7/kfmqvn0thfTwV9wt/X5QzuTFmTGf/OfgyeLIRdLgBC/
         /CfZGjNINsGmbDtSLhBmKwYMbDBQ2tmc6AcCofHN4J2CGhtcnK/13kxI4bA7SE6Leg2v
         8BJh9Ivb/2s6APdt3H+TJg5YdvJnWAKG1KqZRpYxPGEp9Qp5hYL4KH5NfBXAKMlUwBoZ
         OA1fQpQNGvlaZcHhFRiIMu938bLRWmrdJUMJZeKncoBU3XlV/hYwu/DXiIkvW7ppZ0mH
         mwOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=iuscKYlZrmNNcYDAdFgfUygRIDVn2zQTJzj0tnhaTjE=;
        b=pHRmbdyf9v5aMgxxfrIFA96b4NflO/i+DCCPphzbVnR0RqKzAwKnkT4XB+SdlD3evG
         EfXuihni59jbs3dSxVpYKpisc74Y2pJBxk++HMRMnbSHKudwV/cZii158Qv7A2V0QxQj
         l9oc2Gt0hcFuQ3xmw4SaHg1SVHUWQQZuQ39w0SG/DCI46q/SSQ7ms2VzXhf59VHTBehf
         KT/F+2tld+LT3NlqBlNjIdf3J7BFBbcCFYXLrA8dpa6RR+hu7l6td0RGJb+i/UTrBtRp
         uVi+j9MMQoxn7EAocBTj7vJi7BiBgc6LBHHfK/qUJBdlmsH1hLPStdhQxThkg4wZKWS1
         /ZNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=TBgDYf6o;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb1-smtp-cloud9.xs4all.net (lb1-smtp-cloud9.xs4all.net. [194.109.24.22])
        by gmr-mx.google.com with ESMTPS id k187si94890wme.2.2021.04.13.00.26.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 00:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) client-ip=194.109.24.22;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=TBgDYf6o;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.22 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud9.xs4all.net with ESMTPA
	id WDQvlhJsG43ycWDQylbKsA; Tue, 13 Apr 2021 09:26:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618298774; bh=iuscKYlZrmNNcYDAdFgfUygRIDVn2zQTJzj0tnhaTjE=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=TBgDYf6oNueT4ZNtCBRGqTHa+AeLyqCD19lzLlYmmSfw5j4763vmDLB23cr9Zrhmk
	 qSs9/RkWZ8hTzNsee6VK9miMwcxgjiain/ljENcNblcUo8Xrla4KiaeG8upGJqCM6a
	 +Hv4O2AKrn3KeaaKXJhtwM3Td87Si5rl6/JxliRAmSjM8WIH1FP2DJzfyg6H4YE4aT
	 E5nqdz4y9bZ1XTLVLdRQhsP/D85FbTmaRUEZZ1tFXhu9LwtIUcG6B+T/vy9AwvNkGP
	 Nx+oCIVSTHjYc34ZklGDBoU7kQPCd5ZrrS/mAT/xk4uDtc8fvjkx2PShCxDrHCYM5s
	 DMV2Qz0XW/xtg==
Subject: Re: Subject: [PATCH v2] staging: media: meson: vdec: declare u32 as
 static const appropriately
To: Mitali Borkar <mitaliborkar810@gmail.com>, narmstrong@baylibre.com,
 mchehab@kernel.org, gregkh@linuxfoundation.org, khilman@baylibre.com,
 jbrunet@baylibre.com, martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
 linux-amlogic@lists.infradead.org, mitali_s@me.iitr.ac.in
References: <YHU56OM+C2zY34VP@kali>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <00c8a239-49d3-fedb-ec67-076e8b823efa@xs4all.nl>
Date: Tue, 13 Apr 2021 09:26:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <YHU56OM+C2zY34VP@kali>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfMACiB/U3iBmeIo8g2sQHaGJfQjsL6GJ7v+M9ptXTdZx5bTSXHAIxK6HgPN5d14hv9IMqKdD7UkDJDWsTPefBdDD+Pk4FTegeqoWcKUT0squpR8jLHt5
 kf8a7+2gQd8//OJJqeur7Rzfkj7GjP8p3rPeDAIq3TsvlNSGDvzd71Ia1SSDNBczzHanGs6Cm3cUXkZ2gpmWuD3g3s8c5ykxphhxahqSCKry+t+N5KyCaquP
 AFzAtQr90Vk7DRNrDj7tRybqimpkkOOismwFRbZZwHOCbTXRal0OtwRdehHUxYCXJtiYuowDAwXFU/QGlJbW0Rgz69B2BQl+pxIv027K7OoJ7Kx58/2FHIRu
 aFVG9byy7VQr3ssoeLqhG23oOrix7EhRvOUuko6z2NZwVkG04XUJB5ih6Oy47e3CIk2hLSej1zCFW1LB5iqE+o1qi587irxJRerd3SXjYtd/mfTgy9xIEiru
 3TIGJTn2Lj08Y0iTOJJouMb+ZTy/O9nNeZTOsQr3+vIjcDIZco8Y/ZJqVhKeyNRSIwOw/8reeoex51YYxujMkj6ZEbWENSzysjMG+Bm9nUJTBnW87Ca78wgr
 emZ9uuHwXJ5TgUTCDclURjY8dtB20VuPnUcduBexg0gYE5eVrFJKqSYQd50H7EX6KE3RyHIeK6ifEX9Z5THD0sI8

On 13/04/2021 08:27, Mitali Borkar wrote:
> Declared 32 bit unsigned int as static constant inside a function
> appropriately.
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

This is a patch on top of your previous (v1) patch. That won't work
since the v1 is not merged, you need to make a patch against the current
mainline code.

Regards,

	Hans

>  
>  	amvdec_set_canvases(sess, canvas3, canvas4);
>  
> 


