X-GM-THRID: 6949457058068430848
X-Received: by 2002:a05:651c:3c1:: with SMTP id f1mr14584600ljp.507.1618134438152;
        Sun, 11 Apr 2021 02:47:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls33379lfv.1.gmail; Sun, 11
 Apr 2021 02:47:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwD2runy/Kt/gGh8ZsM2bUQkvlppFfM4beu6MqXdLsZ0Vkhrg+nhKixT0Cy2bqAymFWV1gc
X-Received: by 2002:ac2:43b9:: with SMTP id t25mr6255184lfl.135.1618134436495;
        Sun, 11 Apr 2021 02:47:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618134436; cv=none;
        d=google.com; s=arc-20160816;
        b=UJBOieRuGXIVAsR5lOkwlsuAluLJBqT4CRS721trm2dEL0Dp56wFNovSp+2+uv2zpa
         qOSDFrbWZ6vZwwaCJIQj3Cs2ABDfrGuArTg+OOYhG109Wx/yw9rnHFSjgzxOOdZ6E75c
         ux9GbsIsSGdJERJk8e4uxpv7wmrHWWWALQHcxuXq7lGdYeO3hyzYYBWA2DixLnlx01MW
         SP2F4wXktuKhWSPTs3af0L/aXwQo4FokUlaqXa+lGMSTOjYSFZD+Zg/nxyo/NRMD3TBW
         q15Bp6YhbOxSPFvSvzoFpX7sbrq2zAU8VSEc2z9ZWXOGVipIQg0Y0TfOAxGZjDdGQz6x
         nfHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=XozUfb+e6qIS1vLWDOC/iivsBt2km9C9PhK3hcJC5xs=;
        b=ydBRvdHzcnGH7C9SVMSz9tuvxUYRXsTP3H6FD3JIlEn6YRivVO0g6PT2h6CJz0SwIC
         Bt+MhPq9zSrYKTGO6WKL9Ah6rn5wQcqXdHr2l93/wjIs2NihCWoVEXhRjRzvOv/oTWk6
         ssu+gVCJm4eQcxnl0sVXvGMhuPi3Mn5RBGAZNGsrUtZQhELnu/5p+rk/6HiKqo4VUr1j
         fSscuVDJoy8oy/ALXgBIEerriCm2c1/A2J3oqMW82gd97hj3KyE6VfcfROkyrq1vgRE2
         gg+G16MBiKq8FCLqooV4KVjyAigtg1WQjeuZFd17aNHH538+Jo6Q9kO7qtOfd/uv07Vx
         9fCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KvOXvRRn;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com. [2a00:1450:4864:20::62f])
        by gmr-mx.google.com with ESMTPS id p18si478042lji.8.2021.04.11.02.47.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 02:47:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) client-ip=2a00:1450:4864:20::62f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KvOXvRRn;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62f as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62f.google.com with SMTP id v6so14096118ejo.6
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 02:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XozUfb+e6qIS1vLWDOC/iivsBt2km9C9PhK3hcJC5xs=;
        b=KvOXvRRngaPQLi1Wz6ip5Jc8rllLF5JlsreEs3+v7nMaU5leW6KWcbStR988uW2GmT
         KUs5Cpe19ZPUxZEnXdbYu4LclbHf0YNPT2QCAYW4GAzG8ZDU8ypx9dRTVqXVN0SD2fC3
         OYuZiMgIZTt/xma4C5XcW3IGa0QzG5YioJATc971N4LKg+5vlwjz9VidukGDRGVnQ+N2
         NksxzXV5Knx5oyfc5PHEI4WbCOfW1xn7Eu3ODnaW/NqpPKLNWJC/7VHK2I5LTu78Uwqt
         0RR3ZFujbta/hYWBPjNQA5AutlSRfmOaGlHkv/IMkJg6pq9ZV4i3cKC9zv9Za0TSZbUP
         m90Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XozUfb+e6qIS1vLWDOC/iivsBt2km9C9PhK3hcJC5xs=;
        b=KOQTh+EY+H/1sjnfpCxZbKBzAk0hBHCKMu6K52JRkoqSrlcNJEorYcFY81ANUDl+N6
         zhKwUkSsKfujZEITml4rzJFvli73vblrG10Ou6slGObQDAgMXr0SxhYHOjxAOeh30PRR
         h2+F5Du5pIf5EcmKj/IJE/G5sTVP2mqhSYccTjl5i41Ow9PT9DGlOyWN4k/19hiZP5Ia
         wJAz0xCCAhJJpYJYEnytsJe51lVU2zp7Kzvapc0qjg3K4F2rgypfGG/y8MpzDcYzQMSl
         4fNkNQTAFLYESlN31EAgLA9ypmBE9b8JZjPE54SKlP6UW+Vh8/0XPdTe3R7TQXEuMpAH
         k0vw==
X-Gm-Message-State: AOAM5312HJd1yylIA3QhXOiXYPdsrPXl4ZqaQ6hvvDhKIHsOsRIojXVO
	ZCGM5sSZiczh0ZQjgjBka1J7NtHsy3igDllY
X-Received: by 2002:a17:906:5052:: with SMTP id e18mr17901882ejk.112.1618134436229;
        Sun, 11 Apr 2021 02:47:16 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id by25sm3817951ejc.49.2021.04.11.02.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 02:47:15 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 4/4] staging: rtl8723bs: core: Change a controlling expression
Date: Sun, 11 Apr 2021 11:47:14 +0200
Message-ID: <2796632.fryDJISotm@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104111125310.2854@hadrien>
References: <20210411082908.31876-1-fmdefrancesco@gmail.com> <20210411082908.31876-5-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104111125310.2854@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Sunday, April 11, 2021 11:26:41 AM CEST Julia Lawall wrote:
> On Sun, 11 Apr 2021, Fabio M. De Francesco wrote:
> > Change a controlling expression within an 'if' statement: don't compare
> > with 'true'.
> > 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> > Changes from v2: Rewrite subject in patch 0/4; remove a patch from the
> > series because it had already been applied (rtl8723bs: core: Remove an
> > unused variable). Changes from v1: Fix a typo in subject of patch 1/5,
> > add patch 5/5.> 
> >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > 32079e0f71d5..600366cb1aeb 100644
> > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > @@ -1507,7 +1507,7 @@ static void rtw_lps_change_dtim_hdl(struct
> > adapter *padapter, u8 dtim)> 
> >  	if (pwrpriv->dtim != dtim)
> >  	
> >  		pwrpriv->dtim = dtim;
> > 
> > -	if ((pwrpriv->fw_current_in_ps_mode == true) && (pwrpriv-
>pwr_mode >
> > PS_MODE_ACTIVE)) { +	if ((pwrpriv->fw_current_in_ps_mode) &&
> > (pwrpriv->pwr_mode > PS_MODE_ACTIVE)) {
> The parentheses in the left argument of && can be dropped as well.
>
What about the parentheses of the right argument? I'm not sure: does '>' 
have precedence over '&&'? Doesn't it?

Thanks,

Fabio
> 
> julia
> 
> >  		u8 ps_mode = pwrpriv->pwr_mode;
> >  		
> >  		rtw_hal_set_hwreg(padapter, HW_VAR_H2C_FW_PWRMODE, 
(u8
> >  		*)(&ps_mode));
> > 
> > --
> > 2.31.1
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group. To unsubscribe from this group and
> > stop receiving emails from it, send an email to
> > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion
> > on the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/20210411082908.3187
> > 6-5-fmdefrancesco%40gmail.com.





