X-GM-THRID: 6672001868710805504
X-Received: by 2002:a5d:5703:: with SMTP id a3mr14032240wrv.175.1553447931909;
        Sun, 24 Mar 2019 10:18:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:7014:: with SMTP id l20ls1776068wmc.0.canary-gmail; Sun,
 24 Mar 2019 10:18:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQBVxJ34gpJGs2DcyO5sXF3BeXz3s5l/HkSi1IlJehXZLazDX0mgN8TPI7y30ZcQN7e0wJ
X-Received: by 2002:a1c:c287:: with SMTP id s129mr3139354wmf.63.1553447931025;
        Sun, 24 Mar 2019 10:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553447931; cv=none;
        d=google.com; s=arc-20160816;
        b=dKItApllqOlW7o3FFSDBDPfOPSqwdL/XK00VjDml/SAvqWheD+pQcuf9ilGUKmyY0o
         Qn3q6fK6Kq96qlbGPmSwU+tSnF+2yT0XgxhebNadHTzKb70WPNWC6C8GxM43+xz4uQoV
         vXurNuOdd+CO4MjP8yT3L0MMyi88eXHP//G7v2U+KxwK7iR8M0K2Wbddw6zwNTDEvMAv
         9sXOFM/kDgZVupa6n7dy5SJhEL+y6Vafsrp2BlA9/y6NLDW3iEphEvTQGjjsWet1PCli
         lp+K/a7tVqhqtqfIMr30ezaA2qIvIi0g++roV9zRPSDFYSFs3KgEyKP6G2ksW+tuYnTl
         qxVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=EbLZid/c/FhTEJ23rHp8BK3E9LbYQzKbeCjV1yK20vw=;
        b=AG1qffu1zmPyzdmkmPzMbcLBTH58jm2gg/5W8WJh5SjK8MxeIj7wPlXMAoObmPy9+g
         Dq8alqfYiV+jcMtVLL4OzHjDpiP7UCRW2omBVOvLymZE4UDo3V9poJ/gAQQ9Zt8AAKR3
         p2MjeujodCTJBD1NqJNbEcozZOILhTpYxXUKirYT32nNGDNgasF40SoxfbBAoS4UcL2B
         bGvbepKkrorTSyXB/e2jb+n/4mwXxP3fVoRvBRQYY3FrK1DGvEyrjgdteGlLQotvRNsC
         A6wCMAW3aL13QFh46di8oJgzZKG+HmobDm3J5AaqF4402N2b34N6PmBCDG+ruK2x607i
         HPJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n5si826089wrj.0.2019.03.24.10.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 24 Mar 2019 10:18:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,256,1549926000"; 
   d="scan'208";a="375497948"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2019 18:18:50 +0100
Date: Sun, 24 Mar 2019 18:18:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: laurent.pinchart@ideasonboard.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: omap4iss: Use list_entry
 instead of container_of
In-Reply-To: <20190324165433.95833-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903241812520.2526@hadrien>
References: <20190324165433.95833-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 24 Mar 2019, Himadri Pandya wrote:

> Use list_entry instead of container_of for lists iss_buffer and
> iss_video.
>
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss_video.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
> index f22489edb562..e8d27b7ac329 100644
> --- a/drivers/staging/media/omap4iss/iss_video.h
> +++ b/drivers/staging/media/omap4iss/iss_video.h
> @@ -118,7 +118,7 @@ struct iss_buffer {
>  	dma_addr_t iss_addr;
>  };
>
> -#define to_iss_buffer(buf)	container_of(buf, struct iss_buffer, vb)
> +#define to_iss_buffer(buf)	list_entry(buf, struct iss_buffer, vb)

Actually, this macro is no longer used.  Perhaps someone else converted
the uses to use the proper list operations and forgot to drop the macro
definition.

>
>  enum iss_video_dmaqueue_flags {
>  	/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
> @@ -170,7 +170,7 @@ struct iss_video {
>  	const struct iss_video_operations *ops;
>  };
>
> -#define to_iss_video(vdev)	container_of(vdev, struct iss_video, video)
> +#define to_iss_video(vdev)	list_entry(vdev, struct iss_video, video)

This doesn't involve a list.  Nor does the previous one.  To use
list_entry, the third argument should be the name of a field that has type
list_head.

julia

>  struct iss_video_fh {
>  	struct v4l2_fh vfh;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190324165433.95833-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

