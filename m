X-GM-THRID: 6804165512608612352
X-Received: by 2002:aa7:d64a:: with SMTP id v10mr11547652edr.324.1584286532011;
        Sun, 15 Mar 2020 08:35:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1d99:: with SMTP id dk25ls295215edb.3.gmail; Sun,
 15 Mar 2020 08:35:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu358D6Hz/8AtAcPk8dSSOR+IXq4o6FnoM5jit3Nne82Rk8LzI3Nhg6srU6aPuVo5IpTaoT
X-Received: by 2002:a05:6402:306d:: with SMTP id bs13mr23841944edb.3.1584286530471;
        Sun, 15 Mar 2020 08:35:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584286530; cv=none;
        d=google.com; s=arc-20160816;
        b=YGFVpp7YSz/7hCMEiPNSQTEvIYG/znWghNq/O986SPvWIsbK94GUprbQpPiGItV3OG
         JYDC9RN3geubDHN6yQ+8Jo7SmJgPzs1/Y6wORmSftLdAFm8Yw5ZzB45cMcv2VROy86C7
         IQEqpvElxyqm/GRLGUD7YJekHGAG5+ILKqbtWg1yfQpe4v4zFuV7uu5M3QKvzB74u+fs
         aRgLJDnMCPym9Wn5srAw3fjPREa0s+aMlaIF79SLbbvtpM1KmYSEnzbaD6+ZbYryC7HK
         KRvgpab2LMv1rlkD8p5TNNhuf1hpJTSQsPfQoUIdZqoj0ZCwWMFR3kvY2IKzVabKMch2
         qsrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MmRw8om3UhNLBQYbxqtvpzk0HPDVNbOLwi+ElC//9V4=;
        b=LdNiUN+2xPKe1h66wi1BgjOyv/12q9UxSnAZ1mk2HhzJnGZ+zLSYpGA8gZGK4aqA4w
         ItS81NT3932GDVgjIHq+8rMdcO0CikEm+ndk9VIkvcPBcafVTJw4RiWMMX8pGFEg7dXA
         6Svqw48gA84P/8DzlK8Dzn3qYShnndKsnJvQLlUGzqCqNh1yT5DAkJM+enE97dk+hE8Y
         NmonUUllvLyH/znsPoLhRfA6axSDCqQ8AZH6+hNvkdG3mFvkSAoq0a9B3EjrGVrrbu6G
         0CoszY6B3JAyjb2TeSWSASAxm7lr579hbpDyoFqlu1hVtNA4xCpIfB/SBzBJwQjK/sCX
         AUlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cw13si836926edb.2.2020.03.15.08.35.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 08:35:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,557,1574118000"; 
   d="scan'208";a="342414884"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 15 Mar 2020 16:35:29 +0100
Date: Sun, 15 Mar 2020 16:35:29 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Gokce Kuler <gokcekuler@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2] staging: vt6655: rearrange line
 exceeding 80 characters
In-Reply-To: <20200315152110.GA7184@siyah2>
Message-ID: <alpine.DEB.2.21.2003151634270.2645@hadrien>
References: <20200315152110.GA7184@siyah2>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 15 Mar 2020, Gokce Kuler wrote:

> Some function parameters have been moved to the bottom line for in order not to exceed the 80 character limit.

Isn't the second line now too long?

The log message should be written in the imperative and should be limited
to around 70 characters, because it will be indented a bit when it ends up
in git.

julia

>
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
>
>  	hdr->duration_id = uDuration;
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200315152110.GA7184%40siyah2.
>

