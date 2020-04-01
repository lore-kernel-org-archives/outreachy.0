X-GM-THRID: 6809167002234519552
X-Received: by 2002:a05:6e02:6cd:: with SMTP id p13mr617658ils.150.1585737197927;
        Wed, 01 Apr 2020 03:33:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6e02:4d1:: with SMTP id f17ls7455272ils.0.gmail; Wed, 01
 Apr 2020 03:33:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vusI97moEz+Gv8LUjTBVBl8Hg/lPrDmBk71f94AaAYc0DHDFdkXqXLxQ7nCuUV1f/cdvE99
X-Received: by 2002:a92:8548:: with SMTP id f69mr20803763ilh.20.1585737196549;
        Wed, 01 Apr 2020 03:33:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585737196; cv=none;
        d=google.com; s=arc-20160816;
        b=Xsiqxt6XjBTqPj+PxrUSK42/DOSzigKywadw1Pfe9gX54e/rXhr2Pi8zaiJAhLBzMM
         kdy0gGWOvEP95nt5l4aImzWz3txpGsy/He1R9P/ytuPVRyYF/NUo2upIBN6F6nQHtAPI
         FTkYO03bEqDoPnmPEZ0lX6atxHJZnXck+1vZEBJMUTmaO5TDCRLzsha80+uyFIrz8HcS
         FvdznzXsS9jH3xHua41gzNcS73YIkCKrRM/2zSSzmMWteY4r2syivnKmlot0BTddGy36
         rFJJPOXDm/Sr1VgUzjJtqfx+xojqn18hnUtyYoOC8k82Yg3QwyP4kXUTU7WWIPj/ubaB
         5B9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=u2n+nzqbF9NoRJjQ8X5Ak/8X01FxuVTlkkOoHFgJN1E=;
        b=CqI5woAXcejMe2G5ATbF3wNGYzS48oTuDQcXALtXEuYJtvHq76f3yr9sjGMmqgWm1V
         TRTL9BHnzduCGZfWj2rMyBbNNXzAD5p6w0aK5xaqqnOnGXO4ZdrHtHCv6DzILS4iKyOv
         hnyxK8FYyeyymmvA6kwG6CJ4RBAVH+hMV9B4LIFV3l2GpB2aCz5LHZoUy3/45JweSQav
         Tw5IgHp48B6p423NWreEVjsVVVDQPOsQwmco0VR9Fk2UrPqKf9vZoOq1WIq7/bOn0dGu
         N3NQeIY4NBkKYAzy/PVBKedJ3yt9mMmdNXCRSg94PwWaF9dIBuT0Sg6j3/B1PEfi+knp
         ibmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VxLRuswd;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id m8si88746ili.2.2020.04.01.03.33.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 03:33:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VxLRuswd;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id w3so9447663plz.5
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 03:33:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=u2n+nzqbF9NoRJjQ8X5Ak/8X01FxuVTlkkOoHFgJN1E=;
        b=VxLRuswdd2BTnRRqshmqYs8plQeOkWI+bPRFx2lBXLsJmo7uJuZ28+ImQurbKHAvRG
         rDGRkN19lLNWeqlsQq4mwZlLSDlv8gjOmpTTAaBnkFuBcWxviY6Xw3SUh8E1Cbxlna4X
         chGROtHvwKJoYiGhfcs/nJ/70uDVk0mc9I4322VYesTkdYw7Fvj8HSiA0izcAM5HvKWO
         rbMtK36UwyVNBB09lLs2FFl8CoktVkb95PYg1Kd4KUNckz/a7hPPpaPq9kumTQYConti
         YTjpgZv2UJoeA40sJXXRkXksFlEvytPQywkBmv33+eM/MTUd2gztBr4vCq4UFCy/vgbE
         sltQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=u2n+nzqbF9NoRJjQ8X5Ak/8X01FxuVTlkkOoHFgJN1E=;
        b=tFbPsXs2aM89Iy7Kg+fg9r521rnJ40xI84vPB+LfLSYIA4jakWV25xgECcLeaVqBwr
         u/Ud1CupF8Ot9fcbyzGef9jiPJjlOETQhv/ubf2iLwMZH0Yvzyb80LKs/DNDeFay8xjo
         bOfEivX5/FDKBhVwrevAmuVzmsSbxkEru76S69pWpLxqyYnsqHQcpe6Y7uugId7uyx9N
         nx1481cNuBXRtE8sAw+4aXRGiKH9hrrAl7VJWSYiU0OOqsqatFS/veOpfHk7n4v+PBz+
         boQHeiZN+svKM/OvupMAbDEoNbwAWzRxIKnm8OO7fRdY/uyhH0qkfUzSZvWDS8Am9I2o
         gNJw==
X-Gm-Message-State: AGi0PuanLHZnCsf/CF+hbkqp2C4VrYbg71H5wl8mCzlMbcWN4mfkoxQd
	Gcm71QHnplHmlL0qYf31IFA=
X-Received: by 2002:a17:902:bd06:: with SMTP id p6mr5319997pls.228.1585737195755;
        Wed, 01 Apr 2020 03:33:15 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from ubuntu ([157.42.224.231])
        by smtp.gmail.com with ESMTPSA id bo12sm1318126pjb.16.2020.04.01.03.33.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 01 Apr 2020 03:33:15 -0700 (PDT)
Date: Wed, 1 Apr 2020 16:03:07 +0530
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy] [PATCH 0/3] staging: qlge: Resolve various warnings
 issued by checkpatch.pl
Message-ID: <20200401103305.GA21297@ubuntu>
References: <20200328080254.6692-1-debsoumyajit100@gmail.com>
 <20200401085810.GA19697@ubuntu>
 <20200401093339.GC2055942@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200401093339.GC2055942@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Wed, Apr 01, 2020 at 11:33:39AM +0200, Greg KH wrote:
> On Wed, Apr 01, 2020 at 02:28:12PM +0530, Soumyajit Deb wrote:
> > On Sat, Mar 28, 2020 at 01:32:51PM +0530, Soumyajit Deb wrote:
> > > This patchset resolve coding style and indentation issues reported by
> > > checkpatch.pl
> > > This patchset add space around various binary operators, remove extra
> > > unnecessary blank lines and properly indent a multiline comment for the
> > > same file qlge_main.c present under drivers/staging/qlge directory.
> > > 
> > > Soumyajit Deb (3):
> > >   staging: qlge: Add space around operators
> > >   staging: qlge: Remove extra blank lines
> > >   staging: qlge: Properly indent a multiline comment
> > > 
> > >  drivers/staging/qlge/qlge_main.c | 30 +++++++++++-------------------
> > >  1 file changed, 11 insertions(+), 19 deletions(-)
> > > 
> > > -- 
> > > 2.17.1
> > 
> > I have submitted this patcset on 28 March but I haven't recieved any
> > review on this.
> > Is there anything wrong with this patchset?
> > 
> > Please let me know, so I can correct them and resend the patches if
> > needed.
> 
> 2 days response time is _very_ fast for patches.  Please note that this
> is the middle of the merge window upstream, so my response time will be
> longer...
> 
> thanks,
> 
> greg k-h

Okay, no problem.

Thank you.

--
Soumyajit

