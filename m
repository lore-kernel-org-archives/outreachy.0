X-GM-THRID: 6250655488927596544
X-Received: by 10.194.62.69 with SMTP id w5mr331911wjr.5.1455388304127;
        Sat, 13 Feb 2016 10:31:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.212.74 with SMTP id l71ls317887wmg.52.canary; Sat, 13 Feb
 2016 10:31:43 -0800 (PST)
X-Received: by 10.28.128.204 with SMTP id b195mr354522wmd.7.1455388303429;
        Sat, 13 Feb 2016 10:31:43 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s141si502831wmd.1.2016.02.13.10.31.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 10:31:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,441,1449529200"; 
   d="scan'208";a="202972392"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Feb 2016 19:31:42 +0100
Date: Sat, 13 Feb 2016 19:31:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Bhumika Goyal <bhumirks@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] Remove multiple assignments
In-Reply-To: <8615600f-b029-4b7c-bcdb-aee18a663cc8@googlegroups.com>
Message-ID: <alpine.DEB.2.02.1602131930400.2068@localhost6.localdomain6>
References: <cover.1455343091.git.bhumirks@gmail.com> <alpine.DEB.2.02.1602130729450.2225@localhost6.localdomain6> <8615600f-b029-4b7c-bcdb-aee18a663cc8@googlegroups.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1709962643-1455388303=:2068"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-1709962643-1455388303=:2068
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

>      Ok will keep that in mind. But then checkpatch warning for double
> assignments is false positive ?

Ah ok, I didn't realize that checkpatch complains about this.  I guess the 
change is fine in that case.

julia

> 
>     Thanks
>     Bhumika
>       julia
> 
>       >
>       > Bhumika Goyal (2):
>       >   Staging: wlan-ng: Remove multiple assignments
>       >   Staging: media: Remove multiple assignments
>       >
>       >  drivers/staging/media/davinci_vpfe/dm365_isif.c | 3 ++-
>       >  drivers/staging/wlan-ng/p80211wep.c             | 6 ++++--
>       >  2 files changed, 6 insertions(+), 3 deletions(-)
>       >
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/cover.1455343091.git.bhu
>       mirks%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
> 
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/8615600f-b029-4b7c-bcdb-
> aee18a663cc8%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
> 
> 
--8323328-1709962643-1455388303=:2068--

