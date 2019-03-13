X-GM-THRID: 6667588004037525504
X-Received: by 2002:adf:9f42:: with SMTP id f2mr2159745wrg.25.1552469185683;
        Wed, 13 Mar 2019 02:26:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4488:: with SMTP id j8ls276931wrq.1.gmail; Wed, 13 Mar
 2019 02:26:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyITuqiIC0PhnvtbCA6h44KxropkWlKfYjJq1hAWu5EfSrBsOv59pp7d/5EJ7s03G1fAXUK
X-Received: by 2002:adf:e9c3:: with SMTP id l3mr1020800wrn.9.1552469184809;
        Wed, 13 Mar 2019 02:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552469184; cv=none;
        d=google.com; s=arc-20160816;
        b=SAx3LyCqw03uDr//n9M6YD2Xgh4JQd/nDWdNCGdfZGeO/9D0siTWxUKcCTjUL+emw/
         TLtApoZGoWKu5++U4FCJlPb/6MLb2yYwUWnPicCt7YPZpe8Ps5AMz03NpTV2JW5+txSH
         0Xt3D7MAXrVOZnQGwTswW5lyvgDT56hhj/MneF+oz6sZfq9nm2EmltjTVbRPtN4P4eZp
         jw2es/6cHMrsNd9fzeYXLmQKFhw6H4DBIGbfMKsIvs6tLM0kZmwyorGp+hOb9EUuqUTX
         oFYGBmX/pyBNdhRI4QyP6cWfJR/2VcgqHy+uv6a6knjsN1CylcbUaSUMK7kLObz6uyg6
         MJgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=A2Gwtlx/ab1pNTMq/Q7sxUALawVfgRjqDfYByzmvh2E=;
        b=OJm0txBIZ45Bb/UVxkq1zeg3Z3ucE6TwBVARFfGZBcqbOSUGNwbpYMWZQWWQwHe8V3
         XqMphG3rQEw1be9T2ihUNj3N3yeh3QIdCVWX/sxVaOsJhnURpUqI80f9xaH/hCdArxxV
         8/ACe7m+nzVnDjgLpI3HCP2R0jdYW6IkxflWIkzVRPA75Y/aM0Z6UdxWaXSh13UbJJdl
         MT5h3tjsz0ehfq7+gHEAoMUjCyN0uMo2Bv9nJj5tFoDsqKry+rP5bgigwwezQhpgmwZv
         T1yhLSUSLba4YJpI0Dyf4P8EkzVfcRpTc00iO6Uk5sP34eGIuO0QAQ5bVQoD7iliHx3X
         qdQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id p10si11889wro.1.2019.03.13.02.26.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 02:26:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,474,1544482800"; 
   d="scan'208";a="373188703"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 10:26:24 +0100
Date: Wed, 13 Mar 2019 10:26:24 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: rtw_recv.c:
 fixed a space indentation issue
In-Reply-To: <CAO-bXGAZXP2zCUKymYTWG5_ijtsbGqyi6j4LVx3vHr7Qs7kxqw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903131024420.3309@hadrien>
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com> <20190312194137.GA29260@kroah.com> <20190312194836.GB6580@kroah.com> <CAO-bXGBSvngtL5dF+njH3QpLZfme6UWxNkLdS64FETSXQ+cmJg@mail.gmail.com> <CAO-bXGD2WYekE6pT-6DM-4W7ZMWEw6jpk4qLaiRY_nfSzc4RmA@mail.gmail.com>
 <CAO-bXGAZXP2zCUKymYTWG5_ijtsbGqyi6j4LVx3vHr7Qs7kxqw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1099037072-1552469184=:3309"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1099037072-1552469184=:3309
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 13 Mar 2019, Sanjana Sanikommu wrote:

> 1.Could you please review this patch and suggest me any changes? 
> 2. How do I know whether this patch is approved or not?

You need to just wait until someone has time to look at it.  Greg will
decide if it is ultimately approved, but he is travelling this week
(announced before you joined the group).  You can work on something else
in the meantime.

julia

>  
> Thanks 
> Sanjana.
>
>
> On Wed, 13 Mar 2019, 08:39 Sanjana Sanikommu, <sanjana99reddy99@gmail.com> wrote:
>       Subject: [PATCH] Staging: rtl8188eu: rtw_recv.c: fix a tab indent issue
>
> Fix a tab issue in 2 lines which removed no extra space before starting
> a line warning. This warning appeared when I compiled checkpatch.pl in
> rtw_recv.c,
>
> Signed-off-by: Sanjana Sanikommu<sanjana99reddy99@gmail.com>
>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 1d83affc08ce..cc6f1a23da01 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
>
>  /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
>  static u8 rtw_bridge_tunnel_header[] = {
> -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
> +        0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
>  };
>
>  static u8 rtw_rfc1042_header[] = {
> -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
> +       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
>  };
>
>  static void rtw_signal_stat_timer_hdl(struct timer_list *t);
> -- 
> 2.17.1
>
>
> On Wed, Mar 13, 2019 at 8:36 AM Sanjana Sanikommu <sanjana99reddy99@gmail.com> wrote:
>       I reedited the file by taking note of the above mentioned mistakes. I would be resending the patch as this has lot of mistakes :) 
>
> On Wed, Mar 13, 2019 at 1:18 AM Greg KH <gregkh@linuxfoundation.org> wrote:
>       On Tue, Mar 12, 2019 at 12:41:37PM -0700, Greg KH wrote:
>       > On Wed, Mar 13, 2019 at 12:56:34AM +0530, Sanjana Reddy wrote:
>       > > Fixed a space in 2 lines which removed warnings.
>       > > Signed-off-by: Sanjana <sanjana99reddy99@gmail.com>
>       >
>       > Please put a blank line between the changelog text and your
>       > signed-off-by: line, otherwise the tools will choke :(
>
>       Also we need a "real" name here, not just a first name.  And your email
>       address should be correct, it's bouncing right now :(
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAO-bXGAZXP2zCUKymYTWG5_ijtsbGqyi6j4LVx3vHr7Qs7kxqw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1099037072-1552469184=:3309--

