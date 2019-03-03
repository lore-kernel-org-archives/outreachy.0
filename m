X-GM-THRID: 6663863789016842240
X-Received: by 2002:a25:595:: with SMTP id 143mr6557780ybf.68.1551589464037;
        Sat, 02 Mar 2019 21:04:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2f90:: with SMTP id v138ls619475ybv.10.gmail; Sat, 02
 Mar 2019 21:04:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqzrHjVENQIPzDfaWevDF8ZiP3ytO45OCtL+WU1hMVDH2Fogdv2H9gEA5TIhh/k2e7oURitU
X-Received: by 2002:a25:6602:: with SMTP id a2mr6595626ybc.60.1551589463174;
        Sat, 02 Mar 2019 21:04:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551589463; cv=none;
        d=google.com; s=arc-20160816;
        b=ZolVuPS2qX55KgDlfGbjVvr0y9ifTEMnpeaS4kLt77qnJQGN9j6MTPyvRYd6S5fHDa
         u6MGGfB2eO1z718xr0ewOqBZOYLEVCRHv1ZTavB1lP4uaRSGls/IKnBgNfvfl1HlwxwM
         NxMo+asu71gj/HJFF3xVobHpIzvmINEngvCua1nzYuDRojryDXg+5IVGr3/V2WyovXfe
         zuFQjw5O5ueCfR14FNfBzJx/rAy7esp/68GzSZqUHy/ftqZ1uSXoCjf1i7LRyX1xQFfx
         RO9u3xpHw408dY+Z+Xho36mFgxujqHGIqRUzmXs6AxBbLWerDnzwZZVu79JHjAXSShDe
         TP6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=iMUbYo6Q+KDsvfG1PumdXf7D7yO7cLYcchEFbZvxCaY=;
        b=myclzx0ItjWx1DfUUKWjNtoiB2WCB0FkaQg8Z+fZG5uIvZh40KRjqs6T3n0UDC7ktq
         GZkWIFErmUapnwMED2tDlenyBmCGYWyIVMxzsWmO6hR4LpVmSfdyL99oSqu0kbpULbO1
         djHPgm4se5SzsqSN6AZ+k8oA7NhDrEPKnAYx0CmJ7javOK+g80BzkBEcX4CzTQ5xOoE+
         BXGKAwIDKZjLwKRAL+5CPGOvi+ablDN0boNSNoGv9KYYuboxt1+UZDPSaJhrogu9cCdI
         MdX2Ll6Eep7vYM2x+0pk4SX4NhCsZP4BidxeoFd/+0XBpvqwW+38UsvDLPQPQkvt3JCj
         hZCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Et5D+a8W;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id l39si148124ywh.5.2019.03.02.21.04.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 21:04:23 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Et5D+a8W;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id t82so1365231oie.12
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 21:04:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=iMUbYo6Q+KDsvfG1PumdXf7D7yO7cLYcchEFbZvxCaY=;
        b=Et5D+a8WIucvpTCn6FOSQJC6jSWYs19GfTqlPzzvOcMC29qQ5YDwQN/KjIxktu95pY
         YgqgejgSKHq7kI86MDge2NQZQIiU6vdM7m8sQ4n3+NqGP6NkC0ViDiYUttDWwSj1uaGA
         PBVNy/nUGc24fpeUKPSjl+DuPhKjhDI2vd+zmgruVeJxdx0fpms/ktYuBzp+m6DwnyHf
         jsJf9rJfLqL5ykXd2l6UcHn5qIuj3u/PYbT/u9545Bn33WJPdYwPu6SKNvwIf9oEHWqX
         2W5ifPlTZvCZHmjj/YS5TT75PiIXrXGDiqhl7xVGikw+DY/3Qakt1/J1OukCosQG4zjo
         h85A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iMUbYo6Q+KDsvfG1PumdXf7D7yO7cLYcchEFbZvxCaY=;
        b=HtL7bAr9/ZAkkIdfyp8QmmRmap4PXXsTk/p8pYJDFiRSkgXAlWBrPWG9gMfqCL0h6p
         2yUrVC6csPKt4892CbCIvScKSEVgj6QxXLaGLC6QLkJ8K/mgkLHzxHg5ees++g9Zborb
         F7o1WoGUcURPngOddUqFSsktNoPqi/V45UgIGZJIcbBskkA/cC3jw7waIBxpqzyb+ADt
         Lvvy1l6FauAE2CISsTXpWKdbFVffsym4rUZ9+2byi0/Cu2F4Abb+j+TFBH5hjHIlkjbv
         D4AcrPhNSLoDFGTZp7IyKav3h9Tzf7C/I4KKf2KYiPXar1phkCvs48iB2tPN1l1JKp0q
         yNlw==
X-Gm-Message-State: APjAAAUVXYadRzqiaGGYPWvB55u28ts5FMSsGQ0Ln+6oP/hHrVYUlpEP
	Hl9GVBF+gWcdtBS/yzHuTf8w6tEdq4E=
X-Received: by 2002:aca:c4cf:: with SMTP id u198mr7864480oif.151.1551589462424;
        Sat, 02 Mar 2019 21:04:22 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id n12sm1044437otl.22.2019.03.02.21.04.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 21:04:21 -0800 (PST)
Date: Sat, 2 Mar 2019 23:04:19 -0600
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Cc: madhumithabiw@gmail.com
Subject: [PATCH v5 1/2] Staging: vt6655: Fix comment style of SPDX License
 Identifier
Message-ID: <8d8c555be4ecbcc804b0c30bb6f682be2d2beabc.1551588900.git.madhumithabiw@gmail.com>
References: <cover.1551588900.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551588900.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Fix comment style of SPDX License Identifier for header file type based
on License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/channel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 53f623a4af65..0d2709607456 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1



