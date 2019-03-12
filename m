X-GM-THRID: 6667588004037525504
X-Received: by 2002:a19:cd89:: with SMTP id d131mr2370068lfg.14.1552418993824;
        Tue, 12 Mar 2019 12:29:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:558f:: with SMTP id v15ls1965014lfg.5.gmail; Tue, 12 Mar
 2019 12:29:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwwhfuAJ71flqsETVPaQCvefT/ltI64clGsIAidYgJmD0+6bDe+eksgmkghScWevs0vHuTr
X-Received: by 2002:ac2:4207:: with SMTP id y7mr2368530lfh.7.1552418992960;
        Tue, 12 Mar 2019 12:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552418992; cv=none;
        d=google.com; s=arc-20160816;
        b=ioSo49QgPoTbozza22QK0pS9w09HUuhzHQmTHvjMPx+0yJgCD49C+4AcgGzVx41Fou
         rbjDl503rRRKT2/AG0oh8MmBKF3b5A4ayoyILOHxMbU694EOLgvqMAzpvXKUO5IM6tjY
         pj1nSUqlxt3hfe138l8JLOR6HGHItXov3yu44CreFKWK1PKeO2BwiADKe/cv02ixkvGF
         sN0TmFkqPTyuZLpUeHd6vL+GbpIDAmlKpxOTOL8ardqXUhn05CvY/Cx906IRErkh2fpK
         rLW4V2Fd1J4qPIOalzyG/KMUQwyqlvv9/2iZfjZrK3CoRtCz7TeXtQ0L3eVCDhfnXkOb
         59nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=DfCvnfuJNHAL2SHWmg83vCRQReUqOibjnICELdWhdCY=;
        b=exFrA3BsU2kGCrAwOhQcRIwX4C+pb0fPKalM0/4crtp0kPmwma9Y0tbwGOiU+QGyvH
         PTViJedlGLeuPcGPnjiLdUhSBuSebsS7otz72sLAQpjuREibw8ZYAR4VoebzIzsS4Wv6
         XN3i+wiiu6JSJEp5RVpha2ZOtgEUrCDBwE6nE07J/fgTC9sC3nXQttvxV0PAaT1O2LEc
         H0lbI8gHddTdNHJNSgrxPSBV4oh4GZpetzWqGnENj4CSsTozD7qfImmXgQFF1imGOUlu
         jJQrNLxbvFKJM2I3tdKLbFKtVSNwISuWCVh1rLUZdebCH4TMdWdm3Y3wS/fmJvHrCFWK
         Hhlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y13si376982lfg.4.2019.03.12.12.29.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Mar 2019 12:29:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,471,1544482800"; 
   d="scan'208";a="373123662"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2019 20:29:44 +0100
Date: Tue, 12 Mar 2019 20:29:44 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Reddy <sanjana99reddy99@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    sanjana99reddy99@gmail.con
Subject: Re: [PATCH] Staging: rtl8188eu: rtw_recv.c: fixed a space indentation
 issue
In-Reply-To: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903122027520.2722@hadrien>
References: <CAO-bXGAEHi=_uf7jD+1_+iNhx594rRAak_OBfTVpGenhVUJ2Xg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1438605690-1552418985=:2722"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1438605690-1552418985=:2722
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 13 Mar 2019, Sanjana Reddy wrote:

>
> Fixed a space in 2 lines which removed warnings.

What was the fix.  It is pretty obvious that this is correct, but still it
would be good to get in the habit of saying what you actually did.  Are
these converting spaces to tabs?

The log message should be in the imperative, so for your message it would
start with Fix rather than Fixed.

It would also be good to say how you got the warnings.  Checkpatch I
guess?

julia


> Signed-off-by: Sanjana <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c
> b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 1d83affc08ce..cc6f1a23da01 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80,
> 0xf3};
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
>
--8323329-1438605690-1552418985=:2722--

