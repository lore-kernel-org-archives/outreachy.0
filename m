X-GM-THRID: 6469984660854145024
X-Received: by 10.46.93.19 with SMTP id r19mr662885ljb.43.1506414969304;
        Tue, 26 Sep 2017 01:36:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.191.29 with SMTP id p29ls1629904wmf.8.canary-gmail; Tue, 26
 Sep 2017 01:36:08 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBGI8iNYGnSopUg/sGezSHbLv74H/aUQpWcaA+pQd4e8fiXIHuiV58zThFcfh9Bbe7OM657
X-Received: by 10.223.157.134 with SMTP id p6mr505845wre.14.1506414968804;
        Tue, 26 Sep 2017 01:36:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506414968; cv=none;
        d=google.com; s=arc-20160816;
        b=r9sidySXIekqpyF940SgNNXROmugxMsfeHFKO5ckU2/jPypMTJofom6oeQDV7mVK2v
         u1eiJjTnKhEuArQUAbHIftNlmN3sSd7LjMs0tU/aOOSrJqCPpVHaBRUbw285XPLBSFos
         O6csxF0r1y2vIeqe4NtR7JKDAkcqIPJlnNwvu/SyjsURDBdV0iumw03565b4QqWL3Cwv
         Y8SNKdWoypgVBOekSxhRlQnsSmajLMiMW2LbSXXsavSQLsqSo0UG3TYEv5US1v2CFJl9
         1VTKbkkBs1RtGLJ7BLPPomGiHWPLp5iAHlG1ckloRmykHLzpxtGxQ7nEhy0E5bucYzbK
         v+ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=7496b11zL+PB9kWECtQOxHWwA3AyQo9yj0R6UrXJYFA=;
        b=mh7wmvpZPI01wtL6iEvxGJU+uz0RqTod9DJyLHEXEggybQqlD99Tk+dOm2JCReVim4
         eVvmH1juqbpJDvYSl6Vw5z0hMegl2xAYMpCwlFbyZQo7QhNkMBqtk+0Yh4ovWGd0MWiT
         girRCeMOuEeWIkY8Ks9UHHYAtCeE177dHrE98b4A+/fpdH+GFs28HAAnHH5FnkiOYw3L
         BOXfQo+Fxue2IrVX/C7AmRE+Wir2TROavAcCK3ITnd+TjH8S+oT59Oqul12OHmNHn4+a
         XRmWLcZ4xj6wnU9LnnuVRPfwbM8yAXwgSgmcwY0zuFlQHs3kOdW28S4Vbz6vDOmuhHmW
         HyjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k18si852640wmd.1.2017.09.26.01.36.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 01:36:08 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,440,1500933600"; 
   d="scan'208";a="292729872"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 10:36:08 +0200
Date: Tue, 26 Sep 2017 10:36:07 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Muraru Mihaela <mihaela.muraru21@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Fix indent coding
 style issue
In-Reply-To: <CANRJjP0di9gZSuzsVZVgVR4OuszmOPY6vzYDMtN3LCV+YaZ62g@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709261035080.2925@hadrien>
References: <20170926072450.GA10682@domino-MS-16Y1> <alpine.DEB.2.20.1709260938450.7823@hadrien> <CANRJjP0di9gZSuzsVZVgVR4OuszmOPY6vzYDMtN3LCV+YaZ62g@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-372344267-1506414968=:2925"

--8323329-372344267-1506414968=:2925
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Tue, 26 Sep 2017, Muraru Mihaela wrote:

> Julia, what you suggest me should I send patch version 3 with mention that I
> put your ack in,or �should �I send other version of patch v2 , with your ack
> in ?

Go for v3 to eliminate ambiguity.  Put "v3: Added back ack" under the ---
to indicate that nothing else has changed.

julia

>
> Mention: I sent this mail from gmail, because I don't have access to my
> computer right now
>
> Thank you,�
>
> Mihaela
>
> On Tue, Sep 26, 2017 at 10:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Tue, 26 Sep 2017, Mihaela Muraru wrote:
>
>       > This patch fixes an indentation coding style issue found by
>       > checkpatch.pl:
>       >
>       > WARNING: suspect code indent for conditional statements (16,
>       32)
>       >
>       > Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
>       >
>       > ---
>       > Changes in v2:
>       >� � - rewrite the commint message.
>
>       You should preserve my ack.
>
>       julia
>
>       > ---
>       >� drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
>       >� 1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c
>       b/drivers/staging/rtl8712/rtl8712_recv.c
>       > index 0978727..8f555e6 100644
>       > --- a/drivers/staging/rtl8712/rtl8712_recv.c
>       > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
>       > @@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame
>       *precvframe,
>       >� � � �list_add_tail(&(precvframe->u.hdr.list),
>       &pfree_recv_queue->queue);
>       >� � � �if (padapter != NULL) {
>       >� � � � � � � �if (pfree_recv_queue ==
>       &precvpriv->free_recv_queue)
>       > -� � � � � � � � � � � � � � �precvpriv->free_recvframe_cnt++;
>       > +� � � � � � � � � � �precvpriv->free_recvframe_cnt++;
>       >� � � �}
>       >� � � �spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
>       >� � � �return _SUCCESS;
>       > --
>       > 2.7.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170926072450.GA10682%4
> 0domino-MS-16Y1.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
--8323329-372344267-1506414968=:2925--

