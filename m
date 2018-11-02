X-GM-THRID: 6619244143382102016
X-Received: by 2002:a62:3705:: with SMTP id e5-v6mr2149533pfa.85.1541168826275;
        Fri, 02 Nov 2018 07:27:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:bb82:: with SMTP id m2-v6ls8859391pls.0.gmail; Fri,
 02 Nov 2018 07:27:05 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dsYAyVPHW95qp/aZxLgZlNeGVXq2sUfv5tAMowD9+6YF++CE7x/dt8hqCqzaseQwyEkoeh
X-Received: by 2002:a17:902:9301:: with SMTP id bc1-v6mr816543plb.84.1541168825470;
        Fri, 02 Nov 2018 07:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541168825; cv=none;
        d=google.com; s=arc-20160816;
        b=EWLdG4T0FQl7sfMmGSxQoCt6jn0vdAuGd3tXKbC5o8OFZ5MlNUVWNARH2S7h+uu1O5
         ea1RKH50gBRgBtQF45xiLaRuXo20u5n5eDC3hAcZ5VkwAaDprWFtekAcs/0d1f2QFffT
         ZOkwUcr8NiuoLCDSWjRwOYWsa9Y96r5n0YxEWYQpGTrVvSU8TfXBPWsS1msSECAVh9ZG
         1Nxo0pg6s18ZsIo0859pS1Y+7NEWiUYTjUXGG8ygYQ2ZaLb3NKS8IMEl/wlq7KXlQp4N
         XDcosSkUNUjxP9nvxctkMh+mtCDFPfXRiU4Shmtk5fBK2fmGrekUiQfQtkfFUMMtg2kC
         02Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ERCZaGAB826bvhhva4lefPw2rVeGSlcXG7UnM7/Shw4=;
        b=p4jwpP92ksH2YiC+8CtnhqBWJXzaNMIm9yTIlogRO8KpiLeaww0LPxSUBERUJhJIli
         DyKuga6DivATgPiaNuyd3FvHZYBUpLwRCsKW0vavWNJ75D8OK0wykvVkUtb1o5iAm+Lg
         wGYKL3WXjNVSdwc//bpeMbKOAFGSZvPxoSmnlwL2eonf0fpROD5LiXEKr/dcAbx3ZfjX
         MlOnvKUXswAfVsfrgX8OlKtWsdBnqf4yIPrlxI0Dm9ieCoQzWYqXjZPnLxigMCsBQ6at
         I8AOWSoK7W96kQ2juPaJUrAbbqwQ5jnSnIqJF09vg85ixQ9lBWoqHWffYXX6DeoelKmu
         FtMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IuVVyFor;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i12-v6si1348551plt.5.2018.11.02.07.27.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Nov 2018 07:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IuVVyFor;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E31202081F;
	Fri,  2 Nov 2018 14:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1541168825;
	bh=qJmBWBd8HKVSOsZD+c1oy2gQZ+fFjVASlqPQOSaMjz0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=IuVVyFor3niEznDCd/kmxWXzAMJeM75BbPm67cOAMoXDUUyvQhCWvS59an+v2OaXE
	 JeDJlUuMBBTrtpdt059+HkMu6anpAkMFk8NIeGggKsvx0UxZPhI505Ci8NriWQ2bMq
	 GNecSr5z4aAr34NMYjgWj+TKBUhsXm1K+JIu1xmo=
Date: Fri, 2 Nov 2018 10:26:57 -0400
From: Sasha Levin <sashal@kernel.org>
To: Ioannis Valasakis <code@wizofe.uk>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH v2 1/5] staging: greybus Align
 parameters to parentheses
Message-ID: <20181102142657.GF194472@sasha-vm>
References: <cover.1541162672.git.code@wizofe.uk>
 <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541162672.git.code@wizofe.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <537e6bd9f572df1cce6fc8624471a9c7c2714c35.1541162672.git.code@wizofe.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Fri, Nov 02, 2018 at 12:48:01PM +0000, Ioannis Valasakis wrote:
>Align parameters to the right side of the left parentheses
>Reported by checkpatch.
>
>Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
>---
> drivers/staging/greybus/core.c | 6 +++---
> 1 file changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/staging/greybus/core.c b/drivers/staging/greybus/core.c
>index dafa430d176e..d28773e06838 100644
>--- a/drivers/staging/greybus/core.c
>+++ b/drivers/staging/greybus/core.c
>@@ -28,7 +28,7 @@ int greybus_disabled(void)
> EXPORT_SYMBOL_GPL(greybus_disabled);
>
> static bool greybus_match_one_id(struct gb_bundle *bundle,
>-				     const struct greybus_bundle_id *id)
>+				 const struct greybus_bundle_id *id)
> {
> 	if ((id->match_flags & GREYBUS_ID_MATCH_VENDOR) &&
> 	    (id->vendor != bundle->intf->vendor_id))
>@@ -48,7 +48,7 @@ static bool greybus_match_one_id(struct gb_bundle *bundle,
> static const struct greybus_bundle_id *
> greybus_match_id(struct gb_bundle *bundle, const struct greybus_bundle_id *id)
> {
>-	if (id == NULL)
>+	if (!id == NULL)
> 		return NULL;

This change doesn't look right. It also doesn't do what the commit log
says this commit does.

--
Thanks,
Sasha

