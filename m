X-GM-THRID: 7020448359173324800
X-Received: by 2002:a17:907:d8c:: with SMTP id go12mr32750492ejc.472.1634583403269;
        Mon, 18 Oct 2021 11:56:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:cc15:: with SMTP id q21ls17846152edt.0.gmail; Mon, 18
 Oct 2021 11:56:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzd7xMBcGEZIP+RyiXDs0FIX/dWYTeFu2Vo4XrcqX15Szigqw0gtpCH9OGCBc1I5nSirYdZ
X-Received: by 2002:aa7:d387:: with SMTP id x7mr44039045edq.299.1634583401838;
        Mon, 18 Oct 2021 11:56:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634583401; cv=none;
        d=google.com; s=arc-20160816;
        b=zssWshbZEkCF22uK+lpk36V+kpYsPz2AlkUIj+p0X8hpY22VcZPkvXoKHkP+cJ+9lA
         A9oaR2jwTUJQLSIadYEw3HcsFDmmv8jRicJDpgDwo1eqAt19U9NLOnjJUVomrGcyL1wl
         2YGV5uBMNDIlcAGNo1vAtrnxPe3DEQRDQD1YOgvsHvQe1xhrV1fr/37TYoftSdJbXr0Y
         O1zCvaazN4DOOdpA5dBYGMdPrYEux8V6XL1IbO9Je24kBreH09QtJcuOSzmgwHsBLTZN
         QYYDgOfIemWdLSQ/LW0uePTK0bDbAi6WlPkx1GRAoGNFtrt0VGgNNW+2iXgIkjxGjUPF
         06sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=1HWmMtMGml9/9av3f970qLgH49YdMKKpeJo/VP4w2zc=;
        b=eq5wtKMrRpYTUSI/7GVWrfk9A2Ztqx/1IE4nBGDPpEtw5SSeShr560+Uw2ZtJXP8bM
         MPLvHLjTIAdighRzRFukLrR8i6stL7EzWF9KWqnq8z6YSDHTc+58DPMwANTMFj+UJIzU
         TBREqyPIDMKka3CdcWjMDEnkp/sY9dAe+KCJrXbUpS9Doe5KlU2HHBspIQdUyoC4UAtC
         5cvZkU/lS/Xv3cHjBJCBg0Rnn1SD5FNig0ur9OmfK1JbK5ioaYXZ/+/o8+cyPb/jYA8b
         8Ti+0EtCPty0ZZjdj+Y8sGM5UDx178yz1W/dKJ5SrIQpeXeUIfGJGbgSX3DXzEO/7KOB
         DhSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kjpP9Ev6;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com. [2a00:1450:4864:20::534])
        by gmr-mx.google.com with ESMTPS id o25si954040eju.1.2021.10.18.11.56.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 11:56:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) client-ip=2a00:1450:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=kjpP9Ev6;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::534 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x534.google.com with SMTP id w19so2872682edd.2
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 11:56:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1HWmMtMGml9/9av3f970qLgH49YdMKKpeJo/VP4w2zc=;
        b=kjpP9Ev6IJ8WpAPE/xFA9j9VB5IeDOUCFdD4rd13NkejDsIu9hVUE2m0daeZ7zAdam
         n4+UTXfCauwSZAfi//5a3CDeX9d7+C40iCPMoxX1YiNPUebOXlOrAWvL7aG3CdbbGbu0
         mipBjGc9VYSv/tD2UCXuqjGq7gY0Fvij5mrQ5Y+LdiubCRNsQ7h/Yy3CWm6t/Ro2e9LS
         UEDV9fPnMEsIIuwLpNexFf1P9n4m325ZHwk5m10dlKAWPdIY1+uYzlk+4nCKxegDR4Zw
         OrsOZSK9iEJZihiKwDS45PmxF/L9oBD49UCiExZbN5Lb8GM7RBmtA9uf2cn6Bxal4C+W
         qKDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1HWmMtMGml9/9av3f970qLgH49YdMKKpeJo/VP4w2zc=;
        b=s3JZ0w5ZR3zZI/IXrZBDef+1IsBVB8CzPpjUJuQkmp8s//tJzPQ8r34LbEW8cVpUO3
         aurBahsxTxsxkCgWIuVrVLY/UQGrJlg+ZDk3FYI1DpmzNC3Hlpewld4CCWLCA0z1xDe3
         cm4FrHSlGn4u6S+FOzJjpLAJk0GXtbV8LelFX22BmeX0KCbpzAJ3v2IIQBFm/O7tfBCx
         V+8BYw7+8FePPsV0bsz3YRbdeze2nF3EVGbfUp3kEbSsEHENQIrzNsR+Gd7W15yU/QKn
         o5ix+kkYXzRk9kwie6IfRguUE1ij+GeW3CCJZQY9yoxAIuBmLBeIsWrXEsXBU9G9zV85
         jxKw==
X-Gm-Message-State: AOAM533i1YMuhs03g/EGr0d9ztTOMW8j5MPibelWobtTmLe7Lb/9zKhV
	AE9DM0DixErl7Meky9rJn0A=
X-Received: by 2002:a17:907:75e4:: with SMTP id jz4mr31258542ejc.106.1634583401560;
        Mon, 18 Oct 2021 11:56:41 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id lg3sm9149179ejb.78.2021.10.18.11.56.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 11:56:41 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Joe Perches <joe@perches.com>, sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com, kushalkothari2850@gmail.com, Kushal Kothari <kushalkothari285@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in array const
Date: Mon, 18 Oct 2021 20:56:39 +0200
Message-ID: <2572829.IUyEbnOEm5@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2110182042500.3174@hadrien>
References: <20211018164431.26462-1-kushalkothari285@gmail.com> <6124760.3TRdS1uSHU@localhost.localdomain> <alpine.DEB.2.22.394.2110182042500.3174@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Monday, October 18, 2021 8:43:44 PM CEST Julia Lawall wrote:
> 
> On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> 
> > On Monday, October 18, 2021 8:22:23 PM CEST Joe Perches wrote:
> > > On Mon, 2021-10-18 at 19:18 +0200, Fabio M. De Francesco wrote:
> > > > On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> > > > >
> > > > > On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> > > > >
> > > > > > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > > > > > Change the parameters of functions from const char *g_fbmode[] 
to
> > > > > > > const char * const g_fbmode[]. This additional const is needed 
to
> > > > > > > allow us to fix  checkpatch warning, as well as being good
> > > > > > > programming practice.
> > > > > > >
> > > > > > > For the checkpatch warnings, if we have a set of command line
> > > > > > > args that we want to check defined as:
> > > > > > > 	static const char * g_fbmode[] = {NULL, NULL};
> > > > > > >
> > > > > > > checkpatch will complain:
> > > > > > > 	WARNING: static const char * array should probably be static
> > > > const
> > > > > > char * const
> > > > > > >
> > > > > > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > > > > > ---
> > > > > > >
> > > > > > > [...]
> > > > > > >
> > > > > > > -static const char *g_fbmode[] = {NULL, NULL};
> > > > > > > +static const char * const g_fbmode[] = {NULL, NULL};
> > > > > >
> > > > > > You have introduced a logical change (g_fbmode[] entries cannot 
be
> > > > assigned
> > > > > > any more) and a build error (because there is code somewhere that
> > assigns
> > > > > > values to those slots).
> > > > >
> > > > > I wonder if this warning makes much sense when the array elements 
are
> > > > > NULL.  I don't know if checkpatch could easily detect that.
> > >
> > > No, it couldn't really.  It's a line by line parser and most frequently
> > > these are on separate lines.
> >
> > Sorry but I don't get it. For sure I'm missing something...
> >
> > I guess that checkpatch.pl warned Kushal because it detected that the 
array
> > of pointers was assigned with something and so it output that "static 
const
> > char * array should probably be static const".
> >
> > What I cannot understand is why it _can_ detect that the array is 
assigned
> > with some values but it _cannot_ check that those values are 'NULL' and 
so
> > avoid to warn.
> 
> In this case it could, but this case is too specific to be worth making a
> special case for.  The problem is that checkpatch only looks at one line
> at a time, so some values could be on another line.

Yes, I understand that checkpatch's developers want to keep it simple and 
check one line at a time. After all, as Joe wrote, this is just a tool and 
final decisions should be made by the users of the tool.

I'm not trying to justify errors like the one that Kushal made by saying that 
checkpatch is the culprit. I've seen hundreds of warning output by static 
analyzers that are mere false positives. 

I guess that entering a loop and checking line by line until it gets to the 
closing braces (or to a value != NULL) is not something that is worth doing.

Thanks,

Fabio

> 
> julia
> 
> >
> > Thanks,
> >
> > Fabio
> >
> > >
> > > > However, it should be an easy fix in whatever programming language:
> > > > checkpatch should warn if and only if the array elements are assigned
> > with
> > > > non 'NULL' values, because it's pretty clear that somewhere else 
there
> > must
> > > > be some lines that assign values to them.
> > >
> > > Don't take checkpatch warning too seriously and do compile
> > > and test any change you make _before_ you submit a patch.
> > >
> > >
> > >
> >
> >
> >
> >
> >
> 





