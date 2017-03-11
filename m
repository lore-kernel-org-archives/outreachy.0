X-GM-THRID: 6396242465121107968
X-Received: by 10.25.24.65 with SMTP id o62mr3100766lfi.8.1489241261597;
        Sat, 11 Mar 2017 06:07:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.133 with SMTP id 127ls1291492ljf.39.gmail; Sat, 11 Mar
 2017 06:07:40 -0800 (PST)
X-Received: by 10.25.24.65 with SMTP id o62mr3100761lfi.8.1489241260809;
        Sat, 11 Mar 2017 06:07:40 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id b186si212162wme.1.2017.03.11.06.07.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 06:07:40 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id g10so14736980wrg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 06:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=T++kHnt9fT9lwGaFRNDqMFDsSbN6TJNtiZv7WV86kNs=;
        b=k9WC147aJTzEn/ct/2mcBzn6A4hWvK+3PHeMveFF5SG7TPjwVtsFA53PdE89noqOd0
         5ZPI53E8VX4BkfLQdpoP4RpsEzwebQ8Gl1qjxjOI3u3/WOrmEBgIqTRkJefLjsncpqff
         NzVfgtRCKRKbWfvz+geNzCheDthd1K6cYqtXEjJ3tpTI7YVLbX2d+YHTR0QqybopVRSj
         SwaXJId/w3R3IK0hY95zr/NofXdI74jgPC3bhoHlAKtlrXSIBpbVlOGaFCFYJc8Mk4zj
         yo3JGGCADZW0+xYi/YJsun6Ol4OeD/po+UM5IVbmV0jTTWowV5See0yD8ohkcRkRlVU7
         d+AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=T++kHnt9fT9lwGaFRNDqMFDsSbN6TJNtiZv7WV86kNs=;
        b=i0eW57ZUkpIdYhwRhnRBb6VVyP+64jNZrIUR18jB1/tVML4s8Q4/kFjFwfGu3oBmWY
         YFYRdVIzHzHAIo1JkEuUdqrs4qNZTNown/qHjU+qUBW1kZrZLxYJnvbAfSBtEGOGZcId
         YErGsjtrneLXOZ0y/j08d2fr+hscYokTgFkTIba2d9cR41AyFEko3CNqRsTHNaq+tXkY
         Ff7ZTCN7uJw7/6N0OEzTdawatawW/VplD5u+OR2V3Tbqz7SQjDJStkNhUJ+aNLn3hL9j
         eRPl4mQZC1MUFyRhQJhpclOsMkYqHttoL/zV5UExZy8KEOIdQ1VEYhXlnVny92mLP/wv
         ACPg==
X-Gm-Message-State: AMke39nzQYOyjPcAbudq85I82ynHsGccouPYJWwOAGGNQwpZ3IxPNB2xcik36+5aa8xQJg==
X-Received: by 10.223.154.50 with SMTP id z47mr20011516wrb.76.1489241260624;
        Sat, 11 Mar 2017 06:07:40 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.77])
        by smtp.gmail.com with ESMTPSA id b17sm3746150wma.33.2017.03.11.06.07.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 11 Mar 2017 06:07:39 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/3] staging: wilc1000: Rearrange code
Date: Sat, 11 Mar 2017 16:07:25 +0200
Message-Id: <20170311140725.18461-4-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
In-Reply-To: <20170311140725.18461-1-diaconita.tamara@gmail.com>
References: <20170311140725.18461-1-diaconita.tamara@gmail.com>

Trims line size at 80 characters by splitting the lines to improve code
readability.

Problem found with checkpatch.pl.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/wilc1000/wilc_spi.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_spi.c b/drivers/staging/wilc1000/wilc_spi.c
index a1b0296..298a30d 100644
--- a/drivers/staging/wilc1000/wilc_spi.c
+++ b/drivers/staging/wilc1000/wilc_spi.c
@@ -397,11 +397,12 @@ static int spi_cmd_complete(struct wilc *wilc, u8 cmd, u32 adr, u8 *b, u32 sz,
 		len2 = len + (NUM_SKIP_BYTES + NUM_RSP_BYTES + NUM_DUMMY_BYTES);
 	} else if ((cmd == CMD_INTERNAL_READ) || (cmd == CMD_SINGLE_READ)) {
 		if (!g_spi.crc_off) {
-			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES + NUM_DATA_BYTES
-				      + NUM_CRC_BYTES + NUM_DUMMY_BYTES);
+			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES +
+				      NUM_DATA_BYTES + NUM_CRC_BYTES +
+				      NUM_DUMMY_BYTES);
 		} else {
-			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES + NUM_DATA_BYTES
-				      + NUM_DUMMY_BYTES);
+			len2 = len + (NUM_RSP_BYTES + NUM_DATA_HDR_BYTES +
+				      NUM_DATA_BYTES + NUM_DUMMY_BYTES);
 		}
 	} else {
 		len2 = len + (NUM_RSP_BYTES + NUM_DUMMY_BYTES);
@@ -967,7 +968,8 @@ static int wilc_spi_read_int(struct wilc *wilc, u32 *int_status)
 			if (g_spi.nint > 5) {
 				wilc_spi_read_reg(wilc, 0x1a94,
 						  &irq_flags);
-				tmp |= (((irq_flags >> 0) & 0x7) << (IRG_FLAGS_OFFSET + 5));
+				tmp |= (((irq_flags >> 0) & 0x7) <<
+					  (IRG_FLAGS_OFFSET + 5));
 			}
 
 			unknown_mask = ~((1ul << g_spi.nint) - 1);
@@ -1007,7 +1009,8 @@ static int wilc_spi_clear_int_ext(struct wilc *wilc, u32 val)
 				 * it will clear interrupt.
 				 */
 				if (flags & 1)
-					ret = wilc_spi_write_reg(wilc, 0x10c8 + i * 4, 1);
+					ret = wilc_spi_write_reg(wilc, 0x10c8 +
+								 i * 4, 1);
 				if (!ret)
 					break;
 				flags >>= 1;
-- 
2.9.3


