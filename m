X-GM-THRID: 6889706616955863040
X-Received: by 2002:a05:600c:2888:: with SMTP id g8mr7658686wmd.154.1604136346801;
        Sat, 31 Oct 2020 02:25:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:f7c4:: with SMTP id a4ls1367487wrq.1.gmail; Sat, 31 Oct
 2020 02:25:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMn5hi0QkUqYTM3Dr/4P4FktdTHR6VrrxpL3iSrCz4fgNKgNoLuR8AfJSbOvAludpPYT9U
X-Received: by 2002:a5d:50cf:: with SMTP id f15mr8432100wrt.324.1604136345012;
        Sat, 31 Oct 2020 02:25:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604136345; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXWV8WguecYmk8oUfC1iQV6svbZ0rN53MgQoNPvo0F+wuD5VZIS5um/ErvXb90Q4cu
         o3vMzp8AD6kTDnwdfVybvmHOcEbkoO59D1ypJtYruNEaY++pkT7FgPqhE6Ufe3YbAQZd
         Liz+tXppIeTb25zM+A4bfG8G5hvPS5y+AUuRsck18sfS25ZGZZ+cNCC4L9T0hHUgoYqd
         RsebFwCSsl/FhShsSy1Zj7s79JJv7tu05vvbbJ6wrsu303v+qUGksESsBfBZabJefcDx
         GtRn/yypXhSOPl+qPNDXnpevTXQfxLEL7KhGDfIbdJfXx+wp3z2BPAOSHv0oHrpY5OAg
         5slQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=fXDQzRJwpBj9roGiQbi/p5YXxNqzIuda1D/kyiaLHGk=;
        b=QThYhyhnLD7NeyohmKbq5mG5L7q3pFnuN+Yheew9QapmjgVdMSnsIB0BL/dC5KnpE8
         tE7ToD1O0KhYQBI25r9mveE79GJ9kmozjzQB/duIGMm0ktSIi2C8y+B0yat8ksdz2Hmj
         SBiIgo/tcJBYg3ZsqOPg1z+SH8IitVFG1gxnplUE3YYKTPc+9JI/NhWlaygRq2+HpDxb
         UK1RiM61eDwSoGGBGZlUjkWzEI2609fk1BQvsHNn+SrRIuPRs9VBcwshoEGg3qXfmWh2
         tK/aQAzGlXzvKjU6XBjdqgYGAF0qX0E/onN921nEMTgJwA2Uqu0CFCoq+wNLskKyFZmy
         +n3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 3si47656wra.5.2020.10.31.02.25.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 02:25:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,436,1596492000"; 
   d="scan'208";a="363243658"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2020 10:25:44 +0100
Date: Sat, 31 Oct 2020 10:25:44 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
cc: Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: vt6655: Remove useless
 else
In-Reply-To: <a794bc3814ffac8027cef21e2993de67fa7e30d0.1604133727.git.mdejesusfilho@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010311024470.2733@hadrien>
References: <cover.1604133727.git.mdejesusfilho@gmail.com> <a794bc3814ffac8027cef21e2993de67fa7e30d0.1604133727.git.mdejesusfilho@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 31 Oct 2020, Marcos Antonio de Jesus Filho wrote:

> The else statement is not useful due to the presence of a return
> statement on the if block. Remove the else statement, adjust the
> indentation of the code and remove useless return statement. Reported by checkpatch.
>
> Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 38 +++++++++++++++++------------------
>  1 file changed, 19 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 9db4317f9a42..508e1bd7d76e 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -440,6 +440,8 @@ s_uFillDataHead(
>  	bool is_pspoll
>  )
>  {
> +	struct vnt_tx_datahead_ab *buf = pTxDataHead;
> +

This part of the patch isn't related to what is described in the log
message.

julia

>  	if (!pTxDataHead)
>  		return 0;
>
> @@ -544,29 +546,27 @@ s_uFillDataHead(
>
>  		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>  		return buf->duration;
> -	} else {
> -		struct vnt_tx_datahead_ab *buf = pTxDataHead;
> -		/* Get SignalField, ServiceField & Length */
> -		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> -				  byPktType, &buf->ab);
> +	}
>
> -		if (is_pspoll) {
> -			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> +	/* Get SignalField, ServiceField & Length */
> +	vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> +			  byPktType, &buf->ab);
>
> -			buf->duration = dur;
> -		} else {
> -			/* Get Duration and TimeStampOff */
> -			buf->duration =
> -				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, byPktType,
> -								    wCurrentRate, bNeedAck, uFragIdx,
> -								    cbLastFragmentSize, uMACfragNum,
> -								    byFBOption));
> -		}
> +	if (is_pspoll) {
> +		__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>
> -		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> -		return buf->duration;
> +		buf->duration = dur;
> +	} else {
> +		/* Get Duration and TimeStampOff */
> +		buf->duration =
> +			cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, byPktType,
> +							    wCurrentRate, bNeedAck, uFragIdx,
> +							    cbLastFragmentSize, uMACfragNum,
> +							    byFBOption));
>  	}
> -	return 0;
> +
> +	buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> +	return buf->duration;
>  }
>
>  static
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a794bc3814ffac8027cef21e2993de67fa7e30d0.1604133727.git.mdejesusfilho%40gmail.com.
>

