X-GM-THRID: 6255961671110492160
X-Received: by 10.25.142.130 with SMTP id q124mr735324lfd.9.1456583333382;
        Sat, 27 Feb 2016 06:28:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.35.88 with SMTP id j85ls313957lfj.63.gmail; Sat, 27 Feb
 2016 06:28:52 -0800 (PST)
X-Received: by 10.112.129.65 with SMTP id nu1mr755949lbb.18.1456583332231;
        Sat, 27 Feb 2016 06:28:52 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si293132wmd.1.2016.02.27.06.28.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 06:28:52 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,509,1449529200"; 
   d="scan'208";a="166176484"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2016 15:28:51 +0100
Date: Sat, 27 Feb 2016 15:28:50 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: RAKHI SHARMA <rakhish1994@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Fix warning
 usleep_range() shouldn't use min ==max args.
In-Reply-To: <CAMnyiXv-ENj_YiCC4rTwN8veDnaeB_dBKsQqZxgr39G_7U24jQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602271527580.2204@localhost6.localdomain6>
References: <1456579543-27301-1-git-send-email-rakhish1994@gmail.com> <alpine.DEB.2.02.1602271439140.2204@localhost6.localdomain6> <CAMnyiXv-ENj_YiCC4rTwN8veDnaeB_dBKsQqZxgr39G_7U24jQ@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-52127090-1456583331=:2204"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-52127090-1456583331=:2204
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 27 Feb 2016, RAKHI SHARMA wrote:

> On Sat, Feb 27, 2016 at 7:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> 
> 
>       On Sat, 27 Feb 2016, Rakhi Sharma wrote:
> 
>       > As usleep_range should not use min == max args.This patch
>       fixes checkpatch
>       > warning: usleep_range should not use min == max args; see
>       > Documentation/timers/timers-howto.txt.
> 
>       How did you choose the new values?
> 
> Hi,
> As usleep_range is generally used when sleeping range is between 10us -
> 20ms.For
> avoiding this checkpatch warning min==max args! if we change the max
> value little(between 1-100) I don't think it will affect the code.I gone
> through the
> simillar patches submitted by other developer, they did same, so I choose to
> increase
> max by100. Otherwise there is no reason for new values.

OK, it would be good to update the patch with such an explanation, ie to 
say that you chose to increment the minimum value by 100, as done in 
commits X, Y, and Z.

julia


> 
> Rakhi
> 
>       julia
> 
>       >
>       > Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
>       > ---
>       >  drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/wilc1000/wilc_wlan.c
>       b/drivers/staging/wilc1000/wilc_wlan.c
>       > index 83af51b..8d6a457 100644
>       > --- a/drivers/staging/wilc1000/wilc_wlan.c
>       > +++ b/drivers/staging/wilc1000/wilc_wlan.c
>       > @@ -766,7 +766,7 @@ int wilc_wlan_handle_txq(struct net_device
>       *dev, u32 *txq_count)
>       >                               }
>       >                               PRINT_WRN(GENERIC_DBG, "[wilc
>       txq]: warn, vmm table not clear yet, wait...\n");
>       >                               release_bus(wilc,
>       RELEASE_ALLOW_SLEEP);
>       > -                             usleep_range(3000, 3000);
>       > +                             usleep_range(3000, 3100);
>       >                               acquire_bus(wilc,
>       ACQUIRE_AND_WAKEUP);
>       >                       }
>       >               } while (!wilc->quit);
>       > @@ -800,7 +800,7 @@ int wilc_wlan_handle_txq(struct net_device
>       *dev, u32 *txq_count)
>       >                                       break;
>       >                               } else {
>       >                                       release_bus(wilc,
>       RELEASE_ALLOW_SLEEP);
>       > -                                     usleep_range(3000,
>       3000);
>       > +                                     usleep_range(3000,
>       3100);
>       >                                       acquire_bus(wilc,
>       ACQUIRE_AND_WAKEUP);
>       >                                       PRINT_WRN(GENERIC_DBG,
>       "Can't get VMM entery - reg = %2x\n", reg);
>       >                               }
>       > --
>       > 1.9.1
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1456579543-27301-1-git-s
> end-email-rakhish1994%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> 
> 
> 
--8323328-52127090-1456583331=:2204--

