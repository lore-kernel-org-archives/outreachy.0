X-GM-THRID: 6608442873786400768
X-Received: by 2002:a25:7651:: with SMTP id r78-v6mr3354800ybc.57.1538663187335;
        Thu, 04 Oct 2018 07:26:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:3d4:: with SMTP id 203-v6ls1228012ybd.11.gmail; Thu, 04
 Oct 2018 07:26:26 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60nHOIbMf4Bpma9u0h1/JbzookWvfWs1zcH548r+34tyfr2sDuaF0L0WU87EsA0gTMIc3+l
X-Received: by 2002:a25:7283:: with SMTP id n125-v6mr3351828ybc.102.1538663186373;
        Thu, 04 Oct 2018 07:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538663186; cv=none;
        d=google.com; s=arc-20160816;
        b=bt9MYJQv+CAKZnnc2YFZ3C8aarq9nXn4HuwDTafe2ZCgKH8W3WFM3fCjVQHB613/O+
         XRpsYMm4yw1uMfse/2vI9djRDAtkYyv4dif3DEzXXPMjXX2SRe5Fhwq4miWNn8p+K2uD
         49l4YQY5waUjF1Zv7jw4LqKzN0XtdoygWD9hYo/tE+av14BBRKZXns00fR0FCadV6I2b
         eOTCj33ZqHMydQzDDgapNEGvjIxxEzjOPJQQFA1QCYeWsOPM2D0diW9omq7JFmg78WVk
         lIAKah/pUVXleV8S7IdsCfA6hEoFNBfZZfZOrE8utXQkjK6GN+YfBgZgxxveIlGrHEo/
         lKfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zLStTTtctt95LBfAp4SNBRJTp4xla9IXxIYGsKEm/Ag=;
        b=CRiWcEz9Ve67bBT5Q3euiP8jcRhpvy40UDrFIqZAsWwOSePLYooxUnZFTSn5Ax44O2
         Ydr7rxYViNGg65yhYix9RsPO13KpfDzjfUQOcAh9nv/yhAy08SvolBA+W+GkHC/pQKYf
         AinImzAKTpdbSyYyXlgJmV762A3HVtv6NghQ5OL4+dOcM7H+NvVeS90nVLXgr0ne13SD
         cnt5uo9tCBCWHZME5vFztGe5/qOBUo+RCsg5zDJtysVMaOQ0trKkeLH2leNwYB26Cxr+
         xdxS8eyBVANOB+KyHSSAzfdI4e+72dvc04c78OgCRQpF/FQmB57iggcmcf0bFuUSjdgt
         EQrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CCVBT1ro;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id 206-v6si187390ybe.0.2018.10.04.07.26.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 04 Oct 2018 07:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CCVBT1ro;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id v133-v6so3252591pgb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 04 Oct 2018 07:26:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=zLStTTtctt95LBfAp4SNBRJTp4xla9IXxIYGsKEm/Ag=;
        b=CCVBT1rowXsCYxxgaHQuJJBM03qqoZUubNwJgBoH4+4QVrzKc9Z+mogIjGyqaJK1qR
         GQqyJftrPpIcGkvlSY9w2/BwNGQG/pPqzQal32EN0dO6HezbftITGqm6y3FlXt7E8Uzl
         AAfv9WI/Q1jz581I9KQeLVEEZg6pqWjHamkSaSf+E3C7E5RB06m4n0kGb6UmGqNfC5Mg
         YgNg+8LV/WKuob4yxSpRCNi/lPA3pw8QOlSCPZ/ICBdvjYI4WE7oT01eiZSG2sytk3iW
         hmum/pLI9YkD2s2q13o8Bz2rA/gepH+Zy6YZSK05/h1J0cTq5V2dIQjupvkrDOOPY763
         9K3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=zLStTTtctt95LBfAp4SNBRJTp4xla9IXxIYGsKEm/Ag=;
        b=pQhy5ZsJ5qCCGOThfgrgIdfUFMXdHh9bPiz0Ei5FtXGZhaI8b9KHLiLRO4EATmNFQO
         sW2YIZyOtFGQgpPvfIx81TuqbbDTcRU1fJ8WNGkyFdo3pRglNFScIBAVUzP0g3/2jYSS
         KeDZJ3a/QAp9HP0zevgWG3tAIA4U8MRq738PLfu2A6VQhwAGQ+PAJrirSblhln7skmRN
         VVxDDvrxVXeELQ0UhdOlrGendzWy1l7KMM859GKmgSrHbXwzPZL7GCAUaQsk1yDENr3o
         LE1/WcJn4P/WLXA7sqUufPFw6K1w5qNAdzJ8f71ZnXpOFktTbGXINI/lFSNVaDO5sIkO
         oGsA==
X-Gm-Message-State: ABuFfogeJg9kl/APXFkF9F9ZQOo1+hxmn7gfCB6gPQFpjcPx9OK+V00V
	m++EZbwWSKKETyKeQ3zm2XE=
X-Received: by 2002:a63:6946:: with SMTP id e67-v6mr5948169pgc.119.1538663185860;
        Thu, 04 Oct 2018 07:26:25 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id k23-v6sm6099626pgl.42.2018.10.04.07.26.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 04 Oct 2018 07:26:25 -0700 (PDT)
Date: Thu, 4 Oct 2018 19:56:18 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: axis-fifo: Remove
 parentheses in axis-fifo.c
Message-ID: <20181004142618.GA5687@himanshu-Vostro-3559>
References: <20181004101321.GA11491@kvasir.local>
 <20181004115612.GA24641@himanshu-Vostro-3559>
 <20181004123556.GA11888@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181004123556.GA11888@kvasir.local>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Oct 04, 2018 at 01:35:56PM +0100, Ioannis Valasakis wrote:
> On Thu, Oct 04, 2018 at 05:26:12PM +0530, Himanshu Jha wrote:
> > On Thu, Oct 04, 2018 at 11:13:21AM +0100, Ioannis Valasakis wrote:
> > > staging: axis-fifo: remove parentheses in axis-fifo.c
> > 
> > This line is not required. Subject already states it.
> > 
> > > Remove parentheses from the end of line and conform to
> > > the coding style guidelines. Reported by checkpatch.
> > > 
> > > Add an extra space to the function arguments to fix
> > > indentation.
> > > 
> > > Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
> > > ---
> > 
> > New version with changelog should be written here, just
> > right below the `---`
> > 
> > v2: fixed ... ..
> > 
> > Also, subject should be:
> > 
> > [PATCH v2] staging: axis-fifo: Remove parentheses in axis-fifo.c
> 
> Thank you Himanshu, I wasn't sure how I need to note that this is 
> a different patch.
> 
> > 
> > I see patches being sent through Mutt and you can easily send
> > using `git send-email` instead.
> > 
> 
> Actually it was easier for me to configure mutt with my own mail 
> domain than git send-email. If you reckon that's a best practice though 
> I may consider it.

Well, sending patches via mutt is an old way of doing things, and
I rarely see anyone using it.

> > Often times configuring Mutt to the right config is difficult
> > for newbies.
> > 
> 
> Would you have any recommendation on setting up the 
> mutt as to be helpful for my patches?

"... helpful for patches" ?
No.

It is just an email client, don't waste your time on configuring it.

On the other hand, maintainers use numerous config to test/apply and
automate patches *within* mutt. But that is not your current goal!


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

