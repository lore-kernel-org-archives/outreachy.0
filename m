X-GM-THRID: 6746399399110246400
X-Received: by 2002:a2e:9449:: with SMTP id o9mr3333533ljh.110.1571202671946;
        Tue, 15 Oct 2019 22:11:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9246:: with SMTP id v6ls2535264ljg.6.gmail; Tue, 15 Oct
 2019 22:11:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy9TN05AOQQicve8TA+cudIdIPaRZZnA8RwUVFJTUd7Ud23hjCpRaqd0phzWDdlRTBtZB/W
X-Received: by 2002:a2e:8204:: with SMTP id w4mr24639311ljg.3.1571202670879;
        Tue, 15 Oct 2019 22:11:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571202670; cv=none;
        d=google.com; s=arc-20160816;
        b=Dg7ZByDhPufiqBml+JkYaCNorVLcOR/i92BNxvz/UIjAD9azaJX4exbaqYTJr6N5Pg
         FoAHw3tl/SD0gllDvwE+P1HLw16flT1HjPtl/+0Vewh8UxcVc1D3JVr5hZZdC+rU79iw
         qaMI7oCio2kn3qx3SFDfdVNSGPBepicCKsXkC/5Vfaifx2iWUKOCyuYDV/z0s/B+ApMc
         6xZD10HtVnqV+79XhZu7I/mpHvttP8HoTN7D9Clr/xFfnp2SATuJa9ac1xpQV8CNv5H9
         mJIAjJfz5ud0weYpGoOras1hsN/3EdOk0Qqb4BiLobg07R/V3EDDCx6Duu6iiDzNucyy
         gcdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=kFmwpK4/2MF5HJzeDW8V4Ct+jdvPXvLn8YzCc0Vvm08=;
        b=M0/RXG0D6zv4dfWXBk4yhCcS3SAZdItOrq47lecqoi2a8YX/SgEgkFXCl2znzzzORP
         bUW0H6ILUkxkRHhW7m5S/YjwPY7DUtvbVt3cuizwq4nKSbYxCtQPIApUgJcrqAr4O6qm
         3ipm8P0Ej/UszSNxUQzToLmTVvRt7f+oZWy8f+SMaEX4tp/l9jjiGqhWFNgQTojbKtAC
         Nutf+XfvY68JGS3cGSTuZDAH56NBSikkYdV+snYe3SJL3spo2LGgoRr0MQPPeshAG/wh
         7UEts+8MZL/6jUuf1IWJqYC1o5HWeb1vgTweYWBBZPMScZGAeTg6fPyVSs2ZhZ2FtSfk
         3Z0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d3si838185lfq.1.2019.10.15.22.11.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 22:11:10 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,302,1566856800"; 
   d="scan'208";a="406360854"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2019 07:11:10 +0200
Date: Wed, 16 Oct 2019 07:11:09 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Javier Arias <jarias.linux@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: rtl8723bs: Fix function
 call format
In-Reply-To: <0b4bb686-4380-44db-a19e-7924a45f1e3f@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910160710100.2732@hadrien>
References: <cover.1570768179.git.jarias.linux@gmail.com> <8dd3e932f49df42d598113f29c5e5e7a7c25ae52.1570768179.git.jarias.linux@gmail.com> <alpine.DEB.2.21.1910110804200.2662@hadrien> <0b4bb686-4380-44db-a19e-7924a45f1e3f@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1421892849-1571202670=:2732"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1421892849-1571202670=:2732
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 15 Oct 2019, Javier Arias wrote:

> Hello Julia,
>
> Thanks for your feedback. I rebased so the i+1 is now addressed by a previous patch, but I'm afraid that changing the order of the "80 character issue" commit as the first one would affect the line number for the other commits.
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

Actually, while you are on this file, there seems to be something weird
about the hdrlen parameter in the line above.  There is a lot of space
between it and its type.  Maybe there is a tab that should be a space?

julia


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
--8323329-1421892849-1571202670=:2732--

