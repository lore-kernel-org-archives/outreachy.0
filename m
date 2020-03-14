X-GM-THRID: 6804165512608612352
X-Received: by 2002:adf:f7ce:: with SMTP id a14mr3234816wrq.180.1584218531466;
        Sat, 14 Mar 2020 13:42:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls3755423wmk.0.canary-gmail; Sat,
 14 Mar 2020 13:42:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvCyuQ7siGRniqpcj0WgKnE/A6QpZ6iXLBguXqCeSoxH2SfMlKb8tUAw4agqXdsfJthP+3+
X-Received: by 2002:a7b:c4d6:: with SMTP id g22mr13054819wmk.79.1584218530337;
        Sat, 14 Mar 2020 13:42:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584218530; cv=none;
        d=google.com; s=arc-20160816;
        b=Ej1BHAz97StA93jaT6tPDQuqHmoR7K9AavjvhxT1gQ38utdUl2MygiHW81j6ZVvSrT
         U6vl55v4oKl21tOt2pJ+fin/QlgS0zxKbVQEU+Vr2qRlkZRVG2MnWKMxn4P/oB/+eMrC
         N2psjj37h6hbK5Z/UWnB1Wbkt36lBfbKHyW3QuyiU/7jDln/I2tx/6U+DlHMlqnPUxL+
         IMx1W+OXcUu86pRYGFlWxdmbPs/Rbd+RnkFNle/6OJnpknBJeZbo8EcxM48/ZsCMWNPP
         wpt/gSoSWaH1kHogwcHPSXcFL1G2tb1zDjbpMzsPM3+ZETrDmxEhqvH1i7SdqVK4BztC
         XvEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pCLWx1ehi3Lz2nJBSFJs6EZfW5dzT2I6BZ1wLv+BLg4=;
        b=1KyKCVugd58wG6RJU4DAP0JdFKHr02akqY8yNBxt5Wq/B2w8PAGFM/3vJm/Kr7apF6
         9NQFWwT2tm1TaIfIFeCsZ6Naqt1DNQjNat6iDYU1V/IoNSqbAg4b9OPbWjj578M87qse
         s+xRxEb2uLaaYpe0h0QDliC1/gnT8Lubtt/FUwUB6YelVsHTKuXb27fK247xUHPMVukF
         JQKPdAY7SV5BSg0ICJbr6ckWD1P8F8xl/yo+7iH9zwdSn/me+Gb/liZHf3YnE8/1WXM+
         KpbVZ2sp2OESyBAxFmWjliq5Sd1f1wTVKug3avcEnuZMOEwXDLK+CQBxsO7z+SpavOJG
         iNJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id b81si509284wmc.2.2020.03.14.13.42.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2020 13:42:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,553,1574118000"; 
   d="scan'208";a="440341367"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 14 Mar 2020 21:42:10 +0100
Date: Sat, 14 Mar 2020 21:42:09 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: rearrange line
 exceeding 80 characters
In-Reply-To: <20200314203710.GA14591@siyah2>
Message-ID: <alpine.DEB.2.21.2003142140531.2293@hadrien>
References: <20200314203710.GA14591@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 14 Mar 2020, Gokce Kuler wrote:

> Fix line over 80 character for function.

Try toexplain what you did and why without using "fix".  Fix is not very
informative.

> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 37fcc42..b19faa4 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -1176,8 +1176,8 @@ s_cbFillTxBufHead(struct vnt_private *pDevice, unsigned char byPktType,
>  	s_vGenerateTxParameter(pDevice, byPktType, tx_buffer_head, pvRrvTime, pvRTS, pvCTS,
>  			       cbFrameSize, bNeedACK, uDMAIdx, hdr, pDevice->wCurrentRate);
>  	/* Fill DataHead */
> -	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd, cbFrameSize, uDMAIdx, bNeedACK,
> -				    0, 0, uMACfragNum, byFBOption, pDevice->wCurrentRate, is_pspoll);
> +	uDuration = s_uFillDataHead(pDevice, byPktType, pvTxDataHd, cbFrameSize, uDMAIdx,
> +				    bNeedACK, 0, 0, uMACfragNum, byFBOption, pDevice->wCurrentRate, is_pspoll);

It looks like you have made the first line shorter but the second line
longer.  It would be better to fix the problem completely.

julia

>
>  	hdr->duration_id = uDuration;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200314203710.GA14591%40siyah2.
>

