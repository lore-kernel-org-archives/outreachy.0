X-GM-THRID: 6809858298158776320
X-Received: by 2002:a63:2057:: with SMTP id r23mr5591331pgm.232.1585591456254;
        Mon, 30 Mar 2020 11:04:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:16d5:: with SMTP id 204ls12299821pfw.3.gmail; Mon, 30
 Mar 2020 11:04:14 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsUEHOWGS9Xsj2Ff5723vBH+8D5cVRu4sx/7iJ2V31vtNmA5H0RJkwEzJpQUMjsZrqWKirf
X-Received: by 2002:a62:5f06:: with SMTP id t6mr14529291pfb.192.1585591454747;
        Mon, 30 Mar 2020 11:04:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585591454; cv=none;
        d=google.com; s=arc-20160816;
        b=P/vsKZd9Ls/+KQascMd2RqgRdC6pW6oF6NVhRqogOKF/uIzfBpaj4mY72EUA+z5kPw
         pNl4Gxuuq7PwFM83pA5Dc6X+8aK8C9hvDtHBcAAUzzGOd0eED+zLTZXfstYkLsEyxpDM
         whveESQymcotpDY7mXE5GITLl9rhMlHTrjwS09ZINqpBH72xTk9Vb8h6aIfbqEZOJeZ+
         DdX17K/3/GXXVlJV+D5GdpJ5+GokI7dlfQWPnwPEFOa9FQMv4ixBrv3ARpr4Nm2uVe1u
         6jG+87/aijgJdY1Fkc5GkfikbbhLSehKXZ6CjbScngkSKPEuxi04oOKfoyixa/G8B5nx
         DEWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=EVO9z9JuscNd0U0CohE4I44mHhoyRejTwx2NiSIbcyk=;
        b=jGvCfv9FC8H1TvCeMvOQf5ZBGQyxZIkHWxcL+fuitSMxVFw59rA6RP6ZOFkoyiQuu+
         pw7Ts3O/9cgyXmdo+seTBugXspfmDdYhKgY4D0eOdJ3OK+VHGkLx9zAekA6nZPKgmBeG
         wcXedU4r8hjwwQMa8yo2hl4rMT/zFDiU7zz0oyL1Rt2LmjvVoGqeRBSK+llV/UPVSX8U
         1WABJjKl1Fj/k1pyjA/xIUukK6yWRMNen0DbPdwuC17lu2yKEtjZ3o95Bu+MGTobhTt8
         9muydLZZVu32GczJpkby7CtQzm2L6NWq9y//6wsmRJS1Ycn7NrnBK3W7IgqxVLk6cvt5
         rxYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YjOU3DSF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id j14si782412pgg.1.2020.03.30.11.04.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:04:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YjOU3DSF;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585591454;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=EVO9z9JuscNd0U0CohE4I44mHhoyRejTwx2NiSIbcyk=;
	b=YjOU3DSF/PGakTAjNPTE+25UZqsuJtQE4EV4YMzfroRcNTUF2J1i61CgwbtjlR9UU5yWwG
	QylU/j6jD4uoI1+qfpa5KwXJANYoPhBkm4L+wOA/YGECnNLlAUv93SAWG7qhETCDUO5KR1
	2gH6v/nWLoryRrgPw0OC0AJjPzH6mnQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-195-rfJqzJn3PmeRqW8_VubEDw-1; Mon, 30 Mar 2020 14:04:10 -0400
X-MC-Unique: rfJqzJn3PmeRqW8_VubEDw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DAFD585EE70;
	Mon, 30 Mar 2020 18:04:06 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 11EF2A0A91;
	Mon, 30 Mar 2020 18:04:02 +0000 (UTC)
Date: Mon, 30 Mar 2020 20:03:56 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 julia.lawall@inria.fr, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/4] Staging: vt6655: Create new
 variable len.
Message-ID: <20200330200356.6e50ab08@elisabeth>
In-Reply-To: <8e046065ad86e79b8133f6c24ecf055c3b5a897f.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
	<8e046065ad86e79b8133f6c24ecf055c3b5a897f.1585542564.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 Mar 2020 21:48:01 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Create variable len to determine function input needed for
> s_uGetTxRsvTime. Use len to eliminate a nested if else statement, reduce
> code duplication, and shorten long lines found by checkpatch.

The commit description looks okayish to me, except perhaps that the
solution (creating a new variable) shouldn't be stated first. The
commit title is not very representative of the change, though.

> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 44 +++++++++++++----------------------
>  1 file changed, 16 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index 4be867b95d9d..6068cf65e3fe 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -240,10 +240,16 @@ s_uGetDataDuration(
>  {
>  	bool bLastFrag = false;
>  	unsigned int uAckTime = 0, uNextPktTime = 0;
> +	unsigned int len;

The other two are declared on one line, you could add it there.

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
> @@ -254,10 +260,7 @@ s_uGetDataDuration(
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
>  				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
> @@ -278,10 +281,7 @@ s_uGetDataDuration(
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
>  				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
> @@ -308,16 +308,9 @@ s_uGetDataDuration(
>  				wRate = RATE_54M;
>  
>  			if (byFBOption == AUTO_FB_0) {
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> -
> -			} else { /* (byFBOption == AUTO_FB_1) */
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
> +				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> +			} else {
> +				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
>  			}
>  
>  			if (bNeedAck) {
> @@ -338,17 +331,11 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else { /* First Frag or Mid Frag */
> +

Unrelated change.

>  			if (byFBOption == AUTO_FB_0) {
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
> -
> -			} else { /* (byFBOption == AUTO_FB_1) */
> -				if (uFragIdx == (uMACfragNum - 2))
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
> -				else
> -					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
> +				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
> +			} else {
> +				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, len, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
>  			}
>  
>  			if (bNeedAck) {
> @@ -356,6 +343,7 @@ s_uGetDataDuration(
>  			} else {
>  				uAckTime = 0;
>  			}
> +

Unrelated change.

>  			return pDevice->uSIFS + uAckTime + uNextPktTime;
>  		}
>  		break;

-- 
Stefano


