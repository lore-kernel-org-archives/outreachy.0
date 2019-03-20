X-GM-THRID: 6670524587430641664
X-Received: by 2002:aca:39d6:: with SMTP id g205mr3178223oia.42.1553102538349;
        Wed, 20 Mar 2019 10:22:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4143:: with SMTP id o64ls585550oia.8.gmail; Wed, 20 Mar
 2019 10:22:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx35DGndQL7FyVYcUx/zf/3lyxAiyeC/Aok0DyBE+C94ZIuKGn+8MGmpBno7i64QjK4xK1t
X-Received: by 2002:aca:5115:: with SMTP id f21mr3022843oib.50.1553102537687;
        Wed, 20 Mar 2019 10:22:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553102537; cv=none;
        d=google.com; s=arc-20160816;
        b=NeJjKeMsa9oVmT8xwWbq5HhO3OlHW1xkPsiRAP2akNPWPtm8U3FN1tBYkVWnOzLejY
         YRnBANdjzZgovrLEKgej/hEjyQK2pZpbPR7/mufWCJZsMBJEceng4c9LgmN6SRftJUgh
         ucLq27RN7Gnt6bk/Fj7XeoS4lmMpMtyfQkOTY/IRzhmvjsR+hBQAY3LwfauKSSwU/wEH
         T6U1iRkphNkrg337ZQ6TAZbeNwk4FAU9bUGafFU9G/jwqP0PbURjs2DNfeOO4CbiAv2s
         zRLmrnj3tyPRBGG4qr286XaPEeEqaHOTlswKB1d+XaBLVKhJu0L3GikAazleh7a/U01t
         11dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=aqQ3jf8CVivsp0QsSL17CCx9fEigouYRoRzRcVvAD+c=;
        b=AMgPVsTxr9eDBqD10Q6EFsSL9DJuNBBqNwL6u0hqil0M60JPdHdp8SetoXVznGiplV
         B7P0aIs5r8PdbD/fjxGTr7D94yjU55jV0Ojih7xrhBYmoUKCBGV8AzSNOvPmPS1XKi/S
         U7pkwiEujjIrnlGQx93u3mjcqKEL98SLmVqOWuJqvK5tV1Or40lEVcy6QvSHuQ8SpPtr
         NrYReIfZqggyJovhJucQDnjHc+WKeebRkgH+CQ6rjB6NAyBb6kUsEcMU/xOWzc4n6sSD
         Wqysnz7rlsYpOO29AbNHHmBt0gNVM1oeMvSvLRw3TG5fXFLm8MmPCyTIPnpawIilmf//
         CmJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="a/z4D8C4";
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <brandonbonaby94@gmail.com>
Received: from mail-io1-xd33.google.com (mail-io1-xd33.google.com. [2607:f8b0:4864:20::d33])
        by gmr-mx.google.com with ESMTPS id m3si134826otc.3.2019.03.20.10.22.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Mar 2019 10:22:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) client-ip=2607:f8b0:4864:20::d33;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="a/z4D8C4";
       spf=pass (google.com: domain of brandonbonaby94@gmail.com designates 2607:f8b0:4864:20::d33 as permitted sender) smtp.mailfrom=brandonbonaby94@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-io1-xd33.google.com with SMTP id x3so2697768iol.10
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Mar 2019 10:22:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=aqQ3jf8CVivsp0QsSL17CCx9fEigouYRoRzRcVvAD+c=;
        b=a/z4D8C4a/4+IaOw7RwJMqgUVb0111/Je+XegKbn1Wo6oKjubBnwR1441qPtGlwUJj
         tiSVC7VjXrqXvlqh7ZeZVsXS9Gs/ImXMXS4v+pjgbDm8npugw++bL/4hBk5MV0KQ/hyh
         A5A1fHQvxkqMO+QwAEkiSVXCuFs0z2dLUXlzjAm+yhiW4S3mhd1JLc78nOEjkUjc14h2
         BzhcxtamRCtS7Hz14rzBRvznfgpdoeBsUYvtuvWKV8eAvK5rmr2iXusb+fGVtt2BJa6a
         lSP7BuRkpbcLNnaX/1kRO3SfirP9fIh1oJKQ/lqe2oa+fJireo9UotVKHa55WyEccJGb
         XF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=aqQ3jf8CVivsp0QsSL17CCx9fEigouYRoRzRcVvAD+c=;
        b=fSdfADw0DSmchO1yBSEaKrE2odqUK3ENXOKJIzVfBL6iEFv2CTWbcmdm8Z5HKAKJZW
         /OsgjISykjPPVVBzxV9ZdPhkyMKdThj2EzjTp0dCeU7wKu1LqJjFJXqIkua0Vg2PClzC
         s5PrX5S6ifUwrQMRWXQTvKknROp0TetAo7zO8iljlgxNM42P0DcayITt9vskXdO/3Rqc
         dHUmwblDj8eJfwiOBMO0muOiA2PEzthDw5+Ci38POhs+qyL5IARA2jj/TTuckFwpZ9QL
         IL9TYWR+ru3wbxuKrzKtn+uFev/BusRazKIAUgWUFJSfTpCagbF/pt8i5QYxLbo9g+gh
         thhw==
X-Gm-Message-State: APjAAAXgH7YOn31q0YgsXw/FowSl2ThHBp3dH/ONwsyVq+mE6RiHcXKr
	dI8OXQ4myTl5fTZN3oqjLg==
X-Received: by 2002:a6b:784b:: with SMTP id h11mr6518903iop.290.1553102537498;
        Wed, 20 Mar 2019 10:22:17 -0700 (PDT)
Return-Path: <brandonbonaby94@gmail.com>
Received: from Test-Virtual-Machine.mshome.net (CPEac202e096223-CMac202e096220.cpe.net.cable.rogers.com. [99.244.27.167])
        by smtp.gmail.com with ESMTPSA id 139sm1398841itk.28.2019.03.20.10.22.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 20 Mar 2019 10:22:16 -0700 (PDT)
Received: by Test-Virtual-Machine.mshome.net (Postfix, from userid 1000)
	id 33FC864657; Wed, 20 Mar 2019 13:22:16 -0400 (EDT)
From: Branden Bonaby <brandonbonaby94@gmail.com>
To: gregkh@linuxfoundation.org
Cc: Branden Bonaby <brandonbonaby94@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: wlan-ng: Correct typo in comment message
Date: Wed, 20 Mar 2019 13:22:07 -0400
Message-Id: <3b8dbd33fd4b4679d4303ff61699748a3e007954.1553099252.git.brandonbonaby94@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1553099252.git.brandonbonaby94@gmail.com>
References: <cover.1553099252.git.brandonbonaby94@gmail.com>
In-Reply-To: <cover.1553099252.git.brandonbonaby94@gmail.com>
References: <cover.1553099252.git.brandonbonaby94@gmail.com>

Add space between two words for better readability in the
comments.

Signed-off-by: Branden Bonaby <brandonbonaby94@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 75acdfc30f6a..81a6b0324641 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -1,7 +1,7 @@
 /* SPDX-License-Identifier: (GPL-2.0 OR MPL-1.1) */
 /* src/prism2/driver/hfa384x_usb.c
  *
- * Functions that talk to the USB variantof the Intersil hfa384x MAC
+ * Functions that talk to the USB variant of the Intersil hfa384x MAC
  *
  * Copyright (C) 1999 AbsoluteValue Systems, Inc.  All Rights Reserved.
  * --------------------------------------------------------------------
-- 
2.17.1


