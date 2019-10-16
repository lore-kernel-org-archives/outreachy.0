X-GM-THRID: 6748161945131548672
X-Received: by 2002:a19:6917:: with SMTP id e23mr3028455lfc.4.1571228493309;
        Wed, 16 Oct 2019 05:21:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:c396:: with SMTP id t144ls1991043lff.8.gmail; Wed, 16
 Oct 2019 05:21:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzL27ifBz+JMdZhDtnsz3AhbzW7RMd7Syb7k5UOlBIIe1jzDxb43sySl2hUhrZu2Zbrx1yZ
X-Received: by 2002:ac2:4a68:: with SMTP id q8mr1926933lfp.20.1571228492337;
        Wed, 16 Oct 2019 05:21:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571228492; cv=none;
        d=google.com; s=arc-20160816;
        b=RMnPV1oTrd0R2WTeiVZD2Tb5I6Uu/W7TvFgmXHbU1A0rrRYfqnxu4rDqliKK1EhcCR
         9hyVfGTTLTOE5gXnTIVdEGtUhskUWCiiSzzbZ55W87auSM+qzE71wGGWhcv5Ifh8H/Nn
         sDIZ4Nj+/bt5adc5g8JDTpey2YvNuOGAMDZBizpz7R5M5rTY9b/534Ppcl5klXnj6+De
         J51DgARxC5tzRy3Vcd075gfU9ZkDkvBk5mteBW+hbv63rTvUjB8Pr+EdPXDEocpmIUnV
         wU0PiARhQoVu42TRQjEt5DGCgCFV8cp1x94vXGHmLNCgxsvZjw9AmRtcVxYpkQ1nvhVV
         X2Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=nqHe3TyB8ANnZJ1AXz7M9nTtKc28OYq+qsLv4MBxz+4=;
        b=SlIhgPqfSlm8zPIwNq3OwqaXGJ+nEsLV8Jw2DgBsaLhNO8I1IxUeSJxvjG4u4babuR
         wBFKWOwM9qDtBoq3F3GXZwVYx2iJnxbt5Hgs6dzx9IG5YtPjQQ679mWZbp986FJXtzv+
         PxqQ0HeOYyfCAnmbczWgNioba2oBX8EVn1UOeHTlCRbCNNPUeH1G4aTDGHv7YjgMzkbE
         6vQ0EM60Ldg+ah7Fw0eort3E2C/HERHN83Urrj2ALMfKLlHoCGJB7Xck/3e+Gug68Eh7
         LA2kdWphJFUG+BlZaFHJvqQtS1hgKR5kR1tZhzPtRPOw9WiuFUgHYjWQvDjr6DFj7u2f
         opCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud8.xs4all.net (lb3-smtp-cloud8.xs4all.net. [194.109.24.29])
        by gmr-mx.google.com with ESMTPS id k24si871722lji.3.2019.10.16.05.21.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Oct 2019 05:21:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) client-ip=194.109.24.29;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.29 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from [192.168.2.10] ([46.9.232.237])
	by smtp-cloud8.xs4all.net with ESMTPA
	id KiIuiHSeVPduvKiIxiquC1; Wed, 16 Oct 2019 14:21:31 +0200
Subject: Re: [PATCH] staging: meson: add space to fix check warning
To: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com
Cc: mjourdan@baylibre.com, gregkh@linuxfoundation.org, mchehab@kernel.org,
 khilman@baylibre.com, linux-media@vger.kernel.org,
 linux-amlogic@lists.infradead.org, devel@driverdev.osuosl.org
References: <20191015223433.18784-1-jbi.octave@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <f855f544-e546-eb3d-6346-242eb3435e35@xs4all.nl>
Date: Wed, 16 Oct 2019 14:21:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191015223433.18784-1-jbi.octave@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4wfHsIZxW8/J7+DHm0y77EjQKA9TDKkipmz/iz2ou5vQkcABiVz0wD2N9hiUJUO5Qx9SjJqf18AoTsRI0bf0iJGgCmY6wDtzHNVBgUWcNqB6OL1/cbZbOP
 DcGNv3faNnW4Gs0IsWlHmeVwyzNThU2fpY4N6Tno5jU8R7clio/iJfTcV7LTojz1sYlUCTtj2MquZ805HHw5+UV2xeistkVER1JR/xWjYQi+KmQ6Xr7vElI5
 7xtYGyBG0DrC9jb4mcLXDjHZ24GlAZXssVO7m+nBFiWzh/9AGGUvgGV/Gs4htWUjbaYqXUXzN+Sz7R8jUywUtD/wBgQjptycUy0ZxzK/7dwbBLFTbsIenyvq
 7f+S9k/uBvl/Znh9Cy9icsI1A/bjqgDGdL4gN3xRlbcv1RKWDTFLxPbd+11BFJ8ddLjjz0T5JQM0rdUmirDgeXTyfunyBwIuze2Cf4VgMom1O4YGu8iW14uu
 ftTg44AK0vfCQvdp

On 10/16/19 12:34 AM, Jules Irenge wrote:
> Fix "alignment should mactch open parenthesis" check.
> Issue detected by checkpatch tool
> 
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/media/meson/vdec/codec_mpeg12.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/meson/vdec/codec_mpeg12.c b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> index 48869cc3d973..21e93a13356c 100644
> --- a/drivers/staging/media/meson/vdec/codec_mpeg12.c
> +++ b/drivers/staging/media/meson/vdec/codec_mpeg12.c
> @@ -81,7 +81,7 @@ static int codec_mpeg12_start(struct amvdec_session *sess)
>  	}
>  
>  	ret = amvdec_set_canvases(sess, (u32[]){ AV_SCRATCH_0, 0 },
> -					(u32[]){ 8, 0 });

This is clearly intended to be aligned with the (u32[]) prefix for readability.

So this is one checkpatch issue where I prefer to keep the original.

Regards,

	Hans

> +				  (u32[]){ 8, 0 });
>  	if (ret)
>  		goto free_workspace;
>  
> 


