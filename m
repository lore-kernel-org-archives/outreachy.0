X-GM-THRID: 6809858298158776320
X-Received: by 2002:a17:90b:951:: with SMTP id dw17mr373017pjb.6.1585591360470;
        Mon, 30 Mar 2020 11:02:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8c8e:: with SMTP id t14ls12926521plo.9.gmail; Mon,
 30 Mar 2020 11:02:38 -0700 (PDT)
X-Google-Smtp-Source: APiQypKrhsaY6DSrVawAPDR3zriyJdsMSPuorFdTU1PvXm4a5N1zBl4XDb/7YtQWRaiFSY0Ye77W
X-Received: by 2002:a17:902:b40f:: with SMTP id x15mr8659026plr.266.1585591358871;
        Mon, 30 Mar 2020 11:02:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585591358; cv=none;
        d=google.com; s=arc-20160816;
        b=cSNcySW78f3Nae5Y/LH3t+Gctu6clrR7EizruSt5ujH8pJcyA52H+85ROwwi4Uudeq
         QQNPYEOr09jVqvIk2rb+InWCvhlIc04HgdudbBkhfUz/Hc7CzWDMwQ1CYTIPeMjXBT4K
         iuk1OPgHQZ98YZVeWItGrrovWYUOO7H9+kASjipS9LapTnWui/lpmu4kQG7jwu9L7mns
         HBR6KiF/DE83kLkjCm6iid3BWG+0rhvVyJKRwEpt80MwogbBDpVMUphme80u5GGUJyuN
         BPBkhfVJ7DMTqevg+/Utiyh7WYt+edQrzsOXEna1lTi50G10sXoHfuPuqLTogJqsMLmX
         CSuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=DDTBo3b6eugqqfZ8zVocrHb5fGBBLyZbFZt5lv3L6jQ=;
        b=nlhZSJ4yyuStC5QHLpJ7XaP4LXWuGQxBd57Lj9bvrSTDvn/NfrXJAFg3eNMNy3Ba+X
         speXQfUNmyBb2MjdFCBxMADqwhQzbY9TxIJnH2ZXNP1Q37e2e9XURwvuNuCdFwpmlHyC
         WqKNlJvwrnsp7zNOp9pHMcSESXWRwWL+gfk00v5Kyv+Np+zjVKQBoRFAFmQ1KbalCxG3
         8acozDt7b309rKHCwi2SKh3LQDSeXTzELm3bjUT61PTNQcDPYu7saQYgA5WQ7KRKpMBZ
         I7tAUiJLBXBrQpNOEpiq1H78V5Qm74SQTzcwS40s86whS7cScEL1yzXyCOOXldkLG82R
         DMOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hRhjlvts;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id y5si929983plr.4.2020.03.30.11.02.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:02:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=hRhjlvts;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585591357;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DDTBo3b6eugqqfZ8zVocrHb5fGBBLyZbFZt5lv3L6jQ=;
	b=hRhjlvtsv/EXwcdb4vM6xpJH3T5Dnwbh5yjnCS5Ld/mWB8yCzZFWaALjAuAR4EVMjSLWdJ
	3yd/MoSKcZ8GMeBuot0wSxJfcn3kroVPHybBEjOBjzVL2gG5lq+ZOLURXarEfJNlBim2CQ
	2eIMoXn3kTxoXsJFDs6b/CZoaInBi0U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-438-2_L7D4toPjKLaoPTBoA6Qw-1; Mon, 30 Mar 2020 14:02:36 -0400
X-MC-Unique: 2_L7D4toPjKLaoPTBoA6Qw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DD936107ACC4;
	Mon, 30 Mar 2020 18:02:34 +0000 (UTC)
Received: from elisabeth (unknown [10.36.110.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EC12C100EBBD;
	Mon, 30 Mar 2020 18:02:28 +0000 (UTC)
Date: Mon, 30 Mar 2020 20:02:19 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Briana Oursler <briana.oursler@gmail.com>
Cc: gregkh@linuxfoundation.org, forest@alittletooquiet.net,
 julia.lawall@inria.fr, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/4] Staging: vt6655: Raise rate
 determination logic.
Message-ID: <20200330200219.671c57fc@elisabeth>
In-Reply-To: <ef75d57ce674d38a998c5d806dd33176f6db8087.1585542564.git.briana.oursler@gmail.com>
References: <cover.1585542564.git.briana.oursler@gmail.com>
	<ef75d57ce674d38a998c5d806dd33176f6db8087.1585542564.git.briana.oursler@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 29 Mar 2020 21:48:00 -0700
Briana Oursler <briana.oursler@gmail.com> wrote:

> Raise rate setting logic out of nested if-else statement to prevent code

Again, not a native English speaker, but it's the first time I meet
this usage of "to raise". I would have rather said "move", or "factor
out".

> duplication.
> 
> Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
> ---
>  drivers/staging/vt6655/rxtx.c | 26 ++++++--------------------
>  1 file changed, 6 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
> index f9e2087d2242..4be867b95d9d 100644
> --- a/drivers/staging/vt6655/rxtx.c
> +++ b/drivers/staging/vt6655/rxtx.c
> @@ -302,23 +302,18 @@ s_uGetDataDuration(
>  				return 0;
>  			}
>  		} else { /* First Frag or Mid Frag */
> -			if (byFBOption == AUTO_FB_0) {
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> +			if (wRate < RATE_18M)
> +				wRate = RATE_18M;
> +			else if (wRate > RATE_54M)
> +				wRate = RATE_54M;
>  
> +			if (byFBOption == AUTO_FB_0) {
>  				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
>  				else
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE0][wRate-RATE_18M], bNeedAck);
>  
>  			} else { /* (byFBOption == AUTO_FB_1) */
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> -
>  				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
>  				else
> @@ -344,27 +339,18 @@ s_uGetDataDuration(
>  			}
>  		} else { /* First Frag or Mid Frag */
>  			if (byFBOption == AUTO_FB_0) {
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> -
>  				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
>  				else
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt0[FB_RATE1][wRate-RATE_18M], bNeedAck);
>  
>  			} else { /* (byFBOption == AUTO_FB_1) */
> -				if (wRate < RATE_18M)
> -					wRate = RATE_18M;
> -				else if (wRate > RATE_54M)
> -					wRate = RATE_54M;
> -
>  				if (uFragIdx == (uMACfragNum - 2))
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbLastFragmentSize, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
>  				else
>  					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
>  			}
> +

This newline is unrelated.

>  			if (bNeedAck) {
>  				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
>  			} else {

-- 
Stefano


