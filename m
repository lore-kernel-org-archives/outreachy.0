X-GM-THRID: 6388897294904721408
X-Received: by 10.25.169.14 with SMTP id s14mr1734888lfe.3.1487532223405;
        Sun, 19 Feb 2017 11:23:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.18.90 with SMTP id h87ls359183lfi.32.gmail; Sun, 19 Feb
 2017 11:23:42 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr1117261lfi.2.1487532222723;
        Sun, 19 Feb 2017 11:23:42 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si600392wmn.2.2017.02.19.11.23.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 11:23:42 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="213984703"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 20:23:42 +0100
Date: Sun, 19 Feb 2017 20:23:41 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove ternary
 operator
In-Reply-To: <CAOCi2DHdy=qa0QKSTUUbfvtjME0JKua46Ms52HfS-Oexyy1KCw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702192022250.2363@hadrien>
References: <1487530938-17297-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1702192012320.2363@hadrien> <CAOCi2DHdy=qa0QKSTUUbfvtjME0JKua46Ms52HfS-Oexyy1KCw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1208869979-1487532178=:2363"
Content-ID: <alpine.DEB.2.20.1702192023000.2363@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1208869979-1487532178=:2363
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.1702192023001.2363@hadrien>



On Mon, 20 Feb 2017, Gargi Sharma wrote:

>
> > Maybe an if would be better in cases like this where there is still
> > something to test.
> So I should replace the ? operator with an if statement for better
> readability?

I don't know if it is a hard and fast rule, but here where the lines are
too long (and the variable names are too long also :), I think that an if
would look nicer.

julia

>
> thanks,
> gargi
> >
> > julia
> >
> > >
> > > � � � //
> > > � � � // Config TX STBC setting
> > > @@ -998,7 +998,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
> > > � � � //
> > > � � � // TODO:
> > > � � � pHTInfo->bCurSuppCCK =
> > > - � � � � � �
> ((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
> > > + � � � � � � ((pHTInfo->bRegSuppCCK)?(pPeerHTCap->DssCCk == 1):false);
> > >
> > >
> > > � � � //
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1487530938-17297-1-git-s
> end-email-gs051095%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>
>
--8323329-1208869979-1487532178=:2363--

