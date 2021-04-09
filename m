X-GM-THRID: 6949155933016555520
X-Received: by 2002:ab0:648c:: with SMTP id p12mr12156410uam.32.1617989791105;
        Fri, 09 Apr 2021 10:36:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:d182:: with SMTP id w2ls402200vsi.6.gmail; Fri, 09 Apr
 2021 10:36:29 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzM0DZO/fEsKSc64hTNxixVZroSlmgUb4ahzFrYo53PnKKrg++T6JJMQJPRdNxDCWxk68eD
X-Received: by 2002:a67:d88b:: with SMTP id f11mr6258703vsj.22.1617989789784;
        Fri, 09 Apr 2021 10:36:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617989789; cv=none;
        d=google.com; s=arc-20160816;
        b=hpRLPzEP3J6fC/G4pwDEb3d0M5ZtQUCAEByW9GlTwHOMqrcZUISyf9HYP5pg8pQcKQ
         jg3jNbnjj3/r+EfzTfYQtYKs0kbAgYaFq/A8MvLs9fE9gGiqolI8cOXogFPznl6/DU7m
         hVWCKsYPqADxzXmP0599tp1dIAwaPD6kKmUYdQKojNiMwLXBPl/jKRW5yYUNaK3wrHaO
         7vil/euKZ0UwfJBUvgvTmSygCnVQXhaGMNrpryW4x6hdLIWM4JNROWal3AYWuHsqDbwq
         7Z9AMO+ROX2pMzC3X2vgkjozFN0APqPrZOB5H8lWjvcCxDCLS7IWG6fZNMk4Pm8701HT
         OqKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=iaFkKzWMamTzdA9WJNo3nuUtl8TLuaeVqvjAOEZQMfY=;
        b=f9MukDrg9LyoMvNDC8IL1jNjL7FRP2kix6hl/jCOTxXoSbvUgrxKiaeqciH4BDRVEr
         +eO30d4v9VjDdsSXMoCXPCBhHerBN1h+FxBCryw14gOVhWl1nPot5zVi21SRIx37ifCT
         LA8ocjKZhR8mXJDEtUC9vjaqz+ZSAhBP7TNGKmlyOWSEkoydOTTvtEK3WHgostb9pfTN
         S6qdeRs46s7ODzaaBmaUzJQ9a0aHC45M0Ztp3OCu0G5K/M0tg6lTfhx65X58g4nvsz57
         KPr4ZVcBhD5Rw851Y/6US1dheblyPsdc7mUTf9UzperMSkESKWNABB+OaM5ywb1xerI2
         Fdmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=idsyB02c;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com. [2607:f8b0:4864:20::f2a])
        by gmr-mx.google.com with ESMTPS id u13si211859vkl.5.2021.04.09.10.36.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Apr 2021 10:36:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2a as permitted sender) client-ip=2607:f8b0:4864:20::f2a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=idsyB02c;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::f2a as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qv1-xf2a.google.com with SMTP id bs7so2561367qvb.12
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Apr 2021 10:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=iaFkKzWMamTzdA9WJNo3nuUtl8TLuaeVqvjAOEZQMfY=;
        b=idsyB02cFc5uHVLFZz/dNjbR3BcMiU/iIUqaPb7PstrPwbVW+QI77u9DF8T0syEnpf
         2V/sl/8UYJHTTXMRYvr39I7Z57DefYfLSeVcOUI6qAXT8gEfuiyVAIGvLZ5MGX+oJCvo
         a5NVRRM1OJWfDltXbCzN53Es2d7mvlSMKfYWaIx9A/Os0VqxcChfMBpZ4y2pgsXfOduF
         hEEwLEfh2hElGoXmsAFBdyteM5/rMuTXs8FMzS8ZphTHu9mhKNQWKZjwGM/RlPuHY28t
         FpSXE/e1PSULso1Z1TxZzfxdpZhcmpaEsh0DgN/gZNLrBqEY/Mi4GGHiMxUyTfoiZHVo
         5jGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=iaFkKzWMamTzdA9WJNo3nuUtl8TLuaeVqvjAOEZQMfY=;
        b=DB6M4wClF2oSd4LXiPz7tWWNqIyxXYWMwYss9NurHpewNCeVRV8AENXhvamHszqyB8
         zuVQhywsIswntB02iNO41nj6rn144EYNqCstTRJ/dxvYW6t/mv8F8i80BAY+MLrzmA2Y
         Q2x9/EcXUSRpOwk5DCOKCg4x34NPZP7RqOuqdwF4cjUgNwXDdW5I+qmpPWaIrVLbCbHV
         1iBn5vGfiOX3H89+H6EPqyo+X+bsAOogASBCzM11JyJiyHggBZgs9wsCIzIktFLSeHfK
         xzSih6oR4EGe5fWZrCBi2qlmhFqqUkuuxxICSZbKiEvYwI2S8XSuadXIwsdEMQEaYbue
         ysdw==
X-Gm-Message-State: AOAM533dzmUMKXSHNhTD4IuVsrzhuLz661a34kWwsei7DQlpX1P3i6vL
	8ozv2etDjk3yBRbUJrmj898=
X-Received: by 2002:a05:6214:1081:: with SMTP id o1mr14885607qvr.11.1617989789596;
        Fri, 09 Apr 2021 10:36:29 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from [192.168.100.7] ([177.220.174.147])
        by smtp.gmail.com with ESMTPSA id n15sm2092540qkk.109.2021.04.09.10.36.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Apr 2021 10:36:29 -0700 (PDT)
Message-ID: <34466470c14123542af3b8e0ced80425ea3afec8.camel@gmail.com>
Subject: Re: [Outreachy kernel][PATCH] staging: media: hantro: Rewrite macro
 function in lower case
From: ascordeiro <alinesantanacordeiro@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>, Philipp Zabel
	 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
	Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Date: Fri, 09 Apr 2021 14:36:25 -0300
In-Reply-To: <88e48e7bb5679b913e3f223d29b566ce8c18e9c3.camel@collabora.com>
References: <20210409135404.GA26172@focaruja>
	 <9c09806cce4c7e5c5f0dc03e8c502cf29716f00f.camel@collabora.com>
	 <138794d79c42510d9b6ae744df20216904773032.camel@gmail.com>
	 <88e48e7bb5679b913e3f223d29b566ce8c18e9c3.camel@collabora.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0 (by Flathub.org) 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Em sex, 2021-04-09 às 14:15 -0300, Ezequiel Garcia escreveu:
> On Fri, 2021-04-09 at 14:00 -0300, ascordeiro wrote:
> > Em sex, 2021-04-09 às 13:44 -0300, Ezequiel Garcia escreveu:
> > > Hi Aline,
> > 
> > Hi Ezequiel,
> > > 
> > > On Fri, 2021-04-09 at 10:54 -0300, Aline Santana Cordeiro wrote:
> > > > Rewrite macros resembling functions #define HANTRO_PP_REG_WRITE
> > > > and #define HANTRO_PP_RED_WRITE_S in lower case, according with
> > > > code style.
> > > > 
> > > 
> > > Where is this written in the Coding Style?
> > 
> > I found this in section 12, about Macros, Enums and RTL in both
> > references:
> > https://www.kernel.org/doc/html/latest/process/coding-style.html
> > https://elixir.bootlin.com/linux/latest/source/Documentation/process/coding-style.rst
> 
> It seems this
> 
> """
> CAPITALIZED macro names are appreciated but macros resembling
> functions may be named in lower case.
> """
> 
> It's just a suggestion, not a big deal. In general, if checkpatch.pl
> is not complaining, it's not worth the trouble.
> 
> So let's skip this fix.
Okay! I'm going to check different problems with the checkpatch.pl
> 
> Thanks a lot!
> Ezequiel
> 
Thank you!
Aline


