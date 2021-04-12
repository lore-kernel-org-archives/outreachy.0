X-GM-THRID: 6949336424403435520
X-Received: by 2002:a63:d309:: with SMTP id b9mr27867238pgg.96.1618260419591;
        Mon, 12 Apr 2021 13:46:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:530e:: with SMTP id h14ls7713443pgb.11.gmail; Mon, 12
 Apr 2021 13:46:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzMVmMdbXyzagvMuOnP/sKYSuUhQ+kDBofokczIf05Wj8cTyJNGW1sAboOShRZx5R1mWZi7
X-Received: by 2002:a63:c450:: with SMTP id m16mr28225336pgg.333.1618260418460;
        Mon, 12 Apr 2021 13:46:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618260418; cv=none;
        d=google.com; s=arc-20160816;
        b=Q2hv3QSHzFBIEh5x+21T87Rd5VIifjWfs8/ZMWsX0s1LkrqlkzGXuEmvHr1NtFGQFc
         NHmN/qqVW25XB2HJ5gdOnqsoCEKvbP2I7SMJabk/ZAIbUlXOO6HgMTjQZ2qoSrfPuVCC
         nps3RNWE9P6EhBkYfazrdVLTw8T6a6xMAtXtqjmIs8nJ6HXtumUIoHaGOfzNENhl4bSN
         yOkS8erPaWxGCCQBL9IfOPl2QmFfk2SN8SN4sJTUMDr12BVwmERKy2xUrTtCQBCVFpsH
         f1BnzvFI5bgbUry/ryWPk/bYZz8asPo/AlTW5Fp+BT2ogOy+3KL8A1DLTjYnAARPogcx
         Ncmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=iXr7nrQsvHXKR0Dbt/Mdgm6MQ34oMIBM7bXNhdP2hc4=;
        b=NJtHpPvzuCnNV1U2de77/n+U6GIns1YzKKXbxZ0wGu2KXGPHapi1lblXobsTAkkjQL
         rbpeyHiIiJWPct/x4br0SlAP5V8wToq00uDRVY5vlkptzgsw5Mb3NFDboWYUyRNSayC3
         kSZNaBxA7JR5oO3kBuKPoNKe/G291eOlmB6MIZ5jCCqcKOl5OZhJYua0ev/N/naUrs3I
         UhxkqvBrx3zsaomxNM9lGS2IA5cOHhpCtdhl8LWCceBsGF0pWMM2fX7iyRGFpTo4rpW7
         7WSmAlgUaN/1/lZ1Wa+BNrwvq1LfzFWWc4wMatChUWqXbO6a0zXsBMkXbkPHQ1HWVSsz
         Grmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Return-Path: <joe@perches.com>
Received: from smtprelay.hostedemail.com (smtprelay0227.hostedemail.com. [216.40.44.227])
        by gmr-mx.google.com with ESMTPS id t5si1129135pgv.4.2021.04.12.13.46.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 13:46:58 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.227;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.227 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from omf04.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 5314A181D3028;
	Mon, 12 Apr 2021 20:46:57 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf04.hostedemail.com (Postfix) with ESMTPA id 451D2D1514;
	Mon, 12 Apr 2021 20:46:56 +0000 (UTC)
Message-ID: <d82c4f4be48b645983a7f922f1791ebf098b22c5.camel@perches.com>
Subject: Re: [PATCH v4 3/3] staging: rtl8192e: remove unnecessary parentheses
From: Joe Perches <joe@perches.com>
To: Mitali Borkar <mitaliborkar810@gmail.com>, gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Date: Mon, 12 Apr 2021 13:46:54 -0700
In-Reply-To: <29464cba775f9529db30b7fb4168198975098b55.1618224838.git.mitaliborkar810@gmail.com>
References: <cover.1618224838.git.mitaliborkar810@gmail.com>
	 <29464cba775f9529db30b7fb4168198975098b55.1618224838.git.mitaliborkar810@gmail.com>
Content-Type: text/plain; charset="ISO-8859-1"
User-Agent: Evolution 3.38.1-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: rspamout03
X-Rspamd-Queue-Id: 451D2D1514
X-Spam-Status: No, score=0.10
X-Stat-Signature: c8jpneo5wxn44uay84rgs8d99pt4mhjb
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX1+6cZm0BG9zoYa1nYYgSmPFXdugcr6N1eg=
X-HE-Tag: 1618260416-447498

On Mon, 2021-04-12 at 16:52 +0530, Mitali Borkar wrote:
> Removed unnecessary parentheses because they must be used only when it
> is necessary or they improve readability.
> Reported by checkpatch.

I gave you feedback about the memset changes.
Please use it.
https://lore.kernel.org/lkml/f5fe04d62b22eb5e09c299e769d9b9d8917f119c.camel@perches.com/

> Changes from v3:- No changes.
> Changes from v2:- Rectified spelling mistake in subject description.
> Changes has been made in v3.
> Changes from v1:- No changes.
[]
> diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
[]
> @@ -646,13 +646,13 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
> �	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
> �	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
> �
> 
> -	memset((void *)(&(pHTInfo->SelfHTCap)), 0,
> +	memset((void *)(&pHTInfo->SelfHTCap), 0,
> �	       sizeof(pHTInfo->SelfHTCap));

	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap);

etc...


