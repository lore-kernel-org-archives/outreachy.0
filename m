X-GM-THRID: 6947860813701971968
X-Received: by 2002:a1c:9ac4:: with SMTP id c187mr2371495wme.158.1617688827674;
        Mon, 05 Apr 2021 23:00:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:d1c8:: with SMTP id b8ls10166163wrd.3.gmail; Mon, 05 Apr
 2021 23:00:26 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwHrq+RMuHMitJQY6Fanh1TUWmn25Vy3LQ5HGZOP9oQKItPrgF5kTpDysmJ5RRK8wwWqG7n
X-Received: by 2002:a5d:6104:: with SMTP id v4mr31980418wrt.275.1617688826321;
        Mon, 05 Apr 2021 23:00:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617688826; cv=none;
        d=google.com; s=arc-20160816;
        b=ivyml6BIerPyLSiTc3QLWPwvrKyzHQIxM+pNbbT9FZNVstqdADyAfMxAe4W6ZlxbDj
         QXolZ8jNwWNRsBelMTBNfYoL68qcP7X0v7t2jgtnCXY+eUv2VE3yT0MKZ4X6iFC6klGc
         sEjngEB5cRrt1lt/vbCa5AfJAyCDMsEo3DPCfOxH5WdBjVzptyRvmTfJhScWa0FAQUMI
         m4nD/S0BM/cZJhE9rvFQ2IwrQDtn1BG1xHAANso5PeiZItbqSbM5u0JoiiWkGjs4D1fE
         1gGVfsdjhEOYnQ2c7/7Wi/gEFTmx/bLjjUp/8ypmv+1pJEsGaSv/zbuJclu7Jnh5Uryl
         j/Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VKDmpZhW0VcJ4ubb5TSZEsN7lSlud46gl3GVnAEI3s0=;
        b=eM5Rrfi0Ias2ojgHVRBEQ/LeKEPR41WorFCBrZ7CVupFAiMrG/eDIpBe9YKduJIsIP
         FJFWNZnIjhX15+BoBJ1myXmR6o2bnj+b0+aP0z+sr+KmSmeZ5m7QHnIG9ctiZXQr7D9M
         iZdpNuhnAy1ZNxU7E0aIUFMNXice3FuPmGmV8eQhqzwrn8LZL30Ezhznrv7BYCDe0RV/
         fV4VvIvX3qBMCsLqOmB3JzMbcOHRjBd0AA/H+hx2AF5lgjF61j8Ckkv/8tZPuhdS0yjo
         sf14wRrNf1rpBiqmkzOFHHjMsYYsui7XlK+3gvGB4lwiBCOslmiQhIqjx6jQInU+BNR7
         e9LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/ocOt9v";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com. [2a00:1450:4864:20::62b])
        by gmr-mx.google.com with ESMTPS id k4si789437wrc.0.2021.04.05.23.00.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 23:00:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) client-ip=2a00:1450:4864:20::62b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="F/ocOt9v";
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::62b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x62b.google.com with SMTP id qo10so9596225ejb.6
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 23:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VKDmpZhW0VcJ4ubb5TSZEsN7lSlud46gl3GVnAEI3s0=;
        b=F/ocOt9vOfFWXQ6/g61LHWLL4fUJeZGnvaLWZ7xnKwSNg3d5xwOXIeggih5AjZSnIw
         jEcHEciqBpZZbSIwmp+YChgGFWco0o1w8NY/39uQl245ZBIfLYVB961Hq2UX1UOvEWqf
         eI08gh91neKf7LE1h9H9/c3hypCmg9VsTZ2dFperUoGvGo8ZQndTSuUVMr0Cj4B08rff
         Rlrt/53jl+pfZgcmV8W7GhRFsvjKZ/C9HiLcKqYtefp75F3crjJBDZYuLr4dfJ/ad8Nl
         PTGDZZ6FFfIXdCglV4U2GtL8D6Q9n82g2zjwSbkhakCsRuo4kCVvpxOp4Q06wWSh3QlN
         9kzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VKDmpZhW0VcJ4ubb5TSZEsN7lSlud46gl3GVnAEI3s0=;
        b=lHtiZt2PO0TfT4N/lYVDMexdS2P+smcVP7pRlVBs1Q7d7k91nOmVxQUsQMBALMpwIj
         4toVEDhm9/Cic9XH3cwDr716/5IBi374H+pto6kWIugERH1viS0XhUdOF4g9oEsLX5C0
         LpQqvvwOMbpHMj2lUzjcL5atZVyBFjme2OmXnR1vPneVFRuVXkxF6IBhSCAlAYr1R1Sn
         /QtaDkVHn/dtfdlqx17kFu4Zi9N+z3ZNtQ1wXhtc8C4ofR9jYNjorqVWfEe9FoHfdli4
         GE33m+yzcL66lApkkrMZWJQpMHCvE7LMj/aC6p9WpuqO+ryX9NQKQ0h3WoQ8ZFrJWU76
         i95g==
X-Gm-Message-State: AOAM5330I1VGg63y3epWTA7a/z1hi8K5anGo5EDGM2OYzmeCYNP+BjrF
	BEnhqLh1mAgGoyWe1E/ZXok=
X-Received: by 2002:a17:907:788e:: with SMTP id ku14mr33135935ejc.17.1617688826032;
        Mon, 05 Apr 2021 23:00:26 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-79-42-91-147.retail.telecomitalia.it. [79.42.91.147])
        by smtp.gmail.com with ESMTPSA id ld19sm10377098ejb.102.2021.04.05.23.00.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 23:00:25 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Correct indentation in Hal8723BReg.h
Date: Tue, 06 Apr 2021 08:00:24 +0200
Message-ID: <1851038.q9TLUjBrch@localhost.localdomain>
In-Reply-To: <2303372.zkNegYAOfQ@localhost.localdomain>
References: <20210406020815.22995-1-fmdefrancesco@gmail.com> <YGvttKG+RNhKAmO/@kroah.com> <2303372.zkNegYAOfQ@localhost.localdomain>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 6, 2021 7:52:52 AM CEST Fabio M. De Francesco wrote:
> On Tuesday, April 6, 2021 7:12:20 AM CEST Greg KH wrote:
> > On Tue, Apr 06, 2021 at 04:08:15AM +0200, Fabio M. De Francesco wrote:
> > > Correct indentation issues of many #define and comments in Hal8723BReg.h
> > > 
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/hal/Hal8723BReg.h | 604 ++++++++++----------
> > >  1 file changed, 302 insertions(+), 302 deletions(-)
> > 
> > You forgot to cc: all of the needed mailing lists.  And your subject
> > line needs some work.  But the biggest issue is that I do not understand
> > what this patch does at all.  What is wrong with the original code here
> > that required you to "correct" it?
> > 
> > confused,
> > 
> > greg k-h
> > 
> I'm sorry that I forgot to cc linux-staging and linux-kernel mailing lists 
> and for the subject I had already sent a v2 patch that had 
> all the required tags (staging: rtl8723: hal:).
> 
> I think that what was wrong with the original code was that 
> the #define values were far from the symbols with random indentation.
> 
> For example, I changed something like:
> #define SYMB1 		0123
> #define SYMB2 5678
> #define SYMB3            9ABC
> 
> to:
> #define SYMB1 	0123
> #define SYMB2 	5678
> #define SYMB3            	9ABC

the preceding defined values are in a single column. I don't understand why KMail show them in different levels of indentation. However, I hope that my argument in support of the patch was still clear.

Thanks,

Fabio
 
> 
> Notwithstanding checkpatch does not comply about that, I suppose that
> my correction improves readibility. Isn't it?
> 
> Unfortunately, English is not my native language. I hope I have been able
> to explain my point of view to you. If you agree, I'd prepare a v3 of the patch
> for the purpose of explaining with higher detail what I've done and why.
> 
> I'm looking forward to reading from you.
> 
> Thanks for your time,
> 
> Fabio
> 
>  
> 
> 
> 
> 





