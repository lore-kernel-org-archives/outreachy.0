X-GM-THRID: 6264811554202451968
X-Received: by 10.28.153.70 with SMTP id b67mr3323344wme.2.1458800600434;
        Wed, 23 Mar 2016 23:23:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.4.202 with SMTP id 193ls153844lfe.5.gmail; Wed, 23 Mar 2016
 23:23:18 -0700 (PDT)
X-Received: by 10.112.158.138 with SMTP id wu10mr841455lbb.11.1458800598949;
        Wed, 23 Mar 2016 23:23:18 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id c7si208105wmf.2.2016.03.23.23.23.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Mar 2016 23:23:18 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,383,1454972400"; 
   d="scan'208";a="209866301"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 24 Mar 2016 07:23:18 +0100
Date: Thu, 24 Mar 2016 07:23:17 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Angel Orejel <deutschluz@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, sveta.orlik.code@gmail.com, 
    Alison Schofield <amsfield22@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: add more information
 to Kconfig
In-Reply-To: <CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1603240721280.2032@localhost6.localdomain6>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com> <20160322211338.GA9367@kroah.com> <CAGLzxArcwTX1VnkSQs=wr_hpB=uoKPcPQ-WVMZXCDc1M8ZAmOg@mail.gmail.com> <20160324025609.GB19662@kroah.com>
 <CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1880421845-1458800598=:2032"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1880421845-1458800598=:2032
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Wed, 23 Mar 2016, Angel Orejel wrote:

> I can fix this but I need some clarification about your question. Should I
> delete those untracked files? The top two will be gone because I piped the
> output of checkpatch to them, but the bottom two might have been put there
> after running the command 'make -j2'. Can I just delete those? or use 'git
> checkout'. may be I could use 'git stash'? 
> Also, about the fact that my patch has html in it: I ve been sending the
> patch to my gmail from evolution and then from my gmail to whoever. So i
> think i ll just skip that part and send from evolution. I think that should
> fix that.

You should probably not be using evolution.  You should use mutt as 
described in the tutorial.

The application period is also over, but you can end your patch to the 
maintainers indicated in the MAINTAINERS file (easily found using 
scripts/get_maintainer.pl).

julia

> 
> On Wed, Mar 23, 2016 at 7:56 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Wed, Mar 23, 2016 at 04:34:28PM -0700, Angel Orejel wrote:
> 
>       <snip>
> 
>       For some reason you sent this only to me, which is a bit rude to
>       everyone else on the mailing list.  I'll be glad to respond if
>       you
>       resend it to everyone.
> 
>       thanks,
> 
>       greg k-h
> 
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAGLzxAo%3DDPVr5%2BDEFxq
> xdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1880421845-1458800598=:2032--

