X-GM-THRID: 6809468497850007552
X-Received: by 2002:a67:3351:: with SMTP id z78mr9077845vsz.122.1585593935621;
        Mon, 30 Mar 2020 11:45:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:5589:: with SMTP id v9ls1340843uaa.11.gmail; Mon, 30 Mar
 2020 11:45:34 -0700 (PDT)
X-Google-Smtp-Source: APiQypLQNvKXOfHRtnozbWWECR70quOoBtxcD2Ox0Oj6h9GN7kua7CL0bBZoBmsAT4+D3TVMXKib
X-Received: by 2002:a9f:3381:: with SMTP id p1mr8897956uab.119.1585593934245;
        Mon, 30 Mar 2020 11:45:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585593934; cv=none;
        d=google.com; s=arc-20160816;
        b=US+VrNj083SPJrJlqjjw0e6hEuEf1Kfv3tkHcR45MxsZgqBoOtzfRw3GKeSenx0Rdx
         gV2oJt2rSE320S8cRxqlbROnZonow/yrkdAFYWo2f3foNhE3aBX485Oeng1g+kl3pWUH
         bstV0MNPBEj39anV113p4JHXCh1r9xHy9Z+Cj6RWTjnUKDc32e46a9nfQZkd6UD25Az0
         SDVloheuoRRGwj8KOJ4yPBVsVMCs/RLkvZVIrCAxtzNf+99cusv+BmxWVdrMWavRrH8t
         b/lZNtXQA4MNXxqs3um0gF26FKX/9rYZk/Rgn62IFI6QgLJ/GjaLae5QyitGStHMAxnM
         2AOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=9wol+ovrMueDkx4O+ZEeXlUF+lPxlG2M/9hBMAq0rDQ=;
        b=R/ApaSaBWxQLxlwPsLVD0cxUI/jJPlFRMMcE53o3nfDGtreRGWUpSE8FTqWsLpl2rZ
         KbIqNxfheQFH6Jz4O43QazneNF69PaaMm0454oZqQKBZTOebCxGjlRScQz5mtW1vAORS
         UZNjiy/dXtejo1DZYnloUpWrjHaCVARU5NFl6ASbOgKNqyIynuytevQ6vzsovkTEy4ru
         dYiYS71bhnis/8poT8bDkpTcZmRfOfjuaIVC/INOmTvkAKdVE2PdNKD/T5cRYwBSGPbw
         OmeYz3x5tYnAql2B0Wyn4j4ypNRaeo/maMBJjAg2QTMKIg2JTYuEOOLXjzFtXygxhZ7a
         4AUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lGnsXInS;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id s124si776630vka.1.2020.03.30.11.45.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 11:45:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lGnsXInS;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id a24so2196420pfc.8
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 11:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9wol+ovrMueDkx4O+ZEeXlUF+lPxlG2M/9hBMAq0rDQ=;
        b=lGnsXInSBhi87I3QI6h7raDe/x4KeVUALH840j659Z+daNe6ehRqhKNObsT3XqRPhU
         IVFjIOJraw2Zqj5f8mk1vZfJPESaRljbCjPHrHI54d3Dy5Gn2YmDgQIeU/xC6Gf1ro1k
         KU56WeJm8XFDW4ql8U4Xlhl9K5r+XIY1kVDQCLv6qWszf5Br27oQTYRXwpu1g/K0KcvN
         K5q/iwRgxpx+1XzGfa6qcGG2pDWeNrzJ32nsGVLhoMuRwSFLKUXlGZm4ESxLw4sf/hsc
         SoVhYcwJZ5YljDPwr/PW+7+cjHsLQqIOvkshbfwQubTQIBfKi1aU+Drs2SXAqm4vv8WT
         bMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=9wol+ovrMueDkx4O+ZEeXlUF+lPxlG2M/9hBMAq0rDQ=;
        b=jx/kYpJUvNBoQSfeveVmgd1S1Q+9Rwid1tyuc7QZXLCrOA0Z+HnNgKAMZav9PNuOMv
         lUpA0L8wa9FA9eFwc1R8qgI9RPzQRZWL3R3yUz9t5AN2TJVVlvZKZy0lDgySN0SaktCA
         DpZGvGcR1stZYeW6SS7pQxW8RHA1CpJtIW4xX9PXBaY+6mGViRjf+f9F/Z0U67E7MOSx
         SXsiAs6Tku+OxPA8ZhQaHqz37HrQAieXvOTOZ0gxioVgtj8jxQr+uhPtdMiDjkl2Qlnn
         iVy4ce6BFepAZHb84eb42upEidkoI98V5z8ULxgdV8pm0zncPSLQJEc+YqE228vZ4aNB
         ExUQ==
X-Gm-Message-State: ANhLgQ3eZLVK3tTFEyKk0ZoLbZjezntQwCguXk2lQX7a5mzmHTE4ftWf
	wBzjrBoNvrJ9HxKtGX3TcOSu0IDqkEscfw==
X-Received: by 2002:a62:1ace:: with SMTP id a197mr13951840pfa.105.1585593933473;
        Mon, 30 Mar 2020 11:45:33 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id 13sm3347202pfn.131.2020.03.30.11.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 11:45:33 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Julia Lawall <julia.lawall@inria.fr>,
	Stefano Brivio <sbrivio@redhat.com>,
	Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>,
	Colin Ian King <colin.king@canonical.com>,
	Malcolm Priestley <tvboxspy@gmail.com>,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH v5] staging: vt6656: add error code handling to unused variable
Date: Mon, 30 Mar 2020 11:45:17 -0700
Message-Id: <20200330184517.33074-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add error code handling to unused 'ret' variable that was never used.
Return an error code from functions called within vnt_radio_power_on.

Issue reported by coccinelle (coccicheck).

Suggested-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Suggested-by: Stefano Brivio <sbrivio@redhat.com>
Reviewed-by: Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
v5: Remove Suggested-by: Julia Lawall above seperator line.
    Remove break; statement in switch block.
    break; removal checked by both gcc compile and checkpatch.
    Suggested by Stefano Brivio <sbrivio@redhat.com>

v4: Move Suggested-by: Julia Lawall above seperator line.
    Add Reviewed-by tag as requested by Quentin Deslandes.

v3: Forgot to add v2 code changes to commit.

v2: Replace goto statements with return.
    Remove last if check because it was unneeded.
    Suggested-by: Julia Lawall <julia.lawall@inria.fr>

 drivers/staging/vt6656/card.c | 19 ++++++++++++-------
 1 file changed, 12 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index dc3ab10eb630..27fc53accdfd 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -723,9 +723,13 @@ int vnt_radio_power_on(struct vnt_private *priv)
 {
 	int ret = 0;
 
-	vnt_exit_deep_sleep(priv);
+	ret = vnt_exit_deep_sleep(priv);
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	ret = vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
+	if (ret)
+		return ret;
 
 	switch (priv->rf_type) {
 	case RF_AL2230:
@@ -734,14 +738,15 @@ int vnt_radio_power_on(struct vnt_private *priv)
 	case RF_VT3226:
 	case RF_VT3226D0:
 	case RF_VT3342A0:
-		vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
-				    (SOFTPWRCTL_SWPE2 | SOFTPWRCTL_SWPE3));
+		ret = vnt_mac_reg_bits_on(priv, MAC_REG_SOFTPWRCTL,
+					  (SOFTPWRCTL_SWPE2 | 
+					  SOFTPWRCTL_SWPE3));
 		break;
 	}
+	if (ret)
+		return ret;
 
-	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
-
-	return ret;
+	return vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.25.1


