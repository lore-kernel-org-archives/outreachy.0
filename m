X-GM-THRID: 6399695110711279616
X-Received: by 10.28.229.70 with SMTP id c67mr287613wmh.4.1490298649536;
        Thu, 23 Mar 2017 12:50:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.14 with SMTP id q14ls516131lfa.15.gmail; Thu, 23 Mar
 2017 12:50:47 -0700 (PDT)
X-Received: by 10.25.18.219 with SMTP id 88mr615710lfs.29.1490298647746;
        Thu, 23 Mar 2017 12:50:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x188si316968wmx.0.2017.03.23.12.50.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Mar 2017 12:50:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,211,1486422000"; 
   d="scan'208";a="265943568"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2017 20:50:47 +0100
Date: Thu, 23 Mar 2017 20:50:46 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    alexander@alemayhu.com, karniksayli1995@gmail.com
Subject: Re: [Outreachy kernel] nftables task question
In-Reply-To: <0a879316-5726-4a10-83b1-cc8da65e459e@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1703232048430.2150@hadrien>
References: <CAKG5xWj2WBS4MiOdgcdatnHMkgdsBATKtgr_h5=sQPgrnOyBvA@mail.gmail.com> <20170320222623.GB3079@gmail.com> <alpine.DEB.2.20.1703210707330.2131@hadrien> <ffddf9b3-0b6a-4ba6-9ede-6da1d1dfc7b8@googlegroups.com>
 <0a879316-5726-4a10-83b1-cc8da65e459e@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1652936327-1490298647=:2150"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1652936327-1490298647=:2150
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 23 Mar 2017, Arushi Singhal wrote:

>
>
> On Thursday, March 23, 2017 at 1:31:15 AM UTC+5:30, Arushi Singhal wrote:
>
>
>       On Tuesday, March 21, 2017 at 11:37:53 AM UTC+5:30, Julia Lawall
>       wrote:
>
>
>             On Mon, 20 Mar 2017, Alexander Alemayhu wrote:
>
>             > On Tue, Mar 21, 2017 at 02:54:50AM +0530, sayli
>             karnik wrote:
>             > >
>             > > The project description for nftables lists
>             translations to nft as a
>             > > possible small task. I couldn't find the files
>             to work on. Which tree
>             > > accepts patches for these translations?
>             > >
>             > git clone git://git.netfilter.org/iptables
>
>       Hi
>       I am not able to clone with the command  git clone
>       git://git.netfilter.org/iptables
>       Thanks
>       Arushi
>
> I am getting error message as:-
>
> Cloning into 'iptables'...
> fatal: unable to connect to git.netfilter.org:
> git.netfilter.org[0: 150.214.142.167]: errno=Connection refused

I tried it just now and it was fine.  Maybe try again?

julia

>
>
>       > cd iptables
>       > git grep iptables-translate
>       > <make changes>
>       > send patch to netfilt...@vger.kernel.org
>
>       Please send patches to outreachy-kernel too.
>
>       julia
>
>       >
>       > --
>       > Mit freundlichen Grüßen
>       >
>       > Alexander Alemayhu
>       >
>       > --
>       > You received this message because you are subscribed to
>       the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails
>       from it, send an email to
>       outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170320222623.GB3079%40
>       gmail.com.
>       > For more options, visit
>       https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/0a879316-5726-4a10-83b1-
> cc8da65e459e%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1652936327-1490298647=:2150--

