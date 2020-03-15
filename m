X-GM-THRID: 6803716874412490752
X-Received: by 2002:a17:90a:a791:: with SMTP id f17mr2848539pjq.22.1584267691730;
        Sun, 15 Mar 2020 03:21:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ff15:: with SMTP id f21ls7486279plj.0.gmail; Sun, 15
 Mar 2020 03:21:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsmslCWn1sDX/jkQszamfJ0IJUPY1yECGg61K2HA8XHOHkCX/i64wVc9LVfgpbENfpYYtgp
X-Received: by 2002:a17:902:7d94:: with SMTP id a20mr22535449plm.307.1584267689930;
        Sun, 15 Mar 2020 03:21:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584267689; cv=none;
        d=google.com; s=arc-20160816;
        b=ry3yny5886Sg4IuAkWNZHaHuPtPEL2Z67grp24Gzwv43rMlDiAl3lsGKgMzOYGuGf6
         xjynoepUgjIpC0mpNPwsn5tEm07O0cb2fUtUCGb6FXaD/925NVDhQi5jp3lH7lMNdQO2
         VrMMNrWC+bVBvdNhNMk8BbRJMGWz2CivRIatUi5JVyE+fvoK7+IEQBCYYFyIaCRZSiGd
         PhPliivBL9QSgpt+Wtr8Ctku1xBO9Q8Ax2SWac9G9Ybg43p1AM/hvwZDub2Af8Sg2YW3
         4bjtSL2PUENOopR+8/Px9deCT7u3aAUISI/kETCxebX9SRJiBH3y9DcG27cWUOclm3XJ
         xsCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=0jJ/pLUDhFmhvPU6YsGEAOKHQ4IOqHS00Ln80XTBlr4=;
        b=rTDBpYJEh91KKHRidJV8mv2OimOF1srdTAnaP0HZt1+9O87dd9u2bHHOyuHztutQyQ
         RkKGCV+Se+6SIaYOmXlQF+yTFQtTsBJaBFiWr2OEKC8IT5xrvIwNGNA2DOX2WhHBrCDq
         GJO9V/Z7kl8fJqQwWaV6zzO2TC7YjnaULKzNkZLAIpdA9/rscoIAbJYrGuELrib6m5Th
         AY9GSS1QeRDngPoKawJ05tEApRm8UHOpWRaEJGtAow6LVDrKfposoTUmYW8sPLRRckZd
         1lpKcUMjMtqYdkrdGKqlbJsUTHjboEjM8yjdwxKHCTXugALdqyIO3jsBdFRe5v8xctvV
         eShA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o2IjZaod;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id c10si1083715pjo.2.2020.03.15.03.21.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 03:21:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o2IjZaod;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id z5so8120132pfn.5
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 03:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0jJ/pLUDhFmhvPU6YsGEAOKHQ4IOqHS00Ln80XTBlr4=;
        b=o2IjZaodHUT/NwVA09uO3tMig/bgiEkz2rwTxIz1LOWACIFiClgk8Kq2nwQTiUFf3F
         UuvmwC3V3jt9wVPx5cKFSjp7Z4tQypybknfozOZlQNM3R3RhKmPAKRlHtH+dR9lJ2sbD
         GgCQ5KvQ9O0NGXR8z4jYiGYq0o0ERPp6lbFFCPqNCtNMYselcsr2JeOjTc/6ERbonOVA
         wzftgfZX+s94xzko5Kn5fUF97Zj6NbIrc6vOl3j0XtvVZHZsgIiCedmpWyaQzZKOt994
         6ukUJTpUiF+Tre/b/qJSh4l2ZFK1ZsuNV8SJzPy4lSCxgUWps6wn3zgSnpf8oYyIkGZm
         zt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0jJ/pLUDhFmhvPU6YsGEAOKHQ4IOqHS00Ln80XTBlr4=;
        b=plPI3wK2RyNHKYrl8SOZYVFK2R3mjtqCj5QZYArg8KkYQAE+r5vSePOIJ6lgH9gKqF
         SpsuQwXNZbdk5ryyEgSeB0E/P3UEjrG+sC3jUw5Vx6KO++P7eY5ROC8nWJju3cibIykZ
         z+5BOUiSBF8slWwi+uHyIYSgS8396umJPKFyKAoyQYdnkz0fyT+kZ+76UXTmtn5aXL5t
         RAsSqhPAu1DuEGqXoLyZhVlQbJxNYna1S1IHH4TIFuwL5dtjOKMa04YrJmx9DLwdHeCV
         4poG1pwD6iEuUSUMSxedEjEBRMzoWm1U0JXChK41qSCC1w94/TBfR9NzkBuGFecG5ZO+
         6B4A==
X-Gm-Message-State: ANhLgQ17Kb3gC2L1JMJ4OhN8kIFZn8bCaZdtMlvhZv/iBTdYZX0/9lge
	LGoTcOQYy2mzC6smoDxQQ1FeCAyy
X-Received: by 2002:a63:745c:: with SMTP id e28mr21446819pgn.231.1584267689501;
        Sun, 15 Mar 2020 03:21:29 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.232.185])
        by smtp.googlemail.com with ESMTPSA id f127sm64656270pfa.112.2020.03.15.03.21.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 03:21:28 -0700 (PDT)
Message-ID: <f46d12c4e5ae5dbe5ff6d1faffcb14d02799da5f.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: rtl8723bs: remove
 unneeded local variables
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Date: Sun, 15 Mar 2020 15:51:24 +0530
In-Reply-To: <alpine.DEB.2.21.2003150940050.2645@hadrien>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
	  <alpine.DEB.2.21.2003132025350.2355@hadrien>
	 <5dd7e63b4fea205ec7a45456794ec8b12d8faa4f.camel@gmail.com>
	 <alpine.DEB.2.21.2003150940050.2645@hadrien>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit

On Sun, 2020-03-15 at 09:40 +0100, Julia Lawall wrote:
> 
> On Sun, 15 Mar 2020, Payal Kshirsagar wrote:
> 
> > On Fri, 2020-03-13 at 20:26 +0100, Julia Lawall wrote:
> > > 
> > > On Fri, 13 Mar 2020, Payal Kshirsagar wrote:
> > > 
> > > > Remove unneeded variables and their declarations from the files
> > > > of
> > > > staging/rtl8723bs directory.
> > > > 
> > > > Payal Kshirsagar (3):
> > > >   staging: rtl8723bs: hal: hal_com.c: remove unneeded variable
> > > >   staging: rtl8723bs: core: rtw_io.c: remove unneeded variables
> > > >   staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded
> > > > variable
> > > 
> > > The subject lines should be created according to what others have
> > > done for
> > > these files.  In any case, there should not be .c
> > > 
> > 
> > Since I had done same change in all the files in only a single
> > directory, I needed to add their names to make the seperate patches
> > for
> > each file.
> 
> Someone suggested that still there should not be the .c part.

Okay, I will make sure from next time:)

> 
> julia
> 
> > 
> > > julia
> > > 
> > > > 
> > > >  drivers/staging/rtl8723bs/core/rtw_io.c      | 9 ++-------
> > > >  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
> > > >  drivers/staging/rtl8723bs/hal/hal_com.c      | 5 +----
> > > >  3 files changed, 4 insertions(+), 17 deletions(-)
> > > > 
> > > > --
> > > > 2.17.1
> > > > 
> > > > --
> > > > You received this message because you are subscribed to the
> > > > Google
> > > > Groups "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from
> > > > it,
> > > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visit
> > > > 
https://groups.google.com/d/msgid/outreachy-kernel/cover.1584113084.git.payalskshirsagar1234%40gmail.com
> > > > .
> > > > 
> > 
> > 


