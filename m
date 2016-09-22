X-GM-THRID: 6332661608531099648
X-Received: by 10.25.193.148 with SMTP id r142mr171010lff.2.1474576391092;
        Thu, 22 Sep 2016 13:33:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.206.5 with SMTP id e5ls510072wmg.20.gmail; Thu, 22 Sep 2016
 13:33:10 -0700 (PDT)
X-Received: by 10.194.89.35 with SMTP id bl3mr161725wjb.8.1474576390413;
        Thu, 22 Sep 2016 13:33:10 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c13si2815732wme.3.2016.09.22.13.33.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2016 13:33:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,379,1470693600"; 
   d="scan'208";a="194354358"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 22 Sep 2016 22:33:09 +0200
Date: Thu, 22 Sep 2016 22:33:08 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: gnudevliz@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Mutt/Gmail Issue
In-Reply-To: <c33bb083-d19f-473c-9f16-92bbd62d4e80@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609222232450.3188@hadrien>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com> <649173d5-38d8-43e3-af3b-a81aab81311d@googlegroups.com> <CAK-LDbJdnH_ONEEcCs-yLeEtMN4cYQKD0Jkc4M_TtOTaDpTV0Q@mail.gmail.com> <c33bb083-d19f-473c-9f16-92bbd62d4e80@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-3701050-1474576389=:3188"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-3701050-1474576389=:3188
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 22 Sep 2016, gnudevliz@gmail.com wrote:

> Hey Vaishali, 
> Thanks for your reply. I finally figured it out. Hallelujah.
> The Debian installation manual specifically says to use exim4 in order to
> set up debian to use e-mail:
> https://www.debian.org/releases/jessie/i386/ch08s05.html.en
>
> I had to closely follow this tutorial in order to finally get it to work:
> https://wiki.debian.org/GmailAndExim4
>
> I also had to fix my /etc/hosts and /etc/hostname file. 
>
> I thought I'd post these in case you're using Debian. 

Do you want me to add anything to the tutorial?

julia


>
> On Wednesday, September 21, 2016 at 9:47:33 PM UTC-7, Vaishali Thakkar
> wrote:
>       On Thu, Sep 22, 2016 at 1:18 AM,  <gnud...@gmail.com> wrote:
>       > Hi everyone,
>       >
>       > Thanks for your replies. I've tried many .muttrc config
>       changes and Gmail
>       > setup but I keep getting the same error.
>       > I think I'm supposed to set up a FQDN (Fully Qualified Domain
>       Name). Mutt
>       > keeps telling me there is no HELO/ELHO argument
>
>       I am not sure about this error but usually Mutt fails for me if
>       I use
>       it under firewall,
>       proxy settings or vpn. So, I don't use it anymore. Git
>       send-email
>       works good for me.
>       If you can't figure out the solution of this error and want to
>       go for
>       the git send-email
>       then you can check this blog:
>
> https://burzalodowa.wordpress.com/2013/10/05/how-to-send-patches-with-git-s
>       end-email/
>
>       It just requires to set up .gitconfig. I can share my settings
>       but I
>       think that blog explains
>       almost everything in detail.
>
>       > On Tuesday, September 20, 2016 at 11:01:18 PM UTC-7,
>       gnud...@gmail.com
>       > wrote:
>       >>
>       >> Hello everyone,
>       >>
>       >> I'm on Debian Jessie and I cannot get mutt to send email. I
>       can receive
>       >> emails and view my inbox in Mutt but I can't send messages. I
>       can send them
>       >> to myself though. I can't send them to another email address.
>       >>
>       >> When I use mutt to send an email I keep getting this
>       HELO/ELHO error:
>       >>
>       >> SMTP session failed: 501 5.5.4
>        https://support.google.com/mail/?p=helo
>       >> yg10sm21072351pab.8 - gsmtp
>       >>
>       >> That brings me to this page:
>       >>
>       >>https://support.google.com/mail/answer/6386757?visit_id=1-63610024331271608
>       0-1894628512&p=helo&rd=1
>       >>
>       >> I can't figure out how to resolve this issue. My 2 factor is
>       off and I'm
>       >> allowing login from unsecure apps. I'm also trying to use
>       ssmtp instead of
>       >> esmtp but the same thing happens in mutt.
>       >>
>       >> When i do
>       >> $ sudo ssmtp some...@gmail.com
>       >>
>       >> the email does actually go through though, but it says from
>       root.
>       >>
>       >> If anyone has suggestions I would really appreciate it!
>       >> Thanks,
>       >> Liz
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visit
>       >https://groups.google.com/d/msgid/outreachy-kernel/649173d5-38d8-43e3-af3b-
>       a81aab81311d%40googlegroups.com.
>       >
>       > For more options, visit https://groups.google.com/d/optout.
>
>
>
>       --
>       Vaishali
>       http://vaishalithakkar.in/
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c33bb083-d19f-473c-9f16-
> 92bbd62d4e80%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-3701050-1474576389=:3188--

