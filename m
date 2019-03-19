X-GM-THRID: 6670079368034779136
X-Received: by 2002:a1f:1e4a:: with SMTP id e71mr14012625vke.2.1552998872304;
        Tue, 19 Mar 2019 05:34:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c782:: with SMTP id t2ls2432923vsk.2.gmail; Tue, 19 Mar
 2019 05:34:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzCjK6w2v7qmGDmQVLoPk0n4Z27gHDgPfmaM4GUWaW8GUkUkZ0KTZkGG+xfTAtAJ4GAQBT5
X-Received: by 2002:a67:ee92:: with SMTP id n18mr14100745vsp.32.1552998871555;
        Tue, 19 Mar 2019 05:34:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552998871; cv=none;
        d=google.com; s=arc-20160816;
        b=EGa8WG1xUnGaGErgjDac1WYyYHUmqs+/Pp+YXkGVTfnYwcroxBBqJhBJo0WaXsvrZy
         6UcC0KAJp1UeIy0ZuHaN4AZpSBfSmjQzmCcr+ZeCRFbcD+zxGjfL1D9VIlXYdIdpUgFU
         GGHrVurlq+sGtIGK9NXHgf561tfYpEzO/VHkp8U/Lw8ZGPaDeeQ+CmX3wy4ktgY+LvjW
         mQR73dBhFvLbvk3+9LyY5sMCXwDVMd5dbe9iNX0NsxxnCHPLk4eOiT/yD6e2oqnUQzBo
         3hUFXcD0w3b+/7tjOs2v4EJKFXQtzRkTf/z0w+asXLHCp3vkZ4sfU/I92eOliPscC3G5
         9jSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gGbS3PIsPQwq2rTmKaZlnmFbSGiCVbVTGuHx770Wg7A=;
        b=0lRSwFj7gsfP/VNEW5dlbhyALBZmfIklu3VV21M/RqUAvesoEJLtSUAazKGCwPTgaN
         aJb5fDko7bz0BhiF3z3OE7Q2abSoy0aLIhyymkmRN5X9pmaRj7UPASjE0sAqfo/8dm4g
         as0ZFPy6MZzX13EGmCIHE0ESind3UqTrPO5T9eK3tZJRWvv5/FFbTw/sK03WZ5TBTBrT
         28tV8Ybse4ewcQLMaQ6RNkISV23hNlETqLLlQUUkCbl9jeP1Q68swPNA+qRhO/x8fa1h
         RN/TgdcCgBSbInxg+F51AKAwHqLfxRwRRI9ZpqVul1mHaaCOXLZo/XY1VlIh0yOi14nI
         qNsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WoBiy9h0;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id 12si476806vkg.3.2019.03.19.05.34.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 05:34:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WoBiy9h0;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id g8so3099286pgf.2
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 05:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gGbS3PIsPQwq2rTmKaZlnmFbSGiCVbVTGuHx770Wg7A=;
        b=WoBiy9h0mYLto1y+N7mczitni/ClHnGZysSjCxsxOm3UXeJgIB9akIAms0pRnYOH82
         ArkR8ZuvroKDPeG3BGV0UbakNt9SZBHtJEP6vfsXUC0YP7/31Jws6FaP3sdNgLpLMQ5F
         hEpxzgaoh590kFYkiuHLWDmeK1NKAjT3t4lXaKkzeORFdlyK+7AtEs5BKCkozfdRY1ec
         WRfFqhsvH9VrsgaNnOgWkYadsTMoED+K/x27sy/PJzpaV8DVi13fxT5mIO+7uA05OkCX
         ldrh6lk0dUQIbuRRnY/RkNS1uhqMWbZIZS/bpIgrQxlyM+uNCE3HrlB/g3S3rk66BxbV
         SEjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gGbS3PIsPQwq2rTmKaZlnmFbSGiCVbVTGuHx770Wg7A=;
        b=VXU+u0rTS0VtDdshnPgN79Hmy6EvhuFTyZognLksR9H7qGVJu0+kdicjaThAh0PP3H
         XFJ83WLwcv0BOo6T8b+nUA3GRwI1JiQYNwYQgw6/QFbE1V36/y5B8vBy4u3Aify7sFCT
         SX7fOsosukWo8zCd5Lem7t7HyygJabLIgPKSx+S8RDL58pbeWfzvPsPZIDjQf/hDndGy
         srlJ/PegT2XYURkSg1ZRsJ/rEpchYe1j9hm93ykXJSCA32v4VkfQP6UVzbFvNerDkuex
         QHSo4ZZpMnXBYEF/TAsoL4coRCexlGrMDeXpi6kgvDCoaYqPFjshDzYCQh0MGsh36P0Z
         Zf8Q==
X-Gm-Message-State: APjAAAUcRLdviRuCGuBNGc6BF7psvQlHAFIzT8f54yJutM1k8k2VRhEb
	uASFOHYStL16mYm5inm7akaegurhE3E=
X-Received: by 2002:a17:902:2bab:: with SMTP id l40mr1824088plb.273.1552998870151;
        Tue, 19 Mar 2019 05:34:30 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.165.64])
        by smtp.googlemail.com with ESMTPSA id b85sm29237428pfj.56.2019.03.19.05.34.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 05:34:29 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: r8180_93cx6.c: Fix space around '<<'.
Date: Tue, 19 Mar 2019 18:04:18 +0530
Message-Id: <20190319123418.6724-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the check as per Linux kernel style for use of spaces.
Issue found by checkpatch.pl

CHECK:spaces preffered around that '<<'

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8192u/r8180_93cx6.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8180_93cx6.c b/drivers/staging/rtl8192u/r8180_93cx6.c
index c414efc0662e..163daed789b4 100644
--- a/drivers/staging/rtl8192u/r8180_93cx6.c
+++ b/drivers/staging/rtl8192u/r8180_93cx6.c
@@ -125,21 +125,21 @@ int eprom_read(struct net_device *dev, u32 addr)
 
 	if (priv->epromtype == EPROM_93c56) {
 		addr_str[7] = addr & 1;
-		addr_str[6] = addr & (1<<1);
-		addr_str[5] = addr & (1<<2);
-		addr_str[4] = addr & (1<<3);
-		addr_str[3] = addr & (1<<4);
-		addr_str[2] = addr & (1<<5);
-		addr_str[1] = addr & (1<<6);
-		addr_str[0] = addr & (1<<7);
+		addr_str[6] = addr & (1 << 1);
+		addr_str[5] = addr & (1 << 2);
+		addr_str[4] = addr & (1 << 3);
+		addr_str[3] = addr & (1 << 4);
+		addr_str[2] = addr & (1 << 5);
+		addr_str[1] = addr & (1 << 6);
+		addr_str[0] = addr & (1 << 7);
 		addr_len = 8;
 	} else {
 		addr_str[5] = addr & 1;
-		addr_str[4] = addr & (1<<1);
-		addr_str[3] = addr & (1<<2);
-		addr_str[2] = addr & (1<<3);
-		addr_str[1] = addr & (1<<4);
-		addr_str[0] = addr & (1<<5);
+		addr_str[4] = addr & (1 << 1);
+		addr_str[3] = addr & (1 << 2);
+		addr_str[2] = addr & (1 << 3);
+		addr_str[1] = addr & (1 << 4);
+		addr_str[0] = addr & (1 << 5);
 		addr_len = 6;
 	}
 	eprom_cs(dev, 1);
-- 
2.17.1


