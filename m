X-GM-THRID: 6329443835400159232
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.157.33.196 with SMTP id s62mr18929420otb.8.1473776510311;
        Tue, 13 Sep 2016 07:21:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.70 with SMTP id m67ls179896iod.41.gmail; Tue, 13 Sep
 2016 07:21:49 -0700 (PDT)
X-Received: by 10.66.73.101 with SMTP id k5mr835829pav.9.1473776509137;
        Tue, 13 Sep 2016 07:21:49 -0700 (PDT)
Received: by 10.55.9.211 with SMTP id 202msqkj;
        Mon, 12 Sep 2016 08:28:23 -0700 (PDT)
X-Received: by 10.46.33.96 with SMTP id h93mr2764243ljh.4.1473694103214;
        Mon, 12 Sep 2016 08:28:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si52473wmr.2.2016.09.12.08.28.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Sep 2016 08:28:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,323,1470693600"; 
   d="scan'208";a="236150096"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 12 Sep 2016 17:28:22 +0200
Date: Mon, 12 Sep 2016 17:28:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: shailygsoc@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Patch sending failed
In-Reply-To: <c16a60fd-9ed8-4248-bf15-bc5d58217b20@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609121723480.29099@hadrien>
References: <bde04747-c655-40f1-b790-52a0594b62e9@googlegroups.com> <alpine.DEB.2.10.1609121556390.29099@hadrien> <c16a60fd-9ed8-4248-bf15-bc5d58217b20@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2100638691-1473694102=:29099"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2100638691-1473694102=:29099
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 12 Sep 2016, shailygsoc@gmail.com wrote:

> To: Larry Finger <Larry.Finger@lwfinger.net>,
> Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
> Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
> devel@driverdev.osuosl.org,
> linux-kernel@vger.kernel.org
> Cc: Shaily Sangwan <shail...@gmail.com>


You don't need to include the mailing lists (the last two).  I updated the
instructions to add the option --nol.  I don't see the problem other than
that.  Maybe someone else will have an idea.  Perhaps it could be good to
just send it to the list (which actually isn't in your To list), just to
see if that much actually works.

julia

>
>
> On Monday, September 12, 2016 at 7:27:34 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Mon, 12 Sep 2016, shail...@gmail.com wrote:
>
>       > Hi,
>       > I just finished my first patch, a small code cleanup task
>       using
>       > checkpatch.pl.
>       > But I'm unable to send it to the respective maintainers.
>       > I used git send-email, it returned SMTP code 250, but I
>       received a mail
>       > later on, saying:
>       >
>       >
>       > "Delivery to the following recipient failed permanently:
>       >
>       >      {maintainer_email}
>       >
>       > Technical details of permanent failure:
>       > Message rejected. 
>       See https://support.google.com/mail/answer/69585 for more
>       > information." 
>       > for all values of maintainer_email specified.
>       >
>       > How do I get past this?
>
>       Could you forward to the list the To and CC lists of the message
>       you are
>       trying to send?
>
>       julia
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c16a60fd-9ed8-4248-bf15-
> bc5d58217b20%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2100638691-1473694102=:29099--

