X-GM-THRID: 6476866726968426496
X-Received: by 10.176.11.1 with SMTP id b1mr3761297uak.34.1508181556696;
        Mon, 16 Oct 2017 12:19:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.72.41 with SMTP id b38ls1046959uad.2.gmail; Mon, 16 Oct
 2017 12:19:15 -0700 (PDT)
X-Received: by 10.159.59.92 with SMTP id j28mr5702037uah.26.1508181555726;
        Mon, 16 Oct 2017 12:19:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508181555; cv=none;
        d=google.com; s=arc-20160816;
        b=0/+V3ckCVfX9y8ld346/7VBOcITjc4MgwdUaaqiY2qk8F8mgpNcneO2Iz/FFFsNQVa
         JLbXpaKziixh8asCBmT29EUZcoRHq9FcAz6NjJdvEqxsEJc0Q3o3dfY2G6YHJFIbMnt7
         WzStr+FOzT8QEert20601SHMKG1w1EHdUoyDINkuIp05DYlaIibtFCS3Zg4V3EHgdaXh
         XnhW6+U8bd35fzNFbh9EjwTSVPSGqTvJTWX9aQfYBvv4+YcwVUjENljfh6pONIyusIBJ
         f/CKjB1LHindqtzd0mC05aeCPdmQrAq+C/sZ0mCh142+SsM9BdYw1KIQ4QgloqdeAwUl
         PtUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=8FxRIhq1ZQsS06gR0oGvfz2e7AI0XPonDcQ+XsXcoNc=;
        b=vRhX0527l+uvpigWr2ivDkNlno0VEJC3gQMUPpHvxquw3P3IXiOWVYQD4stvzm//kc
         orJCmZPwFj+0kTeo5+OM4FK+fowhJmQVc8xaJ2yE2Z5hhX22wt8Q/fHpw0DF2pjMsXpz
         58jTiEJxJ1yTY7iNgsUy4lyhB+59rKTxepFmnKjzFKlE28IJWiDWXi50OR81PIDk41Gb
         eQg++IT0XjMuW/PBFjtfeWSZAN5aj0GdSjg7M+4HVplIP/u2PbZRJ9iL7OOYaJlE/O8k
         E/4QsZ7rOuRBK3w0chU9ib4JsIWk2zXdzbMojmpsgoww8P4DhAyOW+ATt1ni7WAyC+tE
         8JUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=H9BL2mSa;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-qt0-x230.google.com (mail-qt0-x230.google.com. [2607:f8b0:400d:c0d::230])
        by gmr-mx.google.com with ESMTPS id b10si291686uak.3.2017.10.16.12.19.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Oct 2017 12:19:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) client-ip=2607:f8b0:400d:c0d::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=H9BL2mSa;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:400d:c0d::230 as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-qt0-x230.google.com with SMTP id f15so34001385qtf.7
        for <outreachy-kernel@googlegroups.com>; Mon, 16 Oct 2017 12:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8FxRIhq1ZQsS06gR0oGvfz2e7AI0XPonDcQ+XsXcoNc=;
        b=H9BL2mSa/y86TdF6k+IstsRGFKvRH/x02njerj741Qa8/t139nGJAYrxpuQ3pi63J6
         OEr3iV+w+A/zjv69Q/YPoRikVncebMNmcNK6wrqlg61oTRVGGP/MChzD+q6p0EyWAK40
         XnX1I9WqXjwM3cHxh7qyLd4z2+a0BKPSQODCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8FxRIhq1ZQsS06gR0oGvfz2e7AI0XPonDcQ+XsXcoNc=;
        b=nVOW6xR4C9T7S6nf2hpKtzQTh6ZF24Mh5U/L2GTuDZ0bAUKqCtYejYP708ISpcaZIc
         rUQADjlNyhxmtmnBEqdwHhY+FC/nIvCONLfuq0aadIyoWJzB3ulcO+HMNpozntM0jzm3
         8/n5HPd6dpwI0T/KAqIH/y/Yiyw9O65y2NVqTw0B9vw4Lp5JMNQdmDtXatMU/xjiZS1s
         2BXqXB7icI1K6gMUnGivjgGMtZI6JfsfUHyepWytx+Xf9WydRku5dMA/dCnPkj08yEpr
         5XFrmAtJs1qCbR/zfvK0ij1CYg1ZtdjRpYCjefJgmV3ml3m8AVXfEH+bEV2uEp2UKD04
         Pzig==
X-Gm-Message-State: AMCzsaX/RLWwvreAFesN0Ro+motxtE+oKqkU9/VSowXMPysLmHGazn4q
	KWKUfmFH8szhGwF1tXdDpGBSa54jTu0=
X-Google-Smtp-Source: ABhQp+R3Iee583otnFnzkGFlsXu8XbJFAND5aYsuMXPo5oXZUmqSfTpv60xi4gBmC3fmNvU+NJQbNg==
X-Received: by 10.129.137.2 with SMTP id z2mr1109162ywf.159.1508181555419;
        Mon, 16 Oct 2017 12:19:15 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from localhost ([2620:0:1013:0:f685:3152:9ba1:429a])
        by smtp.gmail.com with ESMTPSA id l74sm3455110ywc.28.2017.10.16.12.19.14
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 Oct 2017 12:19:14 -0700 (PDT)
Date: Mon, 16 Oct 2017 15:19:14 -0400
From: Sean Paul <seanpaul@chromium.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: daniel.vetter@ffwll.ch, treding@nvidia.com, airlied@linux.ie,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] drm/tinydrm: Replace list_for_each
 with list_for_each_entry
Message-ID: <20171016191914.zumhme7hl2iwin7p@art_vandelay>
References: <20171014202823.29230-1-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171014202823.29230-1-harshasharmaiitr@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)

On Sun, Oct 15, 2017 at 01:58:23AM +0530, Harsha Sharma wrote:
> Replace use of list_for_each with list_for_each_entry to simplify the
> code and remove variables that are used only in list_for_each.
> Done with following coccinelle patch:
> 
> @r@
> identifier fn,i,f,p;
> expression e;
> iterator name list_for_each, list_for_each_entry;
> type T;
> @@
> 
> fn(...) {
> ++ T *i;
>   <+...
> - list_for_each(p,e)
> + list_for_each_entry(i,e,f)
>   {
>               ...
> -   T *i = list_entry(p,T,f);
>                   ...
>    }
>    ...+>
> }
> 
> @@
> identifier r.fn,r.p;
> @@
> 
> fn(...) {
>   ...
> - struct list_head *p;
>   ... when != p
> }
> 
> @@
> identifier r.fn,r.i,r.f;
> expression r.e;
> statement S;
> @@
> 
> fn(...) {
>   <...
>   list_for_each_entry(i,e,f)
> - {
>   S
> - }
>   ...>
> }
> 
> @s@
> identifier i,f,p;
> expression e;
> type T;
> @@
> 
> - list_for_each(p,e)
> + list_for_each_entry(i,e,f)
>   {
>     ... when != T *i;
> -   i = list_entry(p,T,f);
>     ...
>   }
> 
> @@
> identifier s.p;
> @@
> 
> - struct list_head *p;
>   ... when != p
> 
> @@
> identifier s.i,s.f;
> expression s.e;
> statement S;
> @@
> 
>   list_for_each_entry(i,e,f)
> - {
>   S
> - }
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>

Reviewed-by: Sean Paul <seanpaul@chromium.org>

> ---
>  drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> index bd6cce093a85..bf96072d1b97 100644
> --- a/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> +++ b/drivers/gpu/drm/tinydrm/core/tinydrm-helpers.c
> @@ -414,11 +414,9 @@ tinydrm_dbg_spi_print(struct spi_device *spi, struct spi_transfer *tr,
>  void _tinydrm_dbg_spi_message(struct spi_device *spi, struct spi_message *m)
>  {
>  	struct spi_transfer *tmp;
> -	struct list_head *pos;
>  	int i = 0;
>  
> -	list_for_each(pos, &m->transfers) {
> -		tmp = list_entry(pos, struct spi_transfer, transfer_list);
> +	list_for_each_entry(tmp, &m->transfers, transfer_list) {
>  
>  		if (tmp->tx_buf)
>  			tinydrm_dbg_spi_print(spi, tmp, tmp->tx_buf, i, true);
> -- 
> 2.11.0
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171014202823.29230-1-harshasharmaiitr%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

-- 
Sean Paul, Software Engineer, Google / Chromium OS

