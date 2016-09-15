X-GM-THRID: 6330315440417406976
X-Received: by 10.194.178.166 with SMTP id cz6mr1133178wjc.0.1473916556682;
        Wed, 14 Sep 2016 22:15:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.199.7 with SMTP id x7ls110128wmf.20.canary; Wed, 14 Sep
 2016 22:15:56 -0700 (PDT)
X-Received: by 10.194.172.9 with SMTP id ay9mr1129862wjc.2.1473916556276;
        Wed, 14 Sep 2016 22:15:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 185si49556wmr.2.2016.09.14.22.15.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 22:15:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,338,1470693600"; 
   d="scan'208";a="236798335"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Sep 2016 07:15:54 +0200
Date: Thu, 15 Sep 2016 07:15:49 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Namrata A Shettar <namrataashettar@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Malcolm Priestley <tvboxspy@gmail.com>, 
    Alison Schofield <amsfield22@gmail.com>, 
    maomao xu <albert008.xu@gmail.com>, Othmar Pasteka <pasteka@kabsi.at>, 
    Parth Sane <laerdevstudios@gmail.com>, 
    Wolfram Sang <wsa-dev@sang-engineering.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 6/6] staging: vt6656: rxtx: Fix multiple
 assignments
In-Reply-To: <CAFrQyDGAP0UTFhwaidjYrcbijgtoP7jFWRxa2GZiouZ4dnzWcw@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1609150714200.6078@hadrien>
References: <CAFrQyDGAP0UTFhwaidjYrcbijgtoP7jFWRxa2GZiouZ4dnzWcw@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1698985851-1473916555=:6078"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1698985851-1473916555=:6078
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Thu, 15 Sep 2016, Namrata A Shettar wrote:

> This patch fixes checkpatch issue of multiple assignments.

Fix is not very clear, because it is not very clear what a multiple
assignment is.  For example, it could be x = 3; x = 4;.  "Break up
multiple assignments" could be clearer.  Also, it is not necessary to say
"This patch".  The reader knows that the commit log is a description of a
patch.  He wants to get to the interesting part as quickly as possible.

julia

>
> Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> ---
>  drivers/staging/vt6656/rxtx.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/vt6656/rxtx.c b/drivers/staging/vt6656/rxtx.c
> index a8553e3a..647220d 100644
> --- a/drivers/staging/vt6656/rxtx.c
> +++ b/drivers/staging/vt6656/rxtx.c
> @@ -166,8 +166,9 @@ static __le16 vnt_get_rtscts_rsvtime_le(struct
> vnt_private *priv,
>         } else if (rsv_type == 2) {
>                 rts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
>                         20, priv->top_ofdm_basic_rate);
> -               cts_time = ack_time =
> vnt_get_frame_time(priv->preamble_type,
> +               cts_time = vnt_get_frame_time(priv->preamble_type,
>                         pkt_type, 14, priv->top_ofdm_basic_rate);
> +               ack_time = cts_time;
>         } else if (rsv_type == 3) {
>                 cts_time = vnt_get_frame_time(priv->preamble_type, pkt_type,
>                         14, priv->top_cck_basic_rate);[cleardot.gif]
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAFrQyDGAP0UTFhwaidjYrcb
> ijgtoP7jFWRxa2GZiouZ4dnzWcw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1698985851-1473916555=:6078--

