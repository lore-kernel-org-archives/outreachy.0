X-GM-THRID: 6388469372118106112
X-Received: by 10.223.152.208 with SMTP id w74mr552098wrb.23.1487434608304;
        Sat, 18 Feb 2017 08:16:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.83.93 with SMTP id t29ls347803ljd.29.gmail; Sat, 18 Feb
 2017 08:16:47 -0800 (PST)
X-Received: by 10.46.87.27 with SMTP id l27mr1311339ljb.28.1487434607548;
        Sat, 18 Feb 2017 08:16:47 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si399520wmf.0.2017.02.18.08.16.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 08:16:47 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,174,1484002800"; 
   d="scan'208";a="261094678"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2017 17:16:47 +0100
Date: Sat, 18 Feb 2017 17:16:42 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 3/6] staging: rtl8192e: Fix block
 comments warning
In-Reply-To: <5192275f-5b36-4e1d-8d66-afc735f3a8f6@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702181715380.3112@hadrien>
References: <20170218152351.GA28908@singhal-Inspiron-5558> <alpine.DEB.2.20.1702181628130.3112@hadrien> <5192275f-5b36-4e1d-8d66-afc735f3a8f6@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1410469137-1487434568=:3112"
Content-ID: <alpine.DEB.2.20.1702181716100.3112@hadrien>

--8323329-1410469137-1487434568=:3112
Content-Type: text/plain; CHARSET=ISO-8859-15
Content-Transfer-Encoding: 8BIT
Content-ID: <alpine.DEB.2.20.1702181716101.3112@hadrien>



On Sat, 18 Feb 2017, SIMRAN SINGHAL wrote:

>
>
> On Saturday, February 18, 2017 at 9:00:51 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Sat, 18 Feb 2017, simran singhal wrote:
>
>       > Align * on a line, to conform to the kernal coding
>       > style for block comments.
>
>       It is not clear what is means to align * on a line. �What line?
>
>       What has been done is to add a space at the beginning of the
>       line. �But
>       then the line goes over 80 characters and doesn't line up any
>       more on the
>       right side. �I would guess that you should have gotten a new
>       warning by
>       having gone over 80 characters. Fixing one warning should not
>       introduce a
>       new one, especially for something purely decorative, like this.
>
>       julia
>
> �Julia, I am not getting any new warning. It's not gone over 80 characters.

OK, it looked like it would be too long on my screen.

Are the right sides of the * lines lined up after the change?

julia

> �
>       >
>       > Signed-off-by: simran singhal <singhal...@gmail.com>
>       > ---
>       > �drivers/staging/rtl8192e/rtl819x_HT.h | 2 +-
>       > �1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/rtl8192e/rtl819x_HT.h
>       b/drivers/staging/rtl8192e/rtl819x_HT.h
>       > index 6eb018f..48d101a 100644
>       > --- a/drivers/staging/rtl8192e/rtl819x_HT.h
>       > +++ b/drivers/staging/rtl8192e/rtl819x_HT.h
>       > @@ -11,7 +11,7 @@
>       > � *
>       > � * Contact Information:
>       > � * wlanfae <wla...@realtek.com>
>       >-**************************************************************************
>       ****/
>       > +***************************************************************************
>       ***/
>       > �#ifndef _RTL819XU_HTTYPE_H_
>       > �#define _RTL819XU_HTTYPE_H_
>       >
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170218152351.GA28908%4
>       0singhal-Inspiron-5558.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/5192275f-5b36-4e1d-8d66-
> afc735f3a8f6%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1410469137-1487434568=:3112--

