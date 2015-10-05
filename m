X-GM-THRID: 6201793060535271424
X-Received: by 10.112.54.197 with SMTP id l5mr5118263lbp.21.1444049141938;
        Mon, 05 Oct 2015 05:45:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.234 with SMTP id s10ls834696wiz.33.gmail; Mon, 05 Oct
 2015 05:45:41 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr2131869wib.7.1444049141503;
        Mon, 05 Oct 2015 05:45:41 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id hs5si357858wib.1.2015.10.05.05.45.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 05:45:41 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,638,1437429600"; 
   d="scan'208";a="181130853"
Received: from 089-101-192072.ntlworld.ie (HELO hadrien.local) ([89.101.192.72])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 05 Oct 2015 14:45:40 +0200
Date: Mon, 5 Oct 2015 13:45:39 +0100 (IST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aybuke Ozdemir <aybuke.147@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000: Added 'function'
 word.
In-Reply-To: <CAEAX3JqmA3eW1w+bh0DpWfYDkCQkVXE9_w8jaJ9W=ZxTYhjGsQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1510051345190.2556@hadrien>
References: <1443967460-14302-1-git-send-email-aybuke.147@gmail.com> <1443967460-14302-2-git-send-email-aybuke.147@gmail.com> <alpine.DEB.2.10.1510041946080.2368@hadrien> <CAEAX3JqmA3eW1w+bh0DpWfYDkCQkVXE9_w8jaJ9W=ZxTYhjGsQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1850992280-1444049140=:2556"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1850992280-1444049140=:2556
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 5 Oct 2015, Aybuke Ozdemir wrote:

> Hi,
>
> I had to build my operating system from scratch. When cloning repository,
> the first part of the set already looks smooth. So I can not edit this
> patch. Can I send a separate patch?

If patch [1/2] is already applied, then just send part 2.

julia

>
> Thanks.
>
> 2015-10-04 21:46 GMT+03:00 Julia Lawall <julia.lawall@lip6.fr>:
>       Something like "fix spelling mistake" would be better.  Because
>       the workd
>       is not really added.
>
>       julia
>
>       On Sun, 4 Oct 2015, Aybuke Ozdemir wrote:
>
>       > This patch organizing missing written word missing.
>       > Found by checkpatch.pl:
>       > CHECK: 'funcion' may be misspelled - perhaps 'function'?
>       >
>       > Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
>       > ---
>       >  drivers/staging/wilc1000/coreconfigurator.c | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/wilc1000/coreconfigurator.c
>       b/drivers/staging/wilc1000/coreconfigurator.c
>       > index 439c828..08f5675 100644
>       > --- a/drivers/staging/wilc1000/coreconfigurator.c
>       > +++ b/drivers/staging/wilc1000/coreconfigurator.c
>       > @@ -296,7 +296,7 @@ static inline u16
>       get_assoc_resp_cap_info(u8 *data)
>       >       return cap_info;
>       >  }
>       >
>       > -/* This funcion extracts the association status code from the
>       incoming       */
>       > +/* This function extracts the association status code from
>       the incoming       */
>       >  /* association response frame and returns association status
>       code            */
>       >  static inline u16 get_asoc_status(u8 *data)
>       >  {
>       > --
>       > 2.1.4
>       >
> > --
> > You received this message because you are subscribed to the Google
> Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to
> outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1443967460-14302-2-git-s
> end-email-aybuke.147%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
>
>
>
> --
> Aybüke Özdemir
> https://about.me/aybukeozdemir
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAEAX3JqmA3eW1w%2Bbh0DpW
> fYDkCQkVXE9_w8jaJ9W%3DZxTYhjGsQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1850992280-1444049140=:2556--

