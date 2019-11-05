X-GM-THRID: 6755493300686290944
X-Received: by 2002:a05:6512:1de:: with SMTP id f30mr20155731lfp.176.1572952230953;
        Tue, 05 Nov 2019 03:10:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8998:: with SMTP id c24ls211031lji.14.gmail; Tue, 05 Nov
 2019 03:10:29 -0800 (PST)
X-Google-Smtp-Source: APXvYqxzAvcShuqDeAizWcxHgBU3tHH0yfZ6R1auVezImNE2jz+sMbR6cZbgcurPh3X5mAsl/C/4
X-Received: by 2002:a2e:9905:: with SMTP id v5mr12140763lji.213.1572952229685;
        Tue, 05 Nov 2019 03:10:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572952229; cv=none;
        d=google.com; s=arc-20160816;
        b=LQ6YzNxsRLulcahGviayCFU1vDwhsiunxre5jmRYvNhJL8KI6PUAQBj/fi3P/ZavNL
         C71ZojL/ZqeD6PLQTpSBPyG/wDABpSpQmu/JJsQnDPtqnE16OZb+wfX36YnO+ZxISjHg
         my/6Nhaj+B1NPHlnm7GJabZkUg2rDezwiKUG6/kLm/2/0EJVP0+aVbgJLIe1+nwas4WX
         ayEATVq1yC/7eFaTu2F6OFfckR2Mj0KrDhYybpLuU2IXypCbI7bs2o20QICw2RM2nglg
         rgal0GgRNijOBGgtu0Fqh1tJoKJ4q/sgWnjm7xIUUVLXn1jAkAeKyReXiaKJfqEYuhEf
         z80A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:date
         :from:dkim-signature;
        bh=y2qxlg9/WxYNrodQutppo1itEPPVt4haSvgHKc6Nv0U=;
        b=ebzLrmBxXWP0xJGEbug1qoz4eK9uavkwUEVCRPZoY1Exnk+t9/Sb+GKLsO8pEGLWEw
         0CWTM5Yk7nIiUzvYQfSTNozAxHtlPT5FQ2wYE4GXHUcQU8f/GQq5qGymYhl2EqQ3GdjG
         qtV3bE5k11Ibv6eKLk1Gf478czCOW6mqcM8RZ8fhU/xG/5KltyXgw+GVhtrn4tq/31k/
         AkS+ydL6dSYcbLkWPQYaZXSSuitpNxk/FR5bjGACCHVvmjxvjJzDMEIf2Cl64H5IC5U+
         4X7yAdrRJGfPWO1solD9dL/YHQGhvGFLjgHQwT9ogqb4k8JL+YnIiv9p8WfUv4HIpO7g
         r+Dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fQwTMSPf;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id x23si591425lfq.0.2019.11.05.03.10.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 03:10:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fQwTMSPf;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id f3so8526513wmc.5
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Nov 2019 03:10:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=y2qxlg9/WxYNrodQutppo1itEPPVt4haSvgHKc6Nv0U=;
        b=fQwTMSPfRFIr9Xsxooeb+ZdrmMotEymjjH3x72bOkSt6I5ppLg3TGDl6JXUCh79wZY
         nwh/hKrc9OI6tvuJ3Il5RdP4wXlfboHsTUlrqY+mzOEuVxVneFmlh4SUGwJe+KaZDMNB
         rJdSD17SV2fe77NLKdviMNLnHXDZlJX4ZUMOiKT8zQKBkNvomvt9TNizP4d3BLe2tRVI
         LL147AeUfVtjMz8qzIHGvcYoTWtIY6NptFe0e9xVWgwJJ198Dum5OrMRu/pMFflk1Gc5
         yA3SRUMgnJkIUX4pxomzJf/l5e7jgD3QWhfXtLQjHnD4vzPwScNRBHkdfcc1r/GyZzfZ
         P12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=y2qxlg9/WxYNrodQutppo1itEPPVt4haSvgHKc6Nv0U=;
        b=KYHw8AHhiiovj6qoOqGnyMwYEBJ4iMDDJVTg8SQdrC9FyKu/wVPAzb/yxd2uEVNhIu
         OqlPLRYCbrZckDRw/WHjxO56oB7Y0Ye1qN0i66Tsb6HmAFtGIfNJILiP0mCOigyG2OKN
         DhLfQBTzo6RTb0jRUccFMPYSOlqxNgfI+cMTr86P+eNOEjTuXioTgE2yThK9eWm3m5+M
         eB7k/fLsv3YRFH2GBx0UFmbE0aNKg+i9v3plwOgEe//vMnP6JQ+HlBXtOSJd/t/14QrM
         sH23jksPAcdd+g5Rj7m+0BdncEVQsuZ3VMddIyaZWxhSLUqIZccqo9N3cNuYc5kJyKf5
         vIjQ==
X-Gm-Message-State: APjAAAWU0JNKWgK4394agW7VXGobwkmyI+v1Cvr8CSO0Y5k8qA31Kmje
	HcGRbjgRaiX102qyn99ZHQ==
X-Received: by 2002:a05:600c:c5:: with SMTP id u5mr3526268wmm.35.1572952228869;
        Tue, 05 Nov 2019 03:10:28 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.lan (79-73-36-243.dynamic.dsl.as9105.com. [79.73.36.243])
        by smtp.gmail.com with ESMTPSA id y67sm1366175wmb.38.2019.11.05.03.10.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 03:10:28 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
X-Google-Original-From: Jules Irenge <maxx@ninjahub.org>
Date: Tue, 5 Nov 2019 11:09:44 +0000 (GMT)
To: Greg KH <gregkh@linuxfoundation.org>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rts5208: rewrite macro with GNU extension
 __auto_type
In-Reply-To: <20191104165148.GA2293059@kroah.com>
Message-ID: <alpine.LFD.2.21.1911051107590.11074@ninjahub.org>
References: <20191104164400.9935-1-jbi.octave@gmail.com> <20191104165148.GA2293059@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 4 Nov 2019, Greg KH wrote:

> On Mon, Nov 04, 2019 at 04:44:00PM +0000, Jules Irenge wrote:
> > Rewrite macro function with GNU extension __auto_type
> > to remove issue detected by checkpatch tool.
> > CHECK: MACRO argument reuse - possible side-effects?
> > 
> > Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> > ---
> >  drivers/staging/rts5208/rtsx_chip.h | 92 +++++++++++++++++------------
> >  1 file changed, 55 insertions(+), 37 deletions(-)
> > 
> > diff --git a/drivers/staging/rts5208/rtsx_chip.h b/drivers/staging/rts5208/rtsx_chip.h
> > index bac65784d4a1..4b986d5c68da 100644
> > --- a/drivers/staging/rts5208/rtsx_chip.h
> > +++ b/drivers/staging/rts5208/rtsx_chip.h
> > @@ -386,23 +386,31 @@ struct zone_entry {
> >  
> >  /* SD card */
> >  #define CHK_SD(sd_card)			(((sd_card)->sd_type & 0xFF) == TYPE_SD)
> > -#define CHK_SD_HS(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_HS))
> > -#define CHK_SD_SDR50(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_SDR50))
> > -#define CHK_SD_DDR50(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_DDR50))
> > -#define CHK_SD_SDR104(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_SDR104))
> > -#define CHK_SD_HCXC(sd_card)		(CHK_SD(sd_card) && \
> > -					 ((sd_card)->sd_type & SD_HCXC))
> > -#define CHK_SD_HC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> > -					 ((sd_card)->capacity <= 0x4000000))
> > -#define CHK_SD_XC(sd_card)		(CHK_SD_HCXC(sd_card) && \
> > -					 ((sd_card)->capacity > 0x4000000))
> > -#define CHK_SD30_SPEED(sd_card)		(CHK_SD_SDR50(sd_card) || \
> > -					 CHK_SD_DDR50(sd_card) || \
> > -					 CHK_SD_SDR104(sd_card))
> > +#define CHK_SD_HS(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_HS); })
> > +#define CHK_SD_SDR50(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_SDR50); })
> > +#define CHK_SD_DDR50(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_DDR50); })
> > +#define CHK_SD_SDR104(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_SDR104); })
> > +#define CHK_SD_HCXC(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD(_sd) && \
> > +					 (_sd->sd_type & SD_HCXC); })
> > +#define CHK_SD_HC(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> > +					(_sd->capacity <= 0x4000000); })
> > +#define CHK_SD_XC(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD_HCXC(_sd) && \
> > +					 (_sd->capacity > 0x4000000); })
> > +#define CHK_SD30_SPEED(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_SD_SDR50(_sd) || \
> > +					CHK_SD_DDR50(_sd) || \
> > +					CHK_SD_SDR104(_sd); })
> >  
> >  #define SET_SD(sd_card)			((sd_card)->sd_type = TYPE_SD)
> >  #define SET_SD_HS(sd_card)		((sd_card)->sd_type |= SD_HS)
> > @@ -420,18 +428,24 @@ struct zone_entry {
> >  /* MMC card */
> >  #define CHK_MMC(sd_card)		(((sd_card)->sd_type & 0xFF) == \
> >  					 TYPE_MMC)
> > -#define CHK_MMC_26M(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_26M))
> > -#define CHK_MMC_52M(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_52M))
> > -#define CHK_MMC_4BIT(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_4BIT))
> > -#define CHK_MMC_8BIT(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_8BIT))
> > -#define CHK_MMC_SECTOR_MODE(sd_card)	(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_SECTOR_MODE))
> > -#define CHK_MMC_DDR52(sd_card)		(CHK_MMC(sd_card) && \
> > -					 ((sd_card)->sd_type & MMC_DDR52))
> > +#define CHK_MMC_26M(sd_card)\
> > +	({__auto_type _sd = sd_card; CHK_MMC(_sd) && \
> > +					 (_sd->sd_type & MMC_26M); })
> 
> Ick, no.  These are obviously pointers, which can not be "evaluated
> twice" so this whole thing is just fine.
> 
> checkpatch is just a "hint" that you might want to look at the code.
> This stuff is just fine, look at how it is being used for proof of that.
> 
> thanks,
> 
> greg k-h
> 
Thanks for the feedback. It's good to know. I really appreciate.
Kind regards,
Jules

