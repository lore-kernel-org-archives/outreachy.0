X-GM-THRID: 9490543935488
X-Received: by 10.182.251.231 with SMTP id zn7mr109041129obc.24.1427118562763;
        Mon, 23 Mar 2015 06:49:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.91.112 with SMTP id cd16ls1369296obb.25.gmail; Mon, 23 Mar
 2015 06:49:22 -0700 (PDT)
X-Received: by 10.182.236.67 with SMTP id us3mr12817282obc.47.1427118562482;
        Mon, 23 Mar 2015 06:49:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 3si65383yhe.0.2015.03.23.06.49.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Mar 2015 06:49:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,452,1422918000"; 
   d="scan'208";a="128143945"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Mar 2015 14:49:21 +0100
Date: Mon, 23 Mar 2015 14:49:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vatika Harlalka <vatikaharlalka@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 08/10] Staging: rtl8712: Fix incorrect
 assignment type in rtl8712_xmit.c
In-Reply-To: <CAHjTdYeeFQ5ftSzbzso0DTkW9DPoNkmn9FHwa11_Ag3FDgA8mQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1503231448490.2432@hadrien>
References: <5f860bc9d9ff4bd82c61c4bbe7a80b88d1176847.1426983594.git.vatikaharlalka@gmail.com> <68911b4fb09acb91c39291e2596ce73cc3e8e2f2.1426983594.git.vatikaharlalka@gmail.com> <alpine.DEB.2.02.1503230748590.2075@localhost6.localdomain6>
 <CAHjTdYeeFQ5ftSzbzso0DTkW9DPoNkmn9FHwa11_Ag3FDgA8mQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 23 Mar 2015, Vatika Harlalka wrote:

> Sparse complained because ptxdesc->txdw0, ptxdesc->txdw1, ptxdesc->txdw2,
> ptxdesc->txdw3, ptxdesc->txdw4 and ptxdesc->txdw5 are declared as unsigned
> int
> and so the error was about the conversion to __le32.
>
> I realize that maybe it would make more sense to change and declare them as
> __le32
> instead of otherwise?

I don't know.  That seems to be what would need to be decided.

julia


>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAHjTdYeeFQ5ftSzbzso0DTk
> W9DPoNkmn9FHwa11_Ag3FDgA8mQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

