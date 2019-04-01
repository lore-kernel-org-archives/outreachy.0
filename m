X-GM-THRID: 6674924693853569024
X-Received: by 2002:a1c:a98f:: with SMTP id s137mr1248841wme.14.1554127361992;
        Mon, 01 Apr 2019 07:02:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:db08:: with SMTP id s8ls798214wri.16.gmail; Mon, 01 Apr
 2019 07:02:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQxgbZtQZLHud/YUPxanZg6mVw54JqPxt1DjFlSCnSG0/OJWINnn/UulkerEygkWm2BCs6
X-Received: by 2002:a5d:4ac2:: with SMTP id y2mr887648wrs.22.1554127361131;
        Mon, 01 Apr 2019 07:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554127361; cv=none;
        d=google.com; s=arc-20160816;
        b=xSxWVfKz5RjTs/mfiSWnhe3dYdW3X6ZnEt+d+48ZwhC3D1lXkJQbGYq0y8R6/clE4l
         3ZtwEvQsUlFqlWV8SbwPGWSUYjw179hbXAshVS67qTqrKetLvcjjpyX1c3eYcy77H+lH
         XOwhcOZWRxBT2QCbHt4TB8VoU9D0S3XaCAtmbB3P59HOvJGv8+Jhp+H2vZRM0MbcqK8a
         PzEsLoKI4dqu7vQEl17LLBdv8IhDpcfzyI2kxSju3uGWr/glL2u4ezdRRCvnKpEUOHS6
         kzWjOgbdn/ARLIZW599gN0WGyFwcG3lzCt/AYkzodzRHcFVZFIJi6kC+5biEucqQNXqi
         it1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cSAkO6ZOwWAYpEMaP6T/rD4UAXqMSPIVHO18eRGAcSU=;
        b=YY/Ig533isaEFhsJ4l2Ti57s6WHUOJOo6eMrKcelyEwVwKXO4CQ1qi9zrDUxKzo62Y
         K9UucEfE1+a7JuyudsAt+VJdAuZAGNj1agEDG/XTzlzOiTQf40LsZsUkGYHGlf1NhSke
         W3ax7JAQdeg0zOkrr69ope2fGThpKbcQ6AfhXibARQySK1NxqwDPM6oeL7yPIQHuBnpi
         2KImuCeutuSl80PEObueE4ffoHVD05CljpckgqYKVuPzsht3e28OeQpjUPtR1/TvZ9Tg
         ahuO1Gae82QuUDbbzdyyv9BrQlcdBPQc5ikz6M7l+iTVifioV96iJIK57soWVmPwiax+
         Z4pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o3si539865wmf.0.2019.04.01.07.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 07:02:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,296,1549926000"; 
   d="scan'208";a="301406089"
Received: from unknown (HELO hadrien) ([163.173.88.139])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2019 16:02:39 +0200
Date: Mon, 1 Apr 2019 16:02:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: media: imx: Replace list_entry
 with list_for_each_entry_safe
In-Reply-To: <20190401135637.8459-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1904011601450.5585@hadrien>
References: <20190401135637.8459-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 1 Apr 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
> Replace use of the combination of list_empty() and list_entry() with
> list_for_each_entry_safe() to simplify the code.
>
> Issue found using below Coccinelle script.
>
> @@
> expression E1;
> identifier I1, I2;
> type T;
> iterator name list_for_each_entry_safe;
> @@
>
> T *I1;
> + T *tmp;
> ...
> - while (list_empty(&E1) == 0)
> + list_for_each_entry_safe (I1, tmp, &E1, I2)
> {
> ...when != T *I1;
> - I1 = list_entry(E1.next, T, I2);
> ...
> }

I haven't studied this carefully, but there was an old coccinelle script
in this direction that made the code quite incorrect.  You need to
understand what you are doing here to be sure that it is correct.

julia

>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/media/imx/imx-media-capture.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/imx/imx-media-capture.c b/drivers/staging/media/imx/imx-media-capture.c
> index 9703c85b19c4..facce18975d8 100644
> --- a/drivers/staging/media/imx/imx-media-capture.c
> +++ b/drivers/staging/media/imx/imx-media-capture.c
> @@ -556,6 +556,7 @@ static void capture_stop_streaming(struct vb2_queue *vq)
>  {
>  	struct capture_priv *priv = vb2_get_drv_priv(vq);
>  	struct imx_media_buffer *frame;
> +	struct imx_media_buffer *tmp;
>  	unsigned long flags;
>  	int ret;
>
> @@ -570,9 +571,7 @@ static void capture_stop_streaming(struct vb2_queue *vq)
>
>  	/* release all active buffers */
>  	spin_lock_irqsave(&priv->q_lock, flags);
> -	while (!list_empty(&priv->ready_q)) {
> -		frame = list_entry(priv->ready_q.next,
> -				   struct imx_media_buffer, list);
> +	list_for_each_entry_safe(frame, tmp, &priv->ready_q, list) {
>  		list_del(&frame->list);
>  		vb2_buffer_done(&frame->vbuf.vb2_buf, VB2_BUF_STATE_ERROR);
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401135637.8459-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

