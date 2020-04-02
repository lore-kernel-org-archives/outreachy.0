X-GM-THRID: 6810513252473110528
X-Received: by 2002:a1c:bcc6:: with SMTP id m189mr3689602wmf.48.1585835657564;
        Thu, 02 Apr 2020 06:54:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6302:: with SMTP id i2ls136098wru.4.gmail; Thu, 02 Apr
 2020 06:54:16 -0700 (PDT)
X-Google-Smtp-Source: APiQypLbp4Dk6X9vwBtHZZyHoJbqs7HmLeOWXCyfId6Sh38/29gRdNZNSBfPz/Ax4lJWIxrlBC7T
X-Received: by 2002:adf:dec3:: with SMTP id i3mr3842398wrn.351.1585835656293;
        Thu, 02 Apr 2020 06:54:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585835656; cv=none;
        d=google.com; s=arc-20160816;
        b=Ts6FyPO3JhIrUAiOFIhmZV6T8yugUAeEFg7pjedMhVE1B/2L49s15HDrTzZw0wGjez
         z1lIZz0kD5aV/dGIAS5QLJvB9yo+uR+QR/HRLDqu1uLke4v6nC1td+Bh3Z7nEOLwZbas
         7WDPGMTfXhtYu5u/mmlsTFs+ejKHFBBVO3oDahoD158CK6GwTTSqSXUOAAqMcpOYc+TH
         k/vb5jggqq6mBiIVB69A0tvNBxPKv85MLjpaH+GdycvKVuHlZtTkYAlESklIIU8NvQX3
         u26U5dOljXQLMiz7wvV1LHAkCP8CFOpU8swSP1eMhZjVKcM/Qpbn+kLDjHoT+64jGn5d
         a0pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=7IB2veTOM+pteaaVUv0KSmvzBrsgmwZoJiKUQZ2J2MU=;
        b=PY8/K9PUDf2MjCEay8HTf4ydUjAGgoScZli5hI2fM/EbwHupUpoRhboy7cOOTVH5Km
         j1+8QTfVW7FEVvWYeIxdwrxwSRni2ZPzSayoDzZDqGhuxexuoW9FfybCDiMhbRerCXTS
         Fy3jrf4DOnTe8r+axkxWsVi84Wo+ePMrD+JMiMvKsb7wxiwgfww/HKnlvlwYOzr9/6d2
         kOxNCH4NqkpyaP4vYrhuD1DISyOD4jiSO99b9zuhTZIMCENr93jVnk2FtQsuLrtIq0zM
         1nTLrIrpdIy8NB0OrSYaPWvUs6rPQfEFGnOMXut3O3uR414x4dHVkz6eRM/1VDcgBwp7
         HXZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r8si71419wmh.2.2020.04.02.06.54.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 06:54:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,335,1580770800"; 
   d="scan'208";a="344721851"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 15:54:15 +0200
Date: Thu, 2 Apr 2020 15:54:15 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: Julia Lawall <julia.lawall@inria.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com, Rob Springer <rspringer@google.com>, 
    Todd Poynor <toddpoynor@google.com>, benchan@chromium.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: gasket: using octal
 permissions instead of symbolic permissions
In-Reply-To: <CAL9LiB+u+xxxrPzFEgrOTznojBrium5WhE+Ofiig5Vqs8NDyrA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2004021553320.3014@hadrien>
References: <20200331230940.GA12376@siyah2> <20200401055650.GA1903894@kroah.com> <CAL9LiB+PSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw@mail.gmail.com> <alpine.DEB.2.21.2004021442590.3014@hadrien>
 <CAL9LiB+u+xxxrPzFEgrOTznojBrium5WhE+Ofiig5Vqs8NDyrA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1190047767-1585835655=:3014"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1190047767-1585835655=:3014
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 2 Apr 2020, Gokce Kuler wrote:

> Can I edit like #define GASKET_SYSFS_RO(_name,_permission_, _show_function, _attr_type)    ?

Look at how others have used __ATTR_RO.  What you propose does not look
right.

julia

>
> Julia Lawall <julia.lawall@inria.fr>, 2 Nis 2020 Per, 15:43 tarihinde şunu yazdı:
>       On Thu, 2 Apr 2020, Gokce Kuler wrote:
>
>       > checkpatch.pl did not show any warning about this. Can I add the permission head to __ATTR_RO() ? 
>
>       What do you mean by permission head?
>
>       julia
>
>       >
>       > Greg KH <gregkh@linuxfoundation.org>, 1 Nis 2020 Çar, 08:56 tarihinde şunu yazdı:
>       >       On Wed, Apr 01, 2020 at 02:09:40AM +0300, Gokce Kuler wrote:
>       >       > Since octal permissions is preffered to symbolic permissions,
>       >       > octal permissions is used.Problem found checkpatch.pl.
>       >       >
>       >       > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
>       >       > ---
>       >       >  drivers/staging/gasket/gasket_sysfs.h | 2 +-
>       >       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >       >
>       >       > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
>       >       > index 1d0eed6..28dc422 100644
>       >       > --- a/drivers/staging/gasket/gasket_sysfs.h
>       >       > +++ b/drivers/staging/gasket/gasket_sysfs.h
>       >       > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>       >       > 
>       >       >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>       >       >       {                                                                      \
>       >       > -             .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
>       >       > +             .attr = __ATTR(_name, 0444, _show_function, NULL),          \
>       >
>       >       Why not use __ATTR_RO() instead?
>       >
>       >       thanks,
>       >
>       >       greg k-h
>       >
>       > --
>       > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from it, send an email to
>       outreachy-kernel+unsubscribe@googlegroups.com.
>       > To view this discussion on the web visit
>       >
>       https://groups.google.com/d/msgid/outreachy-kernel/CAL9LiB%2BPSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw%40mail.gmail.com.
>       >
>       >
>
>
>
--8323329-1190047767-1585835655=:3014--

