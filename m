X-GM-THRID: 6391449518367309824
X-Received: by 10.28.143.10 with SMTP id r10mr406579wmd.13.1488208056918;
        Mon, 27 Feb 2017 07:07:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.48.213 with SMTP id w204ls1207770wmw.14.canary-gmail; Mon,
 27 Feb 2017 07:07:36 -0800 (PST)
X-Received: by 10.28.29.78 with SMTP id d75mr429090wmd.3.1488208056233;
        Mon, 27 Feb 2017 07:07:36 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si846441wmd.0.2017.02.27.07.07.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 07:07:36 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,215,1484002800"; 
   d="scan'208";a="214881845"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Feb 2017 16:07:35 +0100
Date: Mon, 27 Feb 2017 16:07:27 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
    outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: ks7010: remove code
 in comments.
In-Reply-To: <CA+XqjF-7SfgGkcHGhraz2R=8qV4Vgqiky+u+qSJNTMGr__JnTg@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702271606420.3032@hadrien>
References: <20170226160820.GA20046@arushi-HP-Pavilion-Notebook> <20170227144852.GA24465@kroah.com> <CA+XqjF-7SfgGkcHGhraz2R=8qV4Vgqiky+u+qSJNTMGr__JnTg@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1698831945-1488208047=:3032"

--8323329-1698831945-1488208047=:3032
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Mon, 27 Feb 2017, Arushi Singhal wrote:

>
>
> On Mon, Feb 27, 2017 at 8:18 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Sun, Feb 26, 2017 at 09:38:20PM +0530, Arushi Singhal wrote:
>       > Commenting Code Is a Bad Idea.
>       > Comments are their to explain the code and how the code
>       achieves its
>       > goal and as codes in the comments  does not explain what the
>       code is
>       > doing so there is no use of commenting them.
>       > So in this patch codes in the comments are removed.
>       >
>       > Signed-off-by: Arushi Singhal
>       <arushisinghal19971997@gmail.com>
>       > ---
>       >  changes in v2
>       >  - subject lines is made short.
>       >
>       >  drivers/staging/ks7010/ks7010_sdio.c | 4 ----
>       >  1 file changed, 4 deletions(-)
>
>       This patch does not apply against my staging-testing branch :(
>
>
> why?

You should figure this out yourself.  Pull Greg's tree again, and try to
apply your patch.  It's deterministic, so you should have the same
information that he has.

julia

> Arushi
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CA%2BXqjF-7SfgGkcHGhraz2
> R%3D8qV4Vgqiky%2Bu%2BqSJNTMGr__JnTg%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1698831945-1488208047=:3032--

