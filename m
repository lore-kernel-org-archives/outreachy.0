X-GM-THRID: 6390372862333550592
X-Received: by 10.25.212.76 with SMTP id l73mr3951984lfg.13.1487882797946;
        Thu, 23 Feb 2017 12:46:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.91.73 with SMTP id p70ls41342wmb.9.gmail; Thu, 23 Feb 2017
 12:46:37 -0800 (PST)
X-Received: by 10.28.45.7 with SMTP id t7mr394186wmt.9.1487882797288;
        Thu, 23 Feb 2017 12:46:37 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y19si226394wmd.0.2017.02.23.12.46.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 12:46:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,198,1484002800"; 
   d="scan'208";a="261854732"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2017 21:46:36 +0100
Date: Thu, 23 Feb 2017 21:46:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle Challenge Problem 3
In-Reply-To: <CAOCi2DFbaEUW4Nrwkq-AeaXT28xJyX5D0SRkoAyUNDfrijujkw@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702232144450.2103@hadrien>
References: <CAOCi2DE66sqkwAAQiZKNYcY5tWxg30n+qmrq3Yqb2-L1uPHqBA@mail.gmail.com> <alpine.DEB.2.20.1702232056220.2103@hadrien> <CAOCi2DFbaEUW4Nrwkq-AeaXT28xJyX5D0SRkoAyUNDfrijujkw@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2085898941-1487882797=:2103"

--8323329-2085898941-1487882797=:2103
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 24 Feb 2017, Gargi Sharma wrote:

> On Fri, Feb 24, 2017 at 1:27 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> >
> > On Thu, 23 Feb 2017, Gargi Sharma wrote:
> >
> > > Hi,
> > >
> > > Here's my Coccinelle script to handle NULL tests for the following
> functions
> > > kmalloc, devm_kzalloc, kmalloc_array, devm_ioremap, usb_alloc_urb,
> > > alloc_netdev, dev_alloc_skb.
> > >
> > > @@
> > > expression ptr;
> > > position p;
> > > statement s0;
> > > @@
> > >
> > > ptr@p=\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|usb_alloc_urb\|alloc
> _
> > > netdev\|dev_alloc_skb\)(...)
> > > ... when != ptr
> > >
> > > if (
> > > (
> > > + !
> > > ptr
> > > - == NULL
> > > )
> > >  ) s0
> >
> > This looks fine.  To be a bit more general, you can put "else s1".  If
> > there is an else that is just a metavariable that is not used elsewhere,
> > then it will also match the case where the else is completely absent.
>
> I did make the changes you suggested to my coccinelle script. I have a
> confusion
> though, when running this script on a directory, the script does not handle
> all .c files
> for some reason. For example wlan-ng staging driver has 12 .c files but the
> script says
> that only 4 files match.

Coccinelle analyzes your semantic patch to find the important words.  In
this case, they would be kmalloc etc.  I guess the other files don't
contain these important words.  Since there is no chance that the rule
will match, Coccinelle doesn't bother parsing them.  Coccinelle parsing
is often slow, particularly if it can't interpret something, in which
case is retries, so this gives a big time savings in practice.

julia


>
> gargi
> >
> > julia
> >
> > > Thanks,
> > > Gargi
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> Groups
> > > "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send
> an
> > > email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DE66sqkwAAQiZ
> KNYcY
> > > 5tWxg30n%2Bqmrq3Yqb2-L1uPHqBA%40mail.gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> > >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFbaEUW4Nrwkq-AeaX
> T28xJyX5D0SRkoAyUNDfrijujkw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2085898941-1487882797=:2103--

