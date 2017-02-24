X-GM-THRID: 6390734400098664448
X-Received: by 10.28.45.71 with SMTP id t68mr163848wmt.2.1487969293721;
        Fri, 24 Feb 2017 12:48:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.84 with SMTP id x20ls242000ljd.47.gmail; Fri, 24 Feb
 2017 12:48:12 -0800 (PST)
X-Received: by 10.25.151.69 with SMTP id z66mr625057lfd.12.1487969292336;
        Fri, 24 Feb 2017 12:48:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si229216wmf.0.2017.02.24.12.48.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 12:48:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="261996986"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 21:48:11 +0100
Date: Fri, 24 Feb 2017 21:48:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Caught up on Outreachy patches
In-Reply-To: <605876fe-cfb0-4389-9ca9-aa88a3b4e1ea@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702242147270.2152@hadrien>
References: <20170224175315.GA23075@kroah.com> <605876fe-cfb0-4389-9ca9-aa88a3b4e1ea@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-173430238-1487969292=:2152"

--8323329-173430238-1487969292=:2152
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 24 Feb 2017, SIMRAN SINGHAL wrote:

>
>
> On Friday, February 24, 2017 at 11:23:23 PM UTC+5:30, gregkh wrote:
>       Hi all,
>
>       I've now caught up on all submitted outreachy kernel patches.
>
>       So if you have not gotten an email from my automated patch
>       scripts
>       saying your patch has been applied, consider it rejected or
>       lost.
>       Please resend anything that you think is ready to be merged.
>
>
>     Greg, as for some of my patches I didn't get reply.
>     So, now how am I supposed to send them i.e as next version
>     of that patch or as a completely new patch.
>    
>     And those patches also include some patches which are acked by 
>     Julia, so sending them as completely new patch seems pointless.
>     
>     So, I request you to please explain how we are supposed to send them
>     and sorry for asking this, but can you please explain the reason of, if
>     those patches are present in the mailing list then why you are calling
>     them lost.

It could be helpful to indicate which patches you are concerned about.

julia

>  
>       Note, I'm using my staging-testing branch of staging.git right
>       now to
>       hold patches in.  I can't merge this to my staging-next to go
>       into
>       linux-next until after 4.11-rc1 is out, in a little over a week.
>        If
>       anyone has any questions about this, please let me know.
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
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/605876fe-cfb0-4389-9ca9-
> aa88a3b4e1ea%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-173430238-1487969292=:2152--

