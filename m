X-GM-THRID: 6952926381632126976
X-Received: by 2002:a5d:66cd:: with SMTP id k13mr22214556wrw.387.1618938203882;
        Tue, 20 Apr 2021 10:03:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c1c3:: with SMTP id a3ls2018456wmj.0.gmail; Tue, 20 Apr
 2021 10:03:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzs9NKMgcpBeeOuvZrb4kfv1vEUXsTHMOZQkZGMBncgOA8QgTmpvDkWNi1NTQeF2GsFbYQx
X-Received: by 2002:a1c:457:: with SMTP id 84mr5411985wme.38.1618938202529;
        Tue, 20 Apr 2021 10:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618938202; cv=none;
        d=google.com; s=arc-20160816;
        b=eiiCy61HBlWR72tGFT6MLjbh6BZuzjn8eyDh3GGwCuAPEimPV3rboewIPTv+WejfOw
         9yYROuOJJLkl555y39F87ZU5rgNvQqPxzedtYnXicgFyjBT57FeOyaPP+74Fb+MHBchi
         8f2Gbc/HRWACLZcR/E4rY3sYOfsyFKE+CDllzN+2HMEmIn6gEzaimUCr7ef/7Dg67vUx
         7BhI/63GewsjMWNbrLgMd/I/N8qg/WD+GJg/5ODm6ndbzAUWR2vEFzUkVrX5kEPBBt6Q
         FuEkOq2e9JCOQuCPExa9oZPmjmWeWlmkiNb7q9k0aqze7E2PPTWBedBHBPs1SvPdmZiN
         4YVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=jycGi5q2y6ny3hnBoJiKqsMnarmlkkVgryQWDIQTABA=;
        b=gh45onVi7h494UZZrWtPnjsvc5GGcKphpI8DSAaQ3JkjRB2ZVPQu7fERotaQD94Xnl
         /tqC+9vrim8OTH3aMz+bee3HbSyaA0+p47ZWQeHlF4kVcvi4sCM3A66Yw24sgk0Nohj4
         1hOBTaC23CeAOMkV6kB5ML+zd7/1HKM80pqdOwFbUlKzuzzixCFdboSi4PRvQJG+htJK
         FXihr3+h9PRoIvx4k9ORGDNBoXfzZWVlfM/9waqe3Uvum7GbmvpEl84ylV9dP81WOS+I
         /+dSUumMR6i3PjXjuwotKbPMFgSfARgkl9INRj22gYc0y+purJVvYiQ/9ZsGLIGAUkp3
         AYBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E3gTV9Hf;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id a191si616868wme.3.2021.04.20.10.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Apr 2021 10:03:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E3gTV9Hf;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id r9so59355106ejj.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Apr 2021 10:03:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jycGi5q2y6ny3hnBoJiKqsMnarmlkkVgryQWDIQTABA=;
        b=E3gTV9Hfh5dB4gwgivkfbv/q0hiXsSP8Jac1C6oSpxgCWzlcmuPrcivKvwqVkg/WK1
         ieG6YKViMokN/s2lELoX7VJM1z1ADWOTOaTwvL4PbDxyIE6u25W8w7CYflMzSJxSemhH
         f18/XCspN9LVd5uhJak/53jkEc5633zND29FoNzYEloQDtdyx5Kh2NPM8u3lFo4Ad+0e
         MPx9kNR+1cuF3NRoQy/1kPq/d06ga7n9mTcuBJAfWzLw/DUvB93SYkP6M0Xc80updiZD
         pmp1l+tQ0p8WFUtmZILHS92c4k4/WQiHLNUQNOUE/QdGQCGIuwqjATXO8x2eKAix9Vrz
         ppuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jycGi5q2y6ny3hnBoJiKqsMnarmlkkVgryQWDIQTABA=;
        b=o3gn3rsWcA7YU0H+hfRHEPyEIIk2+SdewPfxNcra+4Nnsv/AdxB0XhVXBm/18Ru9EG
         5XhPEJQr+DN85OCjvFVKlj83gZ+LmmP7hQBHxLRIgyTJI1SLn2XTVwuXfc+5tMFCqs4S
         a5lKiCmz2G+x5/jEeY2QBCiuOBfQ9OdsmfO3QOdvZqBLuc5XtYdIohWBriTQ+l9JFmCm
         o9GIl5MdABneJWhceIryrcDkKop77XCNG025ci51R290BhvOlFC+Dtw+Sp0J58LEOAC9
         ImgkMKSSJshPrsf7JxjUHpnmsrq+0us3vsgcAxSQJArJVhohLvCVg9JrUekPjR4COTbD
         4Cng==
X-Gm-Message-State: AOAM533AEsShVLWGLdQODR9Tv4siJSTCBjs9JK2QUdrKLMWPuVXNAMXB
	noPtq2VsQCDhB7LYX6e2kmA=
X-Received: by 2002:a17:906:4004:: with SMTP id v4mr13048497ejj.278.1618938202182;
        Tue, 20 Apr 2021 10:03:22 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id kj24sm13341854ejc.49.2021.04.20.10.03.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 10:03:21 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle: understanding its output
Date: Tue, 20 Apr 2021 19:03:20 +0200
Message-ID: <7603910.ML0yFvfjEs@linux.local>
In-Reply-To: <alpine.DEB.2.22.394.2104201837130.176476@hadrien>
References: <3557115.gcaS8tdjop@linux.local> <1987250.8xKNmIyY3v@linux.local> <alpine.DEB.2.22.394.2104201837130.176476@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Tuesday, April 20, 2021 6:37:35 PM CEST Julia Lawall wrote:
> On Tue, 20 Apr 2021, Fabio M. De Francesco wrote:
> > On Monday, April 19, 2021 8:58:24 PM CEST Julia Lawall wrote:
> > > On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:
> > > > I think that I don't yet understand Coccinelle's output.
> > > > 
> > > > I've just run the following command:
> > > > spatch --sp-file scripts/coccinelle/free/kfree.cocci --dir drivers/
> > 
> > staging/
> > 
> > > > wlan-ng/prism2fw.c
> > > > 
> > > > It outputs something that looks like a patch:
> > > > 
> > > > HANDLING: drivers/staging/wlan-ng/prism2fw.c
> > > > 
> > > >      (ONCE) already tagged but only removed, so safe
> > > > 
> > > > diff =
> > > > --- drivers/staging/wlan-ng/prism2fw.c
> > > > +++ /tmp/cocci-output-17844-0c6c7c-prism2fw.c
> > > > 
> > > > First, what is /tmp/cocci-output-17844-0c6c7c-prism2fwc? It is not a
> > > > file
> > 
> > in
> > 
> > > > / tmp. If it is a file, where is it?
> > > > 
> > > > The output goes on with lines like the following ones:
> > > >   @@ -1008,8 +1005,6 @@ static int writeimage(struct wlandevice
> > > >   
> > > >         rstmsg = kzalloc(sizeof(*rstmsg), GFP_KERNEL);
> > > >         rwrmsg = kzalloc(sizeof(*rwrmsg), GFP_KERNEL);
> > > >         if (!rstmsg || !rwrmsg) {
> > > > 
> > > > -               kfree(rstmsg);
> > > > -               kfree(rwrmsg);
> > > > 
> > > >                 netdev_err(wlandev->netdev,
> > > >                 
> > > >                            "%s: no memory for firmware download,
> > > >                            aborting
> > > > 
> > > > download\n",
> > > > 
> > > >                            __func__);
> > > > 
> > > > Please read the two lines with a trailing '-'... Does Coccinelle mean
> > > > that
> > > > they should be removed? If yes, I'm not able to understand why, 
because
> > > > I
> > > > think they must not be removed. Am I wrong?
> > > 
> > > Sorry.  I think that the *s are a left over from a version of the 
semantic
> > > patch that was trying to do more.  The semantic patches in the Linux
> > > kernel are meant to be used with make coccicheck, which would have 
avoided
> > > this problem.  The key is the lines
> > 
> > "make coccicheck" fails with the following message:
> > 
> > Python error: No module named coccilib.elems
> > coccicheck failed
> > make: *** [Makefile:1937: coccicheck] Error 255
> > 
> > > virtual org
> > > virtual report
> > > 
> > > near the top of the file.  This means that the semantic patch should 
only
> > > be run with either the option -D org (producing emacs org mode) or the
> > > option -D report (producing text).  Both of these modes suppress the -
> > > that you are seeing.
> > 
> > Run of "spatch -D report --sp-file
> > scripts/coccinelle/api/kfree_mismatch.cocci --dir drivers/staging/" fails
> > too:
> > 
> > init_defs_builtins: /usr/bin/../lib/coccinelle/standard.h
> > Python error: No module named coccilib.elems
> > 
> > I think that it depends on some package I have not yet installed, or to 
some
> > environment variable that must be set for the Python interpreter to find 
the
> > coccili.elems module... I really don't know.
> > 
> > Do you have any idea for solving this problem?
> 
> How did you install Coccinelle?
> 
> julia
>
My laptop runs openSuSE Tumbleweed. Therefore I installed Coccinelle with a 
simple "zypper install coccinelle". I see that it is (properly?) installed and 
that also coccigrep has been installed, even though I didn't ask explicitly 
for it.

Perhaps it would be better to reinstall Coccinelle from sources. I read on a 
Vaishali Thakkar series of slides that they are clonable from github.com/
coccinelle/coccinelle. I hope that I also find there some documentation that  
guides me to installing prerequisites and configure the tool for integrating 
with Tumbleweed environment.

Is it a good solution?

Thanks,

Fabio




