X-GM-THRID: 6808145829540397056
X-Received: by 2002:a4a:cb02:: with SMTP id r2mr8060518ooq.28.1585530197848;
        Sun, 29 Mar 2020 18:03:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:3089:: with SMTP id f9ls6128965ots.0.gmail; Sun, 29
 Mar 2020 18:03:16 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtLhltIxIeP5JmUuSiyaW3PuaY8CKmzI/+RnXXmYnLpfzEbMvqVMYM5TtP56T/konuKyXkR
X-Received: by 2002:a9d:306:: with SMTP id 6mr7812571otv.185.1585530196786;
        Sun, 29 Mar 2020 18:03:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585530196; cv=none;
        d=google.com; s=arc-20160816;
        b=GgFkPTdyBtQpPUvhjhzu9RC9w4h+YXYT7rOIGtsm2pZC5fOK7YIehHe3Q8pDh4uaVV
         e7EHRYIWHp9YtzfKYshNv/evHmp6zRcg431YCuuIUgJAn1vYo6GelOrI7LUollZ7dsNy
         t0NrnLoTDs2n82rzCLaVD9cb3HW32J2abf0e3GVwhLI/+I9rjBclxxgVISkVioNoGNSP
         IhzI+qbIVnAK9VYB7abl4VonZ8zbvaoJuOcH+vpVHHPnt4SSx6l31kkKPUF4qJE/uG0Y
         WBR+uqnCLnsZDu0927WYs/z1ilTL/TttRfPQ62epE6cW5jryXKhNQkaStV7CF5d/u82l
         xUxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=yUugoluBnwyJRYALZAP5gLOlTOYfV1KHNo4jHyfrVrU=;
        b=aswOT3DPACgyoRtGUiyGGAyhC/92Eq2YLKqiI2vpqNKtXWZ6SrIhk6GytSHyyqAsQU
         W9dURZERpGpV2PRuIZvH9HYiFhTQl0fY2B7Me8poC8DUzvWNTw9G13iDke6yfgoARl6V
         /vJsxbFmffoAKuBILj5hnmO6Rx9axp4IhCJ0nql+2GKOoaR2yANCg7elbsTwk09KQ7dA
         Cmy+46kiHIfmDndX++ipFxEoUhB4ozcXwBoa82p274HWsHEs5qA5auVUg4FL4cI/y1Zj
         HwlrnHp8UI5bafRadSOy3f8Gaigd99u8f+NlyX3sr6/lcCiAhrFSjXh4ohPq7p2wzXuV
         EHew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="AES20ae/";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id e21si1240184oob.1.2020.03.29.18.03.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2020 18:03:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="AES20ae/";
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585530196;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=yUugoluBnwyJRYALZAP5gLOlTOYfV1KHNo4jHyfrVrU=;
	b=AES20ae/+VJ/KiGHj55h1I++T0Ihszj8h8BCHpodNjZIpsTDwjvDnViDYAlrGhlJrR/nF5
	MPJHM4oHItcdcYOoJhqzdFlCTNqrTJt9szLrrOT+zk8le+y44ffTweZanfGPITKMzMRMg6
	hdmJBC/CA8coKl9adMgNdNNfpq32+zA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-b83Lbdv_Pw6HknSb_AfGbQ-1; Sun, 29 Mar 2020 21:03:12 -0400
X-MC-Unique: b83Lbdv_Pw6HknSb_AfGbQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CC1F5189DF74;
	Mon, 30 Mar 2020 01:03:10 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.4])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B388E60C63;
	Mon, 30 Mar 2020 01:03:08 +0000 (UTC)
Date: Mon, 30 Mar 2020 03:03:03 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: Simran Singhal <singhalsimran0@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, outreachy-kernel
 <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove
 unnecessary braces for single statements
Message-ID: <20200330030303.024899f7@elisabeth>
In-Reply-To: <20200325140245.GA11949@simran-Inspiron-5558>
References: <20200325140245.GA11949@simran-Inspiron-5558>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12

On Wed, 25 Mar 2020 19:32:45 +0530
Simran Singhal <singhalsimran0@gmail.com> wrote:

> Clean up unnecessary braces around single statement blocks.
> Issues reported by checkpatch.pl as:
> WARNING: braces {} are not necessary for single statement blocks
> 
> Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_efuse.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_efuse.c b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> index bdb6ff8aab7d..de7d15fdc936 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_efuse.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_efuse.c
> @@ -43,9 +43,8 @@ Efuse_Read1ByteFromFakeContent(
>  	u16 	Offset,
>  	u8 *Value)
>  {
> -	if (Offset >= EFUSE_MAX_HW_SIZE) {
> +	if (Offset >= EFUSE_MAX_HW_SIZE)
>  		return false;
> -	}
>  	/* DbgPrint("Read fake content, offset = %d\n", Offset); */

I find the resulting version a bit confusing:

	if (Offset >= EFUSE_MAX_HW_SIZE)
		return false;
	/* DbgPrint("Read fake content, offset = %d\n", Offset); */
	if (fakeEfuseBank == 0)
		*Value = fakeEfuseContent[Offset];

The check on "Offset" isn't separated in any way by the following
logic. I would suggest that you replace the closing brace by a newline,
also for the other cases you're fixing up here:

	if (Offset >= EFUSE_MAX_HW_SIZE)
		return false;

	/* DbgPrint("Read fake content, offset = %d\n", Offset); */
	...

-- 
Stefano


