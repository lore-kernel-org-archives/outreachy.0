X-GM-THRID: 7024064041486123008
X-Received: by 2002:a50:c30a:: with SMTP id a10mr5162077edb.206.1635417358131;
        Thu, 28 Oct 2021 03:35:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:48d:: with SMTP id k13ls3174436edv.2.gmail; Thu, 28
 Oct 2021 03:35:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxst5w90QpbIr8xKN/wfKkQtRFmF6Dr33Sq2q7ziNm1msLk+hN8zsKbv0SAOmZo9rMBSU/2
X-Received: by 2002:a05:6402:5209:: with SMTP id s9mr4960779edd.250.1635417356682;
        Thu, 28 Oct 2021 03:35:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635417356; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4AjQPFPzo0OEf2hrnfkYpYVsB7aKfIWeSNaVnz3zpf+EWcRhKlpjdpvBuV5ibWu/M
         pG02Qb6goNYMeJD7JIl8WUTvCT6dmOOpZmh8BBpZXBrwZftQs9te/XDXJLXclDtQzRjA
         CkR28eCLsTmfyjyqLGn8kC9J4QIsT0TX5exx+n2aD48fl9nuI+eomhBPBBxHQ/NiTw7f
         y5m3mm4Dn1poTrcnjDs5RhfxfWFNzUjkZWwAdjGOmW2N80xRPUINloauNW6BlKWRSbFA
         R6ft+cO6No3mYlAKbGj1LoyIxPjMfwh/c3K6YuMDXAbdZ0HJs1Rl+qEKlH0szNcNtcSa
         JfgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=IGvktVhPA6KMBN53Q9S7sFoN48GUfEwFvixIWYHV+nI=;
        b=PgP1tA6Kx/nPnCxWS45zO0k1+WNkcFHAHb4aaKNzeHReJQT56C79JSX8imKtEEPNX7
         YRaHml/dEm4QH0+oLj7nrANTYsJE2O0Ow13zojBHH6OsO4CI1b1jVFkxbJgYt9MedASf
         uZt7CueWiPYnY8vzLqUF0Gd9VTGScr59Nk0abynzymry35VI8aBh54x9OZDBqSLzttAN
         LJoFz7LrsAsORn3Yv+lyubIIRDLVewSmkk9v2ryKRGWwFvR7Yhu2rJ5vexqvNtZCyJjs
         xVX8tOJdZjWPbx9BGZmZ6LBoWVViJ7VQxXXzgU00B1RMBROt5ZC9sdJw58wjkVgxZgLF
         oRrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Sxm6VcJp;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com. [2a00:1450:4864:20::42c])
        by gmr-mx.google.com with ESMTPS id d2si163949edk.1.2021.10.28.03.35.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Oct 2021 03:35:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) client-ip=2a00:1450:4864:20::42c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=Sxm6VcJp;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::42c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x42c.google.com with SMTP id u18so9320273wrg.5
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Oct 2021 03:35:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IGvktVhPA6KMBN53Q9S7sFoN48GUfEwFvixIWYHV+nI=;
        b=Sxm6VcJphDjRh8Me8C4V+iuxN95Imhe2VFw9dMiGYEPDnIANrGILveOFbbl5lffyBq
         dB8d5n3t5HSZK+6nhvKr3YQ+YahQaX4k7yVF08/INr4GquIYITDKfXb/vlybNYyEZc3W
         Y5u4HcDng50sSWYpb0P8h3c7RFxzRXLhCyF9AzGJTg4Ck1mFvb2DeNkwPlh+p9ogf4+h
         Ugn+13kuXh4IoUBkTxeSOIPoZvDEn5kyDtZ3iORy9UhPX7+eMdKUxnBubHpL572ILA1u
         AaTokTyYHdSAbGJ3N4IdI1wIQ9mQCHPVT0L9J6OoU/9YPlBJKRYQcCqby/BjgQFBzSPO
         nm7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IGvktVhPA6KMBN53Q9S7sFoN48GUfEwFvixIWYHV+nI=;
        b=8Gqpz+hwH+548gHc5gVd9Unp/CQ7VG/ZP7SbKNaod0pgxqd+xeSM+/fJKXtgl2ULkT
         e67beN9Ed7yDrOCjByk8AyxMzWkC2ol2+qT/NwC8cmDhmWBtb1tZ52zxHqDJ1CX+zHZ4
         dsx0n+MR3fcX/ECGIq0tMm1zhInKp+L6hNkp0i/S9CuAUUZDSOuAkfeP8xZxUcQejKKw
         UBwTILYUgZvAAzFMHGiHo4yxVT+Rx7v0YOS8lbZHg23BIgJuLJpD20qjCyy+GDLOvQSD
         rnUB+qG1rm0ssS1oz3RKCAfth8W4wTDNA8tCZbkLXE0+bQYKTXZ9SKqfHzVCAB4srJE0
         2JSw==
X-Gm-Message-State: AOAM531exfiAMxl3YpAArbVPmmrKDlCGuxt5PxHri4W9Md6iEJJ+afOj
	y1v0Gk86J8Vs3C1FoWzgSq7yKFRSdpoIq3Nh
X-Received: by 2002:adf:e0c1:: with SMTP id m1mr4558338wri.241.1635417356520;
        Thu, 28 Oct 2021 03:35:56 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from localhost.localdomain ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id 13sm3768083wrz.38.2021.10.28.03.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Oct 2021 03:35:56 -0700 (PDT)
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Karolina Drobnik <karolinadrobnik@gmail.com>
Subject: [PATCH 2/7] staging: vt6655: Use incrementation in `idx`
Date: Thu, 28 Oct 2021 11:35:32 +0100
Message-Id: <c569952d92ba51f32679c2fd87fd48ad8e49e3fc.1635415820.git.karolinadrobnik@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1635415820.git.karolinadrobnik@gmail.com>
References: <cover.1635415820.git.karolinadrobnik@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Increment `idx` in a loop instead of adding the loop counter
`i` to do so. Thanks to this change, the cast to unsigned short
can be removed.

Signed-off-by: Karolina Drobnik <karolinadrobnik@gmail.com>
---
 drivers/staging/vt6655/rf.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index f195dafb6e63..c07653566d17 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -700,11 +700,11 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 			return false;
 
 		for (i = 0; i < CB_AL2230_INIT_SEQ; i++)
-			MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_init_table[i]);
+			MACvSetMISCFifo(priv, idx++, al2230_init_table[i]);
 
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al2230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al2230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al2230_channel_table1[channel - 1]);
 		break;
 
 		/* Need to check, PLLON need to be low for channel setting */
@@ -717,17 +717,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char rf_type,
 
 		if (channel <= CB_MAX_CHANNEL_24G) {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table[i]);
+				MACvSetMISCFifo(priv, idx++, al7230_init_table[i]);
 		} else {
 			for (i = 0; i < CB_AL7230_INIT_SEQ; i++)
-				MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_init_table_a_mode[i]);
+				MACvSetMISCFifo(priv, idx++, al7230_init_table_a_mode[i]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table0[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table0[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table1[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table1[channel - 1]);
 		i++;
-		MACvSetMISCFifo(priv, (unsigned short)(idx + i), al7230_channel_table2[channel - 1]);
+		MACvSetMISCFifo(priv, idx++, al7230_channel_table2[channel - 1]);
 		break;
 
 	case RF_NOTHING:
-- 
2.30.2


