X-GM-THRID: 6883028084998537216
X-Received: by 2002:a05:6a00:170a:b029:152:6881:5e2f with SMTP id h10-20020a056a00170ab029015268815e2fmr11511004pfc.21.1603684928418;
        Sun, 25 Oct 2020 21:02:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:483:: with SMTP id 125ls2693221pfe.6.gmail; Sun, 25 Oct
 2020 21:02:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxhsxcJwEEZV79jdQ9d57a1nMYJ3RSR0yg3yjtmgvbBxfju7uSxDhT3tuLflDvqvkGoxQqa
X-Received: by 2002:a62:7b11:0:b029:156:3610:7e25 with SMTP id w17-20020a627b110000b029015636107e25mr11557209pfc.53.1603684926866;
        Sun, 25 Oct 2020 21:02:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603684926; cv=none;
        d=google.com; s=arc-20160816;
        b=ypCk5lBJEfNQJMUT5afm6o0+e6pIYdueaJkVJSMm7tK4LD2H6Yja+YVKXxgehz+O1B
         uBSvJQ8fJTTLjSFTZNQ3B4HJHKSyXldBT5NcTCgYtTp6DH8pf3z3YXhnQWnvGEyTkK6h
         kLbC9/AjiQipqcAXLbtmjQwK0ohM/V8Q3bpuUn/El4mUEVp7pCDZChNOD0ghoz0oyxyk
         HTTPuRbT0J9Qh0hRoa/BXT1Eg46mUOQODT4yk5xUijhoP8rpXr/qkeGPRqaUvMgeDVyd
         1Ur38hZkT5gWQDhCkbQ2+/nqZyOwgsbc/qvBjRUM+3D0eIhqDvc312+62xaU3jvbUb06
         Ky6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=B99IfzLR2EOWkMrV6HxxsdcyAoy5u02ZQJScBmotCwQ=;
        b=ynvoR70/LpE4/SG38OSbzVt3Tmq42kIYYbKMoyYHV+Vw4zxXvAd40InBaJ/au96ZV3
         O2v5ZuFf9zEzvzg6OFbwedXNxuQmPmza2+M9bpz0wQ/XNZjhAclRM02XKZ9RGTR44+NR
         LgJFRumdSqd3t0IARq74gLo/ZYwsnzUMrHcOAFn3qJTdqrUk7MZ1XMvqemq1xjHdEE28
         7Qk45LRG19229weQrr8loj84HsdmwAH/YtiMiwxUl98ipgbKxX7R1dWSjH4cufGBGzCM
         GxCUQsj8EmcQvUTlkHeIFEsWMnWohqzDbckm88KmPmjxbe5sh72bNtnt4fJqn5H6zPAQ
         vJDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DNzDWjYx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id v1si676070pfi.2.2020.10.25.21.02.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 21:02:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DNzDWjYx;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id e15so5461120pfh.6
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2020 21:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=B99IfzLR2EOWkMrV6HxxsdcyAoy5u02ZQJScBmotCwQ=;
        b=DNzDWjYxT/Wx5/SUEULz7eYFAKK5DShLNGMJ25xpWASVRYuB4TSVfQXMt5Je/u9oKG
         46puF4mB4Nw92RcPUls0wDv3xjkIj0gZg++xd1KgeUWI/MJ4CIRu/WU1h++kThgCT46j
         MzPrJfBiGjd4ZGpHM+IK399SZfQ/s0Bkwr8HdQABYcpJuibi8S6Hp8mF/10Ci3gCpDFG
         w7fvCTwLj3eQvRlStWLkMnHg373JH0Do/TqDRl9vXat46vD6j0G+eq5H/E0L7s4OiOgB
         xG7J6tW1jIb3UvfFvRtDqMhmPy2/P4+wo05ro6fFYIBk50UrSsMGl4vRZQKV/h0xpCc0
         UH9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=B99IfzLR2EOWkMrV6HxxsdcyAoy5u02ZQJScBmotCwQ=;
        b=M5oT8thf2MbVWbAQ9Idlk+3T9e67MMOAsIWJCLoGJwWY+FnhHtzuY0y35U3CPWOsJh
         Syh3wWODiMYDhPAamtolhajKnrQSP6Q6KT9z4hnk7Ean97AzW2p5ROjWqwgancsjEGMs
         2sGZAzzTaCLVV0PsOaOHMcjnvXE2m3fL9ohj1gT5xFlakOnlz2lF0uVR2hJSB5/8Xrqo
         YmozYW3Gl30Q57QHRtPibMzqUXoS06VoYee/oo1anJguasva9j1k+4BTBL99aRrXsQKf
         oOc+uvNn8ciKcQiteGs67bawHVXiseud8LNiFYpgJNsiHlQFRfrMVic9aZB/QT4fJFgK
         qWzw==
X-Gm-Message-State: AOAM53098h7ICmbdCDu4BHA0dfkcNBlOnYUcksOQ+IAmu3QKu82sxc5J
	QL6ItUC0lVeHEdE/7nUklIkbjqTwuZ8=
X-Received: by 2002:a63:1a64:: with SMTP id a36mr12009872pgm.153.1603684926434;
        Sun, 25 Oct 2020 21:02:06 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id 128sm10286857pfd.110.2020.10.25.21.02.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 21:02:06 -0700 (PDT)
Date: Mon, 26 Oct 2020 09:32:00 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Steve Longerbeam <slongerbeam@gmail.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-media@vger.kernel.org
Subject: Re: [PATCH 2/2 v5] staging: media: imx: remove unnecessary variable
 use
Message-ID: <20201026040200.GB5074@my--box>
References: <9fd1e7dd9e8f944b520f2a789e66e458aeb7b555.1602869338.git.mh12gx2825@gmail.com>
 <6a22de0a51e06b7cb43d4a55850f3a0213532e42.1602869338.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6a22de0a51e06b7cb43d4a55850f3a0213532e42.1602869338.git.mh12gx2825@gmail.com>

On Fri, Oct 16, 2020 at 11:16:06PM +0530, Deepak R Varma wrote:

Hello All,
Request for review / ack of this patch.

Thank you.
Deepak.

> Use of variable vc_num is unnecessary here as it is used only once.
> Instead, the value can directly be used in place of the variable.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
> Changes since v4:
>    - None.
> Changes since v3:
>    - None.
> Changes since v2:
>    - Implement feedback from Vaishali to simplify patch log message.
> Changes since v1:
>    - None.
> 
>  drivers/staging/media/imx/imx-media-csi.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 9320e3974d86..db77fef07654 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1123,7 +1123,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  	priv->upstream_ep = upstream_ep;
>  	is_csi2 = !is_parallel_bus(&upstream_ep);
>  	if (is_csi2) {
> -		int vc_num = 0;
>  		/*
>  		 * NOTE! It seems the virtual channels from the mipi csi-2
>  		 * receiver are used only for routing by the video mux's,
> @@ -1131,7 +1130,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  		 * enters the CSI's however, they are treated internally
>  		 * in the IPU as virtual channel 0.
>  		 */
> -		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
> +		ipu_csi_set_mipi_datatype(priv->csi, 0,
>  					  &priv->format_mbus[CSI_SINK_PAD]);
>  	}
>  
> -- 
> 2.25.1
> 

