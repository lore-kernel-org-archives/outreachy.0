X-GM-THRID: 6952150809139216384
X-Received: by 2002:a19:c218:: with SMTP id l24mr3518812lfc.529.1618675390230;
        Sat, 17 Apr 2021 09:03:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:6c2:: with SMTP id u2ls3783013lff.3.gmail; Sat, 17
 Apr 2021 09:03:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxGINH5ERoeDhe/w821uZXzg/BJVroVm9uZE/0V1qdhuNwbeHuI1LUdpPjGq2/tLThr1YQc
X-Received: by 2002:ac2:5f6a:: with SMTP id c10mr6895907lfc.286.1618675388582;
        Sat, 17 Apr 2021 09:03:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618675388; cv=none;
        d=google.com; s=arc-20160816;
        b=Qo4iyhs4CalPnhaoO/jM52wEc7WEPiFP5bysOvchIfekJT1pbksobCFUarUPaVS/kI
         nfmxQCn2qhp3AqFhJo2T1sc9AIXoXZ7O0ntoQY56HAdVd99EInLEMfcbr3tDQ/noIFNr
         AMBn78y2zUct0qaUdDdFgu7omlRbvnUtsMltI2bfCttyr+5lD6okjC8hBJ7sEfwOndve
         wQXga9lyr2OtVsX56e69yCX+rwSzFSaifQG2tdDAMN8G1hNqDeQ1ztRT7XBT5c+MkX9D
         feum1P0MAHqM6fEI+gvd4w/TGavSBlV2LBg7sEakc6SW7QoKzHLHkCS4LNsiWmj3klh+
         BUNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0iBdoO43ZxcfL4vvnLAtWWoYN89D9RquHZJTfNAF3AQ=;
        b=a5pRWoA9giN6feTH0zCB905fsVI3Trapt4+Swemqn3kL30muxGX2BvFvRd6n1BVGCr
         /T/CXd7gejIWX1VWqJuB+DvTwwLiKllhobu98C3S5xcp6dJrbRD984DiBzKkeB6+KUL2
         ouzppiUQQjY5BBlwQqZKVTMIyS9mQtdC/aU2tRqXw/YfN/8DCTCNI+AwelRJCFyrrJDk
         9B5pIJQUv3asFsDvy2R6kBEYQVxSLdUUDSZ0D6ZNyjRgKGK4a3Ptwhha5Mq64L7tFfgP
         gqma+ycy8TFLsD5owxK7g1qAd9sOLM8tJUqeSj/uLshaT+FqA4VsCPj9cutgIAH73YOq
         khYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ID515q7j;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id z2si371989ljm.0.2021.04.17.09.03.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Apr 2021 09:03:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ID515q7j;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62c.google.com with SMTP id x12so25695815ejc.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Apr 2021 09:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0iBdoO43ZxcfL4vvnLAtWWoYN89D9RquHZJTfNAF3AQ=;
        b=ID515q7jPCgyI7bf6VWHsi7Reb43NTwTDqByKOW4UTPHUk0oSc8K+YCG1I6ulbIzP8
         +mDjKnjkwHfGUwTseZtGjVcwoSfPqBo+rZC75sb3ajfEVVeNUeb/bnzBTWv79LM2sJAU
         xRAYw3W2CKG5n87erTP3o6kCITRSp0/P32J37K2HId1jBk52mx27qS42jb3dDxmY/W2Y
         gwHrA90MNus3caO7E9sP6MX+Ozo6nPLE9ufVwNxMx85r6zI1BDLEUUCoFHMR/NSfO8v+
         wUm121Fpy55ST5FFDRQ9zm0faTPE6poRyyPNolxKaNFkqZ8MF6/rlhjPp7n01SKvA4Oq
         oeTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0iBdoO43ZxcfL4vvnLAtWWoYN89D9RquHZJTfNAF3AQ=;
        b=RDXvqrW4AQ6X9c/ap5Jfmm1UdOUYpoJ9tjKiEWPT/bF3ufzUbD85eGTEhCX+7gK9Tr
         QKUnVwX+bFUqTnl/DSoAQk8VVi7RI3y6ddcws0pjNYK18p7aDmatfIn6f4K7VkdSmqIT
         MM3xyXkCtUUurpAR5dVXJ+v5Bo+KaeY67HsBcQH9+jbHDRs4S7khKKan5TBLpx5IGoY/
         xJ54HXUQVN0RZ3jgfPjrwX7vagSMENDZOvF0/cDUGoYzEQHl4H1wJFuQ5H7CgF6SnW8M
         Udc+KxqASsTbXW/8q85CuBdKG2VhQwUWFlCb2z0VHpUc5j1gITx2Ekog7FKEkSEzljEj
         AVXw==
X-Gm-Message-State: AOAM533HPFdY+cKfdVGVVN/FkTtY6ZA44P95yTXngV3fWOkwyF6mBq/y
	p4q24tyMxGJ7aSCZ8US57Qo=
X-Received: by 2002:a17:906:b1d4:: with SMTP id bv20mr13765227ejb.46.1618675388156;
        Sat, 17 Apr 2021 09:03:08 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id d14sm1479764edc.11.2021.04.17.09.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Apr 2021 09:03:07 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, dri-devel@lists.freedesktop.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [Outreachy kernel] [PATCH Resend] drm/drm_bufs.c: In switch, add break in default case
Date: Sat, 17 Apr 2021 18:03:06 +0200
Message-ID: <3022803.ysd8NKUkcf@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104171745391.2982@hadrien>
References: <20210417153540.22017-1-fmdefrancesco@gmail.com> <alpine.DEB.2.22.394.2104171745391.2982@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Saturday, April 17, 2021 5:45:46 PM CEST Julia Lawall wrote:
> On Sat, 17 Apr 2021, Fabio M. De Francesco wrote:
> > Added a 'break' in the default case of a switch selection statement.
> 
> Why?
>
GCC issues a warning, even if it is not strictly necessary for the code to 
work properly. Do you think that I have to explain in the patch log the reason 
why I made that change?

Thanks,

Fabio
>
> julia
> 
> > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > ---
> > 
> >  drivers/gpu/drm/drm_bufs.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/drm_bufs.c b/drivers/gpu/drm/drm_bufs.c
> > index e3d77dfefb0a..fc40aa0adf73 100644
> > --- a/drivers/gpu/drm/drm_bufs.c
> > +++ b/drivers/gpu/drm/drm_bufs.c
> > @@ -79,7 +79,7 @@ static struct drm_map_list *drm_find_matching_map(struct
> > drm_device *dev,> 
> >  				return entry;
> >  			
> >  			break;
> >  		
> >  		default: /* Make gcc happy */
> > 
> > -			;
> > +			break;
> > 
> >  		}
> >  		if (entry->map->offset == map->offset)
> >  		
> >  			return entry;
> > 
> > --
> > 2.31.1
> > 
> > --
> > You received this message because you are subscribed to the Google Groups
> > "outreachy-kernel" group. To unsubscribe from this group and stop 
receiving
> > emails from it, send an email to
> > outreachy-kernel+unsubscribe@googlegroups.com. To view this discussion on
> > the web visit
> > https://groups.google.com/d/msgid/outreachy-kernel/20210417153540.22017-1-f
> > mdefrancesco%40gmail.com.





