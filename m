X-GM-THRID: 6947173308910534656
X-Received: by 2002:ac5:ca99:: with SMTP id u25mr13213482vkk.12.1617575148794;
        Sun, 04 Apr 2021 15:25:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:3127:: with SMTP id f7ls87481vsh.9.gmail; Sun, 04
 Apr 2021 15:25:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyCngP2UPdSCJE3kS3GW9f3nbi6d9IsZrk19TCpBEmic9ssje6IGdM+5LiyCxnC6I7bGgr4
X-Received: by 2002:a67:ef96:: with SMTP id r22mr706790vsp.49.1617575148013;
        Sun, 04 Apr 2021 15:25:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617575148; cv=none;
        d=google.com; s=arc-20160816;
        b=LaiHHJNFRsUf4yH+KtgThspwC2ZvdClMvj6g5Xyg/zCDnaMKkGtuQavdDCuD7PES1H
         9FDzVWQqwsAQjDeED6V51B2gWrGCWhmuVH1Jxc01rzb4G0FmZoDmjxUMhdRhs/nF1ZgT
         AzaZUnqDKy3GXKv9sPd8H40rbY8jP8/IGy0c+gAfN5s0z8JSPjAQmXYGQbeEkNwpBiF0
         x5l3R+1n0tAE5t7pwqbcu6AELl1mks6r0uxyAQPGtFp9aqKf2lTSlZyM/CxTnH3PzdG5
         4irRcHkMsI1glz1Bo1VuKLz4zqflezz96FNVhy68X0j5oNaDm3LUeXCbg2I4nGUuakeU
         fM/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=F/7g2yV6C0TwPD0bZdc4Di1ysJWXNJ5iWAZlkKHzvSA=;
        b=pbIMRKv+blVEVflPCIPlKs5hAnUvLkEc0LLQ3cf7m+Cj0bwktITdvZ/9zZ92BTY9Vc
         gHMvPnqCXcanRgdqTm8Fg0pAJjnufhIaUSn0l+IykNQ06MwluBnD10vocSIoetxRYOQ6
         dmWlUmUXbT4iDSlVNBVi5I+0Xe8Hyoc+KsE/oQbz0wrlMl8lZZhbvs6X2juNl24X8lnV
         sm7XcfkX5OlHNVMlsqSucUqKS2ze758UBKYdzGSQhhn8xgxqVLD7bSYZZpRzMM0rJh8Q
         kSRLj8JMjNrAPV53Uxzk8aaQGzJ+muNqwbuFLdexkumknKEF4HAmZkOTqPn8E+xUKD5j
         ugFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nL1c30eb;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id i8si1019237vko.4.2021.04.04.15.25.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 15:25:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nL1c30eb;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id k23-20020a17090a5917b02901043e35ad4aso6961148pji.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 15:25:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=F/7g2yV6C0TwPD0bZdc4Di1ysJWXNJ5iWAZlkKHzvSA=;
        b=nL1c30ebIdWauZnz3Lpr2bZvGu96omS5WWVM+2LqIZG9rDqd27Ib5sNh6Ddc23E81u
         9VqfUx7Amwv1TGw16o5cAG1wuOY0j1C0xcmiYAqduOSPegj1ke/PJWOYHYMueygFZXog
         MJ0iC8dyi3RSlRLtOSRJc5iO4mH8iXC1aeDWsafr+2bQnYaV/rKQZ0lO+acaEBE0hTYK
         /3A9FrwOmn0bmN3Wno2l3Saev8ArzwzU7ApaAbTsRbIO2mL7stLhEdQwI4c+0zHlqK0j
         Vd+9szex07PUeKZNSi7bk7E4BrQxMC5KYRO5IhcaI3th+dpVLkHnft324AGn15atPtJg
         o30Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=F/7g2yV6C0TwPD0bZdc4Di1ysJWXNJ5iWAZlkKHzvSA=;
        b=h4Mvg1ayQ31VT8V+imFtdZXh12YkQ8oRu1g58Y+Fh8fmrImv6byO6xpQWqLcwRZH/X
         z9Mpcw0OWjRFJOzyTsVtuW6IXesN2njHgpsgRcW1RJ71jRyM7B+s+3CeKmEOvwUnmkwL
         6Wkt4+s5T0w2xTrvEikADBxWgaT2hjtJM18ffsW3opZiv8dx1TsxLvdaDWTKzOQOkxf4
         p7o4vTbzj3u2YSqPaXnlmULi4cNw9xfXuN9/RIo7MVLN6hErV+1mma6tyOeIgMwHEKF/
         /pczqImUSRtDBXhWehAmenn6H0ACU/MVW0QkNDcck2NJ19ksc10rC8AL/MNSs9L3MuzB
         vlVw==
X-Gm-Message-State: AOAM531EkfsWkFveeptkvG0rFZX8D6WysmB8UUfRPFhlXBKevQwgKAYB
	HMKq5PtiPrh8QKXFy+VKy2kGv/8LREoC2g==
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr23515091pjb.72.1617575147253;
        Sun, 04 Apr 2021 15:25:47 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id bx2sm2327191pjb.32.2021.04.04.15.25.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 15:25:47 -0700 (PDT)
Date: Sun, 4 Apr 2021 15:25:45 -0700
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Larry.Finger@lwfinger.net, straube.linux@gmail.com,
	unixbhaskar@gmail.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8188eu: replace goto with direct return
Message-ID: <20210404222545.GA7267@djbComp>
References: <20210404054008.23525-1-deborahbrouwer3563@gmail.com>
 <YGmM4FTVZ/FIQ7lj@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YGmM4FTVZ/FIQ7lj@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sun, Apr 04, 2021 at 11:54:40AM +0200, Greg KH wrote:
> On Sat, Apr 03, 2021 at 10:40:08PM -0700, Deborah Brouwer wrote:
> > To conform with Linux kernel coding style, replace goto statement that
> > does no cleanup with a direct return.  To preserve meaning, copy comments
> > from the original goto statement to the return statement.  Identified by
> > the checkpatch warning: WARNING: void function return statements are not
> > generally useful.
> > 
> > Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/hal/rtl8188e_dm.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> > index 391c59490718..d21f21857c20 100644
> > --- a/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> > +++ b/drivers/staging/rtl8188eu/hal/rtl8188e_dm.c
> > @@ -139,7 +139,9 @@ void rtw_hal_dm_watchdog(struct adapter *Adapter)
> >  	hw_init_completed = Adapter->hw_init_completed;
> >  
> >  	if (!hw_init_completed)
> > -		goto skip_dm;
> > +		/*  Check GPIO to determine current RF on/off and Pbc status. */
> > +		/*  Check Hardware Radio ON/OFF or not */
> > +		return;
> 
> It does not make sense to have the comments in two places here.  The
> original code is just fine, there's nothing wrong with the goto
> statement here.
> 
> thanks,
> 
> greg k-h

Ok, thanks for this feedback.

