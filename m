X-GM-THRID: 6392087189982806016
X-Received: by 10.28.14.129 with SMTP id 123mr50482wmo.11.1488277165102;
        Tue, 28 Feb 2017 02:19:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls64164ljd.17.gmail; Tue, 28 Feb 2017
 02:19:24 -0800 (PST)
X-Received: by 10.46.84.13 with SMTP id i13mr191608ljb.2.1488277164408;
        Tue, 28 Feb 2017 02:19:24 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id v70si155608wmf.0.2017.02.28.02.19.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 02:19:24 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,218,1484002800"; 
   d="scan'208";a="262390869"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2017 11:19:24 +0100
Date: Tue, 28 Feb 2017 11:19:15 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Gargi Sharma <gs051095@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle Challenge problem 6
In-Reply-To: <CAOCi2DEcHAT-kGakEWfuO7xmYQ5OSK-MTxVmuLfPcAwkapx-yg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702281118570.3056@hadrien>
References: <CAOCi2DEcHAT-kGakEWfuO7xmYQ5OSK-MTxVmuLfPcAwkapx-yg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-301588740-1488277155=:3056"

--8323329-301588740-1488277155=:3056
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 28 Feb 2017, Gargi Sharma wrote:

> Hi,
> Here's my Coccinelle script for problem 6.
>
> @a@
> expression pos, n, mem;
> type t;
> identifier var;
> iterator name list_for_each_entry, list_for_each;
> @@
>
> - list_for_each(pos, n)
> + list_for_each_entry(var, n, mem)
>   {
>   ... when != var

I think you want when != pos here too?

julia

> - var = list_entry(pos, t, mem);
>   ... when != pos
>   }
>
> Thanks,
> Gargi
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DEcHAT-kGakEWfuO7x
> mYQ5OSK-MTxVmuLfPcAwkapx-yg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-301588740-1488277155=:3056--

