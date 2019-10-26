X-GM-THRID: 6751781491192102912
X-Received: by 2002:a81:2a06:: with SMTP id q6mr7236641ywq.397.1572108869126;
        Sat, 26 Oct 2019 09:54:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls1282303ywe.3.gmail; Sat, 26 Oct
 2019 09:54:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaDItlh08EuA4mmXFbo5TBLCNy62S6Pn8aMgNK5lzG0wkzIsyPQmlXR6HbMrDcugyPFBX3
X-Received: by 2002:a81:1189:: with SMTP id 131mr7515558ywr.308.1572108867348;
        Sat, 26 Oct 2019 09:54:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572108867; cv=none;
        d=google.com; s=arc-20160816;
        b=zHQNxBvnhZ615ySR+6LHgy0cG4hGVcM8AiRSu5JxUd10FsXJkm0ej3zVaeJuBwNizj
         OK1qFY7jTvJXKbeaoL8MEFLErzhj8nxbwTM6Hsp0xlyzWD+4VjR2TbrPwRzcoigqhfgS
         pa3zMnLmk4decN4yrvmezpkfOkXRa1vlNEP6HoKYrcMvGG5IAqEreMAWy6WV7kISBge8
         XAncY+Wr3tasjlGD6wNrxdpASR6xUrYF5gpBJsr0/fBVHKogVhPPtwFWgpRcUUT9VVvM
         czanOpSbztHbFp1EWRmj6CFhkhOqMhVL7Xn/eIit+SBbjlpOpkwjHF+QBrzmlfE0CM0H
         YImg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xMswAT1ZwAnEjISFq0GfERZX4RLeqnqkzb9o878uIMg=;
        b=uPONWElBSOQNiKgkbgx23SepER6llBAVy3vg0BxtJwzveAF/dDfO/r5uONqXKiiuOF
         Ellfo7NoF/rGq10It7iuW7r1TCWZL4kUmlO/4XhXhi4iiOxHaS3A2p6EoFQsENGtV4yT
         ffm4kTfrHDCMU/YjAQzqMav//fPsc5mwMWVNMbKwRfu4f1+Wf0j6SlPqdrq/RxSJycyb
         70JLEG8Q3Zrz2ChwnwQjD8Cl34ofGzLOtQAUCNXqjiQB9tp62C1d93Bq/zpjKNXIbWv6
         +fL5TS0W3Hq6yOH0H3mIbLgKtVc8V1gZjUtsiBJqVcL3Ie5Nrh88rXRx10t0WjWBaJyq
         MYMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vsmr8DoE;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::736 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com. [2607:f8b0:4864:20::736])
        by gmr-mx.google.com with ESMTPS id d192si383821ywb.1.2019.10.26.09.54.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 09:54:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::736 as permitted sender) client-ip=2607:f8b0:4864:20::736;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vsmr8DoE;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::736 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x736.google.com with SMTP id m4so4694208qke.9
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 09:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=xMswAT1ZwAnEjISFq0GfERZX4RLeqnqkzb9o878uIMg=;
        b=Vsmr8DoEdeJyRiKYnsB5/LcvBfvalt5GjZgIX/Vr1a1pj+1AULoIx1ktUBxzvZ67FF
         0JV0IqoVgems8IroSGmeSfb+RUYlJ9S7qYnS86m73UjM3xTlWaaDaMRBScIS77VzPx8Z
         DRys7tXwHQd6GrK/jFKoIpjrUzsE/X6cGhU7twqfjwh/8KAgOjurCYkqeSFZq82eMVsI
         08FYSfM3T4JvQ+d1JYATeXi5pnDdW6mTsJgA7/GK/V3/mf6W6TJ3/SlpzaIy7QIZ0P4M
         vnM1RFwI9Pk/HDibpfCbrhXDO7a/NLmZz+OZCEjqKIbboRZL4yG5yo0cr9zSQHaZVw5L
         qO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=xMswAT1ZwAnEjISFq0GfERZX4RLeqnqkzb9o878uIMg=;
        b=i0Nu8Q4eyspec72atHXSspSZ0S8ArzthmRrF4VfGorqFsD8lO9PQsPM+gwDxWAjGKI
         SITYVVAbNWM4DIgAyRXaSmUdyXHfkiITsAz/t70FMOWvH7q9Utt2rONz2KSRgeoKpT6m
         h/p0qGhWeXlgm1xOuNT7YkZH7ZKlVsQccK7nAL86PwViFvh+gHk5HP/r7qweVZaxpwtc
         X8zZhAL8ww7J74xEHALSYlzAZAdyO93aJM04kv9YirzDmbAksvTfbaHw5HuOwQK1Jzdw
         5Qm3hqg8HVCgmY766m7wtndSuNET6EZ+54D3euMLq/j0E7JOIsTQxsvc9P+h+jar/fBc
         SHtg==
X-Gm-Message-State: APjAAAU9QyMTIIYiiSk/2udQiXbpqce2t4TBVob/oYEHIbhlDwRyVwXy
	VbaqdJ1LPyujs6+E6eG1g2So1WRP9ifCvA==
X-Received: by 2002:a37:aa8f:: with SMTP id t137mr8357158qke.128.1572108866823;
        Sat, 26 Oct 2019 09:54:26 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id j5sm2963746qkd.56.2019.10.26.09.54.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 09:54:26 -0700 (PDT)
Date: Sat, 26 Oct 2019 13:54:22 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Using coccinelle in a specific file
Message-ID: <20191026165422.GA3704@cristiane-Inspiron-5420>
References: <357e73d8-a1e8-4924-816d-bc93a1b20054@googlegroups.com>
 <alpine.DEB.2.21.1910251847290.3307@hadrien>
 <20191026152913.GA17539@cristiane-Inspiron-5420>
 <alpine.DEB.2.21.1910261751060.5545@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <alpine.DEB.2.21.1910261751060.5545@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Oct 26, 2019 at 05:51:39PM +0200, Julia Lawall wrote:
> 
> 
> On Sat, 26 Oct 2019, Cristiane Naves wrote:
> 
> > On Fri, Oct 25, 2019 at 06:49:14PM +0200, Julia Lawall wrote:
> > >
> > >
> > > On Fri, 25 Oct 2019, Cristiane Naves wrote:
> > >
> > > > Is there a way to specify a file to use the coccicheck? I'm trying to use�
> > > > make coccicheck M=drivers/staging/rtl8712/ MODE=patch, but I'm getting the
> > > > error: coccicheck failed
> > > > Makefile:1707: recipe for target 'coccicheck' failed
> > > > make: *** [coccicheck] Error 2
> > >
> > > Maybe adding V=1 will give more information.
> > >
> > > julia
> > >
> > I am receiving the following information:
> >
> > Running (4 in parallel): /usr/bin/spatch -D patch --very-quiet
> > --cocci-file scripts/coccinelle/misc/semicolon.cocci --no-includes
> > --include-headers --patch . --dir drivers/staging/rtl8712 -I
> > ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I
> > ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I
> > ./include/uapi -I ./include/generated/uapi --include
> > ./include/linux/kconfig.h --jobs 4 --chunksize 1
> > coccicheck failed
> > Makefile:1707: recipe for target 'coccicheck' failed
> > make: *** [coccicheck] Error 2
> >
> > And I also used sudo apt-get build-dep coccinelle but it's not
> > working yet.
> >
> >
> > In the github page in install.txt are asked to run the command
> > ./autogen and ./configure, in which directory do I need to execute these
> > commands? In the git/kernels/staging directory I'm getting bash:
> > ./configure: No such file or directory
> 
> In the directory where you downloaded Coccinelle.
> 
> julia
>

It worked! I reinstalled coccinelle using the github source code.
Thank you for your help.
> > > >
> > > > --
> > > > You received this message because you are subscribed to the Google Groups
> > > > "outreachy-kernel" group.
> > > > To unsubscribe from this group and stop receiving emails from it, send an
> > > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/357e73d8-a1e8-4924-816d-
> > > > bc93a1b20054%40googlegroups.com.
> > > >
> > > >
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1910251847290.3307%40hadrien.
> >
> >


