X-GM-THRID: 6671334644654276608
X-Received: by 2002:a0c:c3ca:: with SMTP id p10mr10370974qvi.86.1553291139338;
        Fri, 22 Mar 2019 14:45:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b742:: with SMTP id h63ls89813qkf.2.gmail; Fri, 22 Mar
 2019 14:45:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjn0BMMSpB1cUxM5OqwfgbGg/kXvIYmsBP1P3oaGd3grVx+SIxUKcnCkd/q96vMSYi9gte
X-Received: by 2002:a37:59c7:: with SMTP id n190mr9245385qkb.142.1553291138771;
        Fri, 22 Mar 2019 14:45:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553291138; cv=none;
        d=google.com; s=arc-20160816;
        b=v5ZP/Y2mGqGDGEChLywyRKDfxkF4WlCNJx7fF7Szz9LlKqAcdSgljGPGI7J7Pi7KfD
         lhVnImHHh7915N/0R3vXulXaDcxKpdPcFhsAxqGy/H/49xbNEKqaI9vS88ZeOx2XA9C3
         a3yksZTAbu2Ra0L1vrO7Em+3N7xXeb+Zp2sQt5zxzMHm/WGUlc/NOXg4l5dnEiT2E2OY
         IneVAV5W3RsdampJBYN9GEwkVxuq6rxdTPe6wThXOEVItZz1+HGjJ+WeLhMadh1gVyF0
         KBf1nn6YzCBMT3dXNj/1h/0MTyJP3cIIJ6Le5MYwWV0tF4M9jG9fnJ5k+ABl04/Fovvj
         zsgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=tUxHJ00WjU2g4oA8hyy+1xdRu1VlRZagtT+9jwz9VKY=;
        b=yIkhHvbSSXknNxJ/9zYHsOIbQcL7LUMwN0T+M2gvJmsM/DyroabjMtHKR2HLUyAZIE
         zW0wTvT1XrC4ZhIzHsDBvUbb03k931mlJjTFgR2rRE6mwrcVdwws9ko97hCpZt3OIRQB
         7rGPNOgpDGqL4268dReC84dCoy7TjLctTT/MKVXKaNv4HJbpAnqJ8mhH8ih9I97ft9CE
         B3O2GsPpkWG/LmiMb0hTEbxblXWHo38HTWCRkQu3a90j4gLhcFXqNh0svtvtGTOl1Fct
         UuT6BsVF3Fa1VNGLjWqnMpoN9DpMA5fj4Nz/5iX26Th/qdNK75KdAPsjLOlHGOBRcvho
         eKvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dW3rGUUj;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id 27si670143qtt.1.2019.03.22.14.45.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 14:45:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dW3rGUUj;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x234.google.com with SMTP id u12so2860944oiv.1
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 14:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=tUxHJ00WjU2g4oA8hyy+1xdRu1VlRZagtT+9jwz9VKY=;
        b=dW3rGUUjEMnlEHDL90wH/pC6kAiNTb1v2f4PIgBBbmvGQvUnpf3ztcnMVBokoTjCwu
         FNluONJAX1Eq1Yve88z8pfHN9DMgQHrGVcuuLJSfdf6OWyD5EwT/mcJoNkpICX+dMIB6
         B/Vj5HvVYzBlwKVe8X5sdkBcECkee3sryXKusZ9XqTgyQ2EFoNvN+x11YIvrFeXUotsg
         tqbWNMvzmOx1Yp1alqYeXFhY50ziGb2WIiX7fpBGTRyjgecT0zixIDB+ImR2Z4AEkcPS
         /43TZ9ODD7W+1iWLIx/FhJJW3IFX4vjVaK4WklDWLTnpryPaAggj1txyDiVdQCRPcEDC
         sUvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tUxHJ00WjU2g4oA8hyy+1xdRu1VlRZagtT+9jwz9VKY=;
        b=neT0PdK/KkecTmxNW0TYQOjmO8VjpVrfdo+JWgWvEq3x19jwD+G3uP3y4/CPhVwQrR
         EYzYU19nKFqOpoISLjPnSjxnQv5dRGwAFUKrr9KBMaoVZ3ITq0mpv5XIADuFTvsjLz+0
         CO5sit/v46+6yivQ9tK/6xzpnUtG4EZU+L1jiNHgXld3bLjDwWAQBtj/e1c9lcBS7QnD
         GHu7BNdVZM2vURbq5mdws0UygKxDio1ND0k0G4cI4up0fZ1bWVVAcqfzfrniL8luX8CK
         PqiIYpC4BenITo3ZFAyokLLa/GLcQjgUSA0XP+tSxheN5pq31tsSRs9Hp6XDBPu79TYU
         Wo/w==
X-Gm-Message-State: APjAAAUJifbLc+z9owQsAv54FSWMUquW2Ig1JWU4c5LDuEM6d+mFZAK3
	RqyhMCnaH8UzpGYqniFTZDE=
X-Received: by 2002:aca:8c9:: with SMTP id 192mr3291887oii.164.1553291138361;
        Fri, 22 Mar 2019 14:45:38 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:25c4:3243:c335:9f7b])
        by smtp.gmail.com with ESMTPSA id b125sm2184453oia.8.2019.03.22.14.45.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 14:45:37 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3] Staging: media: davinci_vpfe: Drop macros
Date: Fri, 22 Mar 2019 16:45:34 -0500
Message-Id: <20190322214534.24852-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Drop macros instead use functions set_bit() and clear_bit directly.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v3:
- Drop inline functions and use functions

Changes in v2:
- Convert macros into inline functions
---
 .../staging/media/davinci_vpfe/dm365_ipipeif.c   | 16 ++++++++--------
 .../staging/media/davinci_vpfe/dm365_ipipeif.h   |  2 --
 2 files changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
index 4380e0a8e6dc..81010bc19f0e 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
@@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
+			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 
 		default:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			RESETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
+			clear_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
 			ipipeif_write(val, ipipeif_base_addr, IPIPEIF_CFG2);
 			break;
 		}
@@ -344,16 +344,16 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
 		switch (isif_port_if) {
 		case MEDIA_BUS_FMT_YUYV8_1X16:
 		case MEDIA_BUS_FMT_YUYV10_1X20:
-			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			clear_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
+			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
 			break;
 
 		case MEDIA_BUS_FMT_YUYV8_2X8:
 		case MEDIA_BUS_FMT_UYVY8_2X8:
 		case MEDIA_BUS_FMT_Y8_1X8:
 		case MEDIA_BUS_FMT_YUYV10_2X10:
-			SETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
-			SETBIT(val, IPIPEIF_CFG2_YUV16_SHIFT);
+			set_bit(val, IPIPEIF_CFG2_YUV8_SHIFT);
+			set_bit(val, IPIPEIF_CFG2_YUV16_SHIFT);
 			val |= IPIPEIF_CBCR_Y << IPIPEIF_CFG2_YUV8P_SHIFT;
 			break;
 
diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
index 4685d64016de..4d126fc871f3 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.h
@@ -166,8 +166,6 @@ struct vpfe_ipipeif_device {
 #define IPIPEIF_RSZ_MIN			16
 #define IPIPEIF_RSZ_MAX			112
 #define IPIPEIF_RSZ_CONST		16
-#define SETBIT(reg, bit)   (reg = ((reg) | ((0x00000001)<<(bit))))
-#define RESETBIT(reg, bit) (reg = ((reg) & (~(0x00000001<<(bit)))))
 
 #define IPIPEIF_ADOFS_LSB_MASK		0x1ff
 #define IPIPEIF_ADOFS_LSB_SHIFT		5
-- 
2.17.1


