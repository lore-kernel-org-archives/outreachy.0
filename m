X-GM-THRID: 6745167024590159872
X-Received: by 2002:a17:906:4a97:: with SMTP id x23mr2148101eju.218.1570619946737;
        Wed, 09 Oct 2019 04:19:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:2507:: with SMTP id i7ls504595ejb.13.gmail; Wed, 09
 Oct 2019 04:19:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzEwTw5WLjRbVsG41TskZkOMGCA7DQcOrsBO4eiiGii2LXwXmtfDLvr4oqtwvUO7qnLS8x7
X-Received: by 2002:a17:906:264f:: with SMTP id i15mr2224506ejc.333.1570619945669;
        Wed, 09 Oct 2019 04:19:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570619945; cv=none;
        d=google.com; s=arc-20160816;
        b=bwlDw6dUhC1mHdUBokTDmsyD9AGnEUg1pPCtEDLjDtShk293FqpCrM5uC5EpaqiYn/
         lEemtGGvSIRCPYBn5rOXg8Hju6Vid7EiRO9W/nG+0OT/f4xBsubvN1HttmRR0wgvg+Vp
         zmWK/Lcky4SrgKLYSA8HVxvBdbtMT8ZTeT0Am6ksFqQhbV+Z8e8R2kyfUyeDG7iOJUPT
         CiSGRhUuL0WS1fINUSmMta/GqXYFakeXj00XHiSmuRY/ckVIeuZC1pN+JEyl5AUt7oLH
         oa1abOi0BS9s6ZyywE30aF5rHjEwSC6neuv46Z3xfwhaD6gR+rHMoQ6m9nMpx92KgUjd
         08Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:date:from:dkim-signature;
        bh=3j46mXdOXkjvBlsH069199xXKhaBgsUEkFzL15Wc8Q4=;
        b=E3mXyMvr/79VpPi3W1y5P1JIuNyQ9gXq86Xoyh7cGuPZuvpie+S5FAWjgS3nKfsxVd
         vFdD1G57XNSXgeaLKfOz6vAJGNx0gps2srLqdAaiElaDoL5BBi3tbo/vP0pCX6E6Y+6X
         yg5ADzw4FWvA38XyA/U6BBJ1NZEJ78vl7uyTaa+M3PfwsA7INrCEBR60xT70NbSHUJud
         UtJ5r5f+/It3Gp+Njw5/sP+nG7i1lqFiZ7Hm+OCN8ve8uoMtKny4GJNLzH2CLDWSLbkj
         ALtAX6YdOBjLqP2tMGL5kwey5LDFKy7bzwUwYw3YHnMO6MiVw7kn+X6mWwyKxNd1F+Uy
         sBcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O0PEs35y;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c31si84622edb.0.2019.10.09.04.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Oct 2019 04:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O0PEs35y;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id o18so2366681wrv.13
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Oct 2019 04:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version;
        bh=3j46mXdOXkjvBlsH069199xXKhaBgsUEkFzL15Wc8Q4=;
        b=O0PEs35yXOjOQynNRFZXdkCUIz9SHZV1w6pvDQvBWvhgGrjl8oBwU1qM5mmNvxTce6
         jvPad3vh361bzI5owpVoSvmhG/OsB16Y+NEfiQ+EZxYvVNBBVDTKoy2UB1eaxsIGIonl
         Uhn6eAXHrd3mr4ha58HAkQJPIQMEltoc0iudDPzXst6OfV+os410+XjwVRkIIIuX/tl5
         6hYrjXsPH44InWJtMAEZmE8qnPvRPK6RatWhQKDHoK9VCvpooXDS2rLvj+uhqZmVXfsR
         oMeOTxVfrLPBGsz+MkmSQNB6MjdoA2Vbrnoa/cvQUa1o/RMV8eEiO0mWUIhZC2eqVIPc
         lB6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version;
        bh=3j46mXdOXkjvBlsH069199xXKhaBgsUEkFzL15Wc8Q4=;
        b=MYAszneqNiXNOO4deTwSJV3s+/yfqo9k1Xthmd461mIv2hVtCePO18dVq7dKigAd9T
         dZeZXlB8ZVNb8E+JXnPgJ1X8HWfIrDVJ7wXCUS1wgX65/IMU9UWK5k69TZhdOQGU2ZYE
         +LU2bBVLxgBCR1Yr7/E6HR6pDKr/GntsjbggsNc3o31utnnTWWqXsw5vx3fMM+BCY1Nw
         iGP9l0jqTqi/99qCzWyUVjowxew22aZOzduXhzrFT6rO+EnYumFCmQ+ccYJdWT9WHWaB
         O7zJ79RKhDDJ6dhIwtgFa2D526Spwj5AQspMr+oOHidmD/IUF1jPB9Z0fB58uw2kAqB1
         P0Pg==
X-Gm-Message-State: APjAAAX/SkFGwvIw+h+ya31ryZux+SlnJUCAd1WWx2jowB6XPuogHskV
	q2Fz0gAEJ/F6Xv5Ij1F3rA==
X-Received: by 2002:adf:f50a:: with SMTP id q10mr2346938wro.157.1570619945202;
        Wed, 09 Oct 2019 04:19:05 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjabhubz.org (host-2-102-13-201.as13285.net. [2.102.13.201])
        by smtp.gmail.com with ESMTPSA id z4sm2043915wrh.93.2019.10.09.04.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2019 04:19:04 -0700 (PDT)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Wed, 9 Oct 2019 12:18:55 +0100 (BST)
To: Julia Lawall <julia.lawall@lip6.fr>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net, 
    devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8712: Add comment to lock
 declaration
In-Reply-To: <alpine.DEB.2.21.1910072254290.2578@hadrien>
Message-ID: <alpine.LFD.2.21.1910091215360.15948@ninjahub.org>
References: <20191007205248.24466-1-jbi.octave@gmail.com> <alpine.DEB.2.21.1910072254290.2578@hadrien>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII; format=flowed



On Mon, 7 Oct 2019, Julia Lawall wrote:

>
>
> On Mon, 7 Oct 2019, Jules Irenge wrote:
>
>> Add comment to spinlock declaration to fix warning issued by checkpatch.pl
>> "CHECK: spinlock_t definition without comment".
>
> Since it is not apparent from the shown code, it would be helpful to
> describe what evidence you used to choose this comment.
>
> thanks,
> julia
>

Thanks for your feedback, I will leave as it is following the advice of 
one of the maintainer. I thought a general term of protecting interrupt 
might be appropriate.

Kind regards
Jules


>> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
>> ---
>>  drivers/staging/rtl8712/drv_types.h | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8712/drv_types.h b/drivers/staging/rtl8712/drv_types.h
>> index 0c4325073c63..960d8709aada 100644
>> --- a/drivers/staging/rtl8712/drv_types.h
>> +++ b/drivers/staging/rtl8712/drv_types.h
>> @@ -160,7 +160,7 @@ struct _adapter {
>>  	int pid; /*process id from UI*/
>>  	struct work_struct wk_filter_rx_ff0;
>>  	u8 blnEnableRxFF0Filter;
>> -	spinlock_t lock_rx_ff0_filter;
>> +	spinlock_t lock_rx_ff0_filter; /*spinlock to protect interrupt request*/
>>  	const struct firmware *fw;
>>  	struct usb_interface *pusb_intf;
>>  	struct mutex mutex_start;
>> --
>> 2.21.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191007205248.24466-1-jbi.octave%40gmail.com.
>>
>
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910072254290.2578%40hadrien.
>

