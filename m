X-GM-THRID: 6675008112137601024
X-Received: by 2002:a1c:c507:: with SMTP id v7mr1553547wmf.9.1554188338767;
        Mon, 01 Apr 2019 23:58:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e14:: with SMTP id g20ls178288wmh.1.gmail; Mon, 01 Apr
 2019 23:58:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxFue7xInQl1W7lVyxVpOOH0+JOMjJ8ObQu0z6z+nznep3QBEphEQAaqew96tSlnTl+oL2z
X-Received: by 2002:a1c:48c4:: with SMTP id v187mr1578938wma.2.1554188338007;
        Mon, 01 Apr 2019 23:58:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554188338; cv=none;
        d=google.com; s=arc-20160816;
        b=M67MoFPpFtZ83p94gNx7p2wTZmsL5/WhIAlGHZYeL7fLTwkBpSrG1JlR45PnQWviwy
         /KfMRT2ZEmnYOwBpVqE6B7twYL0mRNhHF9Hd45kJWKzV+Uaoq3+OaIJK/wjV4kdBVJJs
         +9DIVN+40EqCaQB9Hn0mdC3o5z1onPj3ssOpRqFx4PKiiFu4EaVrSvKf+vF7Z/la8cwM
         Dt7F+0u/NG1sTo6ejQ7wA4O30YX5IMEUHbwzUHq8Kvhmtqpftu13l+7zkMDE4o8sVZSO
         RGdsWFWTEniU0YMrvQZsTmOhUn+vA15TlP6ftXjeH3LzQeNJpJp4/KrspfCz5EFCj+Yj
         /oSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5ghunfrLyoSkVwwuA+BubdrWyk+wM7PBAPU7GumngTc=;
        b=yRriRG3jWLMd6Rz1rIiO1+QJ3jNkhPs/ziCoTQSX9zr+pveehJzOBjavPU+HO+hB+s
         F30zcAF1NNHosKUrgfukYrofxOBC89cI9/7dN7NkHbJdBoBzutBP68dCO4+ncZV9zk7A
         XINXmXSzYRPxlcZ5Q30R9bfC/1nhn8c/f6m8i8QzGhQXaybeuDCZ+LmUTfc6kXE3cUwl
         rxv4uKbiivNaFnpTmnLoy2T8D1D5PurSoinOki8xbcCXMXjTd4d9hZfv4SfthNNBJRKG
         ui/8KVLKrHQWrKVOZjN1yeYErvVG7biTzDzUTRVxNbZl0LniLq13iHjQ/v6d4U7SPSal
         DwyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b="PF3mX/Fn";
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Return-Path: <laurent.pinchart@ideasonboard.com>
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com. [213.167.242.64])
        by gmr-mx.google.com with ESMTPS id n65si499157wma.1.2019.04.01.23.58.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 23:58:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) client-ip=213.167.242.64;
Authentication-Results: gmr-mx.google.com;
       dkim=pass (test mode) header.i=@ideasonboard.com header.s=mail header.b="PF3mX/Fn";
       spf=pass (google.com: domain of laurent.pinchart@ideasonboard.com designates 213.167.242.64 as permitted sender) smtp.mailfrom=laurent.pinchart@ideasonboard.com
Received: from pendragon.ideasonboard.com (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 47EA22F9;
	Tue,  2 Apr 2019 08:58:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1554188337;
	bh=UJpwDHdBlXAFx8dhwlVz+0pcQFBhIWi5bMZCw3BTqSY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PF3mX/Fn77mWD04zcC0pa0neaHfb9MGHwHunMAEhimCRYH+jECr2iahScgjLjpkTN
	 jkNoVaT1vd+jyGyVh59VfF3ejUa002imGJRFu79ZJa6bVCdyJsSoNKmB6ZG7lxMNJ/
	 kuz1bz4xcEPWUyVejMAxx9FJgiupqU4DNiwzx2ZY=
Date: Tue, 2 Apr 2019 09:58:46 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] staging: media: omap4iss: redefine to_iss_buffer()
Message-ID: <20190402065846.GA4805@pendragon.ideasonboard.com>
References: <20190401192015.96166-1-himadri18.07@gmail.com>
 <20190401192015.96166-2-himadri18.07@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20190401192015.96166-2-himadri18.07@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Hi Himadri,

Thank you for the patch.

On Tue, Apr 02, 2019 at 12:50:14AM +0530, Himadri Pandya wrote:
> Currently macro to_iss_buffer converts vb2_v4l2_buffer into iss_buffer.
> But the application needs the conversion from vb2_buffer to iss_bufffer.
> So they need to convert vb2_buffer into vb2_v4l2_buffer first and then
> vb2_v4l2_buffer into iss_buffer. Redefining to_iss_buffer to convert
> from vb2_buffer into iss_buffer directly helps the situation.
> 
> Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss_video.h | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
> index f22489edb562..3722ac8ba2fa 100644
> --- a/drivers/staging/media/omap4iss/iss_video.h
> +++ b/drivers/staging/media/omap4iss/iss_video.h
> @@ -118,7 +118,12 @@ struct iss_buffer {
>  	dma_addr_t iss_addr;
>  };
>  
> -#define to_iss_buffer(buf)	container_of(buf, struct iss_buffer, vb)
> +static inline struct iss_buffer *to_iss_buffer(struct vb2_buffer *vb)
> +{
> +	struct vb2_v4l2_buffer *vbuf = container_of(vb, struct vb2_v4l2_buffer, vb2_buf);
> +
> +	return container_of(vbuf, struct iss_buffer, vb);

In addition to Greg's comment about merging the two patches in one, you
can also merge the above two lines with

	container_of(vb, iss_buffer, vb.vb2_buf)

> +}
>  
>  enum iss_video_dmaqueue_flags {
>  	/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */

-- 
Regards,

Laurent Pinchart

