X-GM-THRID: 6803035551467307008
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 2002:a7b:cd8e:: with SMTP id y14mr360052wmj.150.1583956178106;
        Wed, 11 Mar 2020 12:49:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:498c:: with SMTP id r12ls1516966wrq.10.gmail; Wed, 11
 Mar 2020 12:49:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtwNbFfwzuOBlhdSzyJFm0uEWRnFW3vkVuXFjO2bpvPjq8H4ouDuj2qNRj8f68VavHFcDGZ
X-Received: by 2002:a5d:5710:: with SMTP id a16mr6307373wrv.5.1583956176556;
        Wed, 11 Mar 2020 12:49:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583956176; cv=none;
        d=google.com; s=arc-20160816;
        b=zlbnAjU1kpKcBgVuZyEPL/tbP4KVfi5vw080UKnI/kkuJaqqyliHqbOQXJZv5Ojse1
         50xCG42Qq4h0zX1JbcEGO1qhO7o8h7dKc/uO738YhCanuxiR9jDk5XwA3TYyH25YuC7s
         /bZAwgLNbKJwPoUM4SNEGoLTLsaXAfeINey280jMT/TXc75j7v3X36EiOlBc6M40R5xE
         mCn94jqTVTUy8qKXas8iZ6smaRkxbG5FO5Q8NF0ro2GgYpVfP8mhpaSSdzq5EEIKoTf/
         C/UTeWBXuk5ZBogXgMTKMLjCghkiftU4MXmwO33NctCDf/ZPUaeHMU53ARij0XP33sGf
         Cj6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=OF2Rx4CIpSLjlhoMoQXzeHoffSJYZdwz4o9RxJvVTm8=;
        b=KWJcocpwogR7K37maEwHH73T2H3HyDNuPgNg93GJbsru1oj8cgGHTp91jQRfyCiCHp
         mzJaXpmSx2FTjgevdrBZOqFPlq2qbvE6+1r3ElJeMT8V/jnKrN3XYTtnGQh+zTj0+ygF
         McFh3wMovaORqwBSOVI4ot3mQe5q7VmTrWk9/REU6hk2dZdBDm5SvZnXSmadgw911FJd
         mzZ8lVUJ/nohN8azfR0/MXTmUX0ylzN4IlwK4lvWKWQnmI/tOJ9kWYTYzxGl7X4jEvqd
         TRGIA+1K5gsrvxRx9jjfvTbQI5n0AKWY66EdyMYuOS93PcgD3fx8A7pFG3mJcaiXz0GG
         fj/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d16si107089wrv.4.2020.03.11.12.49.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 12:49:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,541,1574118000"; 
   d="scan'208";a="439900952"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 20:49:36 +0100
Date: Wed, 11 Mar 2020 20:49:36 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Deepak Varma <mh12gx2825@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] changes to a core file : Should all associated
 drivers be rebuilt as [M]
In-Reply-To: <d2f68b7d-972d-492e-abc5-915301ecc69b@googlegroups.com>
Message-ID: <alpine.DEB.2.21.2003112048370.6093@hadrien>
References: <d2f68b7d-972d-492e-abc5-915301ecc69b@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-359384743-1583956176=:6093"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-359384743-1583956176=:6093
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 11 Mar 2020, Deepak Varma wrote:

> Hello,
> If we make a change to a core file that appear to be common across more than
> one driver(s), should we be reconfiguring the kernel build to set all
> drivers as [M]?

You can use

make allyesconfig

Always be sure that the file you changed actually has a .o file after
compiling.

julia

> Also, is this a correct change to the .config file:
>
> from : # CONFIG_FB_TFT is not set
> to     : CONFIG_FB_TFT=m
>
>
> Thank you,
> Deepak.
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/d2f68b7d-972d-492e-abc5-
> 915301ecc69b%40googlegroups.com.
>
>
--8323329-359384743-1583956176=:6093--

