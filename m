X-GM-THRID: 6536210357179908096
X-Received: by 2002:a19:cd90:: with SMTP id d138-v6mr1231795lfg.25.1521885754896;
        Sat, 24 Mar 2018 03:02:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.42.3 with SMTP id q3ls1271533ljq.15.gmail; Sat, 24 Mar 2018
 03:02:33 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvnQJ71qURNQ3xnRUbyt+dzkD2H+SH1iMWb7ZxMrFeTS0OH6Pv2ekl8CxRewktpf0SZOjCL
X-Received: by 10.46.53.4 with SMTP id z4mr1984410ljz.22.1521885753505;
        Sat, 24 Mar 2018 03:02:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521885753; cv=none;
        d=google.com; s=arc-20160816;
        b=WJSiUaysXmPb4cWBDottkU90tO4wVeAPl7vDfh7tVeZe+1rw5x6540WofKB2ZMNRgO
         HZTqlE5mgjOVqM5sGIxxtDuRDV8aRbh+eUANC0rjMNzJBXujkc/2aw5Tp/3VWx14DKC2
         KGNUn3hWgIcw3PQaw841ty9xcGDXObrJprOyOd3gV6pPC/SRkvyEWwU8dYSftDNiLcHh
         e+VBQqgGMAhKaWfriROYHmh8MJxhVMi52uZsW9DU7oosbTEavURvkyjPrMqZd6u1gKPb
         m4GNJqwYLIjv3P0yF7um61+NqN2ioagZFqYemZSC2D685eVhw2c6WIW5HtYyje8pNWRs
         quWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=amwc+DbbCO+oNI2ga7KTqxRLRsq3grW00e8GMO7WvpI=;
        b=CT4JeLYn+cdyPKqIQg32Nrov4weHQEpnJuLbX5UBPIxPCXpC0wJrvvYXzRd3Eg9UGK
         eZQSf0mpk3ILi03n3aVAz3wtpffrgRo8hgDpOPJZJh0yLCuVqHWeONUCl6ihuCX2kEEi
         UuuAArmxmG3HXDSVTiEkqN3rs7ZOnkbb8jbuuU3UCWmiZC7V2vACfHugfBaJPH7ABz+9
         rOuAcghYm1IphtnWwHT8066SEMF/lH6edcbNMLlWgQA4yt2SSe2TTEdjyRcVLcDxy3PN
         sGYUqvKIBf1nkEmVGhDV8Z85fCcycDpaKZmtqCIpIkmD3oF9xx/PFv1WgmkYgLJTNZyD
         52pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j4si422969lja.1.2018.03.24.03.02.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 03:02:33 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,354,1517871600"; 
   d="scan'208";a="259654164"
Received: from unknown (HELO [10.71.3.76]) ([209.118.33.125])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Mar 2018 11:02:20 +0100
Date: Sat, 24 Mar 2018 06:02:18 -0400 (EDT)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: forest@alittletooquiet.net, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2 4/5] staging: vt6655: Change
 _chip_type from typedef enum to enum
In-Reply-To: <CAC4++KC39g_k5CPWTRLK4GLPcM_d3xyG4M3mxU_xc9GEPtd8CA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1803240601420.2577@hadrien>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <1521830040-7138-4-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in> <alpine.DEB.2.20.1803231437560.2450@hadrien>
 <CAC4++KC39g_k5CPWTRLK4GLPcM_d3xyG4M3mxU_xc9GEPtd8CA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Mar 2018, Nishka Dasgupta wrote:

> On Sat, Mar 24, 2018 at 12:08 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Fri, 23 Mar 2018, Nishka Dasgupta wrote:
> >
> >> Change _chip_type from typedef enum to enum.
> >> Issue found with checkpatch.
> >>
> >> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> >> ---
> >> Changes in v2:
> >>  - Make subject and commit message clear.
> >>
> >>  drivers/staging/vt6655/device_cfg.h | 4 ++--
> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/vt6655/device_cfg.h b/drivers/staging/vt6655/device_cfg.h
> >> index 3972881..2f38634 100644
> >> --- a/drivers/staging/vt6655/device_cfg.h
> >> +++ b/drivers/staging/vt6655/device_cfg.h
> >> @@ -51,8 +51,8 @@ struct version {
> >>
> >>  #define PKT_BUF_SZ          2390
> >>
> >> -typedef enum  _chip_type {
> >> +enum CHIP_TYPE {
> >>       VT3253 = 1
> >> -} CHIP_TYPE, *PCHIP_TYPE;
> >> +};
> >
> > I don't think that a type name in all capital letters is such a good idea.
> > But maybe this type is never used?  If it is not used, it should be
> > removed.
>
> All the other typedefs I found in this driver had names in all upper
> case; I modified this one for the sake of parity (and also because I
> could not find any usage of it).

In the kernel, normally only macros are in upper case.

But since this is not used, you can just drop it.

julia

>
> > julia
> >
> >>
> >>  #endif
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1521830040-7138-4-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> Thanking you,
> Nishka Dasgupta
>

