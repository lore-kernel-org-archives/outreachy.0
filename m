X-GM-THRID: 6662711106976350208
X-Received: by 2002:a17:902:724c:: with SMTP id c12mr946339pll.16.1551285599804;
        Wed, 27 Feb 2019 08:39:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8216:: with SMTP id x22ls1013531pln.3.gmail; Wed, 27
 Feb 2019 08:39:59 -0800 (PST)
X-Google-Smtp-Source: AHgI3IYlwX3NU+/Kzb8/d/bFgbUP5RmRvk4KiJbAXwM+uiyEvvMjRZQjL6VDCkqIWrLR24IKMGd0
X-Received: by 2002:a17:902:4181:: with SMTP id f1mr938679pld.123.1551285599100;
        Wed, 27 Feb 2019 08:39:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551285599; cv=none;
        d=google.com; s=arc-20160816;
        b=0rU5UqXbzwCxBd0K8ms+0YZahssmo61uEzP6jhmwyyIyqWJzzeRjdq7x51cWf9ibEl
         A8y4xLdzrdXy8VOIvkPsL/gEqUVrqTdcIylIi0y6Pl4ykdjyiN5MqDpXt292RWcYxsw7
         fmGqU1aOXm/niWVE8JO0dBN9edye4D2k2/aA2ear23UzHR88A7bHNOt2uDTQIPOOrz1u
         0TZYPIuLFHk5UJfY10gl3USWuceeqLw5ppjYt9T1aHMbUpzgB2XP6VuV+3LUylEAQOr3
         57bbBnQiMR12Mce6DvyIQCZ+OJIDxmu8Ps8rL4fbWkHfr0qmAJyHpJk/9djrYQJaLnE6
         Bc2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=I6N/4HNA0aNfVD0nu9uaTl1qQSAFnAGcpMmFWmM4YyA=;
        b=U8FFDyTFLa4hpH9WF3wxyQqkHU+TRmR1XXtMsYAOHJ9xYw6JX4MqNJkmvKacpva/j0
         bmFdFr9woZ1pMPVNOKR4ieK1jYGRbh6thTcC0UBmRHeStoOZflmOmhrx1SXRbpkf5X8q
         YrcNCPGVTXkEczsY+VMXltmTkEBjEPdStZh4QXUws5pOPhiGh5gKpM5RTxC3Z1BtYG0c
         YAfZjnyIPYf5rUgKdz4TzY3JrgAHCOpf3IM3w1gkc9nFhmFEBVMqZ0MeXGlmOTcNTTLU
         0b8DPnr6gOhXL4oREoNXAum2p012NhS+3FHfUGugWOuOV7BsEeVjJiZWCZclIVSGInm9
         UbVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UYqZVEQQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id b38si567179plb.1.2019.02.27.08.39.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 08:39:59 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UYqZVEQQ;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id n71so14878397ota.10
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 08:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=I6N/4HNA0aNfVD0nu9uaTl1qQSAFnAGcpMmFWmM4YyA=;
        b=UYqZVEQQnng3kvb/hjGSpmyZlH9A1/lS2ZzM+Mp4MNtndWhzqVgN3eMm2lNY5riPHx
         4cGRqt5+EQ1W9VmnzEpwx3DgqcAXcn2kc41+8kQF3JwPLXV1x6o5smy7Z/oEr5pGfr2h
         kFADZJWPtLCjetpF7jvnOn820sX5XJxrhBMMFaalKXzZRvWi4ynd+Qy1wkqG+f1aa73W
         +BNJi6/8qzpvdiNFPB5Aq9ZNIsCXLVFfsaBAC0eE8r+pkIYcMOIufLDNxCBWQQeN/eLP
         l6jHEkXJAp+29yQh6v9F6sMj5VH2yuVvzlrOwe02ohsAiE8j8aUjQ8j5OLHBYAkg8mmk
         VuOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=I6N/4HNA0aNfVD0nu9uaTl1qQSAFnAGcpMmFWmM4YyA=;
        b=K7eKPZfpYOxPoZ9S9qWJsHPAXBkDjYOI+SlkcG5j7j+sejPwx95lgsEIzxBZNoxqDZ
         KzsPpQNtxkIwBv6eYMloSRSSw6Vdc9dAL1PsjWZI8JkEvCe/OznRyYJOIGWvFyrZLYQS
         dqIWc3Yu50SvIqzx4tBjTQUMHivbohOJcGVkVG2518bFkOzy9pUwC9BB4lCuK2t8euWX
         Lyf3K2YDKxa+mbt+f4IEDwztvnAJZmJIVDBjODzvs7s9oIz5mGxZEN0BaWGj4ON5cAkV
         d3QagKdiXR3kBQnz/K+MNgndAv0umWWG6uVBS2dBVmgoijtFLe6WZvnE62irh09gt/KS
         /yOg==
X-Gm-Message-State: AHQUAuYi3QDasfxntVGQe+4il5x8rDYsBY0yDTnSRDPYLLJxabMHl5dU
	ciyTrzgcBduwhLSaoxxr+s+l3bNKY/guaw==
X-Received: by 2002:a9d:73d7:: with SMTP id m23mr2866028otk.142.1551285598067;
        Wed, 27 Feb 2019 08:39:58 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id q5sm6487284otf.73.2019.02.27.08.39.56
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 08:39:57 -0800 (PST)
Date: Wed, 27 Feb 2019 10:39:52 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: vt6655: Alignment of
 static function declaration
Message-ID: <20190227163950.GA22354@madhuleo>
References: <20190227160148.21914-1-madhumithabiw@gmail.com>
 <20190227162834.GC23972@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190227162834.GC23972@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Feb 27, 2019 at 05:28:34PM +0100, Greg KH wrote:
> On Wed, Feb 27, 2019 at 10:01:48AM -0600, Madhumitha Prabakaran wrote:
> > Align function arguments and function return type to improve
> > readability.
> > 
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> > Changes in v3
> > - Included driver name in subject line.
> > 
> > Changes in v2
> > - Improved alignment of function declaration
> > - Modified subject line and commit log
> > ---
> >  drivers/staging/vt6655/card.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6655/card.c b/drivers/staging/vt6655/card.c
> > index 229137f29690..8d0182f5725c 100644
> > --- a/drivers/staging/vt6655/card.c
> > +++ b/drivers/staging/vt6655/card.c
> > @@ -62,7 +62,7 @@ static const unsigned short cwRXBCNTSFOff[MAX_RATE] = {
> >  
> >  static void s_vCalculateOFDMRParameter(unsigned char byRate, u8 bb_type,
> >  				       unsigned char *pbyTxRate,
> > -				       unsigned char *pbyRsvTime)
> > +				       unsigned char *pbyRsvTime);
> 
> The patch does not do what your changelog text says it is doing :(

I want to ensure whether you mean 'git diff' is not same as it is stated in commit log. I think, i didn't reset the commited patch and just edited the subject line. Please correct me, if I'm wrong


