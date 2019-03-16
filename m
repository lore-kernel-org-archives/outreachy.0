X-GM-THRID: 6668981360875536384
X-Received: by 2002:a50:a499:: with SMTP id w25mr1092438edb.3.1552754610844;
        Sat, 16 Mar 2019 09:43:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:adba:: with SMTP id a55ls3208682edd.4.gmail; Sat, 16 Mar
 2019 09:43:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyrPcfxjk9UWRRxKvurl0hrtpzv7Gdp5IEo8x2d/C0KEnrS/wwQVw59J1mYoFxzZsvok/6j
X-Received: by 2002:a50:a499:: with SMTP id w25mr1092436edb.3.1552754610166;
        Sat, 16 Mar 2019 09:43:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552754610; cv=none;
        d=google.com; s=arc-20160816;
        b=yObw0FE43g1Mk1zADrteduJC9aujcpfsGIDNs3NpKf7RaBePNB7xDghcvxJccBEyR7
         PMmnH/LCngMFDBWyOAG+5V9QY6/avf9ExL75lIY/Dds2ZenxfCwDyGE9vFiTTVXGob/N
         63ou2QscGRT4r0Wh6xL2Rffsrxo66oFq+WVf1pqTZQnlfqwu3IBrUDZOdmSVoeFDbFRp
         Zk5/1xE0XhYeV0ehYZWXv2TgoTyDMymQzymJnq3lKZCDfiY/8MRYIGmWmAdmlcwlL52u
         gYiSp1I45Yk6qIllHfB0naT7xxP1Qlnwh7GACIq7dU4DjqEltLVgn4jl9D5qrsGPwZjd
         S9Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HOV09ZSMLS+1xktHlyGD64X4AUbjz/8rLMHF0y3iQVM=;
        b=fZapJzzaclUJwjU4EheuzmIyn182u6ieN2cG4D+mnA5zX5BTPHVUiyDkBWP15yx14r
         Pj0KikKU299p0vX9j6ykdE7pOpBc+wUKepapoyhwpTmw8pGaCBxI8bOQR5yoiiC/yoau
         I2XCvmOY31RR/V09LZ16zwrHN9HwpJdMfnLzDx1/4Oyf5TkYAlr6clVWVhEmBBTnwrwu
         oSouu2uYYW/AdSafmgFhnP2A4+cokF6HMoyu18NPmXVPqi6je2L5dy5LEGAYKMWyDSao
         n2wH4Rtam7H7659av9IV43stGftoU3ltcvr1nNHB/pu3sKda2KD3JXwCP/yePvy8vW1T
         /0jQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l25si194524edb.4.2019.03.16.09.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:43:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,486,1544482800"; 
   d="scan'208";a="299588907"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 17:43:04 +0100
Date: Sat, 16 Mar 2019 17:43:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] Staging: rtl8188eu: rtw_recv.c:
 fix a tab indent issue
In-Reply-To: <20190316152245.18268-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161742370.2487@hadrien>
References: <20190316133306.8747-1-sanjana99reddy99@gmail.com> <20190316152245.18268-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Sanjana Sanikommu wrote:

> Fix a tab indent issue which removed warnings after compilation using
> checkpatch.pl.
>
> [WARNING]:No extra space at the beginning of a line.
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---

For a v2, you have to describe what has changed here, or if nothing has
changed, say that nothing has changed.

julia


>  drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
> index 1d83affc08ce..0d04057e6cf6 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_recv.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
> @@ -24,11 +24,11 @@ static u8 SNAP_ETH_TYPE_APPLETALK_AARP[2] = {0x80, 0xf3};
>
>  /* Bridge-Tunnel header (for EtherTypes ETH_P_AARP and ETH_P_IPX) */
>  static u8 rtw_bridge_tunnel_header[] = {
> -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
> +	0xaa, 0xaa, 0x03, 0x00, 0x00, 0xf8
>  };
>
>  static u8 rtw_rfc1042_header[] = {
> -       0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
> +	0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00
>  };
>
>  static void rtw_signal_stat_timer_hdl(struct timer_list *t);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316152245.18268-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

