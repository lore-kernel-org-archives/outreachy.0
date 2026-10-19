Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765CE3385A7
	for <outreachy@lists.linux.dev>; Mon, 19 Oct 2026 01:51:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792374712; cv=none; b=DwK9EKFtkhnvXzrCUbGSwaARsXg5h63/1Ujl0LG17EJjv9xW88LayHKaagFYTiY1XU/9KtFsekSNA9SEG7WTMwuWVjoSwuUM7w2Pmo4rCvMKPcJWJf3fzwGKv75PGVg6xUQdI17Y0IJgsUoQDO/U/Cbsxv3N5XUR09DKXPoOk1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792374712; c=relaxed/simple;
	bh=STCPiFVncmd0trs86+Lefpabg7jITOU//ioTqNGMZE4=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=jhhohCvSdvptjRcG/i9idXPnpYrLCNbXSQgeXChFFTRFQF0gADt/evA0UvBghiACTWzjyEVsFL+h7h+Pod971LVlLo4D6NyWDoIFW/OT1rzt0LyVV4zCJAdC5WNjN+X3rgP09FRfTqXTReVL8aL1aOH/gLvMdJSZNw3QUvkGqO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Wo7dmaLA; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Wo7dmaLA"
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-675676afc3cso1518244d50.3
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 18:51:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792374710; x=1792979510; darn=lists.linux.dev;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-type:content-transfer-encoding:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=STCPiFVncmd0trs86+Lefpabg7jITOU//ioTqNGMZE4=;
        b=Wo7dmaLAVsh8TQ70P74lvQUdyPpuAqsDzFAiMLsff1lPjsKMlMt4NPPEKB0ZodPvQ8
         RCZvOAm2OdSR7IdSc6Se1DMgW9GElx9G2NiPIUuDCZboSBY0FXKRSvrjKVlWxf7xlLfO
         WoMNeSAT725/QKqcO2G5NzK3bjl5q1s1WbiV2KBuWtfm99B/hvMt/+pT3fety721GuSj
         1tdExZtSgKXvX4tBwni1ZOciJ5+1QOeoEjkCiTI9/CNyjqk9pwX9pnpSgRmyF6Sj9pYS
         e3rymFuaV7dbBm/0F/19ZWsIe2aADBPqSTkGJ+HqkY1VV51F8hzBDMWF6/sbQ3c5wRcF
         wwTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792374710; x=1792979510;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-type:content-transfer-encoding:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=STCPiFVncmd0trs86+Lefpabg7jITOU//ioTqNGMZE4=;
        b=ICl7hAR/Z4lFeS4MBNLluGZYJETYSUHM522bqDkCa/JIu8v6RJjg/hpGsvm2nqRtq2
         JR0fpBec8ZRBkopeaG+m1ffsP+OXzieMToSle+VnPK7dv8CNhj9rTVo8Fhdt/ghgv+Ru
         leJKlgLfVXMP+ERzD98j9eLK/Ee4YsyGEXGLzzweu7MnzDapYYIRIOnEFq7wI2CkGihd
         3F71pRg2+NUGjrkB33ma1Y18IROuP3EWAg61tuRsO3uo4d5AwI5Une0nmec6GV6PkXmP
         sD0di1BlZP8iHP/zYH7VDH2FDjnajHlW1SuvkRkJFHb1L0UL6VDfdme6jbqgsbAVwGoj
         GcMA==
X-Forwarded-Encrypted: i=1; AKwUvBzLY7dBjqg/ZeKLhq5nIeScmMCFxQSZ8Gh3HtZTEd3JpldtPi0RNl2cLlDBzbY2EI5aTaZNZf5xP6I=@lists.linux.dev
X-Gm-Message-State: AFq9FYI1UDLZQ8MABEaH13v6kDwZjNQ+HALfUBsg9MBAer/VbE4CBqvM
	VJjgr4CIgJQceUw0h7QeMXD6Eev9avtPBhIZ+0Prg4PIjImTebcvX6d7
X-Gm-Gg: AYBFou0ZesQltfqVgtyp6rZ6bHjFUl6w2Li5n9/PJZaHt0T19x+RQeYzAV2Sgxt5OIr
	89cR+WEI82r6jgTD0QkmuDez1Jjzt7BobrrToBTgaEOmbSrWyH4pwcLZZDUTDK3UtPV5GSFhMIV
	g1r2a06kilvKT05ZgFpciCuRoRPj+0zvToHgchlgR2XODU8+XSYgY5jyExNo/IXRrVT9E5btj+f
	rarq18t+T6M0jDnUBBXY5KNO1soYCf7zW2SdMaIezy5FLOTS8WwWzV+UXsxZyxqFcnaeWRvoEVF
	nuIlVUOiEBQ+lUUckfmK6nl4EgZ+vXOQ3GqTbY5KvybLDtfrBHdAbMz/7xHstCaSI6Blfv6iMnB
	dfA4DtlTDkii4UQRsBhhkURThRaKarRg7qJPKNF98yqdgvscgIJPbtqH6F2GvYUUuz4P0UJMMW8
	7nji1srH+byjd3jm7JFvEMZF5mO0kC5ysCdr5ZL1X81UCcQRciDW+QOy3rRUk6VYXKvfM+6/uxR
	xj8Lh3VWI5UiyclcXxuTtyZhZBJ2ald8/H6pGB3BZcAuTQzSGMjuQFWzB6mzCFAqFzIOUGMkUkE
	ylI=
X-Received: by 2002:a05:690e:14c5:b0:675:1102:ffa5 with SMTP id 956f58d0204a3-679ca4d4299mr2263242d50.3.1792374710494;
        Sun, 18 Oct 2026 18:51:50 -0700 (PDT)
Received: from localhost ([2601:7c0:c37c:135::8803])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-8b0e58dfb98sm35645197b3.24.2026.10.18.18.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2026 18:51:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Sun, 18 Oct 2026 20:51:13 -0500
Message-Id: <DM8FSLOD0H92.5QQ7U2N7KDZE@gmail.com>
To: "Okhuomon Ajayi" <okhuomonajayi54@gmail.com>,
 <outreachy@lists.linux.dev>
Cc: "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 <linux-staging@lists.linux.dev>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] staging: octeon: remove unused cvm_oct_transmit_qos
 declaration
From: "Ethan Tidmore" <ethantidmore06@gmail.com>
X-Mailer: aerc 0.22.0-0-gc2f86b7abde3
References: <20261018231538.74139-1-okhuomonajayi54@gmail.com>
In-Reply-To: <20261018231538.74139-1-okhuomonajayi54@gmail.com>

On Sun Oct 18, 2026 at 6:15 PM CDT, Okhuomon Ajayi wrote:
> The cvm_oct_transmit_qos() function was removed by commit
> 6568a2343639 ("Staging: Octeon Ethernet: Remove unused code."),
> but its declaration in ethernet-tx.h was left behind.
>
> Remove the unused declaration.
>
> Signed-off-by: Okhuomon Ajayi <okhuomonajayi54@gmail.com>
> ---

LGTM.

However, please wait atleast 24 hours in between submitting patches so
the mailing list doesn't get cluttered, thanks.

Reviewed-by: Ethan Tidmore <ethantidmore06@gmail.com>

Thanks,
ET
