X-GM-THRID: 6256304454696435712
X-Received: by 10.112.170.7 with SMTP id ai7mr1037688lbc.1.1456664644867;
        Sun, 28 Feb 2016 05:04:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.17.69 with SMTP id g66ls325127lfi.47.gmail; Sun, 28 Feb
 2016 05:04:04 -0800 (PST)
X-Received: by 10.112.129.65 with SMTP id nu1mr1099593lbb.18.1456664644248;
        Sun, 28 Feb 2016 05:04:04 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w10si440170wmw.3.2016.02.28.05.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:04:04 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,514,1449529200"; 
   d="scan'208";a="166232070"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Feb 2016 14:04:03 +0100
Date: Sun, 28 Feb 2016 14:04:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: sandhya bankar <bankarsandhya512@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Handle error
 condition.
In-Reply-To: <CAA3ASzkJdckd-6yvhqPuVuRL71Uk5B7DGGoRbrJgkZqHK8o-2w@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1602281402280.2147@localhost6.localdomain6>
References: <20160228033629.GA7898@sandhya> <alpine.DEB.2.02.1602281301100.2147@localhost6.localdomain6> <CAA3ASzkJdckd-6yvhqPuVuRL71Uk5B7DGGoRbrJgkZqHK8o-2w@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-4388680-1456664643=:2147"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-4388680-1456664643=:2147
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 28 Feb 2016, sandhya bankar wrote:

> The mkimage(..) is returning error i.e return 1 from below error code path,
> First error condition is if kzalloc(..) has failed,then return 1.
> Second error condition is if chunk mismatch then it return 1.
> 
> I also checked the prism2_fwapply(..) in every error condition,it is
> returning 1,so i have used return 1 in above patch.

Yes, I see that they are returning 1 everywhere, so there is no problem 
with the patch.  But the whole code should be improved to return proper 
error codes, like -ENOMEM on allocation failure, rather than 1.  There are 
even some comments in the code saying that typically an error code is 
returned on failure, but that is not the case.  1 indeed looks more like 
success (true).

julia

> 
> 
> Do you have any suggestion ?
> 
> On Sun, Feb 28, 2016 at 5:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> 
> 
>       On Sun, 28 Feb 2016, Sandhya Bankar wrote:
> 
>       > Handle error condition.
>       > Below semantic patch found,their is double assignment to
>       'result' variable.so instead of deleting double
>       assignment,handling error condition for "result = mkimage(..)".
>       > @@
>       > expression e1,e2,e3;
>       > @@
>       >
>       > (
>       >  (<+...e1++...+>)=e2;
>       > |
>       >  (<+...e1--...+>)=e2;
>       > |
>       >  (<+...++e1...+>)=e2;
>       > |
>       >  (<+...--e1...+>)=e2;
>       > |
>       > e1=e2;
>       > e1 = <+...e1...+>;
>       > |
>       > *e1=e2;
>       > *e1=e3;
>       >
>       > Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
>       > ---
>       >  drivers/staging/wlan-ng/prism2fw.c | 4 ++++
>       >  1 file changed, 4 insertions(+)
>       >
>       > diff --git a/drivers/staging/wlan-ng/prism2fw.c
>       b/drivers/staging/wlan-ng/prism2fw.c
>       > index 8fc80df..35fd5fb 100644
>       > --- a/drivers/staging/wlan-ng/prism2fw.c
>       > +++ b/drivers/staging/wlan-ng/prism2fw.c
>       > @@ -333,6 +333,10 @@ static int prism2_fwapply(const struct
>       ihex_binrec *rfptr,
>       >
>       >       /* Make the image chunks */
>       >       result = mkimage(fchunk, &nfchunks);
>       > +     if (result) {
>       > +             netdev_err(wlandev->netdev, "Failed to make
>       image chunk.\n");
>       > +             return 1;
>       > +     }
> 
> Perhaps it would be possible to move this code away from using 1 for
> failure, towards using actual error codes.
> 
> julia
> 
> >
> >       /* Do any plugging */
> >       result = plugimage(fchunk, nfchunks, s3plug, ns3plug, &pda);
> > --
> > 1.8.3.4
> >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20160228033629.GA7898%4
> 0sandhya.
> > For more options, visit https://groups.google.com/d/optout.
> >
> 
> 
> 
> 
--8323328-4388680-1456664643=:2147--

