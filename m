X-GM-THRID: 6744681878871080960
X-Received: by 2002:a17:906:7f18:: with SMTP id d24mr3272686ejr.82.1570426233179;
        Sun, 06 Oct 2019 22:30:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:6957:: with SMTP id c23ls2317146ejs.9.gmail; Sun, 06
 Oct 2019 22:30:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxJhthVjiCrAkTiaLkR2jMlef677d1FTiRD1QZT6pEegTQAolhSs76V2bJRMxMJAQegj5o1
X-Received: by 2002:a17:906:168f:: with SMTP id s15mr22358772ejd.109.1570426232137;
        Sun, 06 Oct 2019 22:30:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570426232; cv=none;
        d=google.com; s=arc-20160816;
        b=oTrocF2pW58E0ce3Mo3mBzaYodT4KsoajiRx2Vr+I9VfBbWGPf+7y9IBQpkT0FKtg8
         k2EXye22/aixNlWlV7yIFQZMfLUmxyGdpxr0gUCPFgpeX9FxMZ42eQ3uD0W54unCeK9c
         EzaMwiXf3TqHN4qpIduR0yVO2uG9Icf+FWvMxHfb2MxttZ5jBNRAvC9OT78iEDzf9caZ
         HL3OURqSQX0+/lt3PnM9deXIRLtKUw0nlIpUCnd3sWsKRTsTw6OjRkLoR5M5l00xgUq2
         KgBxhliz09IBdNUjwShH04qtYPA8LoSPWKIxRL1jS+07l02DlhY5dNHfEijwUSE/Qn3C
         QjhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pfQkd2KpNY9Yl0rJZlf5dzBEFD7RRn63qIeuza8AJrE=;
        b=Mro8KAnX9wxOTwOU+c5W/H3gwWQN58hEnQ5U685hniFMjyeGf8YP7kV+Y44tqJ5s4J
         LtFIIMiM6V0nioZuHyO357hSEnVYVtSnVV7c5a8jzMoPTnSZOy5lYfXDCD3UaLWydT2T
         Zv/RhOFwEWbr3zq2dYL8QJyTLJhpLGMbMAmopDLl/dUitZOXodZF71GaVFDyPa921jro
         akA6Q2mhU6jcGOLfJrm4EQxbcnYhSIS9lZa+gW6kdcTvB9lev0jiZvSvhjxAGlB6NU9Q
         uWd/IVA012VEpbv5IAfaQWDBS+NcH1Y1i4dUO8vFNmTPdCqSaIcLmDY+2YtQOnf1a2jC
         6dtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q8si1342384edn.5.2019.10.06.22.30.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 22:30:32 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,265,1566856800"; 
   d="scan'208";a="404969175"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 07 Oct 2019 07:30:31 +0200
Date: Mon, 7 Oct 2019 07:30:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Javier Arias <jarias.linux@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unnecessary
 braces
In-Reply-To: <42d53c83-8aea-43c3-8095-e46577a1fcb4@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1910070730220.2753@hadrien>
References: <20191006133016.GA22297@gmail.com> <alpine.DEB.2.21.1910061557170.2515@hadrien> <42d53c83-8aea-43c3-8095-e46577a1fcb4@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-93999204-1570426231=:2753"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-93999204-1570426231=:2753
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 6 Oct 2019, Javier Arias wrote:

> Sorry seems like I answered with a direct email instead of the mail list, so
> here it goes again:
>
> Hello Julia,
>
> Thanks for your feedback. I'm checking the return values and it seems like
> the Realtek driver files would use them internally throughout the code, and
> not returned to the system. They are defined in the following header file:
>
>       drivers/staging/rtl8723bs/include/osdep_service.h
>
>  
>        11 #define _FAIL           0
>        12 #define _SUCCESS        1
>        13 #define RTW_RX_HANDLED 2
>
>
> Should I do something with them?

I think it would be a good improvement.  But it should be done slowly and
carefully.  Don't try to do everything at once.

julia



>
> On Sunday, 6 October 2019 08:58:26 UTC-5, Julia Lawall wrote:
>
>
>       On Sun, 6 Oct 2019, Javier F. Arias wrote:
>
>       > Remove unnecessary braces for single statement block.
>       > Issue found by checkpatch.
>       >
>       > Signed-off-by: Javier F. Arias <jaria...@gmail.com>
>
>       Acked-by: Julia Lawall <julia...@lip6.fr>
>
>       The patch looks fine.  To go further with this code, you could
>       see whether
>       the function can return more standdard kernel return values:
>       typically 0
>       for succes and -ENOMEM etc for various kinds of failure.
>
>       julia
>
>       > ---
>       >  drivers/staging/rtl8723bs/core/rtw_xmit.c | 3 +--
>       >  1 file changed, 1 insertion(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c
>       b/drivers/staging/rtl8723bs/core/rtw_xmit.c
>       > index b5dcb78fb4f4..29acbb1ee869 100644
>       > --- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
>       > +++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
>       > @@ -3022,9 +3022,8 @@ int rtw_sctx_wait(struct submit_ctx
>       *sctx, const char *msg)
>       >                  status = sctx->status;
>       >          }
>       >
>       > -        if (status == RTW_SCTX_DONE_SUCCESS) {
>       > +        if (status == RTW_SCTX_DONE_SUCCESS)
>       >                  ret = _SUCCESS;
>       > -        }
>       >
>       >          return ret;
>       >  }
>       > --
>       > 2.20.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20191006133016.GA22297%4
>       0gmail.com.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/42d53c83-8aea-43c3-8095-
> e46577a1fcb4%40googlegroups.com.
>
>
--8323329-93999204-1570426231=:2753--

