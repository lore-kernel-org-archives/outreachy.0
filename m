X-GM-THRID: 6616381756005154816
X-Received: by 2002:ac8:18bb:: with SMTP id s56-v6mr955050qtj.38.1540725921791;
        Sun, 28 Oct 2018 04:25:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:ca:: with SMTP id d10-v6ls2672956qtg.5.gmail; Sun, 28
 Oct 2018 04:25:21 -0700 (PDT)
X-Received: by 2002:ac8:4804:: with SMTP id g4-v6mr7344304qtq.55.1540725921304;
        Sun, 28 Oct 2018 04:25:21 -0700 (PDT)
Received: by 2002:a37:4946:0:0:0:0:0 with SMTP id w67-v6msqka;
        Sun, 28 Oct 2018 04:02:52 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cachiuCOiNJfOpzso5IvR6QJUqaYpUSxoUKmsxh+Ybda6EFAkvI0ZQ0qQwbeEY1CF/g2zt
X-Received: by 2002:a1c:338d:: with SMTP id z135-v6mr1615619wmz.11.1540724571765;
        Sun, 28 Oct 2018 04:02:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540724571; cv=none;
        d=google.com; s=arc-20160816;
        b=rG7ehNkwNjU2mzc+UXYkowU+iPYCxwO2mNRfkSMUEqXILV6jM41gLecdfmlfU4aIS8
         HcS/3jvkSkOCwFbNODbr/zxRnB1Nh+lanROM6hm1aOsWeKM1SEsNKd9/kIrfLMGUO9mj
         0cgb4iizGbYzGEKWRwJUZztnfDDXcgZqCjGzY0fkvgFtgHF7Y/quEVyunv4FEdncqCJH
         RurslefOR6PW5CmUkNwcKH+JvRgUde6vt/w5BbIegtfu7s0mA4MEcLWspKirMwzALQgF
         SAI7lrDbcQn2qrPxQPTvPBlu2VzW6LmJTvrEIe/ozhnY5NDU3zRwkyt4K5kOJFh9ZoxO
         T/Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=1bZhArkoqMIuKaNEK+cqsIteiW5Npk6lXBmRec8doAQ=;
        b=H75OoaY7VEyYVwaB8UkDYoJ/NPuqW+q0DTwUElCWeROpTccFOVxXSaDXENRoo25mYd
         upvo5wEq/IJN4fGRAkGPDG0sv1g2nMLolztHrBy7FN/9nrmYxmPOf64Dptnq5i1G7D18
         sInSpw3j9TOKArbxlsVqYUt8MvAOKo2IJeM0KqXe1cPJcLixw/7bvJ7NH35A+/AdHCki
         eusUWtt6Sy09YEiWT/mY5Wt66FqqLQoWBieuzVPicRpYcfibJ+C5XkgakOQP9o1MW7FO
         Do1DzoE73MLtkFzHvetd7AZ0duI+NoJUSJGTyHxp+4QuK7W7RAHbQEi+3jQ/gvdRhj/L
         abSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <hdegoede@redhat.com>
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com. [209.85.208.68])
        by gmr-mx.google.com with ESMTPS id v12-v6si22367wrw.5.2018.10.28.04.02.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 04:02:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.68 as permitted sender) client-ip=209.85.208.68;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: by mail-ed1-f68.google.com with SMTP id r1-v6so4846339edd.7
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Oct 2018 04:02:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=1bZhArkoqMIuKaNEK+cqsIteiW5Npk6lXBmRec8doAQ=;
        b=PNmApCoZA2pfN02OICBSMH9FjZdQMnhSiBSBDTkqTda+n5ASVTIBWaczQgBtVossU4
         hYTk57IxBglNIJj0lg6z1yGy0y6TNndFmcoXJEYpvwUEkPFwVEVSYJkGHJPCGynvNStX
         w3ZOdkPE3mhCPZD4jA1UxGWM5ujohSOzv32to5lfxhJBGYtMpfedA8cfHmHbRbDVCkHg
         D7Q0vadkRfCHcd+p2Kh81gUJJM0AJUqk5YTnNc9mwZYIwOJbhyaASZxmgtCJvFccsAYD
         xNRKeV/jUmJAahoYlQ103kezDNt9tC4Uchz5P1Ce+f7K/daXlmSVGJZNVzb6yS7S43xK
         ZsMA==
X-Gm-Message-State: AGRZ1gJOTknSVm5xImTyVoU7673snQnXgjrmOFEKGSCzjSbS4FEubZ2p
	iViNDxvg4U8+T7X7aIJIEK36LbSyhQ4=
X-Received: by 2002:a17:906:7442:: with SMTP id x2-v6mr7692676ejl.169.1540724570858;
        Sun, 28 Oct 2018 04:02:50 -0700 (PDT)
Return-Path: <hdegoede@redhat.com>
Received: from shalem.localdomain (546A5441.cm-12-3b.dynamic.ziggo.nl. [84.106.84.65])
        by smtp.gmail.com with ESMTPSA id f11-v6sm990513eds.23.2018.10.28.04.02.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 04:02:50 -0700 (PDT)
Subject: Re: [RESEND PATCH 1/2] staging: vboxvideo: Change uint32_t to u32
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1540580493.git.shayenneluzmoura@gmail.com>
 <a81ed59de19694f34b5c5d183e06007d6cc50d1f.1540580493.git.shayenneluzmoura@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a74af0ae-70a3-1e10-fff2-32c6ac3b74c7@redhat.com>
Date: Sun, 28 Oct 2018 12:02:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <a81ed59de19694f34b5c5d183e06007d6cc50d1f.1540580493.git.shayenneluzmoura@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 26-10-18 21:04, Shayenne da Luz Moura wrote:
> This change was suggested by checkpath.pl.
> 
> CHECK: Prefer kernel type 'u32' over 'uint32_t'
> 
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>

So as already mentioned in response to the coverletter of
the first posting of this series.

The drm headers use uint32_t in the prototype definition of the callback
functions we are defining, so the vboxvideo code should use the same even
if the compiler does not warn about the callback implementation having
different parameter types in this case.

To be precise, the page_flip member of struct drm_crtc_funcs is defined as:

         int (*page_flip)(struct drm_crtc *crtc,
                          struct drm_framebuffer *fb,
                          struct drm_pending_vblank_event *event,
                          uint32_t flags,
                          struct drm_modeset_acquire_ctx *ctx);

So our implementation before your patch exactly matches the prototype
which IMHO is the right thing to do.

Regards,

Hans




> ---
>   drivers/staging/vboxvideo/vbox_mode.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/vboxvideo/vbox_mode.c b/drivers/staging/vboxvideo/vbox_mode.c
> index 79836c8fb909..8a1b117990b8 100644
> --- a/drivers/staging/vboxvideo/vbox_mode.c
> +++ b/drivers/staging/vboxvideo/vbox_mode.c
> @@ -311,7 +311,7 @@ static int vbox_crtc_mode_set(struct drm_crtc *crtc,
>   static int vbox_crtc_page_flip(struct drm_crtc *crtc,
>   			       struct drm_framebuffer *fb,
>   			       struct drm_pending_vblank_event *event,
> -			       uint32_t page_flip_flags,
> +			       u32 page_flip_flags,
>   			       struct drm_modeset_acquire_ctx *ctx)
>   {
>   	struct vbox_private *vbox = crtc->dev->dev_private;
> 

