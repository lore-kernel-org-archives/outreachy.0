X-GM-THRID: 6950506572644614144
X-Received: by 2002:a05:6512:234d:: with SMTP id p13mr21031557lfu.603.1618317836033;
        Tue, 13 Apr 2021 05:43:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:c22:: with SMTP id z34ls294966lfu.2.gmail; Tue, 13
 Apr 2021 05:43:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzZMD0l5DUnqvxw+7X63bCkBXzcgM52cD10uZ90Bfy7wwqT17bN8GMcyphbVpFbbMvP7mpU
X-Received: by 2002:ac2:54a1:: with SMTP id w1mr17623617lfk.48.1618317834333;
        Tue, 13 Apr 2021 05:43:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618317834; cv=none;
        d=google.com; s=arc-20160816;
        b=iY/EvohoKA5HVqdGLmA3ce5lvig5d3DdqQf2tECqO+sr+R6ArlU8Jt97VNx8HIqPKc
         gshieCRsUVMZ+30VSIsUUxo4KQcsWQDQ3K3irVTm5sQ1lSx/8datf3+WAGnwkZ7ciZP9
         cYhPl/oYlhFnnU0c9smLyPCly2FJZL/4lWY9WOswV8K+F6s3285aD13op8+nztfDlz1i
         oTdP1NUl+Gin8tmvnJs/sOmCdDhJvfQDQf60O99WHRDELCRPAHs9N/mWFdmhd/udG13M
         YTQ5W8J/u7JGzewdlWxdAAlJmQ/o88WqmuUoCV2yXKEGNi8E9r3difcdXuMThXO6rRVQ
         l6Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EL1HmykK/vApgs7sw6AqzLD3lOW0gon0AditmCsSeb8=;
        b=L7rr788iWV94IKkGf/AdZKO/ZCPr+L1/XHgSUd5w/9SCF5megLiM7Fs45AMeT7Itnb
         JT6k7e3dAvpx7x81zL0pWqb/VHaKCA8uufGnWiJkC7Nnp/t5j/CH9Gxa+TlAXC43ozal
         7ZdgMZ108SuxbNxj8NfDEtCrwHTXRln9v9/FOE0iw6H/p6tkT0ZIpUiRkq2Yq7fFTOir
         spZFkD4M2HnWsXHJ87jzPhA3JN1cBxXSgA3ncYUkN41xZvlkjjjSu/TRRumM+6i4F2xe
         ZfTnuPU/TKa62UvxlFB9VWeKTASXMzOxINmM7SvdMsC34zM1Jn87s/TSOG3C1cu6mC50
         OH4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7lPyIPR;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id a10si902073lfs.11.2021.04.13.05.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 05:43:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7lPyIPR;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52b.google.com with SMTP id m3so19223206edv.5
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 05:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=EL1HmykK/vApgs7sw6AqzLD3lOW0gon0AditmCsSeb8=;
        b=u7lPyIPR87OkZrjxWaan08OGxcnEdPfv7JgN/iIt/d1QipKYtlYtKFVTrWwE1gl6jv
         BRLvkh3jp+NA1pF29eWCEPAu6E464v0Zid25vkeEba5Re/uZbDRELo7VfZEHkRamfGDY
         1wAEIYB6M7299J3fCyPfRcFhlL9MVmuV/pFfaZAucmFMkYAfmx2+k8rQJxEOPXS8A73q
         dgtt9Ovq0ZR4phVDLv2RsiY48RafXX4x9/beldTslFqnSyyeNlw3tUN5rfZxJUI/ldMm
         1xlMoh3XNQYKPQbaGrI5CkeqwYHe/qae1evznyy0zl3SikSt+A139eKKc1gHAVwI4hZz
         onWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=EL1HmykK/vApgs7sw6AqzLD3lOW0gon0AditmCsSeb8=;
        b=ATgogjCUy1wYTI2kaiz9RXP4ySYN515fjZiowNJSYpinX7D2rISk6R4Gd+TUrlnCJx
         grv8QL96EvAp7PEWlQvhkKI/JWPHXTnQLSBIROT7WKR8dRN5fNxoqlaXsWfUV/NWYqKz
         pM0iNaqw2N2wlIV4mwnIIK494rXebuL2L0d7poHk78N3/VOaghPRWcL3dcvVJTgrkVkL
         UxKrbXN3cfQTOFG7YaxSnfviI+bG2agXlMKladSCBZn+DYjveh5wP84INCUKaMJL+NBc
         LqIWza6YuFkQk/V/bq/TYRn5gUhES7cx1O0Zz9dtnIaLp2Akm14fg9k+CCjlzBcgKT24
         KquA==
X-Gm-Message-State: AOAM532ZdQ58lDA6f5ZA8GSehhM3o65Kd+BpIm3TF0ArMqF/6vwlKkzG
	gurAJpFIPCPrlVNWSejKtss=
X-Received: by 2002:aa7:d688:: with SMTP id d8mr28010154edr.294.1618317834072;
        Tue, 13 Apr 2021 05:43:54 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id n3sm7764662ejj.113.2021.04.13.05.43.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 05:43:53 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>, outreachy-kernel@googlegroups.com
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org, gregkh@linuxfoundation.org, linux-media@vger.kernel.org, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in, Mitali Borkar <mitaliborkar810@gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 3/4] staging: media: intel-ipu3: reduce length of line
Date: Tue, 13 Apr 2021 14:43:52 +0200
Message-ID: <2015378.6QP0OQ0Ode@linux.local>
In-Reply-To: <YHV45I6ZDsXNwdiG@kali>
References: <cover.1618289130.git.mitaliborkar810@gmail.com> <20210413104432.GU3@paasikivi.fi.intel.com> <YHV45I6ZDsXNwdiG@kali>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Tuesday, April 13, 2021 12:56:36 PM CEST Mitali Borkar wrote:
> On Tue, Apr 13, 2021 at 01:44:32PM +0300, Sakari Ailus wrote:
> > On Tue, Apr 13, 2021 at 04:13:04PM +0530, Mitali Borkar wrote:
> > > On Tue, Apr 13, 2021 at 01:01:34PM +0300, Sakari Ailus wrote:
> > > > Hi Mitali,
> > > > 
> > > > Thanks for the update.
> > > > 
> > > > On Tue, Apr 13, 2021 at 10:46:06AM +0530, Mitali Borkar wrote:
> > > > > Reduced length of the line under 80 characters to meet
> > > > > linux-kernel
> > > > > coding style.
> > > > > 
> > > > > Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
> > > > > ---
> > > > > 
> > > > > Changes from v1:- Reduced length of the line under 80 characters
> > > > > 
> > > > >  drivers/staging/media/ipu3/include/intel-ipu3.h | 3 ++-
> > > > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > b/drivers/staging/media/ipu3/include/intel-ipu3.h index
> > > > > 6a72c81d2b67..52dcc6cdcffc 100644
> > > > > --- a/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > +++ b/drivers/staging/media/ipu3/include/intel-ipu3.h
> > > > > @@ -247,7 +247,8 @@ struct ipu3_uapi_ae_ccm {
> > > > > 
> > > > >   */
> > > > >  
> > > > >  struct ipu3_uapi_ae_config {
> > > > >  
> > > > >  	struct ipu3_uapi_ae_grid_config grid_cfg __aligned(32);
> > > > > 
> > > > > -	struct ipu3_uapi_ae_weight_elem weights[IPU3_UAPI_AE_WEIGHTS]
> > > > > __aligned(32); +	struct ipu3_uapi_ae_weight_elem
> > > > > weights[IPU3_UAPI_AE_WEIGHTS] +				
			__aligned(32);
> > > > 
> > > > Do you still have the other two patches in your tree? This doesn't
> > > > apply
> > > > here due to the different attribute syntax.
> > > 
> > > I have patch 1/6 and 2/6 in my tree which you asked me to drop.
> > 
> > Could you drop them and then submit v3?
> 
> I am extremely sorry Sir, but I am still learning to use git, drop them
> means to delete those commits? Even if I delete those, this patch was
> made after those, so the changes I made then will remain as it is, so
> what to do now?
> 
> > Thanks.
>
I think that this document can help:
https://kernelnewbies.org/GitTips

Fabio




