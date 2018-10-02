X-GM-THRID: 6607744026526351360
X-Received: by 2002:a6b:1883:: with SMTP id 125-v6mr12493070ioy.35.1538511032297;
        Tue, 02 Oct 2018 13:10:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:2c0d:: with SMTP id i13-v6ls800223iti.0.gmail; Tue, 02
 Oct 2018 13:10:30 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61IlE1CofQu4p9egLM8VSmIUyZQbkPc5xYdxIZXgnXqOMFfhA7CUSpPu/1xCJoT4DmHVmA2
X-Received: by 2002:a24:7:: with SMTP id 7-v6mr3051025ita.33.1538511030568;
        Tue, 02 Oct 2018 13:10:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538511030; cv=none;
        d=google.com; s=arc-20160816;
        b=WxILGedlUkT06j62X4WsAQ2KzLBLoGxb8RkGj0pQXL3DjSeBcEBjSE8p4v8U3xFzKM
         P76QfbCatGH1oVb4c3NXNK1ueoZbk6/2ifkm8d/ZXC43ebKt7KkkyUpHmlsIotg1A3IM
         sFmUD7s+vcaLzK98CwRWfCA3kFwNtNyhkImRvN+JCWjphddkBYGyDPfXnSw0Jv6oOKVR
         QcePDl9OJMX/pGQiIVDUF+ARis9Eo86JfdcF3T2XIfmajTxiRne/een5TxBRlsvgNjeh
         nBLB96UReVrrW5lyTHuLguJH5j7/DuyKs0nBhmygR4+Z4Zdu2S+yitMnDRbpUDgbEVX+
         FsXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=rGF0DjMFQ7Pc0gjM8JbpW3remCJmJx8AygdxPB4I9f4=;
        b=gDKxGwtaGCrN5nw06kmEfI5mKWgcQsqXvqdr+YPfQT59q/HnQJIZS3Or72BxrgBVuC
         DaQvOOGx8m8nD+7EK6q5ITFoIkL6nSOviECC1h84iajJzbYARfwj2M+aEE9grSA3sHPd
         mM1h1brDjFtfxMZ8XhkzE03eMqJwx3fwZcVRIx4Ujo1ioHbNAXfG2AWfbW9/Dy/qwPy0
         vlL1tbKSd+seMbRCPBqmQ08uRw03d986Q2cjU5SbYe8wSjNbczwd54w+w67WvYBE1Nzl
         4d9JVWdbis6B7H4YXLgXspJKuGAAFRAjfIDrCIP4lmAl5iVxi4GwvskLtfIgzxBPoM9B
         2Mow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dOtEReQj;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id m189-v6si476237ita.1.2018.10.02.13.10.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Oct 2018 13:10:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dOtEReQj;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id f18-v6so2266463plr.1
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Oct 2018 13:10:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=rGF0DjMFQ7Pc0gjM8JbpW3remCJmJx8AygdxPB4I9f4=;
        b=dOtEReQj+Yxbk/JwxnbSSjPxOwCh6L8NGvIQsJvSB64cqUgggovGGh+Ilz0lhhU7FB
         UKVftVpW7MBipF7QOomCg6N4RshaWVwgPZCG0iF/F7A+vI3mQAnRyt/c94NnN5gbiuXo
         T13H4ZMyBcUnvBjatZ4Xxnxl6HtaLYsWVhRJe9fV2JIz0mmxR6t9Rmff2HSueFEQRxcd
         RhteRgdCjVJkZYLDNC4nf6XYEeFdWHIjv2FTp4FMi7Hh0lv5bcfY/5Su6ZyWM1fjPwb+
         yv9YKMch24Nm7bGIdu4c9VW7fWKS+07cwJQlWHh+X1VwSorgg7tahmR1EyGwWM/Cocc9
         h3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=rGF0DjMFQ7Pc0gjM8JbpW3remCJmJx8AygdxPB4I9f4=;
        b=uk9i1anCRkaeEc3kS10flbXCkTIZjHMlGLc62bUqS45jqjPwY4XOHbd9HGxSNjDdzY
         ieOOq9P95HHYEu6J6x3ZgBw0FfvYeQwsM6eQvGJ/YBJocQgFW1ZGwVtgZQO9FG+PFJT/
         vyzLob57H36hAUJz1rasZpFZIUx4+siQ1mxpfBFVaSkQe0+IS5/f9po1K4wtm5gepoJT
         +kQ2eE54QEICk/ySR/fd9DWh8je7BfLyLi4F1Mq8ud2tMUbanY95Ke78n7PgzAm3OU2C
         J7BsrmmckOPF+2DFyKeIziMU02cMPZBntBAAXDd2RsBSQ+KVPIbLQpCA8U9Ia/Us+xc0
         YTaQ==
X-Gm-Message-State: ABuFfoj0BF50N+qvBIakd2ROcnVp11F0Oc00HLtBC1dNbST7LcLfNwS7
	90LTpv17XAHlI19xmU/qVmjxFQsL
X-Received: by 2002:a17:902:830a:: with SMTP id bd10-v6mr18358979plb.214.1538511029748;
        Tue, 02 Oct 2018 13:10:29 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id s85-v6sm33800464pfi.15.2018.10.02.13.10.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 02 Oct 2018 13:10:29 -0700 (PDT)
Date: Wed, 3 Oct 2018 01:40:23 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: gregkh@linuxfoundation.org, Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace udelay()
 with usleep_range()
Message-ID: <20181002201023.GB26645@himanshu-Vostro-3559>
References: <20181002130124.GA27163@armorer>
 <alpine.DEB.2.20.1810021505480.3460@hadrien>
 <20181002131306.GA32586@kroah.com>
 <CAMNCNOVLEDUvg0RAT_ZP2rBYtR4VSkZRP+i+EdbmwcB+-E4EDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAMNCNOVLEDUvg0RAT_ZP2rBYtR4VSkZRP+i+EdbmwcB+-E4EDQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 02, 2018 at 08:24:55PM +0530, Mamta Shukla wrote:
> On Tue, Oct 2, 2018 at 6:43 PM Greg KH <gregkh@linuxfoundation.org> wrote:
> 
> > On Tue, Oct 02, 2018 at 03:07:14PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Tue, 2 Oct 2018, Mamta Shukla wrote:
> > >
> > > >     udelay(unsigned long usec) replaced with usleep_range(unsigned long
> > > >     min, unsigned long max) to prevent trigger by interrupt in
> > specified
> > > >     duration.Also provides better scheduling,power management for
> > drivers.
> > >
> > > Thanks for the patch.  A few picky comments.  In English, it is more
> > > readable to put some space after punctuation.  It is also not necessary
> > to
> > > indent the log message.
> > >
> > > Also, it would be good to explain how you chose the upper limit.
> >
>   Thank you for feedback Julia.I will keep in mind all these  while writing
> next patch.
>   I replaced udelay() with usleep_range to improve the responsiveness. I
> considered these values
>   to be equivalent for values by udelay(). But as mentioned by Greg , since
> this depends on response
>   time  of hardware and no exact value can be decided.

The selection b/w udelay() Vs usleep_range() always gets fuzzy. And it
is often advised to only play with these if you have the hardware and
can the test/verfiy the change.

Selections also depends on Atomic Vs Non-atomic context ...


-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

