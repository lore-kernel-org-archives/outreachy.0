X-GM-THRID: 7018941118564794368
X-Received: by 2002:adf:aa04:: with SMTP id p4mr12850178wrd.67.1634287982511;
        Fri, 15 Oct 2021 01:53:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8b92:: with SMTP id o18ls6170993wra.0.gmail; Fri, 15 Oct
 2021 01:53:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwIfuxz9A4gZmOFU0TQMbQNICOH184qiXlqgRY2yXPrV33lgbHPkXXinD67b9oyXWbeMZzn
X-Received: by 2002:adf:f309:: with SMTP id i9mr12995019wro.256.1634287980841;
        Fri, 15 Oct 2021 01:53:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634287980; cv=none;
        d=google.com; s=arc-20160816;
        b=ZsPmP2ETPh64emAapBowcgXYM+ryEGojnpV26Y+wXC+qqzpXgOidau7WYks7L8jqDf
         hUGCWlGv0Nd93BYGaTnOHKgQaQL96zej8Gpo+MfZD/kUzTxs0hlwoXjSYE/y/zxs3mCJ
         Y2HJYjoxPtdB0LF8/PAp5LEOgLLKWrZJ7oJDfXZVWu/z/D26gXsYsCkHrV5Pl4hdfdQU
         d1Hv1NxSpcuMTFQTCFgRBGZId0rvY8E/1ZYDSIXqLmmOfsg9b4BVOGvshZIa00aDwjdN
         43vvpUkVs52KCrV6habjRbhnpRaTmfqFrz9YDx7qi2G9pyKowzVnhxKp5WNmnnpx5nLj
         rAlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ZOAZemfB4ICPF07El27QXqYZk9x/DPdjaGAEcnt1JgM=;
        b=gq3DFw0LYIBbzOxpIcUu+thehanvrrw4INcb2e3tNYQsM/pS4kSGVc3SFqciaFulUX
         wLciClyyjg7qZVmiXoMhIbGlHMkfbTOV7XHZ83oZ6WM9dlpAWvSVKKiplF/yAGPH20gg
         YCTmUB462aK92pIYLnbGfV6sHexVlR6i2uteRN4PEVNbkxT8l3YnFg+LcJCJUrT9Ep3d
         Fkefg3U3AeJQLd374JmjjDwvZM6jrV7Ug2XuV/U4QFbfeb18bHGw/3B9Ex5zK+RdiWnO
         F/0oiHgQhx4uHXDNbCcjEMHp0TJJ0kfzPmSE2SqJQN5/tTgZlrh3+6WVi3/zWCQ8RcAN
         NyhA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RJS5fD0g;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mike.rapoport@gmail.com>
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com. [2a00:1450:4864:20::531])
        by gmr-mx.google.com with ESMTPS id e2si343782wrj.4.2021.10.15.01.53.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Oct 2021 01:53:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) client-ip=2a00:1450:4864:20::531;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=RJS5fD0g;
       spf=pass (google.com: domain of mike.rapoport@gmail.com designates 2a00:1450:4864:20::531 as permitted sender) smtp.mailfrom=mike.rapoport@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x531.google.com with SMTP id g10so35297301edj.1
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Oct 2021 01:53:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ZOAZemfB4ICPF07El27QXqYZk9x/DPdjaGAEcnt1JgM=;
        b=RJS5fD0goXO5l0p9F8S1G/B6QHtUuvbOTC7PJ6VNI0IgxdB6dH0P/DFBK3VTaFk17o
         1GrDH6dJt+QQue5ob/wHKC5RJcWPho9z3YM1WD1xfG6tP5Y8pwa+qbzSEbQSERtlTPGc
         Hk19GP8EkkllgKQb6p5qErF7gI4GoWeekwyqWGAoNI/IxSnQ5P5fwZa9HV12/M1riFsK
         MB9I/mfkcSlLDwBDmfA4RRJywk2xFqQkoIQxWdz7LW8p+VjICxBUM4QGOko9e7UTpJyX
         PU3ZsSDAyFoXjHyRKJZ7KFkMxuDt+ec5Ho2aHUp9v5nnqWnGUx5u1y1dMDS8MdwhbT2+
         HECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ZOAZemfB4ICPF07El27QXqYZk9x/DPdjaGAEcnt1JgM=;
        b=msya/gknULN6yly7/uyz+NjbrDECkKOBrSM9VeShZzjYJ04SDFkNUn1N/hd4nVjbRa
         PTb7/lWFn/2SZ7nMe/7IX1Xfzpe+TcAUQMg7A+pyV4mMPIr36Hy8azkezqKXgzdVR58k
         xuzai0FBbtskUmqgxM0C9CNc6jYg4/L+yRBWdNVb0Fopb8jJrmLMAmLwc5KR33JMq0E/
         62cRGbJh0MjpDlcZSnCAqhgGLZbDb40tbmL+mK9FmBa5+eac3OzXNNteS7FnfzJdEb43
         69SkEiXa7Io63GFr8tqGODltorUmF5muAjCb0kMcfb9lE08A7v09LG4vIy4A19kn2Vht
         jojQ==
X-Gm-Message-State: AOAM532IZxEGiRX39tHNWF+EKKgyhpYhbSrdE74hTc/xh/qN1bXN4t9G
	om22KNlhDmnfMaiQdBfRtuM=
X-Received: by 2002:a05:6402:410:: with SMTP id q16mr16638298edv.286.1634287980508;
        Fri, 15 Oct 2021 01:53:00 -0700 (PDT)
Return-Path: <mike.rapoport@gmail.com>
Received: from kernel.org ([2a0d:6fc0:681:b600:9397:3584:e3dc:7a])
        by smtp.gmail.com with ESMTPSA id i4sm4104488edt.29.2021.10.15.01.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Oct 2021 01:52:59 -0700 (PDT)
Date: Fri, 15 Oct 2021 11:52:57 +0300
From: Mike Rapoport <mike.rapoport@gmail.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	outreachy-kernel@googlegroups.com,
	"forest@alittletooquiet.net" <forest@alittletooquiet.net>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Rename
 byPreambleType field
Message-ID: <YWlBadCKQ7mEnXJx@kernel.org>
References: <20211014151543.46764-1-karolinadrobnik@gmail.com>
 <YWhOfPhVRBrH3gz8@kroah.com>
 <e9c9154ba03e704c1e415c66f2d57f73a2379144.camel@gmail.com>
 <YWhus0EGaPJXhsHv@kroah.com>
 <db3c6775c578eb0fc34726e7bfaa89b4267e30a9.camel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <db3c6775c578eb0fc34726e7bfaa89b4267e30a9.camel@gmail.com>

On Fri, Oct 15, 2021 at 09:32:17AM +0100, Karolina Drobnik wrote:
> On Thu, 2021-10-14 at 19:53 +0200, Greg KH wrote:
> > Each patch should only do one logical thing.  And every "thing" you
> > do, has to be described in the changelog text.
> 
> Ah, I see. If this is the case, I'll leave tidying the comments up
> until the end of the cleanup work and make a patch of it.
> 
> 
> On Thu, 2021-10-14 at 20:40 +0200, Julia Lawall wrote:
> > > I saw that functions and parameters use it[1] so I deduced that
> > > "by" might stand for byte.
> >
> > OK, I see your point.  I originally thought that doing something by
> > the preamble type might be true or false.
> 
> Agree, in such case that would be a well-named variable.
> 
> > But it looks like the developers
> > have considered the use of booleans and that is not what they are�
> > using here, so it seems that my original idea was off the mark.
> 
> I read through the code and it looks like indeed the developers
> intended to use it as a boolean but this "by" didn't mean to mark it as
> a predicate (if that makes sense).
> 
> > There is also this code:
> >
> > vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_SHORT;
> > vt6655/rxtx.c:          priv->byPreambleType = PREAMBLE_LONG;
> >
> > PREAMBLE_SHORT seems to be 3, which is not a boolean.
> 
> Not sure how I missed that, thanks for digging it out.�
> Hmm, but in baseband.h they are defined as 1 and 0:
> 
> ```
> #define PREAMBLE_LONG   0
> #define PREAMBLE_SHORT  1
> ```
> 
> Or am I looking at the wrong definition?
> 
> > There is also
> > vt6655/rxtx.c:  return cpu_to_le16(wTimeStampOff[priv->byPreambleType
> > % 2]
> > which also makes no sense for a boolean.
> 
> `wTimeStampOff`, defined in rxtx.c, line 57, stores two arrays of
> shorts, first for the long preamble and second for the short one. That
> modulo confuses me because if we were to take these values as they are,
> we'd get the right array anyway. Or maybe there's something more to
> it/I am misreading it.
> 
> It looks like there are two issues here:
> 1) Probably we're dealing with a predicate so "byPreableType" can keep
> its "by" prefix
> 2) This variable is not defined as a boolean but it looks like it
> should
> 
> For this patch, I think I can add `by` back, so `byPreambleType`
> becomes `by_preamble_type` and exclude the space change pointed out by
> Greg. After doing this, I can take a look and try to define this member
> as a boolean. To be honest, I'm worried of doing so as there's no way
> for me to test it.
> 
> What do you think about this?

AFAIU, this variable defines what type of a preamble will a packet have and
its value determined by a bit in WiFi packet header. In a sense it's a
boolean, but it's perfectly fine to use u8 and 0 and 1 for it.

I'd say keep it u8 and rename byPreambleType to preamble_type.

-- 
Sincerely yours,
Mike.

