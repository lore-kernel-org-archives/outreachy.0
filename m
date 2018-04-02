X-GM-THRID: 6536210357179908096
X-Received: by 10.28.52.142 with SMTP id b136mr22118wma.13.1522661329973;
        Mon, 02 Apr 2018 02:28:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.27.211 with SMTP id b202ls46165wmb.7.gmail; Mon, 02 Apr
 2018 02:28:48 -0700 (PDT)
X-Google-Smtp-Source: AIpwx48RWeS7vZTq/Sluc3CGzHrYk2nfRwgYf0U903whjLmru2DyDDCIpysq8aeT4h2mLcoWgvGY
X-Received: by 10.28.96.86 with SMTP id u83mr22565wmb.20.1522661328911;
        Mon, 02 Apr 2018 02:28:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522661328; cv=none;
        d=google.com; s=arc-20160816;
        b=pbEWtSoxMtgob6RkmRtVHOQUgH5ueGEzei0wJMDCatLvIWIQ9ZkyshxPpL+cJi3KyG
         U49h+peIa98C8kfIif0BckBhq7HnquVMhpjZFLjo5VyT9sBEZf8qFvyhpYiZ7C1lYwP2
         Lp/vn9XRGDG34f6RxUn9po78mYE4rLyGoYW5MoFhfcBhn2S7PxH4RqMNDSGOg/8DHkj/
         JEj78kzpOCCHH+aGm6f0Su6/bf1LhVsTI7MEU8bWgGrWNn6W+eMMJoc+aR6rmFKin93t
         AS4ThFCMnSKemml66y7aHsLQm9VlgfmGadGm2Dzik0ez5kWOcqnUEENLJxqKiIKmYpJk
         i6EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=IHHzhLdKZhuGZsWmChaaN1r2YTRahaJP/llqJLCVws0=;
        b=pYBUW7fDeKSEcwF7Hj8zoE/SZxhIbMPEO8wlOUYVvLP51Tyav2QFCQcz9q8LMcREvQ
         sYDo+G8GGCSjRyLZLcM69of6JNurISbGNlOjYZccpNnLQnfNnqU1r1oeI3Ai7qSfshXu
         ImgJYgRmVVG9qmFzBfmoOzmOKGLg1eTyQlPLM8s20ryGAEDVI6ZrDWHlm1a5kkvfP79G
         EpwrA0P17EAJ2I1qdMyqwnG65mUPmx58+vLizm2JJ89RdMQsbMcNuUmzZ77lbSwr1Lwg
         TUUKb+tP0WuXMphU+fQ4WsaPuMBxbzHAuNdKQhFkD4YIkSVGxE9fBtdtQFNeSQLA+IBc
         cXiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j23si3942wmh.2.2018.04.02.02.28.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Apr 2018 02:28:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.48,395,1517871600"; 
   d="scan'208";a="320941892"
Received: from ip-146.net-89-2-7.rev.numericable.fr (HELO [192.168.0.15]) ([89.2.7.146])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Apr 2018 11:28:48 +0200
Date: Mon, 2 Apr 2018 11:28:48 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v6] staging: vt6655: Remove else after
 return
In-Reply-To: <1522659771-799-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1804021119160.3198@hadrien>
References: <1522659771-799-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 2 Apr 2018, Nishka Dasgupta wrote:

> Remove else after return and match alignment with open parenthesis.
> Issue found with checkpatch.

Overall, I'm not sure that this is a good idea.  The file is full of ifs
and elses that each deal with different cases, sort of like a state
machine.  It seems reasonable for the else code to be somehow at the same
level as the then code.

On the other hand, it could improve a lot the future of this file to make
it look more like Linux kernel code.  You could make a patch to drop all
the s_u and s_v's in front of function names.  In this function, maybe it
would be useful to make a local variable u16 datadur and then assign this
variable to the result of calling GetDataDuration.  There could then be eg
buf->duration_f0 = cpu_to_le16(datadur); all over the place.  This would
make it possible to move the GetDataDuration calls over to the left.  Then
some newline could be added to their arguments to stay within 80
characters.  The local variable could also have the letters indicating
their types removed from the fronts of their names.  Overall, it's
unfortunate that there are so many function calls with huge argument
lists, where most of the arguments are the same.  This seems quite error
prone as well as being verbose.  I don't know if it is possible to solve
this problem, though.

> Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
> ---
> Changes in v6:
>  - Remove else after return
>  - Move variable declarations to top of code block
>  - Adjust alignments within the if-block
>
>  drivers/staging/vt6655/rxtx.c | 41 ++++++++++++++++++++---------------------
>  1 file changed, 20 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 9c4a532..78b814e 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -552,6 +552,11 @@ s_uFillDataHead(
>  			return buf->duration_a;
>  		} /* if (byFBOption == AUTO_FB_NONE) */
>  	} else if (byPktType == PK_TYPE_11A) {
> +		struct vnt_tx_datahead_ab *buf = pTxDataHead;
> +		/*Get SignalField, ServiceField & Length */
> +		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> +				  byPktType, &buf->ab);
> +

I'm not sure that this is correct, because the call to vnt_get_phy_field
has been moved out of a conditional.  Also you now have a declared
variable buf that is shadowed by another variable buf, of another type, in
a nested if.  That could be confusing.

julia

>  		if (byFBOption != AUTO_FB_NONE) {
>  			/* Auto Fallback */
>  			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
> @@ -565,31 +570,25 @@ s_uFillDataHead(
>  			buf->duration_f0 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F0, cbFrameLength, byPktType,
>  									       wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>  			buf->duration_f1 = cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A_F1, cbFrameLength, byPktType,
> -										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
> +									       wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
>  			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
>  			return buf->duration;
> -		} else {
> -			struct vnt_tx_datahead_ab *buf = pTxDataHead;
> -			/* Get SignalField, ServiceField & Length */
> -			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
> -					  byPktType, &buf->ab);
> -
> -			if (is_pspoll) {
> -				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
> -
> -				buf->duration = dur;
> -			} else {
> -				/* Get Duration and TimeStampOff */
> -				buf->duration =
> -					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> -									    wCurrentRate, bNeedAck, uFragIdx,
> -									    cbLastFragmentSize, uMACfragNum,
> -									    byFBOption));
> -			}
> +		}
> +		if (is_pspoll) {
> +			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
>
> -			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> -			return buf->duration;
> +			buf->duration = dur;
> +		} else {
> +			/* Get Duration and TimeStampOff */
> +			buf->duration =
> +				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
> +								    wCurrentRate, bNeedAck, uFragIdx,
> +								    cbLastFragmentSize, uMACfragNum,
> +								    byFBOption));
>  		}
> +
> +		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
> +		return buf->duration;
>  	} else {
>  		struct vnt_tx_datahead_ab *buf = pTxDataHead;
>  		/* Get SignalField, ServiceField & Length */
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1522659771-799-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

