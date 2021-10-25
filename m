X-GM-THRID: 7022901752311578624
X-Received: by 2002:a17:906:70c5:: with SMTP id g5mr21845994ejk.63.1635156156980;
        Mon, 25 Oct 2021 03:02:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:907:3f1c:: with SMTP id hq28ls7425269ejc.8.gmail; Mon,
 25 Oct 2021 03:02:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzQ4CVCQQDboKrCMqKuzXTg1nw0NHjy0QnxEq65C8tSkcblq6t2qXRJwud4eMcia2b66MWn
X-Received: by 2002:a17:906:fb11:: with SMTP id lz17mr16755812ejb.385.1635156151582;
        Mon, 25 Oct 2021 03:02:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635156151; cv=none;
        d=google.com; s=arc-20160816;
        b=UblwZ86wslQnZWq3xYQbuE8pPQnkWIQfzTV4L7dbuflwXuEJhmsk7mmyqjEHOVRZxW
         JjOSb2Buw+2lu2YDu0gTiKwyJTY7A7Qf7EOYjftHHb1bTYH+J4URKvFn/i6bYWR0bp5p
         prXTE4BC2VFWiLYOONqjRvD8Bk/iZvR4j7njAzyFh73LtFQCqVaIOWZl6tPpHQmWYd73
         L93uAHVF+kDLie5Kh6F6S/ZvuzyHlkRA+qV3BdSgRjObHPn3dK3rbRS1WceHj2/JMiCK
         7xFpDoltdRRkkKwTkpF95oIH1wJUU1T80+qjuZoy0P1+0m23zyKldsCG9m3VtL9IMl8E
         DLSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=66S15h2BChIH5efEJ1O2/Dq6oRoO6DFpUA1AaJu7EyI=;
        b=l6z8OYHO7UoPt+PExBFUdaq1QF2rZQTU43/Yf8YaesSPYph/ckDOPzDJsJQJbhuo0L
         ADfOsOots7WoAVfXGGYP1EHHwp7kGF79tVbiT0NUgRMu2GhGaEjBxKHpg7OnSIpIKp9p
         m0+RkpDE0ep4H31DBw2zHlGqtq/xjw7qWAHEPZcGwwGf6qvYYmBICcR4UbKE7JIfb/SH
         qZSCRB3h8bo2ESj4wfEDzh/oWn5vTq1IF6AL5nBfxP2L5NASSXvZSN86xFSF59HiF689
         dbQ0deG3LWsbs4Yyv2+M9KZv4s53zScAnDWr9eGTWjAPsZPSqQQFYnIKgqqchkbQOe68
         BmdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=WdJsrfX4;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com. [2a00:1450:4864:20::529])
        by gmr-mx.google.com with ESMTPS id q4si961091edj.3.2021.10.25.03.02.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Oct 2021 03:02:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) client-ip=2a00:1450:4864:20::529;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=WdJsrfX4;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::529 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x529.google.com with SMTP id g10so16178862edj.1
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Oct 2021 03:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=66S15h2BChIH5efEJ1O2/Dq6oRoO6DFpUA1AaJu7EyI=;
        b=WdJsrfX4qv58ER5mDlLoQaTWORtGDBHWuB/0toUEw6L9yw5hBg7FfUqMBhhSRjj1ow
         cTIAAAiDSj7j7/XqTi/lj3me01aF4cbDE3Szpwh1yQxgJC8KEeyv5yY23xzrQYOtjLRt
         vEf248rYO2u9wMXuw8pJedS3usmaqq1MufyuCE/HDDXQskB9x2ScRnkLhZCWCow8gV/b
         hvYvIR1GTaULgYddVAj9yXIXqbtc4hmm+zeM9zY/rCESs1PpyTpOVlyt4hJHB2GSBjJS
         1W9qYaX4LsLLc6ir4Nsp2mmnfI43v/VhbydTbtxJMWinXjZq86pTlyW2MSfqMPD1RgA7
         NJsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=66S15h2BChIH5efEJ1O2/Dq6oRoO6DFpUA1AaJu7EyI=;
        b=C/n6kcYZ8XtPQl+phvJqFgvgIS8qWg0xReHpbxxJkY7czqdR6shrdFUnUrW9sJ1FU5
         sHyboycLE83bJO+qSA7N+ahk5QZBGbm+2/RrtlPwU4pRNBYe29IjeS6nIVmYCB8iSvdv
         SncsUQ6G9meo5aIojNetWGnZ1cuPhmpAIZk3KK3pH2kpD/83lN1UY8YwWWOCZWpKKpvx
         +KFOCP3mFYzt1fGxIpst3GLJ9NRZZV5bwIErKbwb42pkZwGgSZNBr6rdMnOVoPI5Gr2Y
         AM2uHHYWbr88/QcyMmNLynnExMznl/QzmTqUPW7pT6dqWXHXeAoXqCx+i+mMrf5MmgLA
         p+jQ==
X-Gm-Message-State: AOAM531wSpg3maiAgt111aTua096ZEiLPCwt/8fzV070hOMbgCPzOcUc
	CkrvH4WC441WKD+KqIhhRzU=
X-Received: by 2002:aa7:cc96:: with SMTP id p22mr25067132edt.91.1635156150870;
        Mon, 25 Oct 2021 03:02:30 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-80-181-148-119.retail.telecomitalia.it. [80.181.148.119])
        by smtp.gmail.com with ESMTPSA id hc18sm5147357ejc.4.2021.10.25.03.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Oct 2021 03:02:30 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>, kushal kothari <kushalkothari285@gmail.com>
Cc: fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, hdegoede@redhat.com, marcocesati@gmail.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com, Mike Rapoport <mike.rapoport@gmail.com>, kushalkothari2850@gmail.com
Subject: Re: [PATCH] staging: rtl8723bs: core: Refactor nested if-else
Date: Mon, 25 Oct 2021 12:02:27 +0200
Message-ID: <2475218.nDWPeaHJO9@localhost.localdomain>
In-Reply-To: <CALtHPQsQe06MhSvgs25TVbsjEvfU=ELbK3eFfKunRHXM1+HDxA@mail.gmail.com>
References: <20211025072528.152028-1-kushalkothari285@gmail.com> <YXZdvdj6EQsrfhqt@kroah.com> <CALtHPQsQe06MhSvgs25TVbsjEvfU=ELbK3eFfKunRHXM1+HDxA@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="ISO-8859-1"

On Monday, October 25, 2021 9:56:00 AM CEST kushal kothari wrote:
> >Very long line, please break it up at 72 columns.
> 
> >And your space around the '.' is odd :(
> 
> Yes,fixing it.
>
^^^^^^^^^^^^^^^^^^^^

You are still using spaces the wrong way :) 

English, as well as all natural languages that use Latin characters, use 
punctuation and a strict style that dictates how to use the spaces around it. 
Please read correctly written English texts, learn and use conventions

Thanks,

Fabio 
> 
> >> checkpatch warning : Too many leading tabs - consider code refactoring
> 
> >What does this mean?
> Asking about the warning ,correct?
> The current code is using very deep indentations (which can be avoided) and
> due to this there are many leading tabs. So the checkpatch.pl warns of  
"Too
> many leading tabs - consider code refactoring"
> <http://checkpatch.pl>
> 
> On Mon, Oct 25, 2021 at 1:03 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Mon, Oct 25, 2021 at 12:55:28PM +0530, Kushal Kothari wrote:
> > > Refactor nested if else by combining nested if into a single if
> > condition and removing unnecessary else conditionals which leads to
> > removing unnecessary tabs .There is no change in logic of new code.
> >
> > Very long line, please break it up at 72 columns.
> >
> > And your space around the '.' is odd :(
> >
> > > checkpatch warning : Too many leading tabs - consider code refactoring
> >
> > What does this mean?
> >
> > >
> > > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 ++++++++-----------
> > >  1 file changed, 26 insertions(+), 39 deletions(-)
> > >
> >
> > thanks,
> >
> > greg k-h
> >
> 





