X-GM-THRID: 6462772146556895232
X-Received: by 10.25.228.65 with SMTP id b62mr35676lfh.37.1504731762103;
        Wed, 06 Sep 2017 14:02:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.66.147 with SMTP id h19ls361410ljf.12.gmail; Wed, 06 Sep
 2017 14:02:40 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5JkrkNDyCdUOnGahEMYC/Wcl4a6EJb7bACQ4GnunY3jUzia1iy8LjN89fa0rAFD2DTPbQT
X-Received: by 10.46.80.90 with SMTP id v26mr38412ljd.2.1504731760897;
        Wed, 06 Sep 2017 14:02:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504731760; cv=none;
        d=google.com; s=arc-20160816;
        b=HpG3l1d2lADtC/QcmcNpGXj6jfOOsUq06jnF2mCzB8r7uqw2p+pDq/JfVfYc35ZsV1
         wBeN/Wluf//aHvVbDO5uBp4342Tg9p9VEurPnJOd++817aMA0ujqFt0bTSaczPTwzMPU
         tClfXLFo/BLnV8ai4IlXnGv/WwoZ/1k2nx3fIfIfgQaaBjpCI5VCYGKwU4rt95yPns/k
         WxaS6zmwBtgrUgd/NsbDdHvuSZ9ehMFS93X2v+YmC37Z74DJ3vrzzf5cekP0lhUugDP3
         /uTI1Zw1ZaTnzSoV66p/Z765NVqtaQrDP1itFD1iNh3dKfiEfrAQ96e76uC6v2J4VC7n
         ucvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=CgVdHeyY0TdEI1EoTGU6D9jfDm93fTYBcjGOWxcwnvo=;
        b=jO4cReGRKctnSBaHocI5DvE/MAWYuIr92S0azddCcNhQSHlrX+of9rWLhKvoy4YuAn
         1/jAgj+6Yo+yfZY+6AOyZXnMEk6pRZfmyli+benX6YdP+T6DZMR9mOM3NEaD57D/zPVy
         p5NmEM12DXSJRu6nqfxxkysUyGsPOrr0QOxogp6s5Hs1Ps3AJYD87ZAFLEU/2H1yv/1c
         k/650vSzudaTeC3JvVQtVZkwAEQmC967bG6ri77YAlON6dnKAyb5zevQykd2nn05UwOS
         WNOKjpgOxP0Wk01a+2kZ9E41o/Fqf6YWiLmhOpsBIEC2+jxwdtx5ZUayAgDsYba3lhWZ
         /rkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b196si156166wmd.2.2017.09.06.14.02.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 14:02:40 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,355,1500933600"; 
   d="scan'208";a="236572611"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 06 Sep 2017 23:02:40 +0200
Date: Wed, 6 Sep 2017 23:02:39 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Srishti Sharma <srishtishar@gmail.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, Greg KH <gregkh@linuxfoundation.org>, 
    Gilad Ben-Yossef <gilad@benyossef.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ccree: ssi_cipher.c: Make
 comment more comprehensible.
In-Reply-To: <CAB3L5owNmnR5poc9a3pH-fp+m7us4yztzPs9dzNRjzYVEneRgA@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709062302040.2984@hadrien>
References: <1504731390-9536-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709062258000.2984@hadrien> <CAB3L5owNmnR5poc9a3pH-fp+m7us4yztzPs9dzNRjzYVEneRgA@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 7 Sep 2017, Srishti Sharma wrote:

> On Thu, Sep 7, 2017 at 2:28 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Thu, 7 Sep 2017, Srishti Sharma wrote:
> >
> >> Edited comment to make it more comprehensible.
> >>
> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
> >> ---
> >> Changes in v2:
> >>  - Make comment more comprehensible , instead of just correcting typos.
> >>  drivers/staging/ccree/ssi_cipher.c | 4 +++-
> >>  1 file changed, 3 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
> >> index 99232b2..fec2faa 100644
> >> --- a/drivers/staging/ccree/ssi_cipher.c
> >> +++ b/drivers/staging/ccree/ssi_cipher.c
> >> @@ -702,7 +702,9 @@ static int ssi_blkcipher_complete(struct device *dev,
> >>
> >>       ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);
> >>
> >> -     /*Set the inflight counter value to local variable*/
> >> +     /*
> >> +      * Save inflight_counter in a local variable.
> >> +      */
> >
> > This is the format for multiline comments.  Your comments is only one
> > line.  You just need to add spaces around the text, as compared to the
> > original version.
> >
> > julia
> >
> >>       inflight_counter =  ctx_p->drvdata->inflight_counter;
> >>       /*Decrease the inflight counter*/
> >>       if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504731390-9536-1-git-send-email-srishtishar%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> Okay, Thanks I'll re-send it .

While it is good not to top post, you can put your response under my text,
not all the way at the end of the message.

julia

>
> Regards,
> Srishti
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5owNmnR5poc9a3pH-fp%2Bm7us4yztzPs9dzNRjzYVEneRgA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

