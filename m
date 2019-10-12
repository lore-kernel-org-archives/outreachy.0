X-GM-THRID: 6746720218426376192
X-Received: by 2002:a17:90a:2451:: with SMTP id h75mr21472738pje.131.1570843211552;
        Fri, 11 Oct 2019 18:20:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:8a8c:: with SMTP id x12ls2699133pjn.5.gmail; Fri, 11
 Oct 2019 18:20:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQoCLd+QV5L7wPQrlljl6yAJjQOuBQTAW75ML1pbd1iPGdwJHNf/q9YJUbnejqd9sFMHok
X-Received: by 2002:a17:902:9a88:: with SMTP id w8mr18425944plp.129.1570843210662;
        Fri, 11 Oct 2019 18:20:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570843210; cv=none;
        d=google.com; s=arc-20160816;
        b=EL4iIzbA5So3Ht9SdzdE2o0s/68wprQDB0ZVBTdfMjQSusLlBI/X5teh1YXm5ZRnIT
         EF7TAgUV96M/hCymEF8a4m7NOm4AU+m0zBx//BWJa9c9tH0g8RVTbdiUv+OTYpi+Zls9
         e2jZgQJUSLBPLh7xn68Ss6W7HWNPZJfBXc/0w/v1aicmjNpSjIjYWw41uapO7NbHWCym
         v2Ox4D6xyY0Op1sAg7/m+YhFBgx4h3zgVcmmxFcq08Zf6ZYvtS709u/8xniLDbamP27m
         gW2lYUlCu1RnDN5scOh0QBOR8dwmwuG5U0Q3yUYEusmI84ilq2+3BWWTAFOd1gAf7UJo
         t83Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=f59g/RciVZKoxqNX9kC3w6U69tnmtVV5CNkXdY+evAk=;
        b=w54Sr4j3m/7U8lTUdoKclE4LAMc4tjODaGv/GHbqR06Z81ON+qkwu4U91vAPLiLkl+
         rdnRKFOKWiI3RHZZ6inJ+QTknLhqa+avahveZCiH3tBPj8qGmdTtVaQyOFYBwaWyqqVU
         KMFdYjegu0vJLewkJL90a22NuO32+3tVWA3zt0Vl2bcDuRqa+ngEr7ggBafiEQFbBYd9
         sJdf1eFXUE4rGG9eXnEq/CBborW6yz00hqsevbwDZeczUPfurYT8WYvkYOcg8Qy9NDaF
         2X+KasdvDGjV9HqUkUo+7B2UJR9F8qGU3TZUV3cIv3t4CTWqcdKwDbi5IN2uE/gnjYTI
         1BOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P11949Mu;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id x197si1095829pgx.5.2019.10.11.18.20.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 18:20:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P11949Mu;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id 4so10619577qki.6
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 18:20:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f59g/RciVZKoxqNX9kC3w6U69tnmtVV5CNkXdY+evAk=;
        b=P11949MuCzHOh2ktsdskijdbH2ZXJyKxKKUW/6KRGBL6qDtFcdJHhF0jU5hzJmhAWW
         CoAD6Xa7ht7fUA45ULBTLVL04HSQY7fUJSlj+u6OSBMko7xISTmXSj7yLNbBbUrFetMd
         Vixjq+gleE4IfUjyh3X/eftr807SM87bd7p1hmxUTKZMcXMITjly2RM5KYJTKezf3IKD
         bQXve2sj9+3Eb+1Gwsf2snBOWF742XpGGGjlR9+o5+JnZJL58wTAA0yTleClYOf0D6ta
         7+IeKvw4jfjTi7HcyKZds7krit1/Hm3hCtIx6A1qmkwDIhPZCGHPkgUiS0ZG5zBfXxBv
         kwFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=f59g/RciVZKoxqNX9kC3w6U69tnmtVV5CNkXdY+evAk=;
        b=INCz8fB57INkh1gVBvfO0dRoluI5rNUIJyCJu9QZpOBT66qJoKb29idz28HR2c5+5l
         dxlckWUfJaVMZUDvo3JLXkFwaosGZRCPGvmkzVifYL+zesS7jm6fZ/kOkB2MWC+5U3SB
         BBQiLyaxX62LuPet8ssYUXYEn0C4IYvnI2Vpl9qz3hyBCUTrj6hxZ/Et+XG0gflgkt4v
         rsZBT3bwqAH3QgoCjaCQGudX6b05Z1Loc+c//Ob+DGR01jKQn55N2MRzK+kKEG8fSnnw
         XK3v//khhIcU5Y5RXKNiiMrvqTpTREWcZQFFOIMB7tk8RVroDZ+lv2CFLoDK82SqdZW/
         gH8A==
X-Gm-Message-State: APjAAAWKzL75VDeXgHU9ANCuOk1zT6B4/S6NCWWqJxeWH0lpnyhOcfml
	lPSZc5A36RoVZEIbs7cJt6xynbwCCV4=
X-Received: by 2002:a37:9d10:: with SMTP id g16mr18836248qke.29.1570843209314;
        Fri, 11 Oct 2019 18:20:09 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([187.106.44.83])
        by smtp.gmail.com with ESMTPSA id s17sm4618393qkg.79.2019.10.11.18.20.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 18:20:08 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	sudipm.mukherjee@gmail.com,
	teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org,
	linux-fbdev@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] staging: sm750fb: align arguments with open parenthesis
Date: Fri, 11 Oct 2019 22:19:56 -0300
Message-Id: <20191012011956.9452-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Alignment should match open parenthesis" in tree sm750fb

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/sm750fb/ddk750_display.c |  2 +-
 drivers/staging/sm750fb/sm750_accel.c    |  2 +-
 drivers/staging/sm750fb/sm750_accel.h    |  8 ++++----
 drivers/staging/sm750fb/sm750_cursor.h   | 10 +++++-----
 4 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_display.c b/drivers/staging/sm750fb/ddk750_display.c
index 887ea8aef43f..8be98a1058d6 100644
--- a/drivers/staging/sm750fb/ddk750_display.c
+++ b/drivers/staging/sm750fb/ddk750_display.c
@@ -148,7 +148,7 @@ void ddk750_set_logical_disp_out(enum disp_output output)
 	if (output & PNL_SEQ_USAGE) {
 		/* set  panel sequence */
 		sw_panel_power_sequence((output & PNL_SEQ_MASK) >> PNL_SEQ_OFFSET,
-		4);
+					4);
 	}
 
 	if (output & DAC_USAGE)
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index dbcbbd1055da..1a9555bb9edd 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -289,7 +289,7 @@ static unsigned int deGetTransparency(struct lynx_accel *accel)
 }
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
+		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
 		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
 		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
 		 u32 dBase,    /* Address of destination: offset in frame buffer */
diff --git a/drivers/staging/sm750fb/sm750_accel.h b/drivers/staging/sm750fb/sm750_accel.h
index c4f42002a50f..8fb79b09fdd0 100644
--- a/drivers/staging/sm750fb/sm750_accel.h
+++ b/drivers/staging/sm750fb/sm750_accel.h
@@ -190,9 +190,9 @@ void sm750_hw_set2dformat(struct lynx_accel *accel, int fmt);
 void sm750_hw_de_init(struct lynx_accel *accel);
 
 int sm750_hw_fillrect(struct lynx_accel *accel,
-				u32 base, u32 pitch, u32 Bpp,
-				u32 x, u32 y, u32 width, u32 height,
-				u32 color, u32 rop);
+		      u32 base, u32 pitch, u32 Bpp,
+		      u32 x, u32 y, u32 width, u32 height,
+		      u32 color, u32 rop);
 
 int sm750_hw_copyarea(
 struct lynx_accel *accel,
@@ -210,7 +210,7 @@ unsigned int height, /* width and height of rectangle in pixel value */
 unsigned int rop2);
 
 int sm750_hw_imageblit(struct lynx_accel *accel,
-		 const char *pSrcbuf, /* pointer to start of source buffer in system memory */
+		       const char *pSrcbuf, /* pointer to start of source buffer in system memory */
 		 u32 srcDelta,          /* Pitch value (in bytes) of the source buffer, +ive means top down and -ive mean button up */
 		 u32 startBit, /* Mono data can start at any bit in a byte, this value should be 0 to 7 */
 		 u32 dBase,    /* Address of destination: offset in frame buffer */
diff --git a/drivers/staging/sm750fb/sm750_cursor.h b/drivers/staging/sm750fb/sm750_cursor.h
index 16ac07eb58d6..039ebfdf0bd9 100644
--- a/drivers/staging/sm750fb/sm750_cursor.h
+++ b/drivers/staging/sm750fb/sm750_cursor.h
@@ -6,13 +6,13 @@
 void sm750_hw_cursor_enable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_disable(struct lynx_cursor *cursor);
 void sm750_hw_cursor_setSize(struct lynx_cursor *cursor,
-						int w, int h);
+			     int w, int h);
 void sm750_hw_cursor_setPos(struct lynx_cursor *cursor,
-						int x, int y);
+			    int x, int y);
 void sm750_hw_cursor_setColor(struct lynx_cursor *cursor,
-						u32 fg, u32 bg);
+			      u32 fg, u32 bg);
 void sm750_hw_cursor_setData(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
+			     u16 rop, const u8 *data, const u8 *mask);
 void sm750_hw_cursor_setData2(struct lynx_cursor *cursor,
-			u16 rop, const u8 *data, const u8 *mask);
+			      u16 rop, const u8 *data, const u8 *mask);
 #endif
-- 
2.20.1


