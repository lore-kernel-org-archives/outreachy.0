X-GM-THRID: 6808004693646639104
X-Received: by 2002:a1c:3885:: with SMTP id f127mr3109412wma.134.1585390794056;
        Sat, 28 Mar 2020 03:19:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e983:: with SMTP id h3ls1696985wrm.7.gmail; Sat, 28 Mar
 2020 03:19:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtkd6qz7aGemc2J926EJnAczxm+aaj9JhmEHduk4QMoP/bHgH7vLtS4E2VTrT05OKiWAC1W
X-Received: by 2002:adf:f50d:: with SMTP id q13mr4332250wro.374.1585390792791;
        Sat, 28 Mar 2020 03:19:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585390792; cv=none;
        d=google.com; s=arc-20160816;
        b=d7oUdCp9+dVFkEGPRpDv1JaOqo3acI07BhrLhH3K3WP0X01phg4oKIgKVC5J5o+a16
         VYZxMAxfvDQt3/W7oKUBjwv1PTgkHyawB0VlqJiTEwxkZcIC1WpRJSQ0tuVgVCXlWZVN
         Z5NhSOECZfHN3PyKUnBzN/dLxyZBAzkbfVW9httBRLUa5uN1pe2ZI9zzdxruWGARzhMw
         gm1frXhmSOpAxUKgR4zaozhmGENELCXyLhs2XgQfPeDRh7rjQbtXTwlU9FSO8R+POtJh
         XZrmCbwNf8+UGz49s95JNlOcTnduimt5Nl9uTgYmkt6j34hI14keeeFtehv7qW79jwvA
         hK2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pdtpVDq4153Ov7xMx1LwyyJBg8QWL4Y7GsDaWbvqJy4=;
        b=WTC3stuWFuf1Y7DypvG2cuJxFcCo/DHiH9S/RcvVBbyxtmDkgUa/jwo381VONDxf7q
         r9dO4DFcZOTNi3aANo/HHldXXYwpqZLx+DTQLcZrlVrJ5+PI9TgLEv8MVSAdacMV5A/Q
         ok+xhweCxLDG+cBh2WSa7CFCTDB/hjUkD7jJK2yxsAiOmMNZjhaRX/XvEoX3Ju0eRW8d
         wIQbPYg/vRRg08q56qhNDaIgBZOQ8wzyR03alcQGVB47dj7Iuiuy3fmkuGvhb8GZw2+S
         mTzDjchh/6XOTYeqQpxSlaszpy25T8qFaAvwTJLbl4KYlsg3CU3KtjHZ/MFF5vCsJvtk
         kHcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id f3si638191wmc.2.2020.03.28.03.19.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2020 03:19:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,316,1580770800"; 
   d="scan'208";a="344121323"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2020 11:19:52 +0100
Date: Sat, 28 Mar 2020 11:19:51 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: julia.lawall@inria.fr, gregkh@linuxfoundation.org, 
    nramas@linux.microsoft.com, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [patch v5] Staging: vt6655: Reduce statement complexity
In-Reply-To: <20200328051004.40756-1-briana.oursler@gmail.com>
Message-ID: <alpine.DEB.2.21.2003281118480.3005@hadrien>
References: <alpine.DEB.2.21.2003272237070.2709@hadrien> <20200328051004.40756-1-briana.oursler@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 27 Mar 2020, Briana Oursler wrote:

> Move duplicated code out of nested if else statements and make other
> simplifying changes, shortening line length and improving readability.

Should this really be multiple patches?  For example, does the len thing
need to be with the rest?

A line is added under an else in the hunk starting with line 341 that
doesn't look necessary.

julia

>
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>
> Changes in v5:
> 	- Update patch description to better describe changes.
>
> Changes in v4:
> 	- Remove 'flag' bool and return comparison to switch case.
> 	- Remove comment.
> 	- Update path description to better describe changes.
>
> Changes in v3:
> 	- Update grammar and meaning in patch description.
>
> Changes in v2:
> 	- Remove ternary logic in switch case.
> 	- Introduce 'flag' bool.
> 	- Move len definition above switch case.
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
>

