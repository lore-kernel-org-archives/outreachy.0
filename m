X-GM-THRID: 6257172217354780672
X-Received: by 10.31.15.11 with SMTP id 11mr18317841vkp.3.1456861434621;
        Tue, 01 Mar 2016 11:43:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.243.136 with SMTP id wy8ls57738obc.47.gmail; Tue, 01 Mar
 2016 11:43:52 -0800 (PST)
X-Received: by 10.182.135.169 with SMTP id pt9mr17479823obb.17.1456861432285;
        Tue, 01 Mar 2016 11:43:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x230.google.com (mail-pf0-x230.google.com. [2607:f8b0:400e:c00::230])
        by gmr-mx.google.com with ESMTPS id 12si4713056pfb.1.2016.03.01.11.43.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:43:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) client-ip=2607:f8b0:400e:c00::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::230 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x230.google.com with SMTP id 124so56741079pfg.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=NozvaKPaeV1H/+/RoVSn3UeJiYKQ43paDhNv/NoFaqI=;
        b=Lnheq5a1U5XeUchw9bIS7MhhWkk0axLOD6Ro0DU3b7KrBOc3Efq4ltV0B10vwpmuRw
         ACH3wBZjmqXqMFDrHa3r6xwXjFJ7kJHAy+sRxDdaMAZSIRfZHIFxSoVVC91wctkhd5/R
         ht3JjgOuK/iM+kPSg5XahodBs6jEUCcsrc13yM49qjFaAAfdKLD+bqoym6SktIWQ+Xmq
         m3aacFXL/b/WiKhdwLyQTg1PZQ/CtksY89759n+IQEEKTnz0TznWUQCKpDzmv9Yl7tHB
         Hqul+oFl6m4pSsG6qNJbrbdkky7alCkPOae4jlJmleCLvM5SJrBnjJb+IWA2eyoF6stH
         vMNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=NozvaKPaeV1H/+/RoVSn3UeJiYKQ43paDhNv/NoFaqI=;
        b=FrYSdH3YPDY61c37YkjHVkNKKbDI78/tixv6rGDEzndSLjWmBCkDpjs8DZM76y61Ah
         LN92mHYn/DdXSpq1cn5iKdDYx2dRac+wHBN7pBe876/eHIj+MDrlwH4gx+rHaHEx2u8d
         OX+pY5fmbDEJo422FfuS5Rsun4UckjgqqsBuVDB8XblBsR5MaDsA3UyA8S+y15grxMWj
         MR8bzP9hly6hnOWSitlj81xHGYMJ82fqvkrLmnT7DWGz0U0RimK1hhNpYGPmVxHTTpa7
         PXWFecKIJfYlS2pF1k4+EtwDmhImvrdfkYYxucMBECoSkUHyNPswTy5kiON/Dw402IPf
         topg==
X-Gm-Message-State: AD7BkJL/Qiwb4gDGjWQge0DmQLww58NbO95uHEI/oYAAv++1hC3g6sz3gfJKaKjLn2mAQw==
X-Received: by 10.98.33.131 with SMTP id o3mr32678968pfj.97.1456861432138;
        Tue, 01 Mar 2016 11:43:52 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.159.79])
        by smtp.gmail.com with ESMTPSA id f8sm27398934pfj.49.2016.03.01.11.43.48
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:43:51 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 02 Mar 2016 01:13:42 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: gdm724x: Replace random_ether_addr with eth_random_addr
Date: Wed,  2 Mar 2016 01:13:22 +0530
Message-Id: <1456861402-7486-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macro random_ether_addr is calling the function eth_random_addr.
Therefore, the call to random_ether_addr can be replaced with
eth_random_addr.
Done using coccinelle:

@@
expression addr;
@@
- random_ether_addr(addr);
+ eth_random_addr(addr);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 44163e4..49695bb 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -855,7 +855,7 @@ static void form_mac_address(u8 *dev_addr, u8 *nic_src, u8 *nic_dest,
 	/* Create random nic src and copy the first
 	 * 3 bytes to be the same as dev_addr
 	 */
-	random_ether_addr(nic_src);
+	eth_random_addr(nic_src);
 	memcpy(nic_src, dev_addr, 3);
 
 	/* Copy the nic_dest from dev_addr*/
-- 
1.9.1


