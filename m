X-GM-THRID: 6534171640869158912
X-Received: by 10.28.124.23 with SMTP id x23mr287338wmc.16.1521632022754;
        Wed, 21 Mar 2018 04:33:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.69 with SMTP id r66ls786232wmf.10.gmail; Wed, 21 Mar
 2018 04:33:41 -0700 (PDT)
X-Google-Smtp-Source: AG47ELt3WgLmF1pZQcqu9jWZHWEXrYuSl9uxQinusZPHLJfTZVxOh/6m4Q+3vsFQrwG4JIbv6tMX
X-Received: by 10.28.192.9 with SMTP id q9mr318836wmf.20.1521632021580;
        Wed, 21 Mar 2018 04:33:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521632021; cv=none;
        d=google.com; s=arc-20160816;
        b=xu0JX2Ao0nKgxYhd0X3vEZ5rRnRY6+dE5+3qE1/y8hd5OJQu456iZz80m6+V1bT4tN
         CiZ02wShvpjNB1sRZxsvToZeFNTazUzmnAm+73sDVJAoqolBJzUcQe6DDA0ZizajL/TG
         8Rse7QBuhk0EOuUlINElSWW5FpCiAGn26ntTQaAkQAmrwfkw4apKp7WbDyGxHBPzarec
         EHFLpvw1KUx1CsYmgxTo67Z/cC9yBxWNJ2qCDQtbvrNvuZmfI6NqIVGLaqSC/B3BAfmM
         bxvOP5+zgEKN1YALZ0h8WOlMW5Xpq3uNE9bSfMUl9s4M29Y6eLQCVnlNxmGRuDFX6Aka
         nrBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=FEa8O8u/y3Juw5+5HuDnqyaS+QbSthXWFhQjwzmDsOw=;
        b=WFUc/+Dv9j5AHFgaDyPaAqkMfZNnbvBS3eqzzsHcpoEDj6/ZwOjtsgGONmWTxmQOBb
         11H4XXjDRwWKGLtcQfFkMvHnIkJSW3TwNeq9S2krVO/wM97/HaFOOohcCTQyQ5i8m3yo
         dMiDtvtm912sHqc1GEdB+g0Xmu9GmLX6az5eQGoWXCjJD8BY7L9VWPVw4MRkwtyN5cxA
         YZqXCWMy29HiwQ6QViQGKE5S5C16bjZwwkuw/PE5ciN2F9P4RQw5CrphwjpfSAy7RbYv
         tjq2B8zr/7yH6sXbytxh6UNB1kzK2KCvCGjs8S056SMung7bjfZTVdH6CIFdEKIWJa0d
         4UAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i3si89092wmb.2.2018.03.21.04.33.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Mar 2018 04:33:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,339,1517871600"; 
   d="scan'208";a="259260431"
Received: from unknown (HELO [10.6.152.236]) ([206.71.246.138])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2018 12:33:40 +0100
Date: Wed, 21 Mar 2018 07:33:39 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: application
In-Reply-To: <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803210733230.2559@hadrien>
References: <alpine.DEB.2.20.1803180739260.3299@hadrien> <e84b04f6-0288-4490-b3e3-8bf9166f3d4f@googlegroups.com> <CAO393ABtUKH6t6aZwSX0tPoDX7dQ5MggeWsN8t+Rhd1wnV6DBA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-858143455-1521632021=:2559"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-858143455-1521632021=:2559
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 21 Mar 2018, Shraddha Barke wrote:

>
>
> On Tue, Mar 20, 2018 at 9:54 PM, Nishka Dasgupta
> <nishka.dasgupta_ug18@ashoka.edu.in> wrote:
>
>
>       On Sunday, March 18, 2018 at 12:13:08 PM UTC+5:30, Julia Lawall
>       wrote:
>             Hello,
>
>             Currently three of the kernel projects have a
>             deadline of March 22 and the
>             Userfaultd project has a deadline of March 29.  In
>             either case, the
>             deadline is 4pm UTC.  You can find out what time
>             that is in your area
>             using the following link:
>
>             https://www.google.com/search?q=4pm+UTC+to
>
>             You make a separate application for each project you
>             are interested in.
>             If you are interested in multiple projects, please
>             clearly indicate your
>             preference between them.
>
>             julia
>
>
>       Does this include the project "dri-devel aka kernel GPU
>       subsystem"? Its deadline is also listed as 29th on the outreachy
>       website.
>
>
> Yes, you should make a separate application for "dri-devel aka kernel GPU
> subsystem" project as well. 

Th date for DRM changed after I sent my message.

julia

>
>       Thanking you,
>       Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send
> an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/e84b04f6-0288-4490-b3e3-
> 8bf9166f3d4f%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
>
>
> --
> Shraddha
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAO393ABtUKH6t6aZwSX0tPo
> DX7dQ5MggeWsN8t%2BRhd1wnV6DBA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-858143455-1521632021=:2559--

