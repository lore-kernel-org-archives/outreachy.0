X-GM-THRID: 6947643199215108096
X-Received: by 2002:a7b:c346:: with SMTP id l6mr25408758wmj.34.1617625885731;
        Mon, 05 Apr 2021 05:31:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c763:: with SMTP id x3ls7465762wmk.1.canary-gmail; Mon,
 05 Apr 2021 05:31:24 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvw//5/CxeoSXwRccYFqDzTqXozZ3YCaNLRoea2RiCJq2NA2vMO69xKoXJAfG/ir/mR3GN
X-Received: by 2002:a05:600c:230e:: with SMTP id 14mr5344358wmo.150.1617625884383;
        Mon, 05 Apr 2021 05:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617625884; cv=none;
        d=google.com; s=arc-20160816;
        b=NCO4XMZU0Pt4oSBGAH4cfIgyA9W0eoE4IcNyxSKxmWaEaai1dxoJdcZDeH2jopyc//
         nB5r2M1JSA2ieUOrKe2mAFO8S6tKJpZijb2Hot0RW+mWA/E9kCWy5Y+YWNLmrnBVQHm7
         5yLarEPfbazaix3PvU0BAbvQQamoODUFtdZViPYra98rqIt2U6Eve7lkSSQUAexmpZTt
         B1q+AGzAQ5tumJMcwmFxiq4dqZe36LHffPdDcYaAbiTkJ35+cFhTd3BXrtQmiT9XxchP
         mMqdNVHRqAhrfSXy/+hLPuyqSWhfhH87n1lkZsGtOJWwhZ0HNNWbaaU72YyyiaNUK38S
         4qsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=FKNwmMUYc26VLATLj1DkboogiPjELeSmO7OKRIF6lQg=;
        b=ug9Zsraj2zP1FPzTfQx75iLP0ngzKmlG8W2B22EB6EqUStcMhYDBwq3u88eb/hRvpf
         UudDKubQR5O0xk1Pmg2wI42AY9GfC/y7LbBBXUZjVH/UzXwvsrTsl1mCJKoa5nKkzWB2
         QXFDJkpZ2Uik8BtY/XHu8sJa5g4t2muTmdskQ49Ld8USKe1FrbVwWbNoeu6RsnsCqe6+
         pWvhO9tyNli5f/xf7tj6qPhLLO+3C1AWVVqMsQ41DitSW/PMiIddla1MSuKPGEbjA5dC
         me1SDBRCQwWV5PNb3ePpkiNy+V5zl+co/jnVf0sEyNsgYWyjgdx9AaHkXrybOrcbL+i/
         iPng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDPva5Gp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com. [2a00:1450:4864:20::62a])
        by gmr-mx.google.com with ESMTPS id h19si18283wmm.0.2021.04.05.05.31.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 05:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) client-ip=2a00:1450:4864:20::62a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jDPva5Gp;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62a as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62a.google.com with SMTP id u5so16594649ejn.8
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 05:31:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FKNwmMUYc26VLATLj1DkboogiPjELeSmO7OKRIF6lQg=;
        b=jDPva5Gp22JtEAr8zRrX7RfxPuegiJqs3BDQj4UYnd11rBtOE9sW/61it0U/YFLKD0
         MC+1bC1nOf56N5QhU95xlHLxR3pjeWXUNwN6MFtAVGz/27YgD9yFxP4dOY3c9qERyRJs
         l9amsjsrcXg3Btjb4c+RdBZiYk/NeuJGHB1kmojUKFaogZ8H15yXpmKi3wxoiLLP099k
         Evf4OU0gyNMlHps51uCjRTOEYyVyVSKs0mAs46dhD9Q8xuCWTjqrNxsWhKo5bm9z5NKY
         4fMdVq88W0DsGdqfAPRtx++5I5uSBo/cFnw0cb9BW4+l5RMi0TzDUKPGNwb2KpDyEsfF
         Lolw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FKNwmMUYc26VLATLj1DkboogiPjELeSmO7OKRIF6lQg=;
        b=M0t8NEg40JbhZxvBleRNnLWUq5pmdm67VX+eAhWg8W/FyAHcBH2kE+S0E99wANHjCM
         umzj8Zf1orm7oha9IAzILOhi2aEPoSseuQCsZXR3c6/sItTqDGMgXEeWyvJkHVzrBRk0
         1nsJi/K29t4Gx77XLIoUVILCFSkSquE+mQqrmysp15fKjTdYo+TxWW0HOwAOil6yc1+M
         JX/A+dpuq8kX+EHYGinP9+Qa+UhrN8ubYscQSqFk7JaERn+LcOV7bw8L7AFUpGh7Md39
         D+8YaHD1kiJUc5Zsw/H3cCDYyc+YYVHx0zSI2actFuPPrUA7Ad/34dy3mSluz3jbxd1P
         bGtQ==
X-Gm-Message-State: AOAM5319A2CLQJaAoKdvYsXovXVviU7otpbzEuMHIZdb2V79bHQaEle/
	RfHlMyO9JgRFQuDbgOC1pB4LqsXTlMmaAlka
X-Received: by 2002:a17:906:bccb:: with SMTP id lw11mr10031243ejb.126.1617625884100;
        Mon, 05 Apr 2021 05:31:24 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id j7sm4780223ejf.74.2021.04.05.05.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 05:31:23 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wlan-ng: correct formatting in cfg80211.c
Date: Mon, 05 Apr 2021 14:31:22 +0200
Message-ID: <2363786.RpparQ0tlI@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104051410020.2981@hadrien>
References: <20210405120349.12338-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104051410020.2981@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Monday, April 5, 2021 2:10:50 PM CEST Julia Lawall wrote:
> 
> On Mon, 5 Apr 2021, Fabio M. De Francesco wrote:
> 
> > According to checkpatch message "CHECK: Lines should not end with a
> > '('", fix formatting in cfg80211.c
> 
> I'm not sure it's worth exceeding 80 characters in this way.
> 
> julia

Thanks, Julia. Now I understand that exceeding 80 characters is only allowed where it is strictly necessary (and those lines are not).

Fabio

> 
> >
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> >  drivers/staging/wlan-ng/cfg80211.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > index 759e475e303c..eda5b5a4e089 100644
> > --- a/drivers/staging/wlan-ng/cfg80211.c
> > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > @@ -324,8 +324,7 @@ static int prism2_scan(struct wiphy *wiphy,
> >  		(i < request->n_channels) && i < ARRAY_SIZE(prism2_channels);
> >  		i++)
> >  		msg1.channellist.data.data[i] =
> > -			ieee80211_frequency_to_channel(
> > -				request->channels[i]->center_freq);
> > +			ieee80211_frequency_to_channel(request->channels[i]->center_freq);
> >  	msg1.channellist.data.len = request->n_channels;
> >
> >  	msg1.maxchanneltime.data = 250;
> > @@ -478,8 +477,7 @@ static int prism2_connect(struct wiphy *wiphy, struct net_device *dev,
> >  				goto exit;
> >
> >  			/* send key to driver */
> > -			did = didmib_dot11smt_wepdefaultkeystable_key(
> > -					sme->key_idx + 1);
> > +			did = didmib_dot11smt_wepdefaultkeystable_key(sme->key_idx + 1);
> >  			result = prism2_domibset_pstr32(wlandev,
> >  							did, sme->key_len,
> >  							(u8 *)sme->key);
> > --
> > 2.30.2
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210405120349.12338-1-fmdefrancesco%40gmail.com.
> >
> 





