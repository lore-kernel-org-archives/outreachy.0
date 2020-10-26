X-GM-THRID: 6887256226213658624
X-Received: by 2002:ad4:5901:: with SMTP id ez1mr11308312qvb.56.1603680750054;
        Sun, 25 Oct 2020 19:52:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:1352:: with SMTP id c18ls3845049qkl.5.gmail; Sun,
 25 Oct 2020 19:52:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxanlInxuvhamMmv3Vlpc/uXIcKR4bO2Y5i2ppws6MTbvz5+a6doO0o7/FTd8Jw+B2b1Gvk
X-Received: by 2002:a05:620a:99d:: with SMTP id x29mr15715131qkx.415.1603680748781;
        Sun, 25 Oct 2020 19:52:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603680748; cv=none;
        d=google.com; s=arc-20160816;
        b=JEhqs5F8psyxoRCVvCLK6V+JyaFNGxuF1SsKVfidNWl5gHESZd+g/O/CFG7nqb1aDx
         4K+Sp89eqI2wO6Tw4OSgZ04nQf42p9HmLU0fbyHBr/0V630dDkWoEdWhuyBYgSNN53KG
         MiE591qN2uBPUFEfnnmgtiBu0+Y5FsZBTEejEDTH3XHXdu9BZFTSU6clXctc4LbYkNTD
         a/6dMETcsCktZyxvse/IpNbpoCrICdMeKMZIKgVIhpcNTQZ9WsPH2KE4hevMeizJDnP5
         1alr+faTdyG3ySBoaELxFBZ5EvL0IWMm5kuCAppSFooHszJqdg9alzfWxR4g3yBMXPBu
         nh0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:to:from:subject:message-id:dkim-signature;
        bh=OpRLJwKSpNEB0/I8kf7g8GZ3BpP19j+sJjPqsrex6y0=;
        b=A14JDOpyqJf5zsGqcgaJgxs3EPPcRG5c614SVtxa6HnFwfJZoXPLBWtqX+bcaSFi2X
         uKGG6iIh2jbcTRAhrf6+3b3/zQrKOLbAT3mFiYGMMAxx8rugAUSPArZHFiq5woopcNqy
         VtOjHp9CiCM2Xcaah7ZgSWgMpNfo+hyq4ox/Xrm2uT3H/fJV7ItF9UF9kDK30WYi8gRj
         cqHfz1AO9kimRBfCH0UypifJdNsS+3z+c0lPaSFSJ2AyX2l3qNru4A7xzTgN5G1VHQ3C
         5xunTxt1EwGcbawBXnl0aOEVvXj3R6RJKbwaBEZD+AE9ejY909y36g5RY58fxZ89a2dP
         sFpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="NG/oBL8z";
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <amarjargal16@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id g19si614971qtm.2.2020.10.25.19.52.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 Oct 2020 19:52:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="NG/oBL8z";
       spf=pass (google.com: domain of amarjargal16@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=amarjargal16@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id i26so4935418pgl.5
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2020 19:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=OpRLJwKSpNEB0/I8kf7g8GZ3BpP19j+sJjPqsrex6y0=;
        b=NG/oBL8zPknIEsf7yl6D6/TyPVB/bGzuLwZ9o8oC++CSSk7LsciYD3JWmnd29N6VPw
         wH05PDw6orJeak0gUFks2QI1c+3ZxvF2Uy/472lj+T5/l8DOxiF3PAsM0JXOTrBw5OUN
         w4OoL4utol59VE2M/JU2bQ/k5MREpuwx3zIpeXZMRUA0EO81d5aaKOcVkx1fai7COhv5
         d63YAYfwG8ufdI8I46MltmrWAXJ41DMI9+NX7FOyYaUAketnf2P2vx/Mv/KQ3rkQRjh0
         /DFYPGFTWrKvs3UNSspMQEPzhc80QQleo9vNZvrYtbYNxIiYZG4pvqUOkt3cYa6XPPkj
         WfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=OpRLJwKSpNEB0/I8kf7g8GZ3BpP19j+sJjPqsrex6y0=;
        b=nz/KN74Koihln/dkzc4+9ThtHd88SgYWv6nQjWWp5/qrXtUD8AOtqzcaW4RNMVPKN8
         ekyP+k+GskTL76+OE+qOg+/+ZaMPZ5FcEPLGNMAyAkzrVDL10j581qgcXql39EZICadm
         VDxYJZwM5M1NUMw0JTUoBLWOyDl31JIgMCt9NzPahHJYfKiBMGbgWu5wWRpqi1tg554u
         f48FQAZlF8eHodbLiNoxGbA6yKIC4VTI5g6x6jG4M7cl7OGH3Olz8FKFVkbD+YCsxb+F
         2kOMt8a2ygkC3GVC92pGhirtQHVkXFwBGC2knh5zTjbhlHREFDQsbbLzfhGDSNkHzPzA
         vCIA==
X-Gm-Message-State: AOAM533ICxiZf1/h4pq0ZVKNHVnljdT8zCuiOb6WxEWRm60DJVJ/r2qm
	RUxT9vuF1k5M+6iv8wplCphlHqXCqwuvkg==
X-Received: by 2002:a63:6fca:: with SMTP id k193mr11581091pgc.360.1603680748030;
        Sun, 25 Oct 2020 19:52:28 -0700 (PDT)
Return-Path: <amarjargal16@gmail.com>
Received: from AJ-T14 ([122.201.22.243])
        by smtp.gmail.com with ESMTPSA id i2sm10808665pjk.12.2020.10.25.19.52.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Oct 2020 19:52:27 -0700 (PDT)
Message-ID: <657064e0ea25646043e9350254895865c8bbebba.camel@gmail.com>
Subject: Re: [PATCH] staging: most: fix empty /* line in block comments
From: Amarjargal Gundjalam <amarjargal16@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>,
 "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>
Date: Mon, 26 Oct 2020 10:52:18 +0800
In-Reply-To: <20201025090924.GA99582@kroah.com>
References: <20201024183134.GA15771@AJ-T14>
	 <20201025090924.GA99582@kroah.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-10-25 at 10:09 +0100, Greg KH wrote:
> On Sun, Oct 25, 2020 at 02:31:34AM +0800, Amarjargal Gundjalam wrote:
> > fix the following warning generated by checkpatch:
> > networking block comments don't use an empty /* line, use /*
> > Comment.
> > 
> > Signed-off-by: Amarjargal Gundjalam <amarjargal16@gmail.com>
> > ---
> >  drivers/staging/most/net/net.c | 6 ++----
> >  1 file changed, 2 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/most/net/net.c
> > b/drivers/staging/most/net/net.c
> > index b6fecb06a0e6..bc0aefe804b6 100644
> > --- a/drivers/staging/most/net/net.c
> > +++ b/drivers/staging/most/net/net.c
> > @@ -171,8 +171,7 @@ static int most_nd_set_mac_address(struct
> > net_device *dev, void *p)
> >  		(dev->dev_addr[0] == 0 && dev->dev_addr[1] == 0 &&
> >  		 dev->dev_addr[2] == 0 && dev->dev_addr[3] == 0);
> >  
> > -	/*
> > -	 * Set default MTU for the given packet type.
> > +	/* Set default MTU for the given packet type.
> 
> This is a networking driver, so no, the comment style is correct,
> sorry
> for the confusion.
> 
> greg k-h

Oh ok. Got it.


