X-GM-THRID: 7020422968837668864
X-Received: by 2002:a2e:9018:: with SMTP id h24mr7011478ljg.477.1634649191543;
        Tue, 19 Oct 2021 06:13:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3081:: with SMTP id z1ls2352128lfd.2.gmail; Tue, 19
 Oct 2021 06:13:10 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwvRd62HDr8NsTmdpxo77bBhwOh2JRQQTwK2W5hk2QWpLsDGvxV4Y2/D9/3SoZ4dR9JEZyc
X-Received: by 2002:a05:6512:36ce:: with SMTP id e14mr5847888lfs.328.1634649190020;
        Tue, 19 Oct 2021 06:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634649190; cv=none;
        d=google.com; s=arc-20160816;
        b=MKRTaJvhxjC+7FGUdxm/ZDqdIyVreFcrDSoDJ8DLmBe94Iruv85P68m1S/qTayaJS7
         zW+nOReefO3z0ZBG6Gz6i1Ym3hseGkVjZiY2g6hyGncoHjAQI9dlrHsVcRzeQM+xpxuF
         R1/czE5DN42zPjdyhde51Pl0SR22gqINWIfObDteGmpLgb21Of3JxjAhctZPtISI2RIW
         D07Ka+CuVuIAJ8Q9Y+HlP0tHTvgFBeremGS1wRhBtyXs4HY0Ig3+8HsaUnG98BHOJBV3
         E993ZTUboWprd8ScPL9ADPEmFnrpHRHRlDaMjDkLwJR0HT7kjhSZxq5K3hQ6Zom1O7EZ
         0EeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=C51Lh41WoBpmX5ebPui+TVxwhH8ZqyDbgZK9znUvKYU=;
        b=QSt55EKYVTsUHPJNnpmiebxNSnshhb6tSfB8OQ3RFVqIQoXWrQltPF41OxGKSlee37
         Ed2JHl95n7d0Z3OBOdhLDmlOpYZKl5aR34BQ/YEO2HHKEajtfKVIOE4MCho0PfQSzwXw
         +rkPCwuaSQJZ2A66SHfRHCGdff03CSbSWWxw7WAFuW32j1ShpY1njU0BoEwf8XPh1y1G
         Uu9/RcOW0GiVm4je9fMDgNjfrzODXPpxTd8OsxA0x7g3Bzn6iYvLPSi9rfKvxTSjiu7N
         5nkndaPhLwOD7oGZFxBvhk0kLhQjljnBzER4lNpz4EdtwroQ4S6ex9AqLgt8vseJYERD
         U3Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=iJ2VeR0t;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com. [2a00:1450:4864:20::535])
        by gmr-mx.google.com with ESMTPS id 8si685057lft.11.2021.10.19.06.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Oct 2021 06:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) client-ip=2a00:1450:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=iJ2VeR0t;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::535 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x535.google.com with SMTP id w14so12675237edv.11
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Oct 2021 06:13:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=C51Lh41WoBpmX5ebPui+TVxwhH8ZqyDbgZK9znUvKYU=;
        b=iJ2VeR0tYteIn3RLl/KzJUoYJI5TVGEyyJN0AdZFGDFPieNfAkC+3VzS+gc0J8An35
         ikAy8SFTrevYcV9NPLhr0qe4lio7Q+PxJlPjbliVJ/ZX0B5NL4RQc1djqNlfwkr/Q/Ba
         NgkiQA0dakNdVNuQsxvbjFOPppXtWTkoVVX4wn6ZL0UTHvmWkUQ6/gBlPk6ngTyw9LSs
         ocnaKxjN5J27MBGKRbHHGEVDfqrWP5e2UorJkJ55xx0JAaB0cOY3R3hI/ehsgBk/5EGp
         M8NXl5TxMESLLVJik9t+7nzd4lFT1vLZI2Cno3fx7IIRXuv1bWC1RnnrD+CK7hQUH9IA
         /vLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=C51Lh41WoBpmX5ebPui+TVxwhH8ZqyDbgZK9znUvKYU=;
        b=Tvb2tpAHaMRqtzz2ub1l/85MUJYPBVnnCM+Uq6LTkWLnZviD0AuxKaOj0tf9QavG4k
         mSIjM/9zbWMwFSkda8gpwstg3R8YaaKf0uQonfNy3Bpetrb57RCcuF41YOVfSry+qpe8
         fcKL4RnPqf6NsaQ7FHkjBEjIh4drt122eCHWIlBPCD300NYKqcOlHxfGJfRQ4mh3S04l
         dkhzgItHBip2SyWFyfsYajyLqMA90Fl3+IqmUJJOGAfLxdodjG/HOLNLzhriWys25Gi3
         HrHrgvIW/tkKyEjxO9UVGLiXqA6T6Fvi7JGgZNAHfkcHJav+Z5oWu6amzfDzt69Gsckb
         rj0g==
X-Gm-Message-State: AOAM531FxXGgr1kknvYQ/UnejNSUxay1mr/h99uqstwKrjIxofXvth5h
	DNKr00+QatW9jNoZwRrtnOA=
X-Received: by 2002:a17:907:2d12:: with SMTP id gs18mr33605414ejc.353.1634649169144;
        Tue, 19 Oct 2021 06:12:49 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-47-104-180.retail.telecomitalia.it. [79.47.104.180])
        by smtp.gmail.com with ESMTPSA id h11sm10131010eji.96.2021.10.19.06.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Oct 2021 06:12:48 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Karolina Drobnik <karolinadrobnik@gmail.com>, Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: vt6655: Fix line wrapping in rf.c file
Date: Tue, 19 Oct 2021 15:12:47 +0200
Message-ID: <2001042.7W5oOxFLzk@localhost.localdomain>
In-Reply-To: <4c6a85a4934ef977eee07fb7e38b07b8061bfce4.camel@perches.com>
References: <20211018150526.9718-1-karolinadrobnik@gmail.com> <810a4e29b0c54520a30cae4d37fde0a59ea3d83b.camel@gmail.com> <4c6a85a4934ef977eee07fb7e38b07b8061bfce4.camel@perches.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="UTF-8"

On Tuesday, October 19, 2021 2:26:05 PM CEST Joe Perches wrote:
> On Tue, 2021-10-19 at 11:59 +0100, Karolina Drobnik wrote:
> > Hi,
> > 
> > Thank you very much for your comments.
> > 
> > On Mon, 2021-10-18 at 17:12 +0200, Greg KH wrote:
> > > Also, these are all just fine as-is for now.  A better way to make
> > > these lines smaller is to use better variable and function names 
> > > that are shorter and make sense :)
> > 
> > I have v2 ready but I'm not sure, given the Joe's patch, if my solution
> > is a satisfactory one. I didn't jump on such refactoring as I'm still
> > learning about the codebase/process and didn't want to muddle the
> > waters (...more than I do already).
> > 
> > Greg, what would you prefer? Should I back up with my patch, pick
> > something else and let Joe's patch be merged?
> 
> What I suggested is not a patch it's just an example.

Sorry, Joe. I sent a message trying to explain what you were showing to 
Karolina with your previous email. Soon after sending my reply, I noticed 
that you had already elaborated a bit more.

I hope that you don't mind. If I wrote something that contradicts your 
thoughts and intentions please accept my apologies.

Regards,

Fabio




