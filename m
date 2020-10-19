X-GM-THRID: 6883926801253400576
X-Received: by 2002:ab0:240a:: with SMTP id f10mr6494487uan.27.1603088754469;
        Sun, 18 Oct 2020 23:25:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4357:: with SMTP id q84ls439561vka.0.gmail; Sun, 18 Oct
 2020 23:25:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwJlOuvt941i6YNzf9piavEbMqP4tnaoRqI6RS8Qc4Q72QptJ/OL4Cca+butk8HCnlj4hDf
X-Received: by 2002:a1f:a905:: with SMTP id s5mr8141419vke.10.1603088753086;
        Sun, 18 Oct 2020 23:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603088753; cv=none;
        d=google.com; s=arc-20160816;
        b=EpCmHGbHiwytE4ZMRj/FVb2QWC/exyaddff2brTuDc96Wkg7ljDT/kNHDfH7bOpU7q
         zDlq5Ms3R1o9JFrQL/jkrIHJ6QYARwc9FjXpzYiOK40VlbqtSTUt4qqPvaWYfgsO00On
         3Lnr3mTxRH0TCtrS19s9g9nxQ1EttH73UJJ9KGw1i4kvmBGrr2l+LujvLydq/K6lxgrA
         8D8eDpj2jNchtrroCVpqBfgi/oeL6bB1+VORji1F2inGIWTqm8Gn7M8A3UR8G2AEwJtj
         pHVR/MAVu2O0qJySsU7rb6ZzihtwzI3+OxVZTzrevY5AS5phHqlVYzV6iYv8ss567gXG
         A9wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ix+hH43++U84V5f80fIfL1gG2hmbTqywDmwurTMDwWA=;
        b=wIcuNd8HVy8Md3OHSi/osdD49gItn7kumzAzwhPZENKHuQn2xMK/3jOXhajcWVSUTG
         bXifdtI/cMHpD+Xt7R74bbJkgo0HmtgGCih+2Ujo4r7DE3yy72YJRF9uBKDtbIehYSQ0
         4QgSgHn7BUwel+9opZQPrU4SktBtpKvpgHlOFORVHyRIeBJ5ofemccu6NvQdCOs+gtu6
         VC0iAYdhU4CzS5kon8BvivILPKFv1BzSUSHIRhRuiPxDycHqUWJf0vr4zwQVRFtJp2jZ
         AJbmbwUfxk/p0VxkKWPH3dErin11w+XBeyfgTQ1zzXk1RRIOUctDBDRk+045jsRW9Ph1
         X8HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzFUWCUi;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id w123si599076vke.3.2020.10.18.23.25.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 23:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BzFUWCUi;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id b19so4481741pld.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2020 23:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ix+hH43++U84V5f80fIfL1gG2hmbTqywDmwurTMDwWA=;
        b=BzFUWCUi09rmc5WsLnVjMyJ8T8XT0nOBKZ4xWxx1FzT78OrpvwTTMMgMflomgRfbE+
         2cDfcgaKeyQKtTWId9W2LUCF7V+zL3RfSTawoHzTN+O0DpJNIJ7DFuASnT/EgZvK5Nuv
         wjeKkKIiuh4/7NfT2g5UydeNuuxsZOZ1Qr7o3jO37RvbSaOnha0UkSBC1RCjGkN9YvzJ
         bSfTQ9jndPx45y4PBQnhUDYMW54YfhF2zU1W825F4xKCzhzcc+q4IeJAXaSnoYc1nKZ7
         ZspIwkSx302elYzO8JMVYLtU1zhXOGzPzOphMr7BuTJdmpjui9fNu1sDjhCukuvjtPAk
         WMqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ix+hH43++U84V5f80fIfL1gG2hmbTqywDmwurTMDwWA=;
        b=JejzLgMISiOYbAxtachZNp5pLskE04Fjp/tKUtt3xEP82+2Ak1oldG6i56IiG2sRSW
         KIi0nmrvoofNgJ/x2aake84+vjSh9JcP4ffEg7gzzrx8C5H2ybZXd8wiubZssv2vza3f
         +Jm1Qdo1nNniBXptgJvK06qWzaddIAcdYLitbmf3GoK2MpAvdpIAqXzt/xeA/FzeqTOE
         TXMcqyU+UhwrirrEcvggUEbsIUCBHKTmAC2HyqjQX/k0cc2hI0DtSDXiu4ZJfDPmwXxU
         xjwan9lA16EVcVSHEA2QQLYBdBb3/qQROJqxT3NUSVo4/6EDsFsC6czymWn/ERMfuc85
         T/3A==
X-Gm-Message-State: AOAM530nerMVgTUjd4iTHk91maZ9kE1GMe2pC9fMCCyRJqHcN2bPNbyB
	M2TP9Oj4HnXr469vh1IN15g=
X-Received: by 2002:a17:90a:64ce:: with SMTP id i14mr15840450pjm.97.1603088752259;
        Sun, 18 Oct 2020 23:25:52 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id b8sm10803208pfr.159.2020.10.18.23.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 23:25:51 -0700 (PDT)
Date: Mon, 19 Oct 2020 11:55:47 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Matthew Wilcox <willy@infradead.org>,
	Sumera Priyadarsini <sylphrenadin@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][PATCH 0/3] staging: Replace
 snprintf() with scnprintf()
Message-ID: <20201019062547.GA6451@ubuntu204>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
 <20201015192157.GC20115@casper.infradead.org>
 <20201018053243.GA98400@ubuntu204>
 <20201018053857.GA591645@kroah.com>
 <20201019060240.GA6306@ubuntu204>
 <20201019060925.GB691366@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201019060925.GB691366@kroah.com>

On Mon, Oct 19, 2020 at 08:09:25AM +0200, Greg KH wrote:
> On Mon, Oct 19, 2020 at 11:32:40AM +0530, Deepak R Varma wrote:
> > On Sun, Oct 18, 2020 at 07:38:57AM +0200, Greg KH wrote:
> > > On Sun, Oct 18, 2020 at 11:02:43AM +0530, Deepak R Varma wrote:
> > > > On Thu, Oct 15, 2020 at 08:21:57PM +0100, Matthew Wilcox wrote:
> > > > > On Fri, Oct 16, 2020 at 12:41:42AM +0530, Sumera Priyadarsini wrote:
> > > > > > The show() methods in device attributes should return the number of
> > > > > > bytes printed into the buffer which is the return value of scnprintf(). 
> > > > > > snprintf() returns the potential number of bytes that could be written
> > > > > > which may be greater than the actual length to be written.
> > > > > 
> > > > > There's a big patchset just gone into 5.10 yesterday which adds a new
> > > > > sysfs_emit() for show methods.  You probably want to use that instead
> > > > > of scnprintf().
> > > > > 
> > > > Hello Matthew,
> > > > I am able to build my staging branch into 5.9.0-rc8 release. Can you
> > > > please suggest how can I get 5.10?
> > > 
> > > Pull from Linus's tree right now, or pull from linux-next.
> > 
> > Thank you Greg. I assume you are fine with patches sent from that tree
> > base.
> 
> For the time up to 5.10-rc1, no, you need to work off of my
> staging-testing branch as there is no way for me to merge new stuff into
> linux-next until 5.10-rc1 comes out, sorry.
> 
> The middle of the merge window is a rough time to try to get new work
> done, maintainers are not allowed to really take it.  I'm trying to be
> nice and stage stuff for the outreachy developers, so please, work off
> of staging-testing for now.

Thank you Greg. I understand.
In that case, the three patches I sent yesterday were from the linux-next tree. 
Will you reject those or hold back?

Deepak.

> 
> thanks,
> 
> greg k-h

