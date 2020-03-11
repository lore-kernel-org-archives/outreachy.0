X-GM-THRID: 6802879895263248384
X-Received: by 2002:aa7:d7c9:: with SMTP id e9mr621373eds.100.1583939279766;
        Wed, 11 Mar 2020 08:07:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1e42:: with SMTP id i2ls1511044ejj.1.gmail; Wed, 11
 Mar 2020 08:07:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu2WefZUXDzBCJBCmvxvYvJZYRrKVY8w0ojVEkafglFYwRnEOukeI9rh/fzVBK7yyzbxdPJ
X-Received: by 2002:a17:906:f917:: with SMTP id lc23mr2834180ejb.191.1583939278232;
        Wed, 11 Mar 2020 08:07:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583939278; cv=none;
        d=google.com; s=arc-20160816;
        b=NLjdN343G66diW3/vvbQ1eE+EmO4OiF6Q/fH3Y0J6wy6HzF8EQ0cvGbuNAGcQBTH1Y
         /kA284NnMHayw9we7qgJap/DEKUj6HKKqhY3bC5UQzYJzYqVE7MMm4EsYo84QYa1LZQ2
         iFpqRh4dtMITyKoCEQnWT7MN/kbHUbw9Uhr95SU+13UEJopAVc6mmzY9Cw9ZcmjLzIG3
         vMcunaFFVMf6teQpoyxbOgfNoH3igDZsQ394w4WArlUtl+ueHLO/HEn8eVp51MPlrz6D
         hac31Yrf5pnKLHNmbOE6iVs7WG/DrZ5kikG3HcdIt/2nQXKQPYQ9H4gl6Yf/k2iBK1xq
         9OCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8z+Pe8LSj45fyb3abm8UGPEoO25VfvBGsShVzx7OkZU=;
        b=ocPGMsSjQ4N3cO7L4+Zeoz5vqJSdO7UKHg3fioMRfLrkCUiIw7HymyyDfcIY18PEcg
         NIT9FIs4BbP4jQFXk0UDBbCKUK5XHMhiJkqOtLLa5PbnfuDzKybMnhcKW1Bw+dEKUnsq
         haGnUgp9t1pvUlukAqcPEZFEzRBwhW3qMN8iOTNJx+WRjt5k8DpoZ93Pm+CV1Mi8tiHe
         gsUGbjVOsb2ky3SqJEvdWiubt7wvvw5PBTkuOqHB43l6kRXEeJjexeGruqMKDNoX3GJd
         6lAp+68uNMhz9QjsP9uNsksSY0dJRuSamFUietzFqgwy5koojEvJ8NwsdT2BCkp1TCkL
         z6Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cw13si136968edb.2.2020.03.11.08.07.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 08:07:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,541,1574118000"; 
   d="scan'208";a="342029294"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 16:07:57 +0100
Date: Wed, 11 Mar 2020 16:07:57 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, manishc@marvell.com, 
    GR-Linux-NIC-Dev@marvell.com, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 4/4] [Outreachy kernel] staging: qlge: qlge_ethtool.c:
 remove an unneeded variable
In-Reply-To: <CAJyzNhkd+eBh+DPbQWRCLushYFRTRWKNF=krY5AJG25U56=hDQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003111606110.6155@hadrien>
References: <cover.1583918265.git.payalskshirsagar1234@gmail.com> <cf99101e09f79788fd87ad9ed455c5ef363b261f.1583918265.git.payalskshirsagar1234@gmail.com> <20200311130807.02e32fc8@elisabeth> <CAJyzNhmYR0e2Z6YMsfcMdt81zDEn+ReapnPs=PpMaxOMVgANxA@mail.gmail.com>
 <20200311134418.468f571a@elisabeth> <CAJyzNhmd8cT9QEiK_YkdYEBn+Ad8zgJCavWW9PBo6KtgRd+h1w@mail.gmail.com> <20200311153151.7e94f566@elisabeth> <CAJyzNhkd+eBh+DPbQWRCLushYFRTRWKNF=krY5AJG25U56=hDQ@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2101737733-1583939277=:6155"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2101737733-1583939277=:6155
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Mar 2020, Payal Kshirsagar wrote:

>
>
> On Wed, Mar 11, 2020, 8:02 PM Stefano Brivio <sbrivio@redhat.com> wrote:
>       Payal,
>
>       On Wed, 11 Mar 2020 19:16:21 +0530
>       Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:
>
>       > On Wed, Mar 11, 2020 at 6:14 PM Stefano Brivio
>       <sbrivio@redhat.com> wrote:
>       >
>       > > There are other graphical or text-based clients (Evolution,
>       pine,
>       > > sylpheed, KMail, many others) that can also be used for this
>       purpose. I
>       > > would suggest that you look at screenshots, maybe play with
>       some of
>       > > them, find one you're comfortable with, and set it up.
>       > > I followed every step of setting up the gmail as mentioned
>       in tutorial, I
>       > > don't know why this is happening;(
>
>       I guess you set up git to play along with GMail, and that's fine
>       to
>       send patches -- I see it's working properly.
>
>       But, for this discussion, are you sure you are using an actual
>       email
>       client (and not a browser connected to gmail.com)? That is, are
>       you
>       using one of those programs I mentioned below?                  
>                         
>       Yes I am using the Gmail not in a browser.                      
>                                                                      
>                                       Sir I am having trouble with
>       adding [Outreachy Kernel] [PATCH] prefix to the subject, I am
>       not able to add these two at the same time.                    

You should never add [Outreachy Kernel] to anything.  When you send
messages to the mailing list, that will get added.

I agree with Stefano that your way of responding to messages causes
problems.  If you look above, there is no way to see what you wrote and
what Stefano wrote.

What program do you use to read and respond to your mail?

julia


>                 Please suggest me something.                
>
>       --
>       Stefano
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAJyzNhkd%2BeBh%2BDPbQWR
> CLushYFRTRWKNF%3DkrY5AJG25U56%3DhDQ%40mail.gmail.com.
>
>
--8323329-2101737733-1583939277=:6155--

