X-GM-THRID: 6392549731830071296
X-Received: by 10.46.80.82 with SMTP id v18mr1312084ljd.27.1488398836877;
        Wed, 01 Mar 2017 12:07:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.22 with SMTP id 22ls151379lja.32.gmail; Wed, 01 Mar 2017
 12:07:16 -0800 (PST)
X-Received: by 10.46.5.136 with SMTP id 130mr1307292ljf.6.1488398836293;
        Wed, 01 Mar 2017 12:07:16 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si648507wmf.0.2017.03.01.12.07.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 12:07:16 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,227,1484002800"; 
   d="scan'208";a="262699207"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2017 21:07:15 +0100
Date: Wed, 1 Mar 2017 21:07:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: constify
 ieee80211_qos_parameters structure
In-Reply-To: <CAOCi2DFyYaRwvypnHD1RXmQye4Nis9Mky4qPiEc94O7zujGQmg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1703012105100.2401@hadrien>
References: <1488381326-7061-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703011619200.3941@hadrien> <CAOCi2DFyYaRwvypnHD1RXmQye4Nis9Mky4qPiEc94O7zujGQmg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1121027524-1488398836=:2401"

--8323329-1121027524-1488398836=:2401
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 1 Mar 2017, Gargi Sharma wrote:

> On Wed, Mar 1, 2017 at 8:54 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Wed, 1 Mar 2017, Gargi Sharma wrote:
> >
> > > Declare def_qos_parameters instance of the ieee80211_qos_parameters
> > > structure as const since no modification is done to it. It is only
> > > used in two other places in the driver where it is the src parameter
> > > to memcpy.
> > >
> > > Done using Coccinelle script:
> > >
> > > @r1 disable optional_qualifier@
> > > identifier i;
> > > position p;
> > > @@
> > >
> > > static struct ieee80211_qos_parameters i@p ={...};
> > >
> > > @@
> > > identifier r1.i;
> > > @@
> > > +const
> > > struct ieee80211_qos_parameters i
> >
> > I'm not sure that it makes that much sense to write such a Coccinelle
> > script.  It is only being applied in one place.  And the script is not
> > doing anything to ensure that the change is safe.  To make a structure
> > const, you have to check on how it is used, to ensure that the fields are
> > not modified anywhere.The structure is only used inside memcpy as the src
> parameter. Perhaps what
> you mean is that I should check using Coccinelle that the structure is not
> modified anywhere?

You can if you like, but you aren't obliged to.  Coccinelle scripts don't
have to be 100% safe.  But the change that you propose, without careful
additional checking, is more like 0% safe, so I think that it is a bit
misleading to post a script for it.

julia

>
> >
> > I'm not even sure that the second rule would parse?
> I missed a ; at the end while writing the script in the mail. Once that is
> includedthe second rule parses.


> gargi
> >
> > julia
> >
> > >
> > > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > > ---
> > >  drivers/staging/rtl8192u/r8192U_core.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/rtl8192u/r8192U_core.c
> b/drivers/staging/rtl8192u/r8192U_core.c
> > > index b631990..bbb5f58 100644
> > > --- a/drivers/staging/rtl8192u/r8192U_core.c
> > > +++ b/drivers/staging/rtl8192u/r8192U_core.c
> > > @@ -1814,7 +1814,7 @@ static void rtl8192_link_change(struct net_device
> *dev)
> > >       }
> > >  }
> > >
> > > -static struct ieee80211_qos_parameters def_qos_parameters = {
> > > +static const struct ieee80211_qos_parameters def_qos_parameters = {
> > >       {cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3), cpu_to_le16(3)},
> > >       {cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7), cpu_to_le16(7)},
> > >       {2, 2, 2, 2},/* aifs */
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1488381326-7061-1-git-se
> nd-email-gs051095%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFyYaRwvypnHD1RXmQ
> ye4Nis9Mky4qPiEc94O7zujGQmg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1121027524-1488398836=:2401--

