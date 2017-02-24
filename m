X-GM-THRID: 6390734400098664448
X-Received: by 10.46.20.27 with SMTP id u27mr602086ljd.4.1487970346404;
        Fri, 24 Feb 2017 13:05:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls249915ljo.45.gmail; Fri, 24 Feb 2017
 13:05:45 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr557667ljb.2.1487970345655;
        Fri, 24 Feb 2017 13:05:45 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i76si178817wmh.1.2017.02.24.13.05.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Feb 2017 13:05:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,201,1484002800"; 
   d="scan'208";a="261997947"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 22:05:45 +0100
Date: Fri, 24 Feb 2017 22:05:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Caught up on Outreachy patches
In-Reply-To: <f0134e34-0536-4cd2-ae63-84916b77d6f0@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702242202070.2152@hadrien>
References: <20170224175315.GA23075@kroah.com> <605876fe-cfb0-4389-9ca9-aa88a3b4e1ea@googlegroups.com> <alpine.DEB.2.20.1702242147270.2152@hadrien> <f0134e34-0536-4cd2-ae63-84916b77d6f0@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-2042274305-1487970345=:2152"

--8323329-2042274305-1487970345=:2152
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Fri, 24 Feb 2017, SIMRAN SINGHAL wrote:

>
>
> On Saturday, February 25, 2017 at 2:18:13 AM UTC+5:30, Julia Lawall wrote:
>
>
>       On Fri, 24 Feb 2017, SIMRAN SINGHAL wrote:
>
>       >
>       >
>       > On Friday, February 24, 2017 at 11:23:23 PM UTC+5:30, gregkh
>       wrote:
>       >       Hi all,
>       >
>       >       I've now caught up on all submitted outreachy kernel
>       patches.
>       >
>       >       So if you have not gotten an email from my automated
>       patch
>       >       scripts
>       >       saying your patch has been applied, consider it rejected
>       or
>       >       lost.
>       >       Please resend anything that you think is ready to be
>       merged.
>       >
>       >
>       >     Greg, as for some of my patches I didn't get reply.
>       >     So, now how am I supposed to send them i.e as next version
>       >     of that patch or as a completely new patch.
>       >    
>       >     And those patches also include some patches which are
>       acked by 
>       >     Julia, so sending them as completely new patch seems
>       pointless.
>       >     
>       >     So, I request you to please explain how we are supposed to
>       send them
>       >     and sorry for asking this, but can you please explain the
>       reason of, if
>       >     those patches are present in the mailing list then why you
>       are calling
>       >     them lost.
>
>       It could be helpful to indicate which patches you are concerned
>       about.
>        
>
>     https://groups.google.com/forum/#!topic/outreachy-kernel/2uHHwQmOHec 

I think that in this case something strange happened, where Gargi Sharma
did part of your change after you.  I replied to her saying that the
change had already been done, and she agreed.  But Greg responded saying
that he didn't see the earlier patch, so he was going to go ahead and
apply hers.  So you can't resend the original patch, because at least part
of the change has already been made.  You made two changes: one for pBA
andone for skb.  To my recollection, she only changed skb, so you might be
able to resend the pBA part.  If that change has not already been done,
then a new patch would be fine.

julia


>  
>       julia
>
>       >  
>       >       Note, I'm using my staging-testing branch of staging.git
>       right
>       >       now to
>       >       hold patches in.  I can't merge this to my staging-next
>       to go
>       >       into
>       >       linux-next until after 4.11-rc1 is out, in a little over
>       a week.
>       >        If
>       >       anyone has any questions about this, please let me know.
>       >
>       >       thanks,
>       >
>       >       greg k-h
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups
>       > "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an
>       > email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/605876fe-cfb0-4389-
>       9ca9-
>       > aa88a3b4e1ea%40googlegroups.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f0134e34-0536-4cd2-ae63-
> 84916b77d6f0%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2042274305-1487970345=:2152--

