X-GM-THRID: 6475502407668203520
X-Received: by 10.223.142.227 with SMTP id q90mr1468105wrb.32.1507722167966;
        Wed, 11 Oct 2017 04:42:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.162.137 with SMTP id s9ls289160wra.7.gmail; Wed, 11 Oct
 2017 04:42:47 -0700 (PDT)
X-Received: by 10.223.156.139 with SMTP id d11mr1333893wre.17.1507722167141;
        Wed, 11 Oct 2017 04:42:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507722167; cv=none;
        d=google.com; s=arc-20160816;
        b=dgRpoRy5uytvYC63u3n+Vszlnfw40ZwU5Y1BkVIPxREbkX7O+hzhpmFj8vZqtpYDF2
         8UOIha3JAiFxDDaCYAbwTUhBcoOPHaaqy2rXYnC4iqebY6ZsJQd7ll3LKBxhR+1EHRq6
         KIiBaGeRvuiR0ZmUWSpASfwvnntL4LWbZbY3cB7X/pM3fd8HiCNTKc87oL1dMCQ6d9uc
         Rg+KIZ8nDDMVixazELQxy2RKtnCxZPFVhP9kX53hN7uz3315hJ8PnfISz4g5eR9ixSrP
         Yq7eaV5ZGjYX/xVngP9OCTGb/ghp6NsiHRpOM/Ksm9/7fAh/wL4UM5TbOAAukYRRPZnR
         0eRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:sender:dkim-signature
         :arc-authentication-results;
        bh=DG7NW9yRmaCIE9OSmG4QmcNjFDXAB8QLFE/UwEvLnzg=;
        b=BgbqTDgrSlOxaCOiLIR7r3G/Sfk2kFIiUdbWRjopCxi/7cMKJBvTQ7XZmZBw87jNwU
         cDgI1WSJzG3AakDldCiyTVTl6QNbkl3JIQbc/jydQLmAnTElf7zUDzfObcyhGxC3bORE
         Aa1YxMulUKXOiPMsqyzLPQ0ROoWnGKK3VSZkpmvzLfRtM8RR7xVx/hsXcR/s2TTOkKWv
         A91caktUBbhVrdx999Ec4FdbYDJ/MCjCixK5ZrsL3iOFYbkSiN1LAMfEleTLK4j34G6B
         F4OmP9bSw67Udtx30t9A//ZfnQiz8Fe2GA7tqqCPSQaorNwFjvFXHOYGZ/ZNaB6Z62cU
         pdgA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Ogur/NiB;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Return-Path: <daniel@ffwll.ch>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id 196si1626935wmk.4.2017.10.11.04.42.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 04:42:47 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ffwll.ch header.s=google header.b=Ogur/NiB;
       spf=neutral (google.com: 2a00:1450:400c:c09::243 is neither permitted nor denied by best guess record for domain of daniel@ffwll.ch) smtp.mailfrom=daniel@ffwll.ch
Received: by mail-wm0-x243.google.com with SMTP id u138so1607489wmu.0
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 04:42:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=DG7NW9yRmaCIE9OSmG4QmcNjFDXAB8QLFE/UwEvLnzg=;
        b=Ogur/NiBkTvVrr9ztdx6Q/9hMH0VKH099DTdJnskG69WUxH8fEdNK03Ri2uT7MynR3
         hfZqWq7N7MzV5Fb9TyM7+goaAlMhvhRjQJhhCTnJbuUGns+fN6eczM0c2EZMAdo0+DEA
         qZ1nLGn2HgoDCRduq6u0jiy8kBPLfV2hUo1Fk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=DG7NW9yRmaCIE9OSmG4QmcNjFDXAB8QLFE/UwEvLnzg=;
        b=ZXrWsjHz1Aq9BnaM98a1gHOC9WOVk2N40MgMrsigVJcdYBIg8Mbn5Jt3RYZr4f6wKS
         FWGdGYFuuJJfChr3beChw8KVR3ysXGe8bGhvlOZ8JvfNI4Qms1+1sq/LBccTvSF7Z4eY
         ll1J/fAedzOUnAkmkPmPmhEpuPDJnHMbsfZnlsZ3TgPksCa4jadrGgPysX4I2axTXviF
         Ny46g7FZbNRQwJxU0B+oHp1V2+czj1PXTga9HZfIHUjANKzw4za8x/G7b5v2K4otaGP9
         97FOKJE//AE8IqUvCmrnJPLyY6SgZYKLgFY1lfiL6SXvDvErfLxtJh3gnPXbpmIP6eIs
         2SIw==
X-Gm-Message-State: AMCzsaUe2j2quMqi6ayPo9V1yCf/WZLyXqQ4939GMmNzXiH+bOk/rr2P
	oJaO7pXcC6KqDM7uRJsWXtiQhA==
X-Google-Smtp-Source: AOwi7QBbkhK2+wMrqPfpf8ivqsz7dEsHThai5MAXNrxyay/w7x+KOTbT8I2qD8tOEhQ+R1vA7Tc1kw==
X-Received: by 10.80.226.8 with SMTP id n8mr15425422edl.177.1507722166725;
        Wed, 11 Oct 2017 04:42:46 -0700 (PDT)
Return-Path: <daniel@ffwll.ch>
Received: from phenom.ffwll.local ([2a02:168:5635:0:39d2:f87e:2033:9f6])
        by smtp.gmail.com with ESMTPSA id g49sm3315080edc.31.2017.10.11.04.42.45
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 11 Oct 2017 04:42:45 -0700 (PDT)
Sender: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 11 Oct 2017 13:42:44 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Haneen Mohammed <hamohammed.sa@gmail.com>
Cc: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
	gregkh@linuxfoundation.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>,
	David Airlie <airlied@linux.ie>
Subject: Re: [PATCH 2/2] drm: Update old comment style
Message-ID: <20171011114244.fivqhsggw4jfrdn2@phenom.ffwll.local>
References: <cover.1507693829.git.hamohammed.sa@gmail.com>
 <89f342899ff9acc1645e6cc58451e9aafccb5e77.1507693829.git.hamohammed.sa@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <89f342899ff9acc1645e6cc58451e9aafccb5e77.1507693829.git.hamohammed.sa@gmail.com>
X-Operating-System: Linux phenom 4.12.0-1-amd64 
User-Agent: NeoMutt/20170609 (1.8.3)

On Tue, Oct 10, 2017 at 10:16:30PM -0600, Haneen Mohammed wrote:
> Remove old comment style used by doxygen.
> And remove comment left from commit 99cdb35e787b ("drm/doc: move printf
> helpers out of drmP.h") after refactoring drmP.h.
> 
> Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
> ---
>  include/drm/drm_debug.h | 26 +++++++++-----------------
>  1 file changed, 9 insertions(+), 17 deletions(-)
> 
> diff --git a/include/drm/drm_debug.h b/include/drm/drm_debug.h
> index 24fbea4..78e3702 100644
> --- a/include/drm/drm_debug.h
> +++ b/include/drm/drm_debug.h
> @@ -42,9 +42,7 @@ __printf(3, 4)
>  void drm_printk(const char *level, unsigned int category,
>  		const char *format, ...);
>  
> -/***********************************************************************/
> -/** \name Macros to make printk easier */
> -/*@{*/
> +/** Macros to make printk easier */

Did you test this with the kernel-doc build? This should cause tons of
warnings still ...

On top of Ville's suggestion it would be great if we could complete the
kernel-doc work (in follow-up patches), i.e. document all the functions
exported to drivers, plus the various macros. Many are there already, but
only needed to be converted to kernel-doc style, but a few are missing.
-Daniel

>  
>  #define _DRM_PRINTK(once, level, fmt, ...)				\
>  	do {								\
> @@ -69,8 +67,8 @@ void drm_printk(const char *level, unsigned int category,
>  /**
>   * Error output.
>   *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> + * @fmt: printf() like format string.
> + * @arg: arguments
>   */
>  #define DRM_DEV_ERROR(dev, fmt, ...)					\
>  	drm_dev_printk(dev, KERN_ERR, DRM_UT_NONE, __func__, " *ERROR*",\
> @@ -81,8 +79,8 @@ void drm_printk(const char *level, unsigned int category,
>  /**
>   * Rate limited error output.  Like DRM_ERROR() but won't flood the log.
>   *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> + * @fmt: printf() like format string.
> + * @arg: arguments
>   */
>  #define DRM_DEV_ERROR_RATELIMITED(dev, fmt, ...)			\
>  ({									\
> @@ -112,8 +110,8 @@ void drm_printk(const char *level, unsigned int category,
>  /**
>   * Debug output.
>   *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> + * @fmt: printf() like format string.
> + * @arg: arguments
>   */
>  #define DRM_DEV_DEBUG(dev, fmt, args...)				\
>  	drm_dev_printk(dev, KERN_DEBUG, DRM_UT_CORE, __func__, "", fmt,	\
> @@ -164,8 +162,8 @@ void drm_printk(const char *level, unsigned int category,
>  /**
>   * Rate limited debug output. Like DRM_DEBUG() but won't flood the log.
>   *
> - * \param fmt printf() like format string.
> - * \param arg arguments
> + * @fmt: printf() like format string.
> + * @arg: arguments
>   */
>  #define DRM_DEV_DEBUG_RATELIMITED(dev, fmt, args...)			\
>  	DEV__DRM_DEFINE_DEBUG_RATELIMITED(dev, CORE, fmt, ##args)
> @@ -184,10 +182,4 @@ void drm_printk(const char *level, unsigned int category,
>  #define DRM_DEBUG_PRIME_RATELIMITED(fmt, args...)			\
>  	DRM_DEV_DEBUG_PRIME_RATELIMITED(NULL, fmt, ##args)
>  
> -/* Format strings and argument splitters to simplify printing
> - * various "complex" objects
> - */
> -
> -/*@}*/
> -
>  #endif /* _DRM_DEBUG_H_ */
> -- 
> 2.7.4
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch

