X-GM-THRID: 6618532112309944320
X-Received: by 2002:a2e:9085:: with SMTP id l5-v6mr23397ljg.6.1541061010578;
        Thu, 01 Nov 2018 01:30:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d201:: with SMTP id j1-v6ls1211293lfg.18.gmail; Thu, 01
 Nov 2018 01:30:09 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dPwWhiauYMqwWqAmwEn0rJ/h8dUHG7Lhui4bRQTxRrU4J4ZmBrMGPTHU0GjmYVxKj8HYns
X-Received: by 2002:a19:d00d:: with SMTP id h13mr149933lfg.7.1541061009250;
        Thu, 01 Nov 2018 01:30:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541061009; cv=none;
        d=google.com; s=arc-20160816;
        b=jtf0vWxz0yBSgPp7905XP+OGKMbw0oqZA0o/IjJW4oXcyY0na4FGyGY3xtICm+OETX
         EEI099nUlpoTCxxo1/Xy4uQOG5P2dMdtDTXSNKbiLtktK8zbWHmRrChS7RHMouOOnFvL
         M6c4GCf71kzyqv5S+uqFf1UmHSDfIUi5qEUk3elLjld4XzKG7NDlt/WuS9+UwqVv2b6W
         TXPWeebQxKqMCBEFzrXQP++rIehjuritNgTkQXOrClra5Qlz5Cc5B6KRO7rSWKZCI0av
         Dz6X5221/a64LZk4706TZyE1pRNm9p1wdyeOdK8H2H5r1eQIhJtZJADRw4MSvDZ3abgl
         +WuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/J12Bw/Qsfna16g+PFOdV+6ud+rYvff1d2xZWlM+Igw=;
        b=NsNbetzJrv3DQpyh2pweoIxeO1fnBNwgKxtIaceOSex6XGNRq+dpZqYbHNz/AkY0xp
         VUHK1ATayE1SxL+rdkj3GCektyoCB2W4QPXORwjWIyfbZzDiT6TrbRsAFDJRLhrZpXT/
         4TnppxXpqV6kp+lll6FOSrKKF3U9vH6TueMD2VYhPx1A5enxwx35H4fq0UuVpYA8NoX2
         cmAWH4u1bVyvbGvljQ+SzpLhk3FwMjhJViNLzN0m5u8FI1MyrapQhxFACs8vjqxWITRe
         OXVXXl4hsygkZ4cO2n0WpXbF3T8E8F/vGtBFSr1TKjdvsodLryXSgWkqanOUXBnGnjQS
         FCvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=IITSHWBL;
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com. [2a00:1450:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d14-v6si315950lfk.0.2018.11.01.01.30.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Nov 2018 01:30:08 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=IITSHWBL;
       spf=neutral (google.com: 2a00:1450:4864:20::544 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x544.google.com with SMTP id d6-v6so7792686edi.2
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Nov 2018 01:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=/J12Bw/Qsfna16g+PFOdV+6ud+rYvff1d2xZWlM+Igw=;
        b=IITSHWBLMflN9Q2R1hMUK/xqZMkPt/6Bi4AOM9zA1/HDTwFOCKTVu/+naLCH2ZDy7T
         X4A5noI2wrhhRqQYXOXnytZBZL8nJgNs+jXaKq8b4wFgDnVh15n174U5QZja9IG8NBR4
         4NAq/s5jnUDIOI5cMBRjExBlM6So6kY3h/0fM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=/J12Bw/Qsfna16g+PFOdV+6ud+rYvff1d2xZWlM+Igw=;
        b=VzSiIW4SBTYvxH1UNUrRajVnr9JoiL/rs231jmNTuG6JcGDF6ciQ+u09CFO/BTRty8
         nTAB45sD9y8Qsl768VK7xdf/hlif5VpEqAov95e/wx1nchl14nJ1d6pFiS+WmI+5Bifs
         lEv24wBCyFYxBfGquVkyBP/Dpw+AD7IMXnqIiBOlDQgBsneY1xQ2xaApQQCpn57+ZrJL
         8Sk8f5wLsoMJx9dT8i7UgGZ6mN6L5ivMW4sauA/SE3l/169OTGJAXrrwmXl+YRtLz35f
         AB9rNt4rPodiYeSM+PbX6/SMBG+3Y4kqaUE0J9BcHBxFUxcpVx0XE6DXgevA688zg4y/
         U8eA==
X-Gm-Message-State: AGRZ1gL1oROTI699MyioIZCoGEp87eaxPGbqZltundExJGPJ8sDxL/n0
	FFTRXdUH7UL1k2XzbD0I11pFsA==
X-Received: by 2002:a50:8636:: with SMTP id o51-v6mr4402528edo.209.1541061008616;
        Thu, 01 Nov 2018 01:30:08 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id d11-v6sm54092ejl.7.2018.11.01.01.30.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 01 Nov 2018 01:30:07 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Thu, 1 Nov 2018 09:30:05 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] drm: Remove 80-column line in
 drm_mode_object.c
Message-ID: <20181101083005.GX21967@phenom.ffwll.local>
Mail-Followup-To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <20181031174424.odljb6obj25wm47d@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181031174424.odljb6obj25wm47d@smtp.gmail.com>
X-Operating-System: Linux phenom 4.18.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Oct 31, 2018 at 02:44:24PM -0300, Shayenne da Luz Moura wrote:
> Break line after NULL to decrease the line size.
> 
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> 
> ---
> Changes in v2:
>   - Remove aditional variable added in v1 and add a line break

Applied, thanks.
-Daniel

> 
>  drivers/gpu/drm/drm_mode_object.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_mode_object.c b/drivers/gpu/drm/drm_mode_object.c
> index be8b754eaf60..cd9bc0ce9be0 100644
> --- a/drivers/gpu/drm/drm_mode_object.c
> +++ b/drivers/gpu/drm/drm_mode_object.c
> @@ -38,7 +38,8 @@ int __drm_mode_object_add(struct drm_device *dev, struct drm_mode_object *obj,
>  	int ret;
>  
>  	mutex_lock(&dev->mode_config.idr_mutex);
> -	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL, 1, 0, GFP_KERNEL);
> +	ret = idr_alloc(&dev->mode_config.crtc_idr, register_obj ? obj : NULL,
> +			1, 0, GFP_KERNEL);
>  	if (ret >= 0) {
>  		/*
>  		 * Set up the object linking under the protection of the idr
> -- 
> 2.19.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181031174424.odljb6obj25wm47d%40smtp.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

