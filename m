X-GM-THRID: 6670781063292256256
X-Received: by 2002:a50:cb0d:: with SMTP id g13mr298348edi.12.1553164981459;
        Thu, 21 Mar 2019 03:43:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:d5c6:: with SMTP id g6ls1294044edj.5.gmail; Thu, 21 Mar
 2019 03:43:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwrlX5Z9xI4OJKWux4vkt+MFIMXFKqW0u8A3skNnebfoqknHz0duDxskGMZeoOxvQ4mNDaQ
X-Received: by 2002:a50:b3d6:: with SMTP id t22mr229822edd.2.1553164980470;
        Thu, 21 Mar 2019 03:43:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553164980; cv=none;
        d=google.com; s=arc-20160816;
        b=degXSZoVJySIe3sCUDbewPBm1ttWeeRl0RIyPbfLRLKaaSM5OzXiyUHnuuMMsAnJn4
         Q6FsN0789Dbr99D+D9Uk9iEZhS81Y7SWFJhcqJ+kEBFnC/jvAqRgFu8+cbRs6UbBSqvZ
         pu/36n+zpcek7A09G3GRLF1sbxzqSbVjOttmngv526IHSgQbXPl0AtQQCJvBB/rnnevx
         W9kR5Di6n9IRXPD4Mwn7HMKbw1nGkbLFByOlw/5p45b5/iXJrNIgJFpL/mrT28a1J+ft
         1OOZvtV4HMLATl1PKfMLw3JhoIE+yxeWpEyazsQT4MfQpsRLndGodBw54FkSHU3WLyyk
         WJMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=BlpueNVgWk6rPxqyXtVPA0WkWLmeTVSBKmylOa6YvlA=;
        b=O7EWocwbqrTQKdVrdt/63N30z/lbtorwoz7UQMSEAeckfFEkQTIaypBMyCeX7oXdH5
         EbBjnNu33BdcUT+moAQ6kjA7IDoUA+DRLCmPz3pKmbpi8zES7l8fnaBWTBybgX8a6H8G
         LP8egHr/7m80qs2IyDtKr3UqxCHr9fuRRtNn3RJEIiCkFDXBunwKdowN7dAI8CL02EiR
         i0WVfxb+4NOED66cOSk8ggFzSWqlQaMmNQTlCbAwjnw823tXUY01tYLVG9l6gJ6SgvgN
         4fW4SO3TtL9RkGUQXA5R7U07DRzdQD30Co7q0Epd92yZxPNQpoLf3NKh0Nnb+JhNaNZM
         xLAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r10si180710eda.4.2019.03.21.03.43.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 03:43:00 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,252,1549926000"; 
   d="scan'208";a="300224998"
Received: from wifi-eduroam-85-116.paris.inria.fr ([128.93.85.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Mar 2019 11:42:59 +0100
Date: Thu, 21 Mar 2019 11:42:59 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: netlogic: Remove unnecessary
 error print
In-Reply-To: <CAPnhUpaXwEBMFa_ukU9uauFuEaUojMju_kG+WHnJ9SQcAXrSpA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1903211141480.5292@hadrien>
References: <20190321095717.24155-1-himadri18.07@gmail.com> <alpine.DEB.2.20.1903211106390.5292@hadrien> <CAPnhUpaXwEBMFa_ukU9uauFuEaUojMju_kG+WHnJ9SQcAXrSpA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1555595886-1553164979=:5292"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1555595886-1553164979=:5292
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT



On Thu, 21 Mar 2019, Himadri Pandya wrote:

>
>
> On Thu, Mar 21, 2019 at 3:38 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>       On Thu, 21 Mar 2019, Himadri Pandya wrote:
>
>       > Kmalloc normally produces a backtrace when there is not enough memory.
>       > So it is unnecessary to print an error message that provides only this
>       > information. Hence, remove pr_error() from memory allocation check.
>       > Issue found using Coccinelle.
>       >
>       > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
>       > ---
>       >� drivers/staging/netlogic/xlr_net.c | 4 +---
>       >� 1 file changed, 1 insertion(+), 3 deletions(-)
>       >
>       > diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
>       > index 8554fcf4321b..afba1248e100 100644
>       > --- a/drivers/staging/netlogic/xlr_net.c
>       > +++ b/drivers/staging/netlogic/xlr_net.c
>       > @@ -389,10 +389,8 @@ static void *xlr_config_spill(struct xlr_net_priv *priv, int reg_start_0,
>       >� � � �base = priv->base_addr;
>       >� � � �spill_size = size;
>       >� � � �spill = kmalloc(spill_size + SMP_CACHE_BYTES, GFP_ATOMIC);
>       > -� � �if (!spill) {
>       > -� � � � � � �pr_err("Unable to allocate memory for spill area!\n");
>       > +� � �if (!spill)
>       >� � � � � � � �return ZERO_SIZE_PTR;
>
>       This seems to be the only driver that uses ZERO_SIZE_PTR as the result for
>       kmalloc.� It could be worth looking into what happens to this value
>       afterwards.
>
>       julia
>
>
> This is interesting. Later the pointer spill�is aligned with�SMP_CACHE_BYTES (which is defined using L1_CACHE_BYTES).��As per my understanding,�xlr_config_spill() returns ZERO_SIZE_PTR if kmalloc()�cannot allocate sufficient
> memory(equivalent to spill_size) as the return value is being used to configure network accelerator's communication interface.

The questin is who is checking the return value and whether it is checked
in the right manner.  I looked quickly at the cal site, and it seemed that
the result as stored in a structure field with no checking,  But perhaps
some checking is done afterwards.

julia

>
> Please correct me if I am mistaken.
>
> Thank you.
>
> - Himadri
> �
>
>       > -� � �}
>       >
>       >� � � �spill = PTR_ALIGN(spill, SMP_CACHE_BYTES);
>       >� � � �phys_addr = virt_to_phys(spill);
>       > --
>       > 2.17.1
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>       > To post to this group, send email to outreachy-kernel@googlegroups.com.
>       > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190321095717.24155-1-himadri18.07%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAPnhUpaXwEBMFa_ukU9uauFuEaUojMju_kG%2BWHnJ9SQcAXrSpA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1555595886-1553164979=:5292--

