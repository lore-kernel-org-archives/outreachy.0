X-GM-THRID: 6388168209387749376
X-Received: by 10.46.87.27 with SMTP id l27mr728883ljb.28.1488006529238;
        Fri, 24 Feb 2017 23:08:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.99.86 with SMTP id x83ls552546wmb.27.gmail; Fri, 24 Feb
 2017 23:08:48 -0800 (PST)
X-Received: by 10.28.17.11 with SMTP id 11mr220350wmr.9.1488006528441;
        Fri, 24 Feb 2017 23:08:48 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si330828wmn.2.2017.02.24.23.08.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 23:08:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,202,1484002800"; 
   d="scan'208";a="214669343"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2017 08:08:37 +0100
Date: Sat, 25 Feb 2017 08:08:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Varsha Rao <rvarsha016@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com
Subject: Re: [Outreachy kernel] Re: [PATCH 0/4] staging: rtl8712: Fix multiple
 checkpatch issues.
In-Reply-To: <9b276508-b8aa-4484-970f-82303cb3d8b4@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702250805390.2088@hadrien>
References: <58a75522.07cf620a.9c799.fc53@mx.google.com> <20170224172824.GA395@kroah.com> <9b276508-b8aa-4484-970f-82303cb3d8b4@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2059954426-1488006517=:2088"

--8323329-2059954426-1488006517=:2088
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 24 Feb 2017, Varsha Rao wrote:

>
>
> On Friday, February 24, 2017 at 10:58:31 PM UTC+5:30, gregkh wrote:
>       On Sat, Feb 18, 2017 at 01:25:04AM +0530, Varsha Rao wrote:
>       > Fixes multiple checkpatch issues in rtl8712 driver.
>       >
>       > Varsha Rao (4):
>       >   staging: rtl8712: Remove unnecessary parentheses.
>       >   staging: rtl8712: Removes the FSF mailing address.
>       >   staging: rtl8712: Remove space after a cast.
>       >   staging: rtl8712: Match alignment with open parenthesis.
>       >
>       >  drivers/staging/rtl8712/os_intfs.c | 14 +++++---------
>       >  1 file changed, 5 insertions(+), 9 deletions(-)
>
>       Can you resend a whole version 2 (or is it 3) of this patch
>       series?
>       I've dropped your previous patches as they seemed to need more
>       work
>       based on the reviews.
>
>     I don't know but two patches from the patchset, are already applied.
>     Those are the following:
>      1] https://groups.google.com/forum/#!topic/outreachy-kernel/73QR9IxiLnY
>      2] https://groups.google.com/forum/#!topic/outreachy-kernel/GQMhL7pqSvk
>    
>    The following are the patches which have not been applied but they are
> acknowledged by Julia:
>      1] https://groups.google.com/forum/#!topic/outreachy-kernel/pnbl9sz45ao
>      2]
> https://groups.google.com/forum/#!topic/outreachy-kernel/aCvHU5BguH0      
>   
>      
>     So do I have to resend them?

Yes.  My ack just means that I looked at it an it looks OK.  It doesn't
mean that it is integrated into the Linux kernel code in any way.  Patches
get out of date after a while, due to changes on the same or nearby lines
of code.  So after some time, it is better to update your kernel, redo the
changes, and resend the patches.

You can keep my ack in the new version.

julia




>  
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/9b276508-b8aa-4484-970f-
> 82303cb3d8b4%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2059954426-1488006517=:2088--

