X-GM-THRID: 6674971503318007808
X-Received: by 2002:a24:455b:: with SMTP id y88mr6739668ita.14.1554155589944;
        Mon, 01 Apr 2019 14:53:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:574d:: with SMTP id u74ls299223ita.4.canary-gmail; Mon,
 01 Apr 2019 14:53:09 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzvlCech5tvSwwbUDxF4Y/yD05OejWgb7oZYAv9+YD4tVOMOmPwwSWorNB/uCMPFFAmE+/A
X-Received: by 2002:a24:5981:: with SMTP id p123mr1505934itb.40.1554155589051;
        Mon, 01 Apr 2019 14:53:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554155589; cv=none;
        d=google.com; s=arc-20160816;
        b=tlU7YV4sDdcV8e010yNF12fb4JlN+UsAd15CjLahsaN5+l7mUO3hLp+J6o9lby1zXO
         yNT8WaKbQwXWqWQWhGp0+vFyL5C/zO6bsvfWq5YpXuZ7rPqDIQ5X3BuNPvYDCg0OKF/U
         pP93bv3bjgd0uHR9XjrJXGB3jE69RDVly9Ud6OaPN9AQJJ2QIoXE1rlFcINcUfwNakYY
         kOsaEOsWwa2DEMk6jsUlmI2FRnS/RE6ltQi/W9f+/2/s0LtFR3XusMJ+CGA/jTOXZlx8
         RJ+2eXsMWUA7iiQiUnUCeBkrcd9EOUcUhkp6jQrRU1OURKLE8wbTFZ9aB5OZigmH1+YZ
         NhPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=QexCnX4yUMx/FsBG0qY+V1Hq8sGV2pcgGcR2uTNrhQ0=;
        b=xWnlRnzuyviR7lrmtO+p8Y7SYNjsNFTheerXm+5vMq2fBbghvQcS/yFAiG7uN8a6lB
         vQElOBVUTjTc4/cPBVUIaYfwaCnA3XOY683ueFcqvP4354avPMg8mG9P3bNdNgNW26DM
         4pwAOnjpaT7Lrwqw57s+lvA6G62U0DIagdJEnLQhIFcR6L1PuVXsrQVYN7HzNydDt6jX
         2prMLNTBiBA/0VLwYSUaSMLNW4uWQ7wYg72C/l2d05C4nckJrvLJQmEkNPm5lOE6SpQv
         /jJCjpHDyQAFHYDahotaPxIScBUP9T1iRKrBb/hIcsJjVi9Nbx6UecuSufBf1iVieuuw
         SYUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YxxI/fDi";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id 65si1234835itx.1.2019.04.01.14.53.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 14:53:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="YxxI/fDi";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x341.google.com with SMTP id f10so2522909otb.6
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 14:53:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=QexCnX4yUMx/FsBG0qY+V1Hq8sGV2pcgGcR2uTNrhQ0=;
        b=YxxI/fDiL6YM3xuTD9C4jS8sg4fYHLCGRkN0H02j7PjUbBb+eQce5qU2kAmVCtFWIT
         ABSc8foLLmPb7dc4W7wQo55oS10+Tm5lTIXidJ6iLZ01BbwHhNXsCOb2/k4rfvmPteK9
         8JSZGCY9kGi3EqOEDfLpxb1ol/O/ay0sI6LPptwl8c2qQm0UML8FklJjFOrg2wS8vVF3
         5RaTp68hNvHB0RnTFxX55STrr6XYMt72F3lqDPQKdSDeBhCV3DDBaH365aECvBAtpqiq
         IaVvxpsyDXSNdm5ugL6KDF+QrNW8aUSSHZBtw/g24pZWAWiXocbIAKB9KATBZ+k188Iy
         0B3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=QexCnX4yUMx/FsBG0qY+V1Hq8sGV2pcgGcR2uTNrhQ0=;
        b=FofdhH45ytal4w64hmQDcR9ZyPhWgAQd6P27Bw4PyupL/blA2Mzkrid3y0TJ7BLjcW
         tasMLmnBRjmQz8/7oZPjOnfHAvnib0uITeWgLqrqiGWktN8l/XR53ijy0ZhDSD9v8ldf
         aCTlqoZ3F0VpKFudo1tFoT4/ixKD19hXfFf98HJs24zemfIRuxyoJbGN2Z15iMBOWEN5
         dolVNy4V2v5rw7yU7Oij5CP6CmT0y0GPORwi6N8dkfPJbO7QRlk+xpNeAKgK69HUxsjZ
         rK/uIEoEB3v50wUlrGJjaL1WByR+NAv84xA5PCN+7Ok2mEyIkmn1b+LDnuSdbp7kSWOs
         qurg==
X-Gm-Message-State: APjAAAVpcbzbtmkzW1r5nAURsLFqhd2pq2GIKHUcgAqUNm0BFS9dkXiH
	6q6tjdQmx0MHXrFVrEVDTAQ=
X-Received: by 2002:a9d:57c2:: with SMTP id q2mr1785440oti.313.1554155588610;
        Mon, 01 Apr 2019 14:53:08 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:35a4:8fe3:3a02:b8fd])
        by smtp.gmail.com with ESMTPSA id l49sm4709495otc.19.2019.04.01.14.53.07
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 01 Apr 2019 14:53:08 -0700 (PDT)
Date: Mon, 1 Apr 2019 16:53:06 -0500
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Use list_entry in
 ieee80211_wx_sync_scan_wq()
Message-ID: <20190401215305.GB11046@madhuleo>
References: <20190401165827.18731-1-madhumithabiw@gmail.com>
 <alpine.DEB.2.21.1904012138510.2530@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1904012138510.2530@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Apr 01, 2019 at 09:39:32PM +0200, Julia Lawall wrote:
> 
> 
> On Mon, 1 Apr 2019, Madhumitha Prabakaran wrote:
> 
> > Use list_entry() instead of container_of() in function,
> > ieee80211_wx_sync_scan_wq(), as the function to return the
> > parent structure containing any list_head is defined to use
> > list_entry() as per the definition in include/linux/list.h#L348.
> 
> list_entry is for lists.  The wx_sync_scan_wq field has type work_struct.

Thats true. Though the wx_sync_scan_wq has type work_struct, the structure
work_struct has a member of struct list_head in it.

thanks


> 
> julia
> 
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> > index 81020fbcdc20..76daec98212e 100644
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac_wx.c
> > @@ -300,7 +300,9 @@ EXPORT_SYMBOL(ieee80211_wx_set_mode);
> >
> >  void ieee80211_wx_sync_scan_wq(struct work_struct *work)
> >  {
> > -	struct ieee80211_device *ieee = container_of(work, struct ieee80211_device, wx_sync_scan_wq);
> > +	struct ieee80211_device *ieee = list_entry(work,
> > +						   struct ieee80211_device,
> > +						   wx_sync_scan_wq);
> >  	short chan;
> >  	enum ht_extension_chan_offset chan_offset = 0;
> >  	enum ht_channel_width bandwidth = 0;
> > --
> > 2.17.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401165827.18731-1-madhumithabiw%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1904012138510.2530%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

