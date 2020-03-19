X-GM-THRID: 6805826308521590784
X-Received: by 2002:a1c:1f0c:: with SMTP id f12mr2303668wmf.179.1584607336967;
        Thu, 19 Mar 2020 01:42:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6802:: with SMTP id w2ls604809wru.6.gmail; Thu, 19 Mar
 2020 01:42:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuOsxZoPQePO9gl7a7k9wDOTtk04IqgXdUdH3JOSF2OzAI8lxF/PAS0NjcXTXNXUZyllFzx
X-Received: by 2002:adf:dfce:: with SMTP id q14mr2863680wrn.326.1584607335614;
        Thu, 19 Mar 2020 01:42:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584607335; cv=none;
        d=google.com; s=arc-20160816;
        b=Wz4TJJa9tKftW2rkxFkNKBH9K0KzkrxzMXA/D+SZ8vwZOUqhZdKQNUCSdYo3HoqyCZ
         PLo0zmCr6IxvY1E5EM7FcjqSDTtEpXqbRTbZioPmFX0+UAkP4Vfck+MNTG9vlJnJj2c+
         Da1pnqxOttVFs7jDP6zIe7PVCih6Iv7pJOiyTM7+PPUwArA1quSqKkXUMXJCJ9EasjpE
         GVSJFe0BgcqNT6MaTZMBj70n/I7HBfNxPdu9YlyRMrdhvqNFyouqMCoV6lg21MXGdz9q
         gqePvD8FWV6SnHwISlsD39lwhWPxEec98GWHAZoisgKv4m/9+oFJvEAYG7dCOcrCsni5
         PtRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=AHXpQZXsJVPNOqQQMR2BDqFKv8ZckJUMTlygECkJ1AQ=;
        b=aHL5DbR3l2Ah0eSKTu5uDYTHJ7mxRmtZdTruhOHaVshMOiaOpUuXqg5sZAtz99vEAf
         iSFVo9hWnEd41tK3pdDc/dQMC9tJypy0Gbzg6q+m8K+roLL9O/RE+DkmbPxc+5pit5LA
         8XuRCVC7BeZNaEUX/AhXT/JiMkQ6thCP5BhAbu4uLHykpNNJI3I91yG4IScZG5TK7g7H
         drH5NI7bardAYSMJvuWJSbv12G7MqHy4LmA3L3CN2eRwuDK7viNToMLlFLtFl5bCnh6R
         cRSuDEgic0Y7Twj6sNAsuOK2DkaW1XDI8JqMgUCHMReUw9f5YY/oWO0mEXz8UEuHkb42
         +2uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n9si56545wmi.0.2020.03.19.01.42.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:42:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,571,1574118000"; 
   d="scan'208";a="342892841"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 09:42:15 +0100
Date: Thu, 19 Mar 2020 09:42:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] Re: I need feedback on my posted patches
In-Reply-To: <20200319083953.GD1723@tulip.local>
Message-ID: <alpine.DEB.2.21.2003190940190.3010@hadrien>
References: <20200319080144.GA1723@tulip.local> <20200319080905.GA3489391@kroah.com> <20200319082249.GC1723@tulip.local> <alpine.DEB.2.21.2003190930420.3010@hadrien> <20200319083953.GD1723@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, R Veera Kumar wrote:

> On Thu, Mar 19, 2020 at 09:31:18AM +0100, Julia Lawall wrote:
> >
> >
> > On Thu, 19 Mar 2020, R Veera Kumar wrote:
> >
> > > On Thu, Mar 19, 2020 at 09:09:05AM +0100, Greg Kroah-Hartman wrote:
> > > > On Thu, Mar 19, 2020 at 01:31:52PM +0530, R Veera Kumar wrote:
> > > > > Hi,
> > > > >
> > > > > I posted patches on Saturday. But I did not got a msg from Greg
> > > > > about they being accepted. Yesterday Greg posted that he has
> > > > > seen all outreachy patches upto now. And if we do not get reply's
> > > > > for the patches we should resend. So I resent it yesterday.
> > > >
> > > > What specific patches did you submit that you did not get a response on?
> > > > I do not see any, but I might have missed some.  What is the message id
> > > > or subject lines?
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > > >
> > >
> > > They are:
> > >
> > > Subject: [RESEND PATCH] staging: rtl8188eu: core: Correct a typo in a comment
> > > Message-Id: <20200317233020.575-1-vkor@vkten.in>
> > >
> > > Subject: [RESEND PATCH] staging: rtl8188eu: include: Correct a typo in a comment
> > > Message-Id: <20200317233845.894-1-vkor@vkten.in>
> > >
> > > Subject: [RESEND PATCH] staging: rtl8192u: ieee80211: Correct a typo in a comment
> > > Message-Id: <20200317234252.1128-1-vkor@vkten.in>
> > >
> > > Subject: [RESEND PATCH] staging: rtl8712: Correct a typo in a comment
> > > Message-Id: <20200317234701.1383-1-vkor@vkten.in>
> > >
> > > Subject: [RESEND PATCH] staging: rts5208: shorten long line in func call
> > > Message-Id: <20200317235413.1656-1-vkor@vkten.in>
> >
> > I searched in the Google web interface for RESEND PATCH and I don't see
> > any of these.  I don't remember receiving them either.
> >
> > julia
> >
>
> Yes. I also checked in Google web interface and I don't see them.
> Is this mail address correct: <outreachy-kernel@googlegroups.com>
>
> This email also sent to this mail address. And the reply you and Greg
> are giving are also coming from this address.

I received this email.  You sent it directly to Greg, but I don't see my
name in the recipient list, so I must have gotten it via the mailing list.

Could you just send one patch, and then send a mail asking whether we have
seen the patch?

I looked in the held messages and there wasn't anything from you.

julia

>
> Please look into matter.
>
> Veera
>
> >
> > >
> > > Subject: [PATCH v2] staging: unisys: Documentation: Correct a long line in doc
> > > Message-Id: <20200318002938.2326-1-vkor@vkten.in>
> > >
> > > Subject: [PATCH v5] staging: sm750fb: Fix of long line in makefile variable
> > > Message-Id: <20200318005820.2983-1-vkor@vkten.in>
> > >
> > > Subject: [PATCH v3] staging: rtl8712: Fix for long lines in Kconfig help
> > > Message-Id: <20200318011856.3547-1-vkor@vkten.in>
> > >
> > > Subject: [RESEND PATCH] staging: rtl8723bs: hal: Correct typos and long line comments
> > > Message-Id: <20200318013414.3861-1-vkor@vkten.in>
> > >
> > > Subject: [RESEND PATCH 00/10] Correction of typos and long lines of comments
> > > Message-Id: <cover.1584514678.git.vkor@vkten.in>
> > >
> > > Subject: [PATCH v2 0/4] Correction of typos in comments
> > > Message-Id: <cover.1584517384.git.vkor@vkten.in>
> > >
> > > Subject: [PATCH v2 0/7] Correction of typos in comments
> > > Message-Id: <cover.1584519269.git.vkor@vkten.in>
> > >
> > > Subject: [PATCH v2] staging: vc04_services: interface: vchi: Correct long lines and style of comments
> > > Message-Id: <20200319005434.1453-1-vkor@vkten.in>
> > >
> > > Regards,
> > > Veera
> > >
>

