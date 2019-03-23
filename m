X-GM-THRID: 6671711882278076416
X-Received: by 2002:a63:195e:: with SMTP id 30mr12356269pgz.312.1553378971858;
        Sat, 23 Mar 2019 15:09:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e393:: with SMTP id ch19ls1708881plb.2.gmail; Sat,
 23 Mar 2019 15:09:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz1w7zI+ZDvcEo8LioT0o/bRTiu/tca9PRmeuzMpgxbgP1aSQiq1DacUOZLcZdEMKBe4JeU
X-Received: by 2002:a17:902:9a09:: with SMTP id v9mr16756558plp.225.1553378971346;
        Sat, 23 Mar 2019 15:09:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553378971; cv=none;
        d=google.com; s=arc-20160816;
        b=L+yqNjHxEO7mTvQ4Ix11aBcQm4lU/oCk+4lZZirloH+iW9YtlYAaCtB5NnYFsXj7vq
         kQtTCyXmZ82nGgMd/xB9MaFhyoFQVBP0OY6dVqeIRG6JFhvmhMAUoZJEvomC9/NjZ/Wo
         3i7nu6hwaT84iwCMe/fHBTOTf2voLWgMuv3G7YJ6tFZ76er8kknZJY2dHqfV/7/qnwVO
         JIBeO1REOqKEXs+vBrjO+KGjCdOFM6LsFYAftqfndC3DqQF7pP4EWAK8JT61dR3AMh+5
         1Rei6ERf4QgVrlUW/WtkwF8gjd14fAaL6npZ+Kzl9UYdmfE6bfRqjCQNbE8wiL3jFDzN
         dFeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=D3xCequFSwVjsPFGQ6TRhGqddSjvIHb7gQ7cz9o7dw8=;
        b=CNMfYV8uJVZQp+hX0SXtgVSR7OxshZ+wxK23bfOt6/bUrkECcR17z5210dH2AeVUQD
         9qxkmWnPcsrrwjbrudsz+p3qfbvmYQy17X8edri/RoQ7qoHZ1v6z0CWSEMR8l/daNzEG
         R9czpODL7aYf/etpPx+WbNq4gvBXbigUq4/2lCjPAYFNIDwz/ktHkfn0bV6bYqP5of30
         EbSjE8TsiAWIbeG31lk+6PWYYPzqdIAknd7JejZ+LtRyOrSztXnCQyRiZTXV5whYx5Ia
         lQMaBNcGyCOjQ1XYA/7O7pKnlSZF7EJczUzJTr/0xVxMCt6BPWr6jLqE8Jfj9QIVXAZa
         eNmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GAGkscaf;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id b38si541155plb.1.2019.03.23.15.09.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:09:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GAGkscaf;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id u9so3842537pgo.7
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 15:09:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=D3xCequFSwVjsPFGQ6TRhGqddSjvIHb7gQ7cz9o7dw8=;
        b=GAGkscafDTDxYUTp8Kyr0GWYBGZsO5IO2IdD+tX4Z5qzOXCkfeHpLRVXDSrEMe+7qR
         AFOfx5TKt1miTPyrmk9pEke9LiO8UfknJ+dIqQKaBpElIePjvVcMNy8E7sg8mG3Cx74L
         iMf7MAwUKd/USUcLimjY0bMYExFZvV0hggLKeBDD8qXX3YKMYW57BlRGPtwxFzlfs/Ye
         sP9/MyiXbzHQM3Uu798GEI92hZem4aLtoCZ07TOtP38pAEpgsGm9TOz8zCDZ5aDcxRMj
         VE5MPte+fcwRg21uinjZfHfkbyvlhhqk/cxoYAWQL1P9hGBH2AWPx6r3WrQvO/jiZ9+H
         9+mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=D3xCequFSwVjsPFGQ6TRhGqddSjvIHb7gQ7cz9o7dw8=;
        b=Bxo4ObgkOTg6nABE1/RfXlpx7FuZK9gi/nvf2VjhfE9JB8uZ3ABVeln6t7GOsSPNzg
         6rplsF8esu406mVJ9vySQ+CJHu1jit1pJv8cSoGO5INxQ135SZnbsjRCZLGV45x9xKjR
         B8gKaCSPHAxdYNj8LjCyPMjAskegVGUGsGhaJAZlcittyK2yuaKTuanVTQpahHXYuLGN
         ogKsL7qYAFPqotVenX1i5hAP7K8EvgKDN0LqjpjJfHG6HI/E0+s2Ajh+r3fm0r/J11A2
         iDeHHB7d13h84F5JzoF6ly/pT2YN0VPQU3UbB7xLKpzEpMEn+U00plV4re+cdbNQBloW
         NStw==
X-Gm-Message-State: APjAAAUFnahM5wDjY7/kVca5K95omPH5ggXnPrVx6wjHWLBK/yPlQewV
	N1KO4yg7eHpVw7fx+xL6jDUIOI9+ufk=
X-Received: by 2002:a63:d854:: with SMTP id k20mr16047263pgj.107.1553378970910;
        Sat, 23 Mar 2019 15:09:30 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id b15sm17162596pgd.44.2019.03.23.15.09.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:09:30 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH] staging: rtl8723bs: include: Fix identation issue
Date: Sun, 24 Mar 2019 03:39:15 +0530
Message-Id: <20190323220915.9515-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Corrected the identation of switch case to get rid of checkpatch error

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
 drivers/staging/rtl8723bs/include/wifi.h | 72 ++++++++++++------------
 1 file changed, 36 insertions(+), 36 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/wifi.h b/drivers/staging/rtl8723bs/include/wifi.h
index 559bf2606fb7..ee1994ecbf18 100644
--- a/drivers/staging/rtl8723bs/include/wifi.h
+++ b/drivers/staging/rtl8723bs/include/wifi.h
@@ -374,18 +374,18 @@ __inline static unsigned char * get_da(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			da = GetAddr1Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			da = GetAddr1Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			da = GetAddr3Ptr(pframe);
-			break;
-		default:	/*  ToDs = 1, FromDs = 1 */
-			da = GetAddr3Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		da = GetAddr1Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		da = GetAddr1Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		da = GetAddr3Ptr(pframe);
+		break;
+	default:	/*  ToDs = 1, FromDs = 1 */
+		da = GetAddr3Ptr(pframe);
+		break;
 	}
 
 	return da;
@@ -398,18 +398,18 @@ __inline static unsigned char * get_sa(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			sa = GetAddr3Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		default:	/*  ToDs = 1, FromDs = 1 */
-			sa = GetAddr4Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		sa = GetAddr3Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	default:	/*  ToDs = 1, FromDs = 1 */
+		sa = GetAddr4Ptr(pframe);
+		break;
 	}
 
 	return sa;
@@ -421,18 +421,18 @@ __inline static unsigned char * get_hdr_bssid(unsigned char *pframe)
 	unsigned int	to_fr_ds	= (GetToDs(pframe) << 1) | GetFrDs(pframe);
 
 	switch (to_fr_ds) {
-		case 0x00:	/*  ToDs = 0, FromDs = 0 */
-			sa = GetAddr3Ptr(pframe);
-			break;
-		case 0x01:	/*  ToDs = 0, FromDs = 1 */
-			sa = GetAddr2Ptr(pframe);
-			break;
-		case 0x02:	/*  ToDs = 1, FromDs = 0 */
-			sa = GetAddr1Ptr(pframe);
-			break;
-		case 0x03:	/*  ToDs = 1, FromDs = 1 */
-			sa = GetAddr1Ptr(pframe);
-			break;
+	case 0x00:	/*  ToDs = 0, FromDs = 0 */
+		sa = GetAddr3Ptr(pframe);
+		break;
+	case 0x01:	/*  ToDs = 0, FromDs = 1 */
+		sa = GetAddr2Ptr(pframe);
+		break;
+	case 0x02:	/*  ToDs = 1, FromDs = 0 */
+		sa = GetAddr1Ptr(pframe);
+		break;
+	case 0x03:	/*  ToDs = 1, FromDs = 1 */
+		sa = GetAddr1Ptr(pframe);
+		break;
 	}
 
 	return sa;
-- 
2.17.1


