X-GM-THRID: 6810513252473110528
X-Received: by 2002:a1c:8090:: with SMTP id b138mr3446081wmd.55.1585831393850;
        Thu, 02 Apr 2020 05:43:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:4e07:: with SMTP id g7ls70392wmh.0.canary-gmail; Thu, 02
 Apr 2020 05:43:12 -0700 (PDT)
X-Google-Smtp-Source: APiQypJgXRMN5ghZRfYjRJ8Ey1L5ddtN3jDJd4AOm0fOVfFiHWgXMmlZKI4/pVDohGS25eEN915H
X-Received: by 2002:a1c:5502:: with SMTP id j2mr3371848wmb.93.1585831392432;
        Thu, 02 Apr 2020 05:43:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585831392; cv=none;
        d=google.com; s=arc-20160816;
        b=HASGvk6T6J4v+3gzr662VKQFweuDBYta3+9WasLAdWZDk8s2L2d7bL4BNOTbLxJTnY
         Fa5FHyjYB4U26gp/DbV+/EO3ouI2gCXSqvcN6euqpjNkT5xBSQIHvP2FBsyzNKu+bLCo
         +JtWqz36a/lWjG0voHQ99OgmNKnm5k61re76detwPbgoM2etIJA9psom0uob0DiIx1vs
         iu7CSmmsvW3wnCeM4jTDigSkfy5uZMzRQG931mmV717ltLUBw4HlH1yua+6yg3rpnZ+t
         NgkLdNHBzHmiNpdm5Ma2l8AVmZHhA+XSvVQnnuq911KyXZY3XGuXa/O22QFpS4IagNPQ
         rwdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=8JYckiqyE12WpPsK5JW1hsLItuKJFGrNpjD3olBkYxc=;
        b=REb/6cJZR0SqI+ZxbhkAJPSLbC+KrseqUwTbx6sQmPG0WbveIONtLG+tzlurTuiBZC
         lTSwnaIEz/tG03e+gEpVuGVIBLDcIEWcAXKSD29GRkVwKe6nLN5l5rMBONKzlA5oBbAC
         xKhi5DhU9Dfr1KBHtkWhqGhQKaxMDATMoJO1Hy15lYMYP/QcYbpPqUyOuWvG2xLgredu
         Q+Z7qTkm5U+LhRh9O575fPl+yfpY5JWarOcmJ2prQ4tSZVWCU7HAqf80YQBw4HOHA+mI
         IBqTgGdAaGq+tZJDymhyI3kSOkpCNgsaZKjCJTNmLAN6MCjpPFWKbIfTG3W/t8GJeSGb
         X9tQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id o125si522740wme.4.2020.04.02.05.43.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Apr 2020 05:43:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,335,1580770800"; 
   d="scan'208";a="344712036"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2020 14:43:11 +0200
Date: Thu, 2 Apr 2020 14:43:11 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    Rob Springer <rspringer@google.com>, Todd Poynor <toddpoynor@google.com>, 
    benchan@chromium.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: gasket: using octal
 permissions instead of symbolic permissions
In-Reply-To: <CAL9LiB+PSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2004021442590.3014@hadrien>
References: <20200331230940.GA12376@siyah2> <20200401055650.GA1903894@kroah.com> <CAL9LiB+PSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1191891446-1585831391=:3014"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1191891446-1585831391=:3014
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Thu, 2 Apr 2020, Gokce Kuler wrote:

> checkpatch.pl did not show any warning about this. Can I add the permission head to __ATTR_RO() ? 

What do you mean by permission head?

julia

>
> Greg KH <gregkh@linuxfoundation.org>, 1 Nis 2020 Çar, 08:56 tarihinde şunu yazdı:
>       On Wed, Apr 01, 2020 at 02:09:40AM +0300, Gokce Kuler wrote:
>       > Since octal permissions is preffered to symbolic permissions,
>       > octal permissions is used.Problem found checkpatch.pl.
>       >
>       > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
>       > ---
>       >  drivers/staging/gasket/gasket_sysfs.h | 2 +-
>       >  1 file changed, 1 insertion(+), 1 deletion(-)
>       >
>       > diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
>       > index 1d0eed6..28dc422 100644
>       > --- a/drivers/staging/gasket/gasket_sysfs.h
>       > +++ b/drivers/staging/gasket/gasket_sysfs.h
>       > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
>       > 
>       >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
>       >       {                                                                      \
>       > -             .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
>       > +             .attr = __ATTR(_name, 0444, _show_function, NULL),          \
>
>       Why not use __ATTR_RO() instead?
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CAL9LiB%2BPSd68yRfkrbr9yHkShzuPceJHosvswETO1-w1zgkqFw%40mail.gmail.com.
>
>
--8323329-1191891446-1585831391=:3014--

