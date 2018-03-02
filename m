X-GM-THRID: 6528045049398165504
X-Received: by 10.80.141.16 with SMTP id s16mr1633486eds.7.1519978441543;
        Fri, 02 Mar 2018 00:14:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.190.10 with SMTP id a10ls4636147edi.6.gmail; Fri, 02 Mar
 2018 00:13:59 -0800 (PST)
X-Google-Smtp-Source: AG47ELsFCBYt+KAgAsZKOs+Sc2TsnwtJS8qKAaIsDx7Etj2GcUkKfam/Z9SmKh2kk/fMi7+m2l6U
X-Received: by 10.80.149.230 with SMTP id x35mr1631758eda.3.1519978439916;
        Fri, 02 Mar 2018 00:13:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519978439; cv=none;
        d=google.com; s=arc-20160816;
        b=VOMHhbdb7k21OFTsY8oUvve0nbU0afKrhK5b9Ituw6iDayB/gULb8jEtPCbnKjAF69
         cRjIzXmMURKndq/qHA9aoUhSP0EHP8fdvmsw3Nz7gQjAyPHWJAm+KM2dyNKt/nJvTIVP
         /Stgeq+eq1F5D5unn+5lHC5auO3bFjo9TxITJvlyZLfGta/DurruxhzdukyS/gqxiutW
         RT94mLF+DZACgJER8t1YboZQUc6IZuCH+5oI/oWhskxKpBf2m0vxYBAc6qJ9H4bfDDK2
         4+/mv3GlFJL+jRf2BNSjOz3jqJ9ofssblTH6+z03EoHYWQ1vkwSAr26e97ibmK0nI+F7
         W88Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-id:mime-version:user-agent:references:message-id
         :in-reply-to:subject:cc:to:from:date:arc-authentication-results;
        bh=rZ2mcjAssaIMa3fyH+FwpGkQsuAXHFKKghS5Hdku2zE=;
        b=fEakR4JuXc0MD6lV2HYhLoYAhKEhO1yTO6FGS/KM+wvWTwtBKSPiIbewMKzC5+/oam
         BLDYZq5PTDT8Hum5q7FoYl4Qb/joGZmj5OUt6g0G0yJ6peShsH/ucATOgj5L9nE73WcV
         EvvcyEbahYsdxptHdX9kRSpi1Ehc/Y5LH8TTFS231PY/8r2I2FIcNJM4xZgjCQg0z9rZ
         f5tuMKrhcHxqtFJKOy/EczHbRlNeM3BZ+wL3mD2z2ODoG6kQQRK2NsWWZWcqxmAdOIXW
         +VrWKXLelNgIvWfhYwE7MWiROYwtgXESWv9jsmQ/RWMmChSx7svxPqitKOfQ/+vQGqTB
         RDsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t4si307723edt.2.2018.03.02.00.13.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 00:13:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,411,1515452400"; 
   d="scan'208";a="316009175"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2018 09:13:59 +0100
Date: Fri, 2 Mar 2018 09:13:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: shikha1212.goyal@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Discuss for Outreachy Round 16 with Linux
In-Reply-To: <92318f00-1bc5-42ee-8ca1-dc512cbe7f03@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1803020912100.2214@hadrien>
References: <b20afe74-c4fa-4148-ae29-2532f0976356@googlegroups.com> <alpine.DEB.2.20.1803012047330.3474@hadrien> <19d5b124-ad58-48b0-b496-cb2f48f4e43a@googlegroups.com> <49394e71-864c-4dbb-b58d-bb9168682e9e@googlegroups.com> <alpine.DEB.2.20.1803020728320.2214@hadrien>
 <92318f00-1bc5-42ee-8ca1-dc512cbe7f03@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1432577696-1519978415=:2214"
Content-ID: <alpine.DEB.2.20.1803020913490.2214@hadrien>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1432577696-1519978415=:2214
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.1803020913491.2214@hadrien>



On Fri, 2 Mar 2018, shikha1212.goyal@gmail.com wrote:

>
>
> On Friday, March 2, 2018 at 12:00:03 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Thu, 1 Mar 2018, shikha12...@gmail.com wrote:
>
>       > Waiting for Reply
>
>       Waiting for a reply about what? �There was already a reply to
>       your initial
>       question and you already said Thank you about it.
>
> On the outreachy page, wriiten, Linux is taking only one intern , but you
> mentioned 4 interns.
> The link of the page is (https://www.outreachy.org/apply/project-selection/)
> and here it is wriiten 1.

If you look further down in this message, you will see that you already
asked the question, I already answered the question.  Specifically:

"To our understanding there will be four internships"

julia

>
>       Part of the problem is that you are top posting, so it is not
>       clear what
>       your comments are related to. �Please respond as I have done
>       underneath te
>       text you are referring to.
>
>       thanks,
>       julia
>
>       >
>       > Regards
>       >
>       > On Friday, March 2, 2018 at 1:21:43 AM UTC+5:30,
>       shikha12...@gmail.com
>       > wrote:
>       > � � � Thankyou
>       >
>       > � � � On the page it's written only one
>       >
>       > � � � Shikha
>       >
>       > � � � On Friday, March 2, 2018 at 1:17:56 AM UTC+5:30, Julia
>       Lawall
>       > � � � wrote:
>       >
>       > � � � � � � �
>       > � � � � � � On Thu, 1 Mar 2018, shikha12...@gmail.com wrote:
>       >
>       > � � � � � � > [cleardot.gif] Hello
>       > � � � � � � >
>       > � � � � � � > I am shikha Goyal, Senior year student at a
>       > � � � � � � university of India.
>       > � � � � � � >
>       > � � � � � � > I want to apply for outreachy for this round,
>       but
>       > � � � � � � I am afraid as on the
>       > � � � � � � > outreachy page it is written, Linux will take
>       only
>       > � � � � � � 1 intern.
>       > � � � � � � >
>       > � � � � � � > But at the same time I can see 4 projects. Want
>       to
>       > � � � � � � clarify the procedure and
>       > � � � � � � > selection criteria.
>       > � � � � � � >
>       > � � � � � � > I qualified the eligiblity criteria for this
>       > � � � � � � coming round.
>       >
>       > � � � � � � To our understanding there will be four
>       internships
>       > � � � � � � available.
>       >
>       > � � � � � � julia
>       >
>       >
>       > � � � � � � >
>       > � � � � � � > Waiting for reply.
>       > � � � � � � >
>       > � � � � � � > Regards
>       > � � � � � � > shikha
>       > � � � � � � > Amrita University
>       > � � � � � � >
>       > � � � � � � > --
>       > � � � � � � > You received this message because you are
>       > � � � � � � subscribed to the Google Groups
>       > � � � � � � > "outreachy-kernel" group.
>       > � � � � � � > To unsubscribe from this group and stop
>       receiving
>       > � � � � � � emails from it, send an
>       > � � � � � � > email to outreachy-kern...@googlegroups.com.
>       > � � � � � � > To post to this group, send email to
>       > � � � � � � outreach...@googlegroups.com.
>       > � � � � � � > To view this discussion on thewebvisithttps://groups.google.com/d/msgid/outreachy-kernel/b20afe74-c4fa-41
>       48-
>       > � � � � � � ae29-
>       > � � � � � � > 2532f0976356%40googlegroups.com.
>       > � � � � � � > For more options, visit
>       > � � � � � � https://groups.google.com/d/optout.
>       > � � � � � � >
>       > � � � � � � >
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
>       > To view this discussion on the webvisithttps://groups.google.com/d/msgid/outreachy-kernel/49394e71-864c-4dbb-
>       b58d-
>       > bb9168682e9e%40googlegroups.com.
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
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/92318f00-1bc5-42ee-8ca1-
> dc512cbe7f03%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1432577696-1519978415=:2214--

