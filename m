X-GM-THRID: 7020448359173324800
X-Received: by 2002:a5d:64cd:: with SMTP id f13mr38840973wri.92.1634577519378;
        Mon, 18 Oct 2021 10:18:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:600c:4ed1:: with SMTP id g17ls29076wmq.1.canary-gmail;
 Mon, 18 Oct 2021 10:18:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzTHS3HhJLbdL8T+9Ir9CUvGzOyWuaUdESQ3U4xLqgv7ORejDgYrKcW00T/ViTjYMHR+urv
X-Received: by 2002:a1c:7d56:: with SMTP id y83mr195284wmc.86.1634577517974;
        Mon, 18 Oct 2021 10:18:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634577517; cv=none;
        d=google.com; s=arc-20160816;
        b=w1iUbYSPOmkAg/BuN70S/EJ/bWuDqoAEWcDoodFIqNAmbx72jhv5t5k7D9QP8E3CIT
         qetQ47OTUPwdfQIITc3RMj1IQr2GLy2dQ6/4od/c0YJsVi9nOQOmr+1UmIlY/PhngmBc
         KnjNKiN5x3rjTOG0PnLqKF0SNcVDVYeojBsX1tadKymY5Pkv7cHcggRQyAv7IEpMYQTF
         qYNtRFfxVqgpj94Llf3BuDdDuC6gyxCdxzivorEI8cMqr470Czp/BAMKLAiK0WbN3Mu2
         BOn+XTddZQxVFaV4HVBgI/cuPURgP44lPhWHPEokXIhDylk8lYfSeNohdlnI4X1WkOne
         mtbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=UzZREcgg1MkRFUwLSWGUnqIO8FKrP7/gzEgDf/fRTlU=;
        b=yCPVq1PC68flmIV0G1uBgqNKHnTPOT6346VNorZMLC35UzXrYEe9Vn0puxrBfvSSDl
         F/F1G8NAyAtWKHcOZNS5yjm2Sxut7Q2alQNwknx5fHRGliqLneUbYBkohrUDg/X4F+eb
         6ZTA4jzCMd+hN4tPm6R3juP/JKdHZPSnsRwagyikaBnAr1C4O4tl7fapeRRqNo1F8neA
         2VtI3GXiRHdVwIchH+ixdJxN6/Vy1GBWrvDUhAR0om6zCXHMMLX19gGbh1BKeX2jPOjJ
         PtLbIkDO8f9k66gnVfw6oMvBA79HJPqq6BxG4pnx23eBgtyj9WWksfq5Rq9GGqT14uZ/
         7l+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=NtXaeRYj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com. [2a00:1450:4864:20::52c])
        by gmr-mx.google.com with ESMTPS id r3si380668wrc.2.2021.10.18.10.18.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Oct 2021 10:18:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) client-ip=2a00:1450:4864:20::52c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=NtXaeRYj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52c as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52c.google.com with SMTP id w14so2046039edv.11
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Oct 2021 10:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=UzZREcgg1MkRFUwLSWGUnqIO8FKrP7/gzEgDf/fRTlU=;
        b=NtXaeRYjhAwDlBegPepmBLb/5cRWueJSSqt0FW2PTdfYa31T03SceFssmzlET0hU28
         hyzIYtFrXP0GC3MdWuO6VCrV2vEH3GHFE+lAjt3gCrXn3dCwUUnxA+H4GYzcd28QDQ6T
         xAOOthi3XbkeYbCTgB74nymwlXrlDXLO2slnhB+3z85QpTB9cOfRbfqcG6Pn9oQQxC01
         M/spGv7NxNzOEUGophn9UoQQsgX2gbtJrShUGpRiI5ESccd8K5ZhfUFnSecLIRhpV4ya
         VatxKHuwnRSXSaPjeliPC7Zoy494GVrPasVIqxZDVN/eiJWY36H3P5axrVB2y917M/6r
         PpBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UzZREcgg1MkRFUwLSWGUnqIO8FKrP7/gzEgDf/fRTlU=;
        b=pyKlwkuD/N6wAdJhurSE3al8dg0UjFnJbMCYUMk0lCfYYGNKe6R8NE3b8axqWT0eju
         +APg2tk2mnQlXEt6sNWxQwE7S8ffW8gx28vUUIGaF0yMcpk20IkwRqRt7v6QM92GyM+T
         ahsJStdKadCty5s1KM69+HUoh2yiRYel/c2DjGc34ubkE0KCyxffDbbI4GOv2VRpZUPo
         qM+UmgAgDjScO6P8moDWZPr0tMeU4sM5D5ZWDnWcHAT+4aGl2R+NJ1COF/MABF+bS+Pi
         4WqIZAxZTSbpzxcQVSBTmfiLzDJAo5o6J5RwMnshQ9ugkvdf8pznz7K8dykO9lqyTrWw
         5csQ==
X-Gm-Message-State: AOAM530/b3NG/drGa0K4yePsJ7YugF/3jJcylayRJ69LTJmUTiqDdJwc
	LWH9yVtsjSFGvRCsvNHEHaM=
X-Received: by 2002:a05:6402:50c7:: with SMTP id h7mr46643809edb.191.1634577517734;
        Mon, 18 Oct 2021 10:18:37 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id g7sm9748441edu.48.2021.10.18.10.18.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Oct 2021 10:18:37 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com, kushalkothari2850@gmail.com, Kushal Kothari <kushalkothari285@gmail.com>, Kushal Kothari <kushalkothari285@gmail.com>, Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in array const
Date: Mon, 18 Oct 2021 19:18:35 +0200
Message-ID: <9033544.t7rfKEcqWj@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2110181900410.3174@hadrien>
References: <20211018164431.26462-1-kushalkothari285@gmail.com> <163460335.XzdQGyDEVH@localhost.localdomain> <alpine.DEB.2.22.394.2110181900410.3174@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Monday, October 18, 2021 7:01:42 PM CEST Julia Lawall wrote:
> 
> On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:
> 
> > On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > > Change the parameters of functions from const char *g_fbmode[] to
> > > const char * const g_fbmode[]. This additional const is needed to
> > > allow us to fix  checkpatch warning, as well as being good
> > > programming practice.
> > >
> > > For the checkpatch warnings, if we have a set of command line
> > > args that we want to check defined as:
> > > 	static const char * g_fbmode[] = {NULL, NULL};
> > >
> > > checkpatch will complain:
> > > 	WARNING: static const char * array should probably be static 
const
> > char * const
> > >
> > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > ---
> > >
> > > [...]
> > >
> > > -static const char *g_fbmode[] = {NULL, NULL};
> > > +static const char * const g_fbmode[] = {NULL, NULL};
> >
> > You have introduced a logical change (g_fbmode[] entries cannot be 
assigned
> > any more) and a build error (because there is code somewhere that assigns
> > values to those slots).
> 
> I wonder if this warning makes much sense when the array elements are
> NULL.  I don't know if checkpatch could easily detect that.
> 
> julia

Unfortunately I cannot change checkpatch.pl because I am not able to program 
with Perl.

However, it should be an easy fix in whatever programming language: 
checkpatch should warn if and only if the array elements are assigned with 
non 'NULL' values, because it's pretty clear that somewhere else there must 
be some lines that assign values to them.

Fabio
 
> 
> >
> > Please, build the code after you've changed it.
> >
> > Thanks,
> >
> > Fabio
> >
> > >  static const char *g_def_fbmode = "1024x768-32@60";
> > >  static char *g_settings;
> > >  static int g_dualview;
> > > --
> > > 2.25.1
> > >




