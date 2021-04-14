X-GM-THRID: 6950980105413853184
X-Received: by 2002:a19:3842:: with SMTP id d2mr10361597lfj.498.1618423563201;
        Wed, 14 Apr 2021 11:06:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:588:: with SMTP id 130ls528498ljf.9.gmail; Wed, 14 Apr
 2021 11:06:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxVKlMq9PbqlIzVZW21yJCOF9wRcPswBOpS17APl1CvbldVPaha+29Tiz8bRfJ0leLnPzk2
X-Received: by 2002:a2e:a40e:: with SMTP id p14mr16951801ljn.254.1618423561425;
        Wed, 14 Apr 2021 11:06:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618423561; cv=none;
        d=google.com; s=arc-20160816;
        b=lkwszDHjyM1FPZ2XAQWQZDMiS25/Xm2JSUMDweF9YTyt8Bbj2Kh73SOTDaN36GOfpU
         CI+5Yw1lkOmd6Cp7GqsszaNJsx0CF8cueJYYBMKlZNd/IF3+Puu2GSclpmbKQn5kviv3
         /fNRpr4Ev4ZSRXRvtJEeUOZv3XEk+JUsVuy8JRKaHdd8y+qgwdQz+hT07RJxmwQdnwZf
         dKLvdIf6+8cIkdNOQL+HNs4C1MVf4DgeE/s4wQp4GP+69Fmw/eKurUFmUu/LT8wP8Vsa
         FPizC6YvejY3Lzq+/Ehol+6UU4oKBqn+qfVSTGBeRhysQS6WvXhy8y6YK7LZIhBW5XpD
         TSTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T7wAnr/gJYaABznT6fzPw36DcxU7yZSqfUQF8WwNLo8=;
        b=mrlzCtcFK8ggp8tsMs/Pl9rIPQ/vioSzYGYyjuW+XRN4c8nJvvoaoVom42GtlTvTL6
         IVxkXlena25ZNhO1azyVZhgtWAYkot78mr4cbc+JAqL3VlaHSspR4Sy4vxNZXVxGw1aA
         PYp2IIMhMiN3cRwH5N3+Q57JLzih0wUcgSoiFwkg1sWRO3mf4Y4fUSSiuCYs5ycpT7Ph
         DoPDmkSJI5ryOQzAFFzJsRvfMmj+dArReXsWjDjhpf8CzHKTeoBFAlY/g7/ese9HH0Oi
         tX8waWDQiKCXX03Nm48O6M72if7vOa8NC08J1pEtbolAvLjCcLZG5QIXxqzwCDXU7x2c
         4KBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EwzB6QAa;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com. [2a00:1450:4864:20::62e])
        by gmr-mx.google.com with ESMTPS id p18si7751lji.8.2021.04.14.11.06.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 11:06:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) client-ip=2a00:1450:4864:20::62e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=EwzB6QAa;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62e as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62e.google.com with SMTP id r12so32807044ejr.5
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 11:06:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=T7wAnr/gJYaABznT6fzPw36DcxU7yZSqfUQF8WwNLo8=;
        b=EwzB6QAacn/mbirKbhS1czQH4EG6r34NUMNKPmtniN48MdVyipYWQfnfs/3K4GkqtK
         wgzAdqi7/47/LHooFNvulal0JLYFNFcUyzi3cE9uxslaLg4GRneHlWejzcSFA/8uOgKf
         7BJv3WTxITqE2KjvG+CI+L+2ICa48LiHJ6WQRazeL+FIzMvScWMUw/ROioTt0uV+lJhN
         e+TYdFpGl6MAc4OUO6hr0rMkMgwj9w0mY5qY3U4mKkNMMDL+AuTxvDBgp+QCoV1uAw6M
         4oT/kq7j76zZA0MMdFMVtP/DHYzNmW8Rpdgs8sqKQ287hEO+Z9tGTlk2NVFPVYM76xAF
         bojg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=T7wAnr/gJYaABznT6fzPw36DcxU7yZSqfUQF8WwNLo8=;
        b=aQ2qnzJOxDVs2XGSQgGzM4Teg4NpMSaem5Wl9O/qccOeLe4KsV2mwkO4mIEbD36h6F
         u8JYcVl0/pk4Eop8bsVNu5jbjmgr/ldPAfyVk9YHCzczG38WRtckDreDK+5mg6sTBukH
         Ja154moRuZubTOGBHKKmV4dT3+T81dkHmhaMCkrSr104PrJx8zXM4Ab10Opgwp4NoGR/
         YvubjkCjdRHzvAPSH3eV1A9zYEfx8SaziAvi6+c+W7njpdHpB9P7c+S+VBoeQJcpXBuU
         NIowx9OMYtddhu3/kLeFOWeqMeSTDhcnU5GL0rN8N3Gfi9Ga7DEz5LKBRVExVaLgYPVy
         1a4g==
X-Gm-Message-State: AOAM530osvcl2SIBMSKv4ffs2iXuXC5/T+GHlBOaUa3zS9C3q0Tmwlsj
	7+OA4oqECThcMFOhp4cjqZw=
X-Received: by 2002:a17:906:f759:: with SMTP id jp25mr140120ejb.228.1618423561145;
        Wed, 14 Apr 2021 11:06:01 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id t1sm254377eds.53.2021.04.14.11.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 11:06:00 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>, Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Wed, 14 Apr 2021 20:05:59 +0200
Message-ID: <7427098.3VjF5iJQtU@linux.local>
In-Reply-To: <YHcs70RdhaBBZv0i@kroah.com>
References: <20210414162614.14867-1-fmdefrancesco@gmail.com> <20210414174809.GX6021@kadam> <YHcs70RdhaBBZv0i@kroah.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, April 14, 2021 7:57:03 PM CEST Greg Kroah-Hartman wrote:
> On Wed, Apr 14, 2021 at 08:48:09PM +0300, Dan Carpenter wrote:
> > On Wed, Apr 14, 2021 at 07:00:41PM +0200, Greg Kroah-Hartman wrote:
> > > On Wed, Apr 14, 2021 at 06:26:14PM +0200, Fabio M. De Francesco 
wrote:
> > > > Removed useless led_blink_hdl() prototype and definition. In
> > > > wlancmds[]
> > > > the slot #60 is now set to NULL using the macro
> > > > GEN_MLME_EXT_HANDLER. This change has not unwanted side effects
> > > > because the code in rtw_cmd.c checks if the function pointer is
> > > > valid before using it.
> > > > 
> > > > Reported-by: Julia Lawall <julia.lawall@inria.fr>
> > > > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > ---
> > > > 
> > > > Changes since v1: Corrected a bad solution to this issue that made
> > > > use of an unnecessary dummy function.
> > > > 
> > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
> > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > >  3 files changed, 1 insertion(+), 11 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > 0297fbad7bce..f82dbd4f4c3d 100644
> > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > @@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
> > > > 
> > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
> > > >  	set_chplan_hdl) /*59*/> > > 
> > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),
> > > > led_blink_hdl) /*60*/ +	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/
> > > 
> > > Better, but you really do not need to keep this here, right?  Remove
> > > the
> > > "led blink command" entirely, you didn't do that here.
> > 
> > No, this is right.  We have to put a NULL function pointer in the array
> > or the indexing will be off.  But Fabio is correct that the struct
> > type should be removed.
> 
> The indexing can be off, just remove the other place where the "command"
> is in the index and all is good as rebuilding will fix it.  These are
> not external "values" we have to keep stable.
> 
> This has been done for other drivers exactly like this, there are loads
> of "odd" commands in there that should not be.
> 
> thanks,
> 
> greg k-h
I'm not sure if this task is so close related to deserve a v3 or if I 
should make a new v1 patch with a different "Subject".

Thanks,

Fabio





