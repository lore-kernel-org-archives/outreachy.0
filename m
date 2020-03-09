X-GM-THRID: 6801918498465382400
X-Received: by 2002:a1c:7f87:: with SMTP id a129mr1139686wmd.160.1583788063673;
        Mon, 09 Mar 2020 14:07:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:508e:: with SMTP id a14ls6606784wrt.2.gmail; Mon, 09 Mar
 2020 14:07:42 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvZLejZUXBXnhudDYM/4a9gg1da0elLkUVNWZkLj5Des7uYww9eUIgeDXRkB4pUJHmTf3XP
X-Received: by 2002:a5d:6208:: with SMTP id y8mr15948082wru.64.1583788062395;
        Mon, 09 Mar 2020 14:07:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583788062; cv=none;
        d=google.com; s=arc-20160816;
        b=yI7LM2AcU3loG094AEgLtJKVwIHyHlqIZgeT/xdotxcFAWe50BBz724ufI7Vyb0/fb
         CS5zFWImHKQS8ovg0Wp3NP/KEfh2KcMMI+Yy3yxmDL00VbcAN7dK2CwHEVnZda5E+OE0
         3ijo0DTNoizHw+4faes2qKe2Ut159b5v/3Gwqe8Yn9wKPkf4vZZ4/PVi6JKuZqggzJYQ
         d1iEAmkQNGSsVNHyyZWrf/xESkeFtV8cY7j9MQ4AjaBS0SyNG7G4I7vrj4KMdijFSKay
         Eh7rHgSEzS5W6sHe3Q60Erlis+0Gxagq5+K1vMAbSxA1zo4YmI0HP9s83AQXn/vAPoMK
         K+bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=H4waWrcwjDrN7yAnPdojxNriUG51y+9VsU6lNvNCF3M=;
        b=Jqt4UOI2XtFHrfS6GkJwhFIMUrnWA6mNxAPBCrhzg36D+K77vEyujCIPtDENQuUXks
         +dDupzQ/vUHZ5+JLfgiLVUB7eHp7qwNJhG+OAWvj7/CnwnhVHhhGgGP/MtVw0/XmG2xE
         lLXbEWN0m3XdgVBDdhhjgd+RhhJs/tq3yzLQFrizAUH2smwVwX8VvJhXAh4VrRFAOXcT
         jAT+QT8eU5s/mAJdcL3SY90z5kgQErbpicbwHh8FW/8dSLI7vOlbbNylnw96SEqbz+Xm
         oJx//ewD8hx/X87+dPD/lhV9M+A86+Zogd2WoGucgMfBa4WMwA+12MFHAOSIX/7PTFEO
         3bwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d14si424212wru.1.2020.03.09.14.07.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 14:07:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,534,1574118000"; 
   d="scan'208";a="341808748"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 22:07:41 +0100
Date: Mon, 9 Mar 2020 22:07:41 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: forest@alittletooquiet.net, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: vt6655: remove line over 80
 characters
In-Reply-To: <20200309171531.6597-1-payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003092206180.2324@hadrien>
References: <20200309171531.6597-1-payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Payal Kshirsagar wrote:

> Fix line over 80 characters.

How could you describe what you have done without using "Fix"?  Fix is not
very informative.  Most patches fix something.  One wants to know what was
done and why.

julia

>
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/vt6655/mac.h | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
> index c7888c4e96f2..eb56e16637f6 100644
> --- a/drivers/staging/vt6655/mac.h
> +++ b/drivers/staging/vt6655/mac.h
> @@ -884,9 +884,11 @@ bool MACbIsIntDisable(struct vnt_private *priv);
>  void MACvSetShortRetryLimit(struct vnt_private *priv,
>  			    unsigned char byRetryLimit);
>
> -void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
> +void MACvSetLongRetryLimit(struct vnt_private *priv,
> +			   unsigned char byRetryLimit);
>
> -void MACvSetLoopbackMode(struct vnt_private *priv, unsigned char byLoopbackMode);
> +void MACvSetLoopbackMode(struct vnt_private *priv,
> +			 unsigned char byLoopbackMode);
>
>  void MACvSaveContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
>  void MACvRestoreContext(struct vnt_private *priv, unsigned char *pbyCxtBuf);
> @@ -913,7 +915,8 @@ void MACvSetCurrSyncDescAddrEx(struct vnt_private *priv,
>  void MACvSetCurrATIMDescAddrEx(struct vnt_private *priv,
>  			       u32 curr_desc_addr);
>  void MACvTimer0MicroSDelay(struct vnt_private *priv, unsigned int uDelay);
> -void MACvOneShotTimer1MicroSec(struct vnt_private *priv, unsigned int uDelayTime);
> +void MACvOneShotTimer1MicroSec(struct vnt_private *priv,
> +			       unsigned int uDelayTime);
>
>  void MACvSetMISCFifo(struct vnt_private *priv, unsigned short wOffset,
>  		     u32 dwData);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309171531.6597-1-payalskshirsagar1234%40gmail.com.
>

