X-GM-THRID: 6950672534035496960
X-Received: by 2002:a2e:3603:: with SMTP id d3mr21733349lja.495.1618338645126;
        Tue, 13 Apr 2021 11:30:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:7408:: with SMTP id p8ls1130620ljc.1.gmail; Tue, 13 Apr
 2021 11:30:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAPmzw9LJC8ZUFvdEHN6bRKE9DR3d7U6v/CU0ADAW+CayiRs9Xgvv1oT/93rBh4HWpEWSv
X-Received: by 2002:a2e:b16b:: with SMTP id a11mr8160325ljm.279.1618338643461;
        Tue, 13 Apr 2021 11:30:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618338643; cv=none;
        d=google.com; s=arc-20160816;
        b=uCUiDHsHCZq5hVDh5Ee9DNIDWdSk91AvyCxI68xq0OSiStUdVDeATNiSy7o2Brqctg
         QQsLYoIlhya9F5SO/qYURWsMQf+FTc/1URvi5q+K7hQ2pOun7Ln1kM5hKfaaRIyqsush
         7l1NMlxUafFhvGFDRli0U++lMX2gEaYywUlze2N5VLrNtel8PnPixtjz212UV4T8qDCi
         C9X/DW+8SuP2yDHqdExOScrzNQmWAOPT3tsiyyE5YeBB9l2mBQf5+7owJmeC2Hd0teK2
         AVOgWxY+i0kMiB54nCLmlw2VeZV+u73MZdXyMcNK5u78eU5ixbF8tBozpMkUJOtjqa+N
         y3Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=99F53NVNWQBwxX1Mzz0xGwNtjs0DyLQjl7oHgfB7e+8=;
        b=AXKNSW18YRUeN8zHvYyknG6vGv/nJq6vJ2ON3nMOFbEJW24+jT9pC2u4PiYOQ82wzz
         VSeqfkNPVy7nhGpJH3HSerKh++RzjLrR1Zgp7GRtneo/NgIg73owHVoknvN+z7+HRjEb
         wxfC/a+iKmnIBpY27GAlbUBU+TpUN/97d/Q0+yWesleSbiJ16L1ZEjncXUsnIDbebW6t
         HXDLqBaYF1anzFGtidkvSVoZy2i5S8mD01jVudLC7FFOwY/IVeFRsPPHAAsMeUiZ6g8G
         EdjhstOtcHtayX1xgh0/C+ADb2BV+tecxpJugMg7/sdpOuknYw05hlNN52loKyZ7e2dw
         vKiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wva5nn9Y;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com. [2a00:1450:4864:20::533])
        by gmr-mx.google.com with ESMTPS id a10si946363lfs.11.2021.04.13.11.30.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 11:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) client-ip=2a00:1450:4864:20::533;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wva5nn9Y;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::533 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x533.google.com with SMTP id m3so20548258edv.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 11:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=99F53NVNWQBwxX1Mzz0xGwNtjs0DyLQjl7oHgfB7e+8=;
        b=Wva5nn9YWOZ7JK0xjBRFO6MIIoiOkmo+5WiqG5rmc9rc4vuYeRPW/Zi5S0Jd/ZbB4H
         uJ7XuXAoEtyvXMcHKFksOg+wGCBRrzeCAP9o1RMaC9cH28dCOFgGHtyZM1IAABNhxtOm
         Pd0GOz26XFK7UmEhGEbPqbtNlDALmhVnJEm6ZFBVmYlRKbbuhzefr360TMbaRzR74aMx
         ue/I84hF+zVXSL6Fdiq6HSK8QPt65kcCgPUE3Q/RIlaf9v0qpDxIgjuM7fDAAQpHl29I
         XqlBqrARrqOAZ1RL3gWe1rhvQZtgCTL8XrmeRgMLu7yz+YXhdmvt4EZxHmgoQs+gbu8y
         d8/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=99F53NVNWQBwxX1Mzz0xGwNtjs0DyLQjl7oHgfB7e+8=;
        b=Snv60skIQe/l2VOyMIGmu/ZFWKp1jItb/2QdtskCdu3jMUxFEYWczp4nle7J06H7cL
         YH3vtuFnkW7zev0Q03anrM5I5jcYd8/mRYht6Nzdq2ns/3DcMFkP3DRW7YFTrmQzqpSF
         uBng4XNDkI9M1aPTzkdXUXfZqHbNMmM7JFrlzfDVGVJfSlWjrTq+MZfpbb7J8GhxZiC/
         sJn8qUs39Qd5qk3FFOiu55MzGfeEMQ34wJwLcrtZoQb2CAxway/yF1KknM2liXVRg/1Y
         MED9MBMto3GKYqvv8x/78fQOPBfkCWN9mofJF4S862nwJ7EbwivqJJ66GP1UUCf6NLHD
         XRFg==
X-Gm-Message-State: AOAM533V3K5sGNbZ1kwlRrbYxHmEty+0FIWYd00Zlmi+pj2Xt+wS/3M8
	Bl3Iv24usRxb4b8bSZjpAgU=
X-Received: by 2002:aa7:db9a:: with SMTP id u26mr35975916edt.292.1618338642983;
        Tue, 13 Apr 2021 11:30:42 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id i5sm374101edv.68.2021.04.13.11.30.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 11:30:42 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, outreachy-kernel@googlegroups.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] :staging: rtl8723bs: Remove useless led_blink_hdl()
Date: Tue, 13 Apr 2021 20:30:41 +0200
Message-ID: <4666345.5ezhEZ0rgB@linux.local>
In-Reply-To: <20210413182050.GJ6021@kadam>
References: <20210413155908.8691-1-fmdefrancesco@gmail.com> <3381109.TaO10cqo9c@linux.local> <20210413182050.GJ6021@kadam>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 13, 2021 8:20:50 PM CEST Dan Carpenter wrote:
> On Tue, Apr 13, 2021 at 06:47:06PM +0200, Fabio M. De Francesco wrote:
> > On Tuesday, April 13, 2021 6:27:17 PM CEST Julia Lawall wrote:
> > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > On Tuesday, April 13, 2021 6:04:16 PM CEST Julia Lawall wrote:
> > > > > On Tue, 13 Apr 2021, Fabio M. De Francesco wrote:
> > > > > > Removed the led_blink_hdl() function (declaration, definition,
> > > > > > and
> > > > > > caller code) because it's useless. It only seems to check
> > > > > > whether
> > > > > > or
> > > > > > not a given pointer is NULL. There are other (simpler) means
> > > > > > for
> > > > > > that
> > > > > > purpose.
> > > > > > 
> > > > > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > > > > ---
> > > > > > 
> > > > > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 1 -
> > > > > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> > > > > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > > > > >  3 files changed, 11 deletions(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > b/drivers/staging/rtl8723bs/core/rtw_cmd.c index
> > > > > > 0297fbad7bce..4c44dfd21514 100644
> > > > > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > > > > @@ -150,7 +150,6 @@ static struct cmd_hdl wlancmds[] = {
> > > > > > 
> > > > > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > > > > >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param),
> > > > > >  	set_chplan_hdl) /*59*/>
> > > > > > 
> > > > > > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param),
> > > > 
> > > > led_blink_hdl)
> > > > 
> > > > > > /*60*/
> > > > > 
> > > > > This is worrisome.  Doyou fully understand the impact of this? 
> > > > > If
> > > > > not,
> > > > > the change is probably not a good idea.
> > > > 
> > > > This is that macro definition:
> > > > 
> > > > #define GEN_MLME_EXT_HANDLER(size, cmd) {size, cmd},
> > > > 
> > > > struct C2HEvent_Header {
> > > > 
> > > > #ifdef __LITTLE_ENDIAN
> > > > 
> > > >         unsigned int len:16;
> > > >         unsigned int ID:8;
> > > >         unsigned int seq:8;
> > > > 
> > > > #else
> > > > 
> > > >         unsigned int seq:8;
> > > >         unsigned int ID:8;
> > > >         unsigned int len:16;
> > > > 
> > > > #endif
> > > > 
> > > >         unsigned int rsvd;
> > > > 
> > > > };
> > > > 
> > > > It's a bit convoluted with regard to my experience. Probably I
> > > > don't
> > > > understand it fully, but it seems to me to not having effects to
> > > > the
> > > > code where I removed its use within core/rtw_cmd.c.
> > > > 
> > > > What am I missing?
> > > 
> > > It seems that the function is being put into an array.  Probably
> > > someone
> > > expects to find it there.  Probably you have shifted all of the
> > > functions that come afterwards back one slot so that they are all in
> > > the wrong places.
> > > 
> > > julia
> > 
> > Thanks for your explanation. Obviously this implies that the function
> > cannot be removed, unless one fill the slot that is deleted by to not
> > calling this macro at the right moment.
> > 
> > I also suppose that providing a function pointer with a NULL value
> > wouldn't work either.
> 
> It would work.  That array is full of NULL function pointers.
> 
Interesting, thanks.

I'm going to remove that function and replace its name in the macro with a 
NULL function pointer.

I couldn't believe it would work when I wrote about that.

Thanks a lot,

Fabio
>
> regards,
> dan carpenter




