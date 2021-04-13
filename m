X-GM-THRID: 6950506572644614144
X-Received: by 2002:a25:bfd2:: with SMTP id q18mr9430913ybm.127.1618310595974;
        Tue, 13 Apr 2021 03:43:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:b9cc:: with SMTP id y12ls8903141ybj.0.gmail; Tue, 13 Apr
 2021 03:43:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCBg71JGAmwZorI5Vr+bzL9WiQ3rPBoCRSljkdbMhfYukzVBByoR0xLth5x4rASwTCEwyk
X-Received: by 2002:a25:1855:: with SMTP id 82mr2745376yby.305.1618310595079;
        Tue, 13 Apr 2021 03:43:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618310595; cv=none;
        d=google.com; s=arc-20160816;
        b=R7YuW9F8WxZmFx59FLbi4+B6pECOIedRXYdBxxt7qmf8VMKt5mFyXWFE1hBT5sNYAN
         b5MLWIQwIqZfKYT3STabqzhqCNtIccebUg57nIPdBwIJ3sGmrmPSb6p64orzOXukgXnv
         JKfiEknH3cCG+PBimINOCYkZKxUmOoX4f5+5butxRne7s83CX9dvfNP+hUFFFLn8mtzJ
         /u8KjdmTPPm1ge6D9lVFDmGgm9sgjwzBCXB+ZRZU+/iBNfrssy9tutBrEA1pSpyMSbAj
         gaDaBDFN09q5mu6EEpbtFXRFSpkmw3SQMB4Nz8cf1VrMmlekDZfjsZUKYfkSRfq3cpRy
         UJ/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qw2EKXYMWZRnicc+aMShWEuB5bBUZiy5s0ziuNVRtBQ=;
        b=iIM45hj4rCM0fYmsR0FKg4jYPMMZDMjY2n0ivDIek3l628BB9P8mviQDmjlnNEQIXh
         YZ0JVH8T1GdgEw8ZHfj6IwyFifYcNrhjmTtiK7sBTO6DopWnFTPWacKFP/B3p8RLYAXI
         tiaze3Ut95OPUOXJbHMVA4/oGN34vlrHbdSZt+CvPStxtA6OVnQMNr50q5138a/kvkYP
         wPCkHAlY3iJYGI9f1ltF+QEMlzd/EjtWOGy4Xj4G66PGggagy9qmvHban7xFVqsgr2FE
         Qm8N/WHbKfFeL5dAgRcNPMLOAzXTfrEYK1QVf2cCXUHFQXxbiXFRVJ1E5nGyM2Vk+uhM
         st0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eZTVN0SP;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id t17si291735ybi.3.2021.04.13.03.43.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 03:43:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eZTVN0SP;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id b26so6020947pfr.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 03:43:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qw2EKXYMWZRnicc+aMShWEuB5bBUZiy5s0ziuNVRtBQ=;
        b=eZTVN0SPDlqlBoNWSDPAie9ZGUDyLEUSKQQKZYhDvLfACBxjfq7+HJ6I8VpjQD1qS9
         eZaiuIaLojXN7D6Sx30KRThU7BF3277QLOEPZYYerN/NBnqqDEVJTRapc46bLrnCp/7v
         WNfnlkbWuUFy7lMQclinpDPs0mtZ9yWAN4xetC7hspctM0iwEYfAAHsImBQflZzGZWyD
         Etj+gnaCWnR77x+BbvvnssGM3R6Y6VB+bsaCQzflU3lo4BVaod4tpdvitsWJsrY63O+I
         t6ZQStRKNPL5o5p82vh5Qxn0zni7iivSP5vdhEPsJX2Nk+Vo8+/YeSvKlOTljvi/J8Xb
         6aJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qw2EKXYMWZRnicc+aMShWEuB5bBUZiy5s0ziuNVRtBQ=;
        b=WNfIyUDQXMdBJ8kU9PvgXDwhVRrqXybBtwpm4BVgbMm5jlNvaTbgqJfR9jKGO84EW0
         ojykjR9l7So6jbYJounXJA9M4a1rdKRYilME+S+UEl92K5ToY5JBEMhc3+lLo3cj9FgO
         d7iOFb3kEYM+iT2Sz3CtZYDQHFAso4ak9TsA0sRfC8AC2z3oqMV0kKmYubLghvLlv7c+
         IE0ev/tCQl+ezc7zM5ZeDAByEIbTTlN+jLEVdMVYV8Gch+4M4GiXIPEShWU6uyhyleRi
         gaUJ9XmuSv8gyDM18hy2dibpKGRSFqxqsvbW5wCna+QyOSh1uFLP/DtuhSQGIfCoAlSl
         bjKA==
X-Gm-Message-State: AOAM530k3/ulovc6L5aU9HmJxMWTY9SCU7B+Q/SDd+afBGqar4dsl1id
	69q22UVxK/jOMpZ230Ko7X0=
X-Received: by 2002:a62:e70e:0:b029:245:3a00:5720 with SMTP id s14-20020a62e70e0000b02902453a005720mr23911234pfh.0.1618310594185;
        Tue, 13 Apr 2021 03:43:14 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id g18sm12411160pfb.178.2021.04.13.03.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 03:43:13 -0700 (PDT)
Date: Tue, 13 Apr 2021 16:13:04 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [PATCH v2 3/4] staging: media: intel-ipu3: reduce length of line
Message-ID: <YHV1uOq9pXmGUD+x@kali>
References: <cover.1618289130.git.mitaliborkar810@gmail.com>
 <f18b704654797e29f3bbbe49689eaa2c0ad28d59.1618289130.git.mitaliborkar810@gmail.com>
 <20210413100134.GR3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210413100134.GR3@paasikivi.fi.intel.com>

On Tue, Apr 13, 2021 at 01:01:34PM +0300, Sakari Ailus wrote:
> Hi Mitali,
> 
> Thanks for the update.
> 
> On Tue, Apr 13, 2021 at 10:46:06AM +0530, Mitali Borkar wrote:
> > Reduced length of the line under 80 characters to meet linux-kernel
> > coding style.
> > 
> > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > ---
> > 
> > Changes from v1:- Reduced length of the line under 80 characters
> > 
> >  drivers/staging/media/ipu3/include/intel-ipu3.h | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > index 6a72c81d2b67..52dcc6cdcffc 100644
> > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > @@ -247,7 +247,8 @@ struct ipu3_uapi_ae_ccm {
> >   */
> >  struct ipu3_uapi_ae_config {
> >  	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
> > -	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS] __aligned(32);
> > +	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
> > +							__aligned(32);
> 
> Do you still have the other two patches in your tree? This doesn't apply
> here due to the different attribute syntax.
>
I have patch 1/6 and 2/6 in my tree which you asked me to drop.

> >  	struct ipu3_uapi_ae_ccm ae_ccm __aligned(32);
> >  } __packed;
> >  
> 
> -- 
> Kind regards,
> 
> Sakari Ailus

