X-GM-THRID: 6802879895263248384
X-Received: by 2002:adf:a4d2:: with SMTP id h18mr6439853wrb.90.1583958692309;
        Wed, 11 Mar 2020 13:31:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:208f:: with SMTP id g137ls997449wmg.1.gmail; Wed, 11 Mar
 2020 13:31:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuLzrQh9iOYGHn6hx4vHsfIINMOKmnl9b/+ouYnJZ9xcIQ7K3Z1WRHwrpNhU1rQ5j5CwaNe
X-Received: by 2002:a1c:8090:: with SMTP id b138mr510836wmd.55.1583958690912;
        Wed, 11 Mar 2020 13:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583958690; cv=none;
        d=google.com; s=arc-20160816;
        b=uCSxK3YUufxcILQusRwjgadETIJt+rkTye6VWfisfyvC+i/u+lZzcvnDG7wCjHGqwW
         OmpreKAWczoKeZASRRPn5kqT6IM0tiO88nFU4OSpeHwamcgbGTiFEeWHXH3B640u7Zjj
         m+gliGKZxaSZblssvglISZ1rcoX40ZTqltX5fwMUlplzY/dH4iqWBBQzEpmbFDSjd9Ny
         Gskh8DF1H4j4OE8a1IxkhpuzKunWVt/g+uTqKcw6zaWoKDRKnstzsn+200uxiw8tgovN
         tVVrwTR5x6QXtx6u1DTkURTtNzanPdMQRtKYg2GLiFAJGzRsIPyrIPLHcC901oOhcKAM
         gpxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2ufVF1pkewXQ31IdGQhdivQjqleYuZlBG6hVqtB5YsI=;
        b=ZVqBToPmBFodNOPy92kdXLr9k5Ptcg4yEi1XVY5AK9CEt5yIDTyZklyVAmIwzhMqod
         hpeLWM768Zvf+FZZmicZMXaIHRVLWJuNvzD/p4QhVkhIJxOpm+eAwrup/7Ve3aGPuoxU
         iqEqUidHrj9r4v4Kz0nUecFPsbQccbbPfEwvW+CFTVJFn/2RwhNRyB4X0Eazh0BvoAwW
         wzvZ0/fEoVX2jhz6LlA1FftORoOJDf2kluT44+SEloHupsO+VV4mfGblhuOpXD2NvZFF
         nz5uzvrJPGUV/mXfFqivmRZrarqln4Kx6LstEnNmosr43s+fXdWiQc7k0E1d45NTTJ/U
         gKDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id l17si199228wmg.0.2020.03.11.13.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 13:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,542,1574118000"; 
   d="scan'208";a="439903254"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 21:31:30 +0100
Date: Wed, 11 Mar 2020 21:31:30 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>, 
    Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
In-Reply-To: <EF2BA246-481A-4EDA-B008-AD638FB2850B@gmail.com>
Message-ID: <alpine.DEB.2.21.2003112130440.6093@hadrien>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com> <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com> <20200311130807.02e32fc8@elisabeth> <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
 <20200311134418.468f571a@elisabeth> <CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com> <20200311153151.7e94f566@elisabeth> <CAJyzNhkd+eBh+DPbQWRCLushYFRTRWKNF=krY5AJG25U56=hDQ@mail.gmail.com> <alpine.DEB.2.21.2003111606110.6155@hadrien>
 <CAJyzNhk2h5-5av6XfCsGvLBsGxJSAJSy0KAd+m-9wFVhLPtywQ@mail.gmail.com> <EF2BA246-481A-4EDA-B008-AD638FB2850B@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-296370303-1583958690=:6093"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-296370303-1583958690=:6093
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Mar 2020, Payal Kshirsagar wrote:

> It does not adding [Outreachy Kernel] automatically in my system :(

I don't understand what you mean by "in my system".  [Outreachy kernel]
appears when other people receive your messages via the mailing list.  It
has nothing to do with you.

julia

>
> On March 11, 2020 9:22:54 PM GMT+05:30, Payal Kshirsagar
> <payalskshirsagar1234@gmail.com> wrote:
>
>
>       On Wed, Mar 11, 2020, 8:37 PM Julia Lawall
>       <julia.lawall@inria.fr> wrote:
>
>
>       On Wed, 11 Mar 2020, Payal Kshirsagar wrote:
>
>       >
>       >
>       > On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio
>       <sbrivio@redhat.com> wrote:
>       >       Payal,
>       >
>       >       On Wed, 11 Mar 2020 19:16:21 +0530
>       >       Payal Kshirsagar <payalskshirsagar1234@gmail.com>
>       wrote:
>       >
>       >       > On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio
>       >       <sbrivio@redhat.com> wrote:
>       >       >
>       >       > > There are other graphical or text-based
>       clients (Evolution,
>       >       pine,
>       >       > > sylpheed, KMail, many others) that can also be
>       used for this
>       >       purpose. I
>       >       > > would suggest that you look at screenshots,
>       maybe play with
>       >       some of
>       >       > > them, find one you're comfortable with, and
>       set it up.
>       >       > > I followed every step of setting up the gmail
>       as mentioned
>       >       in tutorial, I
>       >       > > don't know why this is happening;(
>       >
>       >       I guess you set up git to play along with GMail,
>       and that's fine
>       >       to
>       >       send patches -- I see it's working properly.
>       >
>       >       But, for this discussion, are you sure you are
>       using an actual
>       >       email
>       >       client (and not a browser connected to gmail.com)?
>       That is, are
>       >       you
>       >       using one of those programs I mentioned below?    
>                    
>       >                         
>       >       Yes I am using the Gmail not in a browser.        
>                    
>       >                                                        
>                    
>       >                                       Sir I am having
>       trouble with
>       >       adding [Outreachy Kernel] [PATCH] prefix to the
>       subject, I am
>       >       not able to add these two at the same time.      
>                    
>
>       You should never add [Outreachy Kernel] to anything.  When
>       you send
>       messages to the mailing list, that will get added.
>
>       I agree with Stefano that your way of responding to
>       messages causes
>       problems.  If you look above, there is no way to see what
>       you wrote and
>       what Stefano wrote.
>
>       What program do you use to read and respond to your mail?
>
>
> An android app Gmail.
>
>       julia
>
>
>       >                 Please suggest me something.            
>          
>       >
>       >       --
>       >       Stefano
>       >
>       > --
>       > You received this message because you are subscribed to
>       the Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails
>       from it, send an
>       > email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAJyzNhkd%2BeBh%2BD
>       PbQWR
>       > CLushYFRTRWKNF%3DkrY5AJG25U56%3DhDQ%40mail.gmail.com.
>       >
>       >
>
>
> --
> Sent from my Android device with K-9 Mail. Please excuse my brevity.
>
--8323329-296370303-1583958690=:6093--

