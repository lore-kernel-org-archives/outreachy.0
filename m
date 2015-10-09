X-GM-THRID: 6201868537095520256
X-Received: by 10.180.35.132 with SMTP id h4mr165262wij.5.1444418352759;
        Fri, 09 Oct 2015 12:19:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.86.234 with SMTP id s10ls418034wiz.33.gmail; Fri, 09 Oct
 2015 12:19:12 -0700 (PDT)
X-Received: by 10.181.29.103 with SMTP id jv7mr182673wid.0.1444418351796;
        Fri, 09 Oct 2015 12:19:11 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id m4si8152wib.0.2015.10.09.12.19.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2015 12:19:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id gb1so80794381wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 09 Oct 2015 12:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=6qpzMBjtwWs3La3v8lcuesaQ0CnUq8+V5vweG8oOUo8=;
        b=KKT8mRY29heZu1q8fpH1tZIwQGI3U2g039XGGY0343B5yAMNK1T07gvNukNzf74OSb
         PNNGJdK2L/LAF/4bTZbGHoyH/d6V/ghlMiWK9AE9/NrrMboWYC2SNXq8DYNd9MJ0fXNP
         aBn/0DlL/LuSVu4w4NkjX0EaObMA5w0SFanQogmW4g2FDdZewgYjNuvt8+Bklj2dmZ8h
         +H1ndmaWKneWbrT9FDRAEQcSYbXaoPJ4bYzP3TFecXjH3erjGxZUcHGGHzRUBRnQLALX
         vqKl3qqvaOl4BO9Gl3y/Z84kP+fkyDIolYBKJsOQMRoFG01er/Kl0guYJIRtIXFazGfw
         QifQ==
X-Received: by 10.180.24.72 with SMTP id s8mr864372wif.49.1444418349121;
        Fri, 09 Oct 2015 12:19:09 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.93.180])
        by smtp.gmail.com with ESMTPSA id hk5sm3761118wjb.6.2015.10.09.12.19.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 09 Oct 2015 12:19:08 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 3/3] staging: octeon: Fix kernel-doc function description
Date: Fri,  9 Oct 2015 22:17:58 +0300
Message-Id: <1444418279-127467-4-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>
References: <1443984978-87338-1-git-send-email-cristina.moraru09@gmail.com>
 <1444418279-127467-1-git-send-email-cristina.moraru09@gmail.com>

Fix kernel-doc 'Excess function parameter' by moving
the description to the correct location. Also corrected
parameter description

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index c1b657c..d3411ef 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -364,13 +364,6 @@ static void cvm_oct_common_set_multicast_list(struct net_device *dev)
 	}
 }
 
-/**
- * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
- * @dev:    The device in question.
- * @addr:   Address structure to change it too.
- *
- * Returns Zero on success
- */
 static int cvm_oct_set_mac_filter(struct net_device *dev)
 {
 	struct octeon_ethernet *priv = netdev_priv(dev);
@@ -413,6 +406,13 @@ static int cvm_oct_set_mac_filter(struct net_device *dev)
 	return 0;
 }
 
+/**
+ * cvm_oct_common_set_mac_address - set the hardware MAC address for a device
+ * @dev:    The device in question.
+ * @addr:   Socket address.
+ *
+ * Returns Zero on success
+ */
 static int cvm_oct_common_set_mac_address(struct net_device *dev, void *addr)
 {
 	int r = eth_mac_addr(dev, addr);
-- 
1.9.1


