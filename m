X-GM-THRID: 6387984774735069184
X-Received: by 10.46.0.147 with SMTP id e19mr692830lji.6.1487324100479;
        Fri, 17 Feb 2017 01:35:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.7.9 with SMTP id 9ls143783ljh.30.gmail; Fri, 17 Feb 2017
 01:34:59 -0800 (PST)
X-Received: by 10.46.76.17 with SMTP id z17mr680433lja.13.1487324099473;
        Fri, 17 Feb 2017 01:34:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v70si70553wmf.0.2017.02.17.01.34.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Feb 2017 01:34:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,171,1484002800"; 
   d="scan'208";a="213548579"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 10:34:58 +0100
Date: Fri, 17 Feb 2017 10:34:54 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211: Remove
 typedef to the tx_pending_t structure
In-Reply-To: <CAKG5xWiMvkoOFL-JRGh=QS-akQU2iVqxmV2E1gdKX2a6LEEChg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702171029470.3109@hadrien>
References: <20170217080309.GA13492@sayli-HP-15-Notebook-PC> <alpine.DEB.2.20.1702171008130.3109@hadrien> <CAKG5xWiMvkoOFL-JRGh=QS-akQU2iVqxmV2E1gdKX2a6LEEChg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 17 Feb 2017, sayli karnik wrote:

> On Fri, Feb 17, 2017 at 2:40 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Fri, 17 Feb 2017, sayli karnik wrote:
> >
> >> Using typedef for a structure type is not suggested in Linux kernel
> >> coding style guidelines. So remove typedef from structure tx_pending_t.
> >>
> >> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> >> ---
> >> Grepped to ensure no other usage of the typedef variable.
> >> The driver does not use the typdef variable anywhere, it declares using a
> >> structure variable when required.

Maybe I missed seeing this in the patch.  But it should be above the ---
because it could be of interest to people looking at the patch in the
future.  On the other hand, the terminology could be improved.  Use
"variable" for things that are associated with memory locations.  Here you
could refer to a type name.

The message could be more concise as.  The typedef name is not used
anywhere.  All variables of this type are declared using "struct
tx_pending_t".

> >>  drivers/staging/rtl8192u/ieee80211/ieee80211.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> >> index 0d24705..7de3a78 100644
> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
> >> @@ -1456,10 +1456,10 @@ enum ieee80211_state {
> >>
> >>
> >>
> >> -typedef struct tx_pending_t{
> >> +struct tx_pending_t {
> >>       int frag;
> >>       struct ieee80211_txb *txb;
> >> -}tx_pending_t;
> >> +};
> >
> > Was anyone using the typedef?  Normally, a typedef is used elsewhere and
> > when you remove the typedef, you need to update the users as well.
> >
> Yes, but I found this case to be a little different.
> There is one instance where they use-
> struct  tx_pending_t tx_pending;

This is a variable declaration.  That is, you get an actual structure
called tx_pending.  Fortunately the names of types and names of variables
are distinct, so struct tx_pending tx_pending; is also ok.

julia

> (without using the typedef declared earlier)
> I used grep to find out that the typedef was not used anywhere else.
>
> > Also, it is normally only typedefs that have names that end in _t.  So it
> > would be better to change the type name to struct tx_pending.
> >
> Ah, thought so. I'll send the next version.
>
> >>  typedef struct _bandwidth_autoswitch {
> >>       long threshold_20Mhzto40Mhz;
> >
> > You can work on this one also.
> >
> Yes, I will.
>
> > julia
> >
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170217080309.GA13492%40sayli-HP-15-Notebook-PC.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKG5xWiMvkoOFL-JRGh%3DQS-akQU2iVqxmV2E1gdKX2a6LEEChg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

