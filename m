X-GM-THRID: 6889706616955863040
X-Received: by 2002:a63:1c0c:: with SMTP id c12mr6557510pgc.21.1604154338668;
        Sat, 31 Oct 2020 07:25:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:da56:: with SMTP id l22ls3276733pgj.9.gmail; Sat, 31 Oct
 2020 07:25:36 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxzV5vf49xyNam9LI2nhFTeSJwBi3HoFWogqRKBPWzjgofGfXgBAbZYqXA966W2/o5S3NhD
X-Received: by 2002:aa7:9607:0:b029:155:2b85:93f5 with SMTP id q7-20020aa796070000b02901552b8593f5mr14094939pfg.36.1604154336734;
        Sat, 31 Oct 2020 07:25:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604154336; cv=none;
        d=google.com; s=arc-20160816;
        b=qTlMWeHbczjCvCJn4KGglHAVVoE+bIMpyTo97y0m7S2nZfJY0a+8jFVADdqjyt7peb
         NlHcgi12TpT9Lqf52Z7NfZyPJTWbgNeNEknakTnAh4Cb4KDMiXeO2qT5yjMnrj+l7CJF
         4ibN2jru9hFnF7o7L6ijBB+M013jWdbYdX8GVLrnstRntD4FT3Qzij1dSfvuY79h6I69
         Oe8H4RsZFESMBC2iRpgfEc34okDr5iJsRc90+0I9toxBZlScdj4INZmg4Wjdf4VQXjNh
         +4Q6vRSKwoLn94ho8XGJEZqKBpVq4X5/eoEG0zDOKJODOZHsDoBI+ZzfE5Cpm4PGTwa7
         lJ+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DF8QxOvwZl6vXD4lfH0iSMhXr4LwHdgIqFOR/genr4g=;
        b=0Ql3vZhVDJdpaw53nANAkPiXgjZDUna+8hW/gRN/3KZ6TfG/ls2mlwHjQp/S9+Tymg
         hYhVGBHJ+mySbqxzcCGKzPcWa2XJHrTt30SRt7eUMvTDCZvfsbeEm+SYq+ezKOlxHXcA
         uZPeGjuGoX6btetEtOHY0DZeqG7361tXkEExu26NJUFX3MgUEcK2H90mQN03qsl1LDBD
         fcLbUtafjrTpzGSgWJenty+kBbWbccyDWjviYDqdjyNpuceU+Qmmven0N3rUV4AbTV3m
         SySUpcYgL9kOBtsh/N6igNUXpcC6FBUpNzLxrQJgBfQRR+dIHJJIyuZLmkby/bfUf5aq
         uHsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZKVzlBKZ;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id t40si194341pfg.2.2020.10.31.07.25.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2020 07:25:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZKVzlBKZ;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id y14so7479298pfp.13
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2020 07:25:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=DF8QxOvwZl6vXD4lfH0iSMhXr4LwHdgIqFOR/genr4g=;
        b=ZKVzlBKZ1MytmU8md4HMFKTA2GDCZZI/bMOTPkahX4MLL40sVTp/rYeeQMc9UFAw33
         eqT1e/OaV62+SsUcrl8qN7N9nYJrZ2Uhix3SYfGKpK0OX6xV+R0JIoZnRD9omGqk9twF
         XUpqWRBQKFsLq3cFGG2etTinG1CMrnjZY3BKAteiYq5J6iG1uNfoUVReOcGGftlS3tK/
         dMakJxhBcQ7vzLk7+Atw9/x/nuaOlPmfKh/x4Xg0ArlFFm8pxYIU0pLPPSygdeBv8oHE
         2ITIOLWK1ycsfpW+FB6YCsc1d337mVCMo626na97etFSnMAOpHbeLMF05sJVLxLAcFzs
         gFEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=DF8QxOvwZl6vXD4lfH0iSMhXr4LwHdgIqFOR/genr4g=;
        b=muiq6t2h5ZZeqNg+MOhdMpHDL9IC70r1Y33fQcatlXcAt4/9ZzvHtvPAJy9hg78MdR
         v2GRT+J7AFdGotdMkEy7lgDjm9VJESspPBKxK8dZZcTlg0IlCrjKA5yItB9++YwHahwv
         ktnrVp8x4QjvFecmOtBGVKRDr2RmIRilYEVDRr18ON9BmOfL4Z90XxrCJhVth62y+jPJ
         bI+ggzO3A83a2Q18r4JRPLLmvdcQQpLjfNN1aXJDo6+yh3bODczyMdxzVD9YtpmqN1Jc
         r4uiUw89HF4crSEts6SbaSPUI9Q3CooSVbVW1FdzZXRwfBRQHhlEK+XBdnZiL6JSs4Rr
         RZBA==
X-Gm-Message-State: AOAM531F56JUJKjycVgwvZ8/+vaHgohZMUDdnl2Ndh2sVBAZxAUrkFJV
	MMJd78o3A3gtrtI9qE2SLOo=
X-Received: by 2002:aa7:9486:0:b029:160:b820:4856 with SMTP id z6-20020aa794860000b0290160b8204856mr14141235pfk.14.1604154336372;
        Sat, 31 Oct 2020 07:25:36 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id 189sm8820642pfw.215.2020.10.31.07.25.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2020 07:25:35 -0700 (PDT)
Date: Sat, 31 Oct 2020 07:25:19 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: vt6655: Remove else
 after return
Message-ID: <20201031142519.GA1965@Zangetsu>
References: <cover.1604133727.git.mdejesusfilho@gmail.com>
 <alpine.DEB.2.22.394.2010311036290.2733@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2010311036290.2733@hadrien>

On Sat, Oct 31, 2020 at 10:37:02AM +0100, Julia Lawall wrote:
> 
> 
> On Sat, 31 Oct 2020, Marcos Antonio de Jesus Filho wrote:
> 
> > This patchset removes multiples useless else statements after return statements. Reported by check patch.
> >
> > Observation
> > -----------
> >
> > After cleaning up the code I noticed that the code from 530 to 548 repeats at 551,569 and that it can be removed and one of the conditional statements can be simplified.
> >
> > Marcos Antonio de Jesus Filho (3):
> >   staging: vt6655: Remove useless else
> >   staging: vt6655: Remove useless else
> >   staging: vt6655: Remove useless else
> 
> The patches need different subject lines.

How would I name patchs like this, that do the same thing but in different parts of the code?

> 
> julia
> 
> >
> >  drivers/staging/vt6655/rxtx.c | 99 ++++++++++++++++++-----------------
> >  1 file changed, 51 insertions(+), 48 deletions(-)
> >
> > --
> > 2.28.0
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1604133727.git.mdejesusfilho%40gmail.com.
> >

