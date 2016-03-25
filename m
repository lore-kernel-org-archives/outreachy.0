X-GM-THRID: 6264811554202451968
X-Received: by 10.112.54.202 with SMTP id l10mr1520237lbp.14.1458892600183;
        Fri, 25 Mar 2016 00:56:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.79 with SMTP id 76ls82281wmj.9.gmail; Fri, 25 Mar 2016
 00:56:39 -0700 (PDT)
X-Received: by 10.28.189.130 with SMTP id n124mr1563001wmf.4.1458892599502;
        Fri, 25 Mar 2016 00:56:39 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f75si44813wme.3.2016.03.25.00.56.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Mar 2016 00:56:39 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.24,389,1454972400"; 
   d="scan'208";a="170757337"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 25 Mar 2016 08:56:38 +0100
Date: Fri, 25 Mar 2016 08:56:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Angel Orejel <deutschluz@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    sveta.orlik.code@gmail.com, Alison Schofield <amsfield22@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192e: add more information
 to Kconfig
In-Reply-To: <CAGLzxApAAYh_Y9p-D9spH0uMoSjrZk=oF51rNoUZrfgVctHZkw@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1603250856180.2064@localhost6.localdomain6>
References: <CAGLzxAr5=CPi-K9rsLHwqgKhmj=1jVHygQ3NHi=EZMcpGWQTUg@mail.gmail.com> <20160322211338.GA9367@kroah.com> <CAGLzxArcwTX1VnkSQs=wr_hpB=uoKPcPQ-WVMZXCDc1M8ZAmOg@mail.gmail.com> <20160324025609.GB19662@kroah.com> <CAGLzxAo=DPVr5+DEFxqxdMWRqGEVWkt_9dTHCLEMfrCiSnE9oA@mail.gmail.com>
 <20160324135610.GB21239@kroah.com> <CAGLzxAoSgrpMx8Xt7y7uQSJB=ZWCj059tHYBqqZug=mq-rMPHw@mail.gmail.com> <alpine.DEB.2.02.1603250843310.2064@localhost6.localdomain6> <CAGLzxApAAYh_Y9p-D9spH0uMoSjrZk=oF51rNoUZrfgVctHZkw@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-53882141-1458892598=:2064"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-53882141-1458892598=:2064
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 25 Mar 2016, Angel Orejel wrote:

> Ok I just ran the get_maintainer script and Greg's name was in the output of
> that. So my second mutt message is incoming to Greg.Once again, you are so
> fast Julia. Thank you for your vigilance and diligence. :)

The point is to get it to the right list, even if it is the same person :)

julia

> 
> On Fri, Mar 25, 2016 at 12:45 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> 
> 
>       On Fri, 25 Mar 2016, Angel Orejel wrote:
> 
>       > I am still very much interested in helping with the linux
>       kernel. I didn't
>       > know about this outreach thing till last saturday. That was
>       part of the
>       > reason I avoided mutt till now. I had to do a lot of googling
>       to get to
>       > work. But whatever, it works. GREG: So do I still send this
>       patch to you? or
>       > is there another maintainer?
> 
>       You run scripts/get_maintainer.pl on your patch to see to whom
>       it should
>       be sent.  I use the following options to get the most relevant
>       people, not
>       just every random person who has sent a patch on the file.
> 
>        --nokeywords --nogit --nogit-fallback --norolestats
> 
>       julia
> 
> 
>       >
>       > On Thu, Mar 24, 2016 at 6:56 AM, Greg KH
>       <gregkh@linuxfoundation.org> wrote:
>       >       On Wed, Mar 23, 2016 at 10:09:50PM -0700, Angel Orejel
>       wrote:
>       >       > I can fix this but I need some clarification about
>       your
>       >       question. Should I
>       >       > delete those untracked files? The top two will be gone
>       because
>       >       I piped the
>       >       > output of checkpatch to them, but the bottom two might
>       have
>       >       been put there
>       >       > after running the command 'make -j2'. Can I just
>       delete those?
>       >       or use 'git
>       >       > checkout'. may be I could use 'git stash'? 
>       >
>       >       I don't understand this at all, 'git stash' is not for
>       making a
>       >       patch,
>       >       when you create it, those # lines will not be in the
>       changelog
>       >       comments,
>       >       how they showed up in your patch is very odd.
>       >
>       >       Try working through the tutorial again to figure out the
>       steps
>       >       that are
>       >       needed for this.
>       >
>       >       > Also, about the fact that my patch has html in it: I
>       ve been
>       >       sending the patch
>       >       > to my gmail from evolution and then from my gmail to
>       whoever.
>       >       So i think i ll
>       >       > just skip that part and send from evolution. I think
>       that
>       >       should fix that.
>       >
>       >       Just use mutt :)
>       >
>       >       thanks,
>       >
>       >       greg k-h
>       >
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups
> > "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an
> > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAGLzxAoSgrpMx8Xt7y
> 7uQSJ
> > B%3DZWCj059tHYBqqZug%3Dmq-rMPHw%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> >
> 
> 
> 
> 
--8323328-53882141-1458892598=:2064--

