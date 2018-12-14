X-GM-THRID: 6634615271359250432
X-Received: by 2002:a2e:4253:: with SMTP id p80-v6mr163016lja.13.1544776559407;
        Fri, 14 Dec 2018 00:35:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:5d9d:: with SMTP id v29-v6ls624526lje.12.gmail; Fri, 14
 Dec 2018 00:35:57 -0800 (PST)
X-Google-Smtp-Source: AFSGD/WyN4AHx3ZCxulcSw2uy9XOdVEqeE/LS5fhW6Dez+XiCWk2bPEAKWPHVx8cuNbAcjb9xC3t
X-Received: by 2002:a2e:80c8:: with SMTP id r8-v6mr153134ljg.23.1544776557889;
        Fri, 14 Dec 2018 00:35:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1544776557; cv=none;
        d=google.com; s=arc-20160816;
        b=aAccXTn1IOMCUqn//HddIk5TekDnku5vnwQpmLAabcMh2CoOtVWnyrPyEZ6nYKCnQU
         X01pSlK1FzxsEFhR4o6auYV0j42Ct6J1iWjDPnA2mWF6Kj6IlblmI3h/+34coJrvUNx0
         8MmV0mq6lJblQwElSIrKkZKFv3B6o8nttt2kzi9kmCyr4c2dxxyZ6ysh470GzV6tVQjF
         uF8GU40WWOO/M3l7X5n2jblABpl7Ki8EQqU2LfEXdxKiED5ieE5tB9BCxcmXkLi3V5zD
         /Uifu2xFN3lxDJjc+p3hNlR2CDYwcA4fvlr/UQr8rrjOisgyd3PKdpyh0mcYvp509tF3
         8xOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=a+mFNmUevWa0Q8JtSm+PvQ2RmPSbBdvcBYcdTdDpGtI=;
        b=SyPCvVP8V0jPH9YPuetGojkk2JT608Ps1UmQm9S3G/W7p0qJh5k3nwdTiZCVP+Ppk8
         Q3HLbGhppyztcIO7UVQVYltCYKf5VcdGT5DAgyUV/ibW/+VPH8Ya06WjEtJTpOUmbmns
         0KH9BmIJ3huepIdbm7OYB7prnnxcbMXVgogB9luROaVzHtqp/8q+EMAKXIeBP/7dx/W/
         35HcY1VD2R8r+kFxKKonisvq4o55THtTV+srMX9JP0IEfhOJbVzwEyQUKfWwvYanUMv3
         OYIDegS8tPCTfvjgfLc5dGMbkNwhG85b/+swxYdHyMx0JBFak/qgnTC2ZpeA0YuestPB
         Ao4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=WThiPVrv;
       spf=neutral (google.com: 2a00:1450:4864:20::530 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com. [2a00:1450:4864:20::530])
        by gmr-mx.google.com with ESMTPS id y18si197403lfe.3.2018.12.14.00.35.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Dec 2018 00:35:57 -0800 (PST)
Received-SPF: neutral (google.com: 2a00:1450:4864:20::530 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=WThiPVrv;
       spf=neutral (google.com: 2a00:1450:4864:20::530 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-ed1-x530.google.com with SMTP id y56so4247440edd.11
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Dec 2018 00:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=a+mFNmUevWa0Q8JtSm+PvQ2RmPSbBdvcBYcdTdDpGtI=;
        b=WThiPVrvKOY/ootaKYQI/S8dllUFxsfTiwgzoYHmlwYt1KZJsha2nxXOkYp+vkAUg6
         C9T0QIbmCW22R3ov67TjD2Te+clHm73oE9WT5QYTgIPwNduM5AhdbIVPCdvGgAA2VIqH
         nBqDG66sbp+5aD5kZwQyG/PE0BwhVDIojFDNg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=a+mFNmUevWa0Q8JtSm+PvQ2RmPSbBdvcBYcdTdDpGtI=;
        b=ppjpL7my9v5M2jyuCjiyLmSS2cYRjDRjyUqcImLFlK26GJgrHtZB9aXamWFfFRpEj1
         BCSAh7Y6+PdbfgJEIgkQxrCijmrqqCD0Y9Y2xh70n4s/vabpHBbwhNann/7gkAEe3HFa
         t85HtjF/4bbdUv14sGU8nPLAesReVdSImF8yprBNQivFISu9aVQmCsbYAXFt4aBB3rFA
         Nb9KBr1z/0DLZekMhY3npmiFR5WPRDARMsDH8aCVIonTcKCXHNEvX/ozhKDy3MWJsr8Q
         YstD2bK9NbrQbBbzRB+UzhQYyTIYPva9NDHKtjjbu+kL2u9va0qAHn7LaErQ5WCwfgNa
         0W7w==
X-Gm-Message-State: AA+aEWZ/bOIuW7kmBsgta/xvhSRMwR/vSk2KZEPeXK5fd4HFgDcLQ1Sb
	SdlKznj7dBs0N0Rs6XrJSwC1zfWZmh0=
X-Received: by 2002:a17:906:44d:: with SMTP id e13-v6mr1773292eja.197.1544776557311;
        Fri, 14 Dec 2018 00:35:57 -0800 (PST)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
        by smtp.gmail.com with ESMTPSA id a11sm1293605edc.28.2018.12.14.00.35.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 14 Dec 2018 00:35:56 -0800 (PST)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Fri, 14 Dec 2018 09:35:54 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm: Remove complete task from TODO
 documentation
Message-ID: <20181214083554.GJ21184@phenom.ffwll.local>
Mail-Followup-To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <maxime.ripard@bootlin.com>,
	Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <20181213225537.nq4dwidn6tma33iv@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181213225537.nq4dwidn6tma33iv@smtp.gmail.com>
X-Operating-System: Linux phenom 4.18.0-2-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Dec 13, 2018 at 08:55:37PM -0200, Shayenne da Luz Moura wrote:
> This patch remove the follow complete task from TODO documentation:
> 
>   drm_mode_config.crtc_idr is misnamed, since it contains all KMS object.
>   Should be renamed to drm_mode_config.object_idr.
> 
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>

Applied, thanks for your patch.
-Daniel

> ---
>  Documentation/gpu/todo.rst | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/Documentation/gpu/todo.rst b/Documentation/gpu/todo.rst
> index 14191b64446d..41da7b06195c 100644
> --- a/Documentation/gpu/todo.rst
> +++ b/Documentation/gpu/todo.rst
> @@ -354,9 +354,6 @@ KMS cleanups
>  
>  Some of these date from the very introduction of KMS in 2008 ...
>  
> -- drm_mode_config.crtc_idr is misnamed, since it contains all KMS object. Should
> -  be renamed to drm_mode_config.object_idr.
> -
>  - drm_display_mode doesn't need to be derived from drm_mode_object. That's
>    leftovers from older (never merged into upstream) KMS designs where modes
>    where set using their ID, including support to add/remove modes.
> -- 
> 2.19.2
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181213225537.nq4dwidn6tma33iv%40smtp.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

