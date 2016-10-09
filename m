X-GM-THRID: 6339162656111329280
X-Received: by 10.157.29.38 with SMTP id m35mr7048873otm.7.1476010322682;
        Sun, 09 Oct 2016 03:52:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.166 with SMTP id y35ls3858729ota.26.gmail; Sun, 09 Oct
 2016 03:52:02 -0700 (PDT)
X-Received: by 10.237.52.97 with SMTP id w88mr1753794qtd.23.1476010322292;
        Sun, 09 Oct 2016 03:52:02 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p70si322838vkd.0.2016.10.09.03.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:52:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,466,1473112800"; 
   d="scan'208";a="196133788"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 09 Oct 2016 12:52:00 +0200
Date: Sun, 9 Oct 2016 12:51:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, outreachy-kernel@googlegroups.com, 
    "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Remove ternary
 operator
In-Reply-To: <CAOH+1jGUWFyq5gJJq=1MhrjZjXyW0zeF4+m8g+jvVPurerLg0w@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1610091251160.3462@hadrien>
References: <1475951297-10364-1-git-send-email-bhumirks@gmail.com> <alpine.DEB.2.10.1610090759420.3134@hadrien> <CAOH+1jGUWFyq5gJJq=1MhrjZjXyW0zeF4+m8g+jvVPurerLg0w@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 9 Oct 2016, Bhumika Goyal wrote:

> On Sun, Oct 9, 2016 at 11:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 8 Oct 2016, Bhumika Goyal wrote:
> >
> >> Relational and logical operators evaluate to either true or false.
> >> Explicit conversion is not needed so remove the ternary operator.
> >> Done using coccinelle:
> >>
> >> @r@
> >> expression A,B;
> >> symbol true,false;
> >> binary operator b = {==,!=,&&,||,>=,<=,>,<};
> >> @@
> >> - (A b B) ? true : false
> >> + A b B
> >>
> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> >> ---
> >>  drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
> >>  drivers/staging/rtl8192e/rtllib.h         |  2 +-
> >>  2 files changed, 5 insertions(+), 9 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> >> index dd9c0c8..8cd51a9 100644
> >> --- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
> >> +++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
> >> @@ -558,19 +558,15 @@ void HTOnAssocRsp(struct rtllib_device *ieee)
> >>  #endif
> >>       HTSetConnectBwMode(ieee, (enum ht_channel_width)(pPeerHTCap->ChlWidth),
> >>                         (enum ht_extchnl_offset)(pPeerHTInfo->ExtChlOffset));
> >> -     pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1) ?
> >> -                              true : false);
> >> +     pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
> >>
> >>       pHTInfo->bCurShortGI20MHz = ((pHTInfo->bRegShortGI20MHz) ?
> >> -                                 ((pPeerHTCap->ShortGI20Mhz == 1) ?
> >> -                                 true : false) : false);
> >> +                                 (pPeerHTCap->ShortGI20Mhz == 1) : false);
> >>       pHTInfo->bCurShortGI40MHz = ((pHTInfo->bRegShortGI40MHz) ?
> >> -                                  ((pPeerHTCap->ShortGI40Mhz == 1) ?
> >> -                                  true : false) : false);
> >> +                                  (pPeerHTCap->ShortGI40Mhz == 1) : false);
> >>
> >>       pHTInfo->bCurSuppCCK = ((pHTInfo->bRegSuppCCK) ?
> >> -                            ((pPeerHTCap->DssCCk == 1) ? true :
> >> -                            false) : false);
> >> +                            (pPeerHTCap->DssCCk == 1) : false);
> >
> > Even with the simplification, these look like a mess.  Could && and || be
> > used here?
> >
> Yes, I think these can be further reduced to something like:
> pHTInfo->bCurSuppCCK= (pHTInfo->bRegSuppCCK && pPeerHTCap->DssCCk);
> as the left hand side is true only if both the RHS values are true/1.
> Same reduction could be done for pHTInfo->bCurShortGI40MHz and
> pHTInfo->bCurShortGI20MHz.

Is DssCCk boolean?  If not you may need to keep the == 1.

julia

>
> Thanks,
> Bhumika
>
> > julia
> >
> >>
> >>
> >>       pHTInfo->bCurrent_AMSDU_Support = pHTInfo->bAMSDU_Support;
> >> diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
> >> index b895a53..f2c28f3 100644
> >> --- a/drivers/staging/rtl8192e/rtllib.h
> >> +++ b/drivers/staging/rtl8192e/rtllib.h
> >> @@ -464,7 +464,7 @@ struct ieee_param {
> >>  #define RTLLIB_QCTL_TID            0x000F
> >>
> >>  #define      FC_QOS_BIT                                      BIT7
> >> -#define IsDataFrame(pdu)     (((pdu[0] & 0x0C) == 0x08) ? true : false)
> >> +#define IsDataFrame(pdu)     ((pdu[0] & 0x0C) == 0x08)
> >>  #define      IsLegacyDataFrame(pdu)  (IsDataFrame(pdu) && (!(pdu[0]&FC_QOS_BIT)))
> >>  #define IsQoSDataFrame(pframe)                       \
> >>       ((*(u16 *)pframe&(RTLLIB_STYPE_QOS_DATA|RTLLIB_FTYPE_DATA)) ==  \
> >> --
> >> 1.9.1
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1475951297-10364-1-git-send-email-bhumirks%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jGUWFyq5gJJq%3D1MhrjZjXyW0zeF4%2Bm8g%2BjvVPurerLg0w%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

