X-GM-THRID: 6949308630417014784
X-Received: by 2002:ac8:a4c:: with SMTP id f12mr17723092qti.329.1618058062154;
        Sat, 10 Apr 2021 05:34:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2091:: with SMTP id 17ls5017275qtb.10.gmail; Sat, 10 Apr
 2021 05:34:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzyBE9K9bMr9Nef5ymhuw306s23iChYlqM0g090br8g/4voQgIHhQ3ctBUX84k4WJqYykpP
X-Received: by 2002:a05:622a:d0:: with SMTP id p16mr16678086qtw.219.1618058061296;
        Sat, 10 Apr 2021 05:34:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618058061; cv=none;
        d=google.com; s=arc-20160816;
        b=LWA5QKMhkgQQ7Dn4C7sRnEt7oYp96mV+qmpVAuatTesF8r33NsNnPnSdmJ/W7ZoZb3
         7SxQYwihdoPuBNr5/Tm01tua8JKTYSN7P+eQ+C71BSh2ZVdt2WnAjAwYhY0YPCdPIki+
         Cuqe7VNYAXpeAgrMU3yk0XnQSRv5AiJPipW46s7LPBl+QYEf3N8HhCvJUw9c5O9V9QK6
         tysXS614eCIizlPJ0e5w/ys8ZK7y3bvj15+DxcLq1oDNE6IxAbZ2YnA1YVHYQCC19qCA
         gn7xrY//AIB9UAucxqz/kJRySm/RrG142qLECuGQd9oqyqxsT2abeYQ3DcoFHHHfZo4b
         r0pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PXHn0JTgY+La3+5YIGKYFWelzukB7RedFElx6gczrqk=;
        b=msbN/IvrPq/3If3f8Q6P6xSFADXUk0ApOKCl3yFPYOq45wudhAyvzXxEITpQ9ZXf1/
         IByGpBuh4ILZ/DaFEhNSFN4OkUpFbX+IHcI7DZEUvSI+/ur6H4LRHr2YebRvxBCDNdHh
         WE0ABitPeqs96er6bz1qIoxkNy8kiwgcd4HP+Y6cMFobGoBkm4AyQwMCkMrxtmAa02PH
         BRbKkvumt/6vX3E40hde0E22pUmJ8p+1i+SQnUEYRl3qVRdmPYj0eHeEVs6PxscSrJOg
         f9If/Rk4TzxpFmplFqmNuhwbJbzUCTu3sA0KRgChbY//zynMoihwClucNZXGLeeOiZEW
         DRrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KPPCL8xe;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id w1si294295qkp.4.2021.04.10.05.34.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 05:34:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KPPCL8xe;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1034.google.com with SMTP id il9-20020a17090b1649b0290114bcb0d6c2so6344626pjb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 05:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=PXHn0JTgY+La3+5YIGKYFWelzukB7RedFElx6gczrqk=;
        b=KPPCL8xefCVfIQ/eO0Gf7y0/Jx3dpw/yEh+nij8tebQlWjMY2IBKtk2rpnv3mSWkvq
         24EnqrK6KwfPinNDIJZq5KlFIR/b9TlXxqIOfd8u8dfj4Kz0PJuq2bMYsyJcJI5wK/Ff
         EvGmVWkoI9N21zSWE6ikaobNvPynGiKELZXS04ydxV3KZgJcrbNHZ6fcJTP9Qd3D6iAl
         +MXGCZ5ojWEJE2lzPauji9RsbwFa77A135b9mCKlLC9EWM7ArZl7104lyxmF4DVI27yh
         eHSIMi9BmYlHaOZnli5ao3t8ydxhwdm5fOAikLT4AorejTFNiitzaF8RcAHBn8IEURPR
         zEDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=PXHn0JTgY+La3+5YIGKYFWelzukB7RedFElx6gczrqk=;
        b=mZbr5s89ofbpa5M47zOJAMIqIntVEnIWp1X2TrIyGzWjizN14js+Va+STYa/V7FKcn
         nZ+ZokuKLE79hw/kC3rxfUe1y/pmSGZF0r03bvA7cz8bmG7VjAcWN+FNgrZcS6Slu0Sf
         /Yz3F+qMQk/mPOnzQXjI9nCqsG1IlIzVwGzBsF/VjKk2FhlIn0b8zTUKrRWp5sJf7fxB
         bcOihdsN9M/e4oA+u+kVTGT0oSstR+Pr0Y2gIEKeAo2Ld57fLgDXD3WJpQxXJ9M3BpR0
         4wjhcftnAP/OhlMXclScTG28uWN/HXuIBY9DFoIgmuE3lBcHm5M1jT+0e+jcIeOB/o/n
         VzUg==
X-Gm-Message-State: AOAM531apLoQgIHTYwTpFl8WB4EqTPb0XytkjuqVgSdJftBX7cK0i0an
	sXC/72vQKdTQQaBfsapDJ10/RlhlN1b4QA==
X-Received: by 2002:a17:90a:4309:: with SMTP id q9mr18091539pjg.40.1618058060802;
        Sat, 10 Apr 2021 05:34:20 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id fs9sm5109138pjb.40.2021.04.10.05.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 05:34:20 -0700 (PDT)
Date: Sat, 10 Apr 2021 18:04:11 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: replace comparison
 to NULL by bool
Message-ID: <YHGbQ+y0Fplssz44@kali>
References: <YHDnWpWztxeZospi@kali>
 <alpine.DEB.2.22.394.2104101408100.2975@hadrien>
 <YHGVvn8Yi0tWL3sa@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YHGVvn8Yi0tWL3sa@kroah.com>

On Sat, Apr 10, 2021 at 02:10:38PM +0200, Greg KH wrote:
> On Sat, Apr 10, 2021 at 02:08:30PM +0200, Julia Lawall wrote:
> > 
> > 
> > On Sat, 10 Apr 2021, Mitali Borkar wrote:
> > 
> > > Fixed Comparison to NULL can be written as '!...' by replacing it with
> > > simpler form i.e boolean expression. This makes code more readable alternative.
> > > Reported by checkpatch.
> > >
> > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192e/rtl819x_TSProc.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > index 65eac33aaa5b..476875125e87 100644
> > > --- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > +++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
> > > @@ -269,12 +269,12 @@ static void MakeTSEntry(struct ts_common_info *pTsCommonInfo, u8 *Addr,
> > >  {
> > >  	u8	count;
> > >
> > > -	if (pTsCommonInfo == NULL)
> > > +	if (!pTsCommonInfo)
> > >  		return;
> > >
> > >  	memcpy(pTsCommonInfo->Addr, Addr, 6);
> > >
> > > -	if (pTSPEC != NULL)
> > > +	if (pTSPEC)
> > >  		memcpy((u8 *)(&(pTsCommonInfo->TSpec)), (u8 *)pTSPEC,
> > >  		       sizeof(union tspec_body));
> > >
> > > @@ -328,7 +328,7 @@ bool GetTs(struct rtllib_device *ieee, struct ts_common_info **ppTS,
> > >  	}
> > >
> > >  	*ppTS = SearchAdmitTRStream(ieee, Addr, UP, TxRxSelect);
> > > -	if (*ppTS != NULL)
> > > +	if (ppTS)
> > 
> > You lost a * here.
> 
> Ugh, good catch.
> 
> Mitali, can you send me a fix-up patch for this, or do you want me to
> drop your original patch from my tree?
>
Yes Sir, I am making corrections right now in this patch. Will send the
fix up patch in an hour.


> thanks,
> 
> greg k-h

