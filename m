X-GM-THRID: 6394869682861506560
X-Received: by 10.46.81.66 with SMTP id b2mr2525425lje.3.1489090958134;
        Thu, 09 Mar 2017 12:22:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.13.9 with SMTP id 9ls804338ljn.46.gmail; Thu, 09 Mar 2017
 12:22:37 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr2582176ljb.28.1489090957498;
        Thu, 09 Mar 2017 12:22:37 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si2069wmg.0.2017.03.09.12.22.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 12:22:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,137,1486422000"; 
   d="scan'208";a="216212799"
Received: from 198.67.28.109.rev.sfr.net (HELO [192.168.1.69]) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2017 21:22:15 +0100
Date: Thu, 9 Mar 2017 21:22:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] drivers/staging/vc04_services
In-Reply-To: <20170309164024.GA30703@kroah.com>
Message-ID: <alpine.DEB.2.20.1703092120390.2306@hadrien>
References: <alpine.DEB.2.20.1703072219270.2292@hadrien> <20170309164024.GA30703@kroah.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 9 Mar 2017, Greg KH wrote:

> On Tue, Mar 07, 2017 at 10:20:21PM +0100, Julia Lawall wrote:
> > The maintainers of drivers/staging/vc04_services would prefer not to
> > be CCd on Outreachy patches.  Just send them to the outreachy mailing
> > list, without using get_maintainers.
>
> Really?  that's not good, their code is in staging they are responsible
> for it, I want them to see the cleanup patches.  And at the least, I
> want to be cc:ed on them please.

Don't you get everything sent to the outreachy mailing list?

I also regret their point of view.  Some complicated patches have been
posted on their code, and it would be good to have their feedback, if
anything seems amiss.

julia


>
> thanks,
>
> greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309164024.GA30703%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.
>

