X-GM-THRID: 6746399399110246400
X-Received: by 2002:a05:6402:68f:: with SMTP id f15mr36370294edy.170.1571202586828;
        Tue, 15 Oct 2019 22:09:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:498a:: with SMTP id p10ls5235551eju.14.gmail; Tue,
 15 Oct 2019 22:09:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwlumuSZoinycReTZkrfm2EhMg7CoA83SNsEip8FXHlC0Fr1w5+BP98hFJggr76s1pgVWnP
X-Received: by 2002:a17:906:e82:: with SMTP id p2mr37713246ejf.237.1571202585956;
        Tue, 15 Oct 2019 22:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571202585; cv=none;
        d=google.com; s=arc-20160816;
        b=bZO1DwZkgtGOL+O2keYYUXRzUuKcsShtysaiT2KpXkF9lEOTDsZkn8RI5kqaZXw6nv
         TNz/iNKWLoavjBltIrdnM7hMXyK/PA0BCWTok8QDgyoZgTANpvPSijO85k37BWzrTOzr
         HbO6lnab9EO3W5U72PKC3YW5uM7Gfx+cVkj4lLdZZkrM45A4m6l4yA4J6MRI6iG4lgad
         gRnudijxCIiiHnpzAbu1dKGqNtTJRxJCRz8ld5TjCZsIMv04eFu98eNiR8No5f/HxlSD
         l/+osRGfvPKB9F7J/LwBoIBy4Bv9tnqvoPPBUW27839APXnUoQ6iDivY1QW93pEekYjz
         /3Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=62oRyTLi90cEx1zR/ZfnrkUCUlNDy9JpiHUQiHkpyjY=;
        b=r8DGu9HNEHz7DGRR+bwD06T5ge6bhXO/diuvMAt/a0zycsUTOTO9dkmjzgwKB75OMc
         VeepQ9jswJ+82Xy0O19WTOVjshCJbJDaY6we9d/NukEtu2BoEMdrnZOyUDTE4pYuWOat
         IRgSaRS10B8vZ5T+t/SrPFTPGnDz6fj2uYes37gv/TnOC/GG4FtoJqjBKJXZEXgGbxq2
         pmM4DmjMF4CgHJovbtUM/Wfbv5EnDwz6KcLsIdIFHSefq4mdlHa3RYub/jeCRpqWIuqT
         DMWNtkT+cPUcfZpwGLvwROv6zjAYdq9GkIRJ7xM/IuJM/oYeK6FS+9WRBjSDrBDlkLb5
         SYeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r3si932650eds.2.2019.10.15.22.09.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 22:09:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,302,1566856800"; 
   d="scan'208";a="406360767"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2019 07:09:44 +0200
Date: Wed, 16 Oct 2019 07:09:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Javier Arias <jarias.linux@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8723bs: Fix function
 call format
In-Reply-To: <0b4bb686-4380-44db-a19e-7924a45f1e3f@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910160707320.2732@hadrien>
References: <cover.1570768179.git.jarias.linux@gmail.com> <8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux@gmail.com> <alpine.DEB.2.21.1910110804200.2662@hadrien> <0b4bb686-4380-44db-a19e-7924a45f1e3f@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-430121136-1571202584=:2732"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-430121136-1571202584=:2732
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 15 Oct 2019, Javier Arias wrote:

> Hello Julia,
>
> Thanks for your feedback. I rebased so the i+1 is now addressed by a previous patch, but I'm afraid that changing the order of the "80 character issue" commit as the first one would affect the line number for the other commits.

There are two cases:

1. Greg has accepted your previous patch.  Then you can forget about your
previous patch and make the new one on top of Greg's latest tree.

2. Greg has not accepted your previous patch yet.  Then you can send a new
patch series with v2.  It doesn't matter if things move around between
different numbers in the series, as Greg is only going to look at the
latest version (highest v number).

julia


>
> Should I resend the patch with the fix only or should I drop this/start again?
>
> On Friday, 11 October 2019 01:05:22 UTC-5, Julia Lawall wrote:
>
>
>       On Thu, 10 Oct 2019, Javier F. Arias wrote:
>
>       > Fix function call format by following the coding style guidelines
>       > for argument wrapping in function calls.
>       > Issue found by checkpatch.
>       >
>       > Signed-off-by: Javier F. Arias <jaria...@gmail.com>
>       > ---
>       >  drivers/staging/rtl8723bs/core/rtw_security.c | 17 ++++++++---------
>       >  1 file changed, 8 insertions(+), 9 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
>       > index 08570e78d5e2..a809521da53d 100644
>       > --- a/drivers/staging/rtl8723bs/core/rtw_security.c
>       > +++ b/drivers/staging/rtl8723bs/core/rtw_security.c
>       > @@ -1625,15 +1625,14 @@ static sint aes_decipher(u8 *key, uint        hdrlen,
>       >          payload_index = hdrlen + 8; /*  8 is for extiv */
>       >
>       >          for (i = 0; i < num_blocks; i++) {
>       > -                construct_ctr_preload(
>       > -                                ctr_preload,
>       > -                                a4_exists,
>       > -                                qc_exists,
>       > -                                pframe,
>       > -                                pn_vector,
>       > -                                i+1,
>       > -                                frtype /*  add for CONFIG_IEEE80211W, none 11w also can use */
>       > -                        );
>       > +                construct_ctr_preload(ctr_preload,
>       > +                                      a4_exists,
>       > +                                      qc_exists,
>       > +                                      pframe,
>       > +                                      pn_vector,
>       > +                                      i+1,
>       > +                                      frtype); /*  add for CONFIG_IEEE80211W, none 11w also can use */
>       > +
>
>       It could be more readable with more arguments on one line.
>
>       Also, the i+1 seems like it should have been fixed in a previous patch in
>       the series?
>
>       julia
>
>       >
>       >                          aes128k128d(key, ctr_preload, aes_out);
>       >                          bitwise_xor(aes_out, &pframe[payload_index], chain_buffer);
>       > --
>       > 2.20.1
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreach...@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux%40gmail.com.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/0b4bb686-4380-44db-a19e-7924a45f1e3f%40googlegroups.com.
>
>
--8323329-430121136-1571202584=:2732--

