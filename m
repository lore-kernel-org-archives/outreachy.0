X-GM-THRID: 6948788358969556992
X-Received: by 2002:aca:3303:: with SMTP id z3mr10895232oiz.140.1617989718912;
        Fri, 09 Apr 2021 10:35:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d54d:: with SMTP id m74ls2055358oig.11.gmail; Fri, 09
 Apr 2021 10:35:18 -0700 (PDT)
X-Received: by 2002:aca:4d0e:: with SMTP id a14mr1607937oib.107.1617989718200;
        Fri, 09 Apr 2021 10:35:18 -0700 (PDT)
Received: by 2002:aca:300f:0:b029:102:9567:6eda with SMTP id w15-20020aca300f0000b029010295676edamsoiw;
        Thu, 8 Apr 2021 09:20:59 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxb9LjlKBQRMKLHM1SXMtUpuXUW5ciqJkSia5aKFft/6KstuKv/HaTgB2aT/PadSvFlaPzz
X-Received: by 2002:aca:57d1:: with SMTP id l200mr6550773oib.148.1617898859633;
        Thu, 08 Apr 2021 09:20:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617898859; cv=none;
        d=google.com; s=arc-20160816;
        b=RdlGelfXey2q+dH9DCnVcwooCy8z3ZvL3YRQMQFKnjM7XOkXrKP1juZAV88Ntg+CRt
         QvYuz1r5gPT4fXPTNDQuwvbddZn3puzMZ+hq9Ms7MtAv50vnZuEEHBIJz0NUPrR0VEOa
         zwDoMeZh5fd0SJm7h36rpGoWQ141Dl8xx0Dsy/DsHMd6yt+mE44DDpx0aCIrYvZt+Ur6
         IaKW5vF0ok+Nnri89em072SawsyshBs9SPsH3lqBV8HEhaa6YcZw6m09aNvKjLkl2RBs
         26U+MAZJ3I8gpq60N4MaTBOskBCt/LBSnbuHq1wWrcu3Dq+9VU8gwtx/6N1lRLlrNV+s
         h2vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:organization
         :references:in-reply-to:date:cc:to:from:subject:message-id;
        bh=iQUOoaTxmSgcU6IuDxl+D9UzmiILsIczdsPlwF4fjW4=;
        b=07QWiqxCv0n9drX+EQCfw7khmTzTo0obJUCje68LLx38uwm9tvjaQUnd/AAxci8jtO
         zIAgRM5guky1B6IN1jUCZ1Ow9nqdFeNdBragDOe9Mqe7yHlxVov7Du0FFkLr0LAUbBof
         JAvZnXe1wc+2e76TAxpIJiClSm8b4s7S4VJy0nwqE7q84IWr1uu7rje5yXTin/kB1/35
         fTFA/ReqM1QdOSJ1C6qTBWRKCY/xk83UJ3FF/EnYFEYnFNUfthpnuJlUMMCqfaGs2o1d
         0lvXHSqqEQ6OwNoJqzUalX30z+r5Z8QKWji5gKWDViMANsiU3WL1xKE9kwPycmNXZ0tY
         QJUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <ezequiel@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id k10si1800286otj.2.2021.04.08.09.20.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Apr 2021 09:20:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ezequiel@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ezequiel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=ezequiel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: ezequiel)
	with ESMTPSA id B82A11F45CF6
Message-ID: <d4000598fddcf45e578462aa04b556c0ca057091.camel@collabora.com>
Subject: Re: [PATCH 1/2 v2] staging: media: hantro: Align line break to the
 open parenthesis in file hantro_hw.h
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Thu, 08 Apr 2021 13:20:49 -0300
In-Reply-To: <1e6d73432d60dfb8bb3f7f2bd6bf3084091a2a39.1617890467.git.alinesantanacordeiro@gmail.com>
References: <cover.1617890467.git.alinesantanacordeiro@gmail.com>
	 <1e6d73432d60dfb8bb3f7f2bd6bf3084091a2a39.1617890467.git.alinesantanacordeiro@gmail.com>
Organization: Collabora
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Ola Aline,

Welcome to the kernel community. Hope you enjoy some of this
Outreachy adventures.

Normally, when you submit a v2, we want to know what changed
between the first submission and v2.

If you are subscribed to linux-media, you can read some
of the series with a vN+1 and look how it's done. Examples:

https://www.spinics.net/lists/linux-media/msg190043.html

https://www.spinics.net/lists/linux-media/msg189923.html

I'm sure your Outreachy mentors can tell you more.

On Thu, 2021-04-08 at 11:07 -0300, Aline Santana Cordeiro wrote:
> Aligns line break with the remaining function arguments
> to the open parenthesis. Issue found by checkpatch.
> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
> ---
>  drivers/staging/media/hantro/hantro_hw.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/hantro/hantro_hw.h b/drivers/staging/media/hantro/hantro_hw.h
> index 34c9e46..a650b9c 100644
> --- a/drivers/staging/media/hantro/hantro_hw.h
> +++ b/drivers/staging/media/hantro/hantro_hw.h
> @@ -207,7 +207,7 @@ hantro_h264_mv_size(unsigned int width, unsigned int height)
>  void hantro_g1_mpeg2_dec_run(struct hantro_ctx *ctx);
>  void rk3399_vpu_mpeg2_dec_run(struct hantro_ctx *ctx);
>  void hantro_mpeg2_dec_copy_qtable(u8 *qtable,
> -       const struct v4l2_ctrl_mpeg2_quantization *ctrl);
> +                                 const struct v4l2_ctrl_mpeg2_quantization *ctrl);
>  int hantro_mpeg2_dec_init(struct hantro_ctx *ctx);
>  void hantro_mpeg2_dec_exit(struct hantro_ctx *ctx);
>  



