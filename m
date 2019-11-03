X-GM-THRID: 6755114272133480448
X-Received: by 2002:a2e:3a09:: with SMTP id h9mr15840216lja.33.1572797885995;
        Sun, 03 Nov 2019 08:18:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:904c:: with SMTP id n12ls1205756ljg.8.gmail; Sun, 03 Nov
 2019 08:18:05 -0800 (PST)
X-Google-Smtp-Source: APXvYqyfaYCi43XMUumOVKLaVf6Yw/Cna00yUexjBMI2jxmno1W1+FEC3m3UXYRX6t0EabbIJ19p
X-Received: by 2002:a2e:b00d:: with SMTP id y13mr15642355ljk.216.1572797885115;
        Sun, 03 Nov 2019 08:18:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572797885; cv=none;
        d=google.com; s=arc-20160816;
        b=qWIup0x+Ge9X1qVQit4W1AcmNU4PWbiCsSVFtU3E35ek7x+VWw6FQbWqLldznCkGvg
         1KQGuGfDBbj07wyeEfM8EJ2Smy/liSFngLLlp1L8Ha4Vg7dX8yxOcklavZSBbjHyiSg3
         OoxG02GszBRSIPYwV96PGa7NQsaqyiEMH/gbL7VwoQE3/hY2Yp0zsOR+Gy0aKNiWXnNT
         k8J7tg1ilA5bjyWrf+c1kEKC/+j0kFeDYPAlgm61+6E/l83FesSaeOz+jXSy+zJ/KCHD
         M7h9BSsp5S7mjjvI47siPqeW7UYd5N137D6LXdNa0J7FXJu3W9xcaKfxzTw3ISQmSnTm
         wM0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=tUpP1TjDMTrHoGwZkxhO4g1X52mlK9ljzN7ltY1Xbqc=;
        b=SxuzSIH1dgvGayXc56IkAEJZtHzLpE2NZpxqOWDk6t+xQuSOHFyEiv7Qb+NVzgUCw7
         z5ZyxqFJS2f1eZDjV57bsoJwfDNjldsSMILNlov5lRrW70XOLlUEtwxiyXbRUa8FU0xc
         9SNSY1QHoC7UaAUtG07KH5TCgjIz85XnV0cwl8bfokHR/BVFiRsrVYn11JkHVJf+2YDs
         h9ZQFWPXZwdpYqHFjAos4kv9Z4/DHmrx1Apq8tw4h0bu4RlS8YZ+SjYWg5cYj8N9i0pN
         UYV52kC/ccZWMyb7qybhDkX5j6Mz553Dp5ZpJCcrLeW+P/WaqLcHJuU08WXOiB3vnhNu
         RRew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b22si878148ljo.3.2019.11.03.08.18.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 08:18:05 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,263,1569276000"; 
   d="scan'208";a="325435552"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Nov 2019 17:18:04 +0100
Date: Sun, 3 Nov 2019 17:18:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Evan Chime <chime.evan.dri.devel@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    laurent.pinchart@ideasonboard.com, mchehab@kernel.org
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] Add comment to memory
 barrier
In-Reply-To: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
Message-ID: <alpine.DEB.2.21.1911031716390.2557@hadrien>
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 3 Nov 2019, Evan Chime wrote:

> Include outreachy mailing list in "cc" list. No change
>
> Evan Chime (3):
>   Staging: media: omap4iss: Add comment to memory barrier
>   Staging: media: omap4iss: Add comment to memory barrier
>   Staging: media: omap4iss: Add comment to memory barrier

Each patch should have a different subject.  If you end up with patches
with the same subject, you should make the subjects more specific or merge
them.

In this case, though, I think that this is an issue that only someone with
a deep knowledge of the code could really address.  The question is not
what a memory barrier does, but why one is needed at a particular place in
the code.

julia

>
>  drivers/staging/media/omap4iss/iss.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1572797322.git.chime.evan.dri.devel%40gmail.com.
>

