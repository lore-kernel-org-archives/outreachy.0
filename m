X-GM-THRID: 6616189865324183552
X-Received: by 2002:a2e:2c08:: with SMTP id s8-v6mr24522ljs.28.1540451744545;
        Thu, 25 Oct 2018 00:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:424d:: with SMTP id p74-v6ls667225lja.4.gmail; Thu, 25
 Oct 2018 00:15:43 -0700 (PDT)
X-Google-Smtp-Source: AJdET5erFRuI6Sj029WP1zRyEU5vzBnXyr+1VzovsA40MeLuPVnQWNeS36xiKe8IwHwGNlmSIQPG
X-Received: by 2002:a2e:48b:: with SMTP id a11-v6mr25243ljf.12.1540451743634;
        Thu, 25 Oct 2018 00:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540451743; cv=none;
        d=google.com; s=arc-20160816;
        b=JFMYebAChrU+i/golxCTzzw2O9eLczyWcPrLmg+/WALdQyNX+gQzedC5HRWaKe0Nwr
         MGgXzQnhcsBmnvw81T5PcxgD5z+HjMptMFy0569dy/xbtClRmygz3ZnVblH8aDHYJvN4
         3uYoebhNfFElFn/LuEeSI2S64EU3YoFAppwS75I69pgR9FjfGYdrTE6rmRjaPC19bCsf
         xeXigoZ8aZPulYmydTvKoi8ceYAHbKSQGYoFPFlonaFQhVmTdGZZ/DkXNaMxWURcI8uQ
         pJdqTTqM5pWk/EB2sh2h5f/wQkheMy5u1AoTODTVcq48e8JhqauifJ26An5h9hOfAu6V
         pl+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Q7kaTyCSsnxFHzxnSJeJS6xzsZx+pvjUG6zOU9b0uAE=;
        b=00oUOSczLOq5Gs475A9gZz0Pb7sRlXY2JjCcCCpISTp1IX13g45gjWv5MOKzSD3Jjp
         IYbuI2iDOIAcK9U3EQzIbCFu4HGPGi11Z12qOirab6oO/Q71qAdrB5w4rh5ZmJp9jGy8
         B/NAwzXYaf+11W2xrpCf/WX3T1oHXluNp/tRNR7MTCTn3ToH/1haRj+lFbYUC+aAUDxt
         Pi1hPYk3mv29a38ZuMeSV7bkLdC3xP9sOms6ISaNZdo+egDXgKd5QRvhUHfhVDf6Okj5
         hcoBwMOFnmAJ3r0uaxMmeOAaVsQJfiA/GAVyzw2NfQ3GKvFVLMi5rv8uHf1Jx+I921az
         b1/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kyPma7Oq;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id w13-v6si260529lfe.3.2018.10.25.00.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Oct 2018 00:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kyPma7Oq;
       spf=pass (google.com: domain of kim.jamie.bradley@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=kim.jamie.bradley@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id y144-v6so355159wmd.4
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Oct 2018 00:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Q7kaTyCSsnxFHzxnSJeJS6xzsZx+pvjUG6zOU9b0uAE=;
        b=kyPma7OqqVKdGhl9fNBtBJeRnkUIXR/IOWEDeeZasBJsG87Jdg0R2KL6kf5/J9Xl20
         KSUmTFJnCkn3GzgaPP6mKBxq9ilirdSXPSjgQdxo9c35/EpfLtXlJBYANSQBteCaNar2
         3xuVScSPP+QP24hSmt6dcw68pNwqgYJmZuebPj40Wj4NyuIhqvIgyKALVutp8lp0600u
         LQyOmHzpJjNNgEvErli9/48CKXwTx0a1WjMH3q/zBUKzMHvXbpBAbH+TZIHib9fdO0Ql
         gu9wS6ueV8tn2PrGFBLRULjHswPnjCv/LecQm1YwMUFzPdhMgYTfLwKTVRFiGd8TYGL3
         gG6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Q7kaTyCSsnxFHzxnSJeJS6xzsZx+pvjUG6zOU9b0uAE=;
        b=QxJCn29XPID6uL7zfdFR6n1bfOlKc2YcPAcR5TkbOgSu7o/hTMU4qSE6jWGwGQZVwk
         OKp5nDVeauvwGN5ZTdWvviRYqUFj+8hJKIC7TGXaflT6qX75lP/F1tZwi3P6nxknCMcj
         LdrBinj+pl61KzRr/kcLLAwW4PG+cfUuCcGmSWUq2crGvdZb1HqdvTom4JPlfo+jZLrY
         fTd98daylbJrOl1NmUUonHBBVGp+AQbX/N5a9SD5dfMw+l0S5mTedbkSY+okq9wpX4VW
         ChR8kH4aV/x/Jdgap6ZGMhptAM95bUb7YNHQTlYSLdQjdb0QnzDZeZWkDrjRTxGE9btB
         uZXA==
X-Gm-Message-State: AGRZ1gJXBecbjfyv9QB79fd384bzsj1c3n4mj5OhaPMjGoBnkCZI5xdu
	or6yK+p6gXuz6KrsUm42A41u4J3CIJI=
X-Received: by 2002:a1c:ee05:: with SMTP id m5-v6mr336563wmh.138.1540451742635;
        Thu, 25 Oct 2018 00:15:42 -0700 (PDT)
Return-Path: <kim.jamie.bradley@gmail.com>
Received: from xubuntu-vm (host86-167-247-131.range86-167.btcentralplus.com. [86.167.247.131])
        by smtp.gmail.com with ESMTPSA id 82-v6sm937909wms.17.2018.10.25.00.15.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 25 Oct 2018 00:15:42 -0700 (PDT)
Date: Thu, 25 Oct 2018 08:15:39 +0100
From: Kim Bradley <kim.jamie.bradley@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: rts5208: Capitalise preprocessor variable names
Message-ID: <20181025071536.GA3274@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Capitalise header preprocesser variable names (and all
occurences) to remove checkpatch camelcase warnings.

Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 drivers/staging/rts5208/xd.h | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index c5ee04ecd1c9..1187c75d764a 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
 			xd_card->zone_cnt = 32;
 			xd_card->capacity = 1024000;
 			break;
-		case xD_1G_X8_512:
+		case XD_1G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 64;
 			xd_card->capacity = 2048000;
 			break;
-		case xD_2G_X8_512:
+		case XD_2G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 128;
@@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
 		return STATUS_FAIL;
 	}
 
-	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
+	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
-	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
+	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
 		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
 	if (id_buf[2] != XD_ID_CODE)
 		return STATUS_FAIL;
diff --git a/drivers/staging/rts5208/xd.h b/drivers/staging/rts5208/xd.h
index bf21bf0d1616..98c00f268e56 100644
--- a/drivers/staging/rts5208/xd.h
+++ b/drivers/staging/rts5208/xd.h
@@ -36,7 +36,7 @@
 #define	BLK_ERASE_1			0x60
 #define	BLK_ERASE_2			0xD0
 #define READ_STS			0x70
-#define READ_xD_ID			0x9A
+#define READ_XD_ID			0x9A
 #define	COPY_BACK_512			0x8A
 #define	COPY_BACK_2K			0x85
 #define	READ1_1_2			0x30
@@ -72,8 +72,8 @@
 #define	XD_128M_X16_2048		0xC1
 #define	XD_4M_X8_512_1			0xE3
 #define	XD_4M_X8_512_2			0xE5
-#define	xD_1G_X8_512			0xD3
-#define	xD_2G_X8_512			0xD5
+#define	XD_1G_X8_512			0xD3
+#define	XD_2G_X8_512			0xD5
 
 #define	XD_ID_CODE			0xB5
 
@@ -90,7 +90,7 @@
 #define	NO_OFFSET			0x0
 #define	WITH_OFFSET			0x1
 
-#define	Sect_Per_Page			4
+#define	SECT_PER_PAGE			4
 #define	XD_ADDR_MODE_2C			XD_ADDR_MODE_2A
 
 #define ZONE0_BAD_BLOCK			23
-- 
2.19.1


