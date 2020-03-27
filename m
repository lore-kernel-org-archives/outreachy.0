X-GM-THRID: 6808004693646639104
X-Received: by 2002:a7b:c145:: with SMTP id z5mr694800wmi.55.1585345209378;
        Fri, 27 Mar 2020 14:40:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:548b:: with SMTP id h11ls4700073wrv.9.gmail; Fri, 27 Mar
 2020 14:40:07 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtFPYQEyZsLdg13VL/mMGl9yAWi/lOplJRf+8cj0mQnfYJZtOr9P9erwZFORd3EIMqiwYOo
X-Received: by 2002:a05:6000:1212:: with SMTP id e18mr1736061wrx.0.1585345207789;
        Fri, 27 Mar 2020 14:40:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585345207; cv=none;
        d=google.com; s=arc-20160816;
        b=A8tH0bYxhmAvat60snwySQEWJm1bWjbTO0OSJI9PiPYtXYdmTm2VzaFcUr93aJklgL
         8iSAkUZMgJuol73zHWSz6DmezG6FydMPwYHHuVr9La1XnaTloD8rouSwJHIrdiABGv7g
         cn9WVYOiGWZkpeH9XcPFl8W7Z+Casa5a9R9xxNcsU5eK8pxSOo8/KSi6uZkRFwS6Fx3k
         f+FRQJuB2EOjIsxqhYQ1TrR10LbSSjNTyNZnELrJRmb3uiGB4Sz4YYRiDxVBKKDgsnSe
         imHZgWG3+ukbUROq/1xpfj7Vc4jyxUQYN3yzVUFOr9I0SqnKrojNDkCfAhgPdl6PZIG4
         pICg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=IAwDQt+/AA2fYrmTi3qW+CqCnXHwsLXoeJS9RYX8NDk=;
        b=YbqmHqu5iNqaftfj44ISRLafS01R1O/2WmHFSTHUo7FD1KqBijsudQWJOCQPI1OHI6
         WaO+t3n4w303FrGjowWNX2IpPKVvLxLjZPabb0Bjv0+Jztf+gFFBGyQhgV2MVWrIy2ru
         DA3HazfKPtlovrTVRd2edzjQUvM+REUFYVVz6JaAv550OtWyFMASWT62rUVqo8skUbsh
         O+1R/FK7WJbZiuZtxwijoBQEKeNCYLmpVoQGjbHb292uPHKGqA3/LQxKhL+d7omNIUOp
         wF3Ri3NlpsKbQLLglEEAlWa+b3kEjXTiQbYBdxhpSYX7Q0nJuktaiAZ/vdAn/hzcYq23
         Vw1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l16si404454wmg.1.2020.03.27.14.40.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2020 14:40:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,313,1580770800"; 
   d="scan'208";a="344090797"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Mar 2020 22:40:07 +0100
Date: Fri, 27 Mar 2020 22:40:06 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: gregkh@linuxfoundation.org, nramas@linux.microsoft.com, 
    forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Outreachy][Patch v4] Staging: vt6655: Refactor
 switch case statement.
In-Reply-To: <20200327213253.22230-1-briana.oursler@gmail.com>
Message-ID: <alpine.DEB.2.21.2003272237070.2709@hadrien>
References: <20200327090043.GA1663713@kroah.com> <20200327213253.22230-1-briana.oursler@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 27 Mar 2020, Briana Oursler wrote:

> Simplify switch case statement to improve readability and limit code
> duplication. Define len variable for next packet time function input.
> Lift logic out of nested if else. Format long lines.

The subject and log message seem very misleading.  You don't seem to
modify either a switch or a case.  I guess you mean that you are focusing
on the branches of a single switch statement.  But the switch doesn't seem
like the important part.  The log message lists a variety of things that
are done.  What is the main theme of the patch?

julia


>
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>
> Changes in v4:
> 	- Remove 'flag' bool and return comparison to switch case.
> 	- Remove comment.
> 	- Update patch description to better describe changes.
>
> Changes in v3:
> 	- Update grammar and meaning in patch description.
>
> Changes in v2:
> 	- Remove ternary logic in switch case.
> 	- Introduce 'flag' bool.
> 	- Move len definition above switch case.
>
>  drivers/staging/vt6655/rxtx.c | 118 +++++++++++++++++-----------------
>  1 file changed, 58 insertions(+), 60 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 37fcc42ed000..9a6abe8613e6 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -240,10 +240,16 @@ s_uGetDataDuration(
>  {
>  	bool bLastFrag = false;
>  	unsigned int uAckTime = 0, uNextPktTime = 0;
> +	unsigned int len;
>
>  	if (uFragIdx == (uMACfragNum - 1))
>  		bLastFrag = true;
>
> +	if (uFragIdx == (uMACfragNum - 2))
> +		len = cbLastFragmentSize;
> +	else
> +		len = cbFrameLength;
> +
>  	switch (byDurType) {
>  	case DATADUR_B:    /* DATADUR_B */
>  		if (((uMACfragNum == 1)) || bLastFrag) {/* Non Frag or Last Frag */
> @@ -254,17 +260,17 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else {/* First Frag or Mid Frag */
> -			if (uFragIdx == (uMACfragNum - 2))
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
> -			else
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
> +			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wRate, bNeedAck);
>
>  			if (bNeedAck) {
> -				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
> +				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
> +							   byPktType, 14,
> +							   pDevice->byTopCCKBasicRate);
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>
> @@ -277,17 +283,18 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else {/* First Frag or Mid Frag */
> -			if (uFragIdx == (uMACfragNum - 2))
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wRate, bNeedAck);
> -			else
> -				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
> +			uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len,
> +						       wRate, bNeedAck);
>
>  			if (bNeedAck) {
> -				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
> +				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
> +							   byPktType, 14,
> +							   pDevice->byTopOFDMBasicRate);
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>
> @@ -300,35 +307,32 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else { /* First Frag or Mid Frag */
> +			if (wRate < RATE_18M)
> +				wRate = RATE_18M;
> +			else if (wRate > RATE_54M)
> +				wRate = RATE_54M;
> +
>  			if (byFBOption == AUTO_FB_0) {
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> -
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> -
> -			} else { /* (byFBOption == AUTO_FB_1) */
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> -
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
> +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> +							       byPktType, len,
> +							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
> +							       bNeedAck);
> +			} else {
> +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> +							       byPktType, len,
> +							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
> +							       bNeedAck);
>  			}
>
>  			if (bNeedAck) {
> -				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
> +				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
> +							   byPktType, 14,
> +							   pDevice->byTopOFDMBasicRate);
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>
> @@ -341,34 +345,28 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else { /* First Frag or Mid Frag */
> +
>  			if (byFBOption == AUTO_FB_0) {
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> -
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
> -
> -			} else { /* (byFBOption == AUTO_FB_1) */
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> -
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
> +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> +							       byPktType, len,
> +							       wFB_Opt0[FB_RATE0][wRate - RATE_18M],
> +							       bNeedAck);
> +			} else {
> +				uNextPktTime = s_uGetTxRsvTime(pDevice,
> +							       byPktType, len,
> +							       wFB_Opt1[FB_RATE0][wRate - RATE_18M],
> +							       bNeedAck);
>  			}
> +
>  			if (bNeedAck) {
> -				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> -				return pDevice->uSIFS + uAckTime + uNextPktTime;
> +				uAckTime = BBuGetFrameTime(pDevice->byPreambleType,
> +							   byPktType, 14,
> +							   pDevice->byTopOFDMBasicRate);
>  			} else {
> -				return pDevice->uSIFS + uNextPktTime;
> +				uAckTime = 0;
>  			}
> +
> +			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;
>
> --
> 2.24.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200327213253.22230-1-briana.oursler%40gmail.com.
>

