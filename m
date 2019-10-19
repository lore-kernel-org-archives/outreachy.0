X-GM-THRID: 6749590935912316928
X-Received: by 2002:a37:8245:: with SMTP id e66mr8153161qkd.355.1571511602583;
        Sat, 19 Oct 2019 12:00:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ad4:45b4:: with SMTP id y20ls1690834qvu.4.gmail; Sat, 19 Oct
 2019 12:00:01 -0700 (PDT)
X-Received: by 2002:ad4:50a6:: with SMTP id d6mr16220205qvq.199.1571511601535;
        Sat, 19 Oct 2019 12:00:01 -0700 (PDT)
Received: by 2002:a37:a15:0:0:0:0:0 with SMTP id 21msqkk;
        Sat, 19 Oct 2019 00:32:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwqj8fsQ5aG8qeMIHMUgpBIlgVfnll2tSqIPOfImCzaSrrq3rYWUL4MB45s914EBM5oTsm4
X-Received: by 2002:aed:30d1:: with SMTP id 75mr14077830qtf.163.1571470375991;
        Sat, 19 Oct 2019 00:32:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571470375; cv=none;
        d=google.com; s=arc-20160816;
        b=0DkKwnGwxycCWi4URXeMQWxdv9dKzaC1x6R2E6Ghf+N0jRjWeziGsT1Z8puGyN9e6S
         rA+0AxPBSt2k/KcHJCjnbozcN+aZEwyUI+5javbPEmi+Uv8fiAhvUeUoXNAcss+UXLqp
         kLZwNp/IPx+WvxezGyQhl1/2uu/cB8p2ata/Ret0EGEqP9JOJeOE9AaDcV1i7spHTuKY
         4TKJSLhykrwR51SXaUBkxYTy6XRiNWTdwP/2Skb0bCtkQzDWSSE3gjJOPGqkKlHIiMo8
         kF8Mi/WPACVbsVVJGU0WUJjRCVWg+M/s7Xe5jRWaEOKlOHQox8iz/o4f+68dJj0sEc++
         2xNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=1a7/ec4uGjaKDpj2RqEkPMwm7rpPe0FEdgpciZlq4pU=;
        b=tFe/TV9rfOBclbBJGxoMJ9wKmmFT2DH2hyNXqyEC2D04A+AdsSlSKZmBtl+y5rSd10
         XXZWXv/e6RHAAKLRurKvNaAUbEdYGFgNY/TPL3FeAQnmJyjKgqygMJVBg/PAkMJm56zF
         eVPe1km8X1FKHdnDsFieaIwQxkFASt9Yg11KCWn5AN39j2nDQmyJrcrBqzke6K0DoL5W
         pTlCIWeCRpZz6I9xsIvACh9nfm50TFUyZsV4D+wXnUyp/J3iUYOw8cKtpsWeLSpGCsRx
         PxWIPlxumL0QSw8v7Xvw9KfyJNoNZs5ZZI3VMr5IwnQjAxEXMi8bo9vyYLNBWMbjFGLA
         H9QA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wambui@karuga.xyz designates 198.54.122.58 as permitted sender) smtp.mailfrom=wambui@karuga.xyz
Return-Path: <wambui@karuga.xyz>
Received: from MTA-08-4.privateemail.com (mta-08-4.privateemail.com. [198.54.122.58])
        by gmr-mx.google.com with ESMTPS id l189si369699qke.6.2019.10.19.00.32.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Oct 2019 00:32:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui@karuga.xyz designates 198.54.122.58 as permitted sender) client-ip=198.54.122.58;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of wambui@karuga.xyz designates 198.54.122.58 as permitted sender) smtp.mailfrom=wambui@karuga.xyz
Received: from MTA-08.privateemail.com (localhost [127.0.0.1])
	by MTA-08.privateemail.com (Postfix) with ESMTP id 7DB0760046;
	Sat, 19 Oct 2019 03:32:54 -0400 (EDT)
Received: from wambui.zuku.co.ke (unknown [10.20.151.218])
	by MTA-08.privateemail.com (Postfix) with ESMTPA id 038DC60033;
	Sat, 19 Oct 2019 07:32:50 +0000 (UTC)
From: Wambui Karuga <wambui@karuga.xyz>
To: dri-devel@lists.freedesktop.org
Cc: linux-kernel@vger.kernel.org,
	alexander.deucher@amd.com,
	christian.koenig@amd.com,
	David1.Zhou@amd.com,
	airlied@linux.ie,
	daniel@ffwll.ch,
	amd-gfx@lists.freedesktop.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] drm/radeon: remove assignment for return value
Date: Sat, 19 Oct 2019 10:32:42 +0300
Message-Id: <20191019073242.21652-1-wambui@karuga.xyz>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: ClamAV using ClamSMTP

Remove unnecessary assignment for return value and have the
function return the required value directly.
Issue found by coccinelle:
@@
local idexpression ret;
expression e;
@@

-ret =
+return
     e;
-return ret;

Signed-off-by: Wambui Karuga <wambui@karuga.xyz>
---
 drivers/gpu/drm/radeon/cik.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/radeon/cik.c b/drivers/gpu/drm/radeon/cik.c
index 62eab82a64f9..daff9a2af3be 100644
--- a/drivers/gpu/drm/radeon/cik.c
+++ b/drivers/gpu/drm/radeon/cik.c
@@ -221,9 +221,7 @@ int ci_get_temp(struct radeon_device *rdev)
 	else
 		actual_temp = temp & 0x1ff;
 
-	actual_temp = actual_temp * 1000;
-
-	return actual_temp;
+	return actual_temp * 1000;
 }
 
 /* get temperature in millidegrees */
@@ -239,9 +237,7 @@ int kv_get_temp(struct radeon_device *rdev)
 	else
 		actual_temp = 0;
 
-	actual_temp = actual_temp * 1000;
-
-	return actual_temp;
+	return actual_temp * 1000;
 }
 
 /*
-- 
2.23.0


