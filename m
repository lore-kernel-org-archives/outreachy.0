X-GM-THRID: 1543619215360
X-Received: by 10.194.178.234 with SMTP id db10mr441211wjc.2.1424551045259;
        Sat, 21 Feb 2015 12:37:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.166 with SMTP id fx6ls305035wib.20.canary; Sat, 21 Feb
 2015 12:37:24 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr441210wjc.2.1424551044992;
        Sat, 21 Feb 2015 12:37:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x242.google.com (mail-wi0-x242.google.com. [2a00:1450:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id ta1si366219wic.1.2015.02.21.12.37.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:37:24 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) client-ip=2a00:1450:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::242 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x242.google.com with SMTP id hi2so4130829wib.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:37:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ZICo0UKC6XkOLI5SzMfanlG1jh1MJl/Puepl/dizyWQ=;
        b=gHVTorYs31ztBw1enQRH4YSOSgGIgR6zrkW6xVVRP1P1YpASJXOq6Zrl3ZcQ82AYo1
         3HLdWvdPfoCtuDKAGobnXEOuSYvF/Kpwx42GfPw8fidCpf6xLCMPhLF1pcQQtkZaXfb/
         7D8MmBhlIoXsz83iwrQro5NEd2AM37zT1W3CFg6o8GaoXP60JfvGdySV7Th6z+eTd5sP
         Zjza7htEHv81qWDILghkA115HY+XLGQWCICc6Wp+HuK59UTMwO1b0onrx99JgRpTa6Wg
         pdwJhzsBXz1R0dfEBfB6KIl47EFxuHUFqxKRI3PsIW2TOmJPeKP5/I5qRbCCr2sjh7E7
         5ugw==
X-Received: by 10.194.173.138 with SMTP id bk10mr7431672wjc.112.1424551044913;
        Sat, 21 Feb 2015 12:37:24 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id a1sm48062274wjs.40.2015.02.21.12.37.23
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:37:24 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: vt6655: changed C99 // comments
Date: Sat, 21 Feb 2015 22:37:16 +0200
Message-Id: <1424551036-22449-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

// erased and replace it with /* */ used.
Error found with checkpatch.pl

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/vt6655/mib.c | 46 ++++++++++++++++++++++----------------------
 1 file changed, 23 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/vt6655/mib.c b/drivers/staging/vt6655/mib.c
index d2f351d..d55c762 100644
--- a/drivers/staging/vt6655/mib.c
+++ b/drivers/staging/vt6655/mib.c
@@ -63,51 +63,51 @@ void STAvUpdateIsrStatCounter(PSStatCounter pStatistic, unsigned long dwIsr)
 	/**********************/
 	/* ABNORMAL interrupt */
 	/**********************/
-	// not any IMR bit invoke irq
+	/* not any IMR bit invoke irq */
 
 	if (dwIsr == 0) {
 		pStatistic->ISRStat.dwIsrUnknown++;
 		return;
 	}
 
-//Added by Kyle
-	if (dwIsr & ISR_TXDMA0)               // ISR, bit0
-		pStatistic->ISRStat.dwIsrTx0OK++;             // TXDMA0 successful
+/* Added by Kyle */
+	if (dwIsr & ISR_TXDMA0)               /* ISR, bit0 */
+		pStatistic->ISRStat.dwIsrTx0OK++;             /* TXDMA0 successful */
 
-	if (dwIsr & ISR_AC0DMA)               // ISR, bit1
-		pStatistic->ISRStat.dwIsrAC0TxOK++;           // AC0DMA successful
+	if (dwIsr & ISR_AC0DMA)               /* ISR, bit1 */
+		pStatistic->ISRStat.dwIsrAC0TxOK++;           /* AC0DMA successful */
 
-	if (dwIsr & ISR_BNTX)                 // ISR, bit2
-		pStatistic->ISRStat.dwIsrBeaconTxOK++;        // BeaconTx successful
+	if (dwIsr & ISR_BNTX)                 /* ISR, bit2 */
+		pStatistic->ISRStat.dwIsrBeaconTxOK++;        /* BeaconTx successful */
 
-	if (dwIsr & ISR_RXDMA0)               // ISR, bit3
-		pStatistic->ISRStat.dwIsrRx0OK++;             // Rx0 successful
+	if (dwIsr & ISR_RXDMA0)               /* ISR, bit3 */
+		pStatistic->ISRStat.dwIsrRx0OK++;             /* Rx0 successful */
 
-	if (dwIsr & ISR_TBTT)                 // ISR, bit4
-		pStatistic->ISRStat.dwIsrTBTTInt++;           // TBTT successful
+	if (dwIsr & ISR_TBTT)                 /* ISR, bit4 */
+		pStatistic->ISRStat.dwIsrTBTTInt++;           /* TBTT successful */
 
-	if (dwIsr & ISR_SOFTTIMER)            // ISR, bit6
+	if (dwIsr & ISR_SOFTTIMER)            /* ISR, bit6 */
 		pStatistic->ISRStat.dwIsrSTIMERInt++;
 
-	if (dwIsr & ISR_WATCHDOG)             // ISR, bit7
+	if (dwIsr & ISR_WATCHDOG)             /* ISR, bit7 */
 		pStatistic->ISRStat.dwIsrWatchDog++;
 
-	if (dwIsr & ISR_FETALERR)             // ISR, bit8
+	if (dwIsr & ISR_FETALERR)             /* ISR, bit8 */
 		pStatistic->ISRStat.dwIsrUnrecoverableError++;
 
-	if (dwIsr & ISR_SOFTINT)              // ISR, bit9
-		pStatistic->ISRStat.dwIsrSoftInterrupt++;     // software interrupt
+	if (dwIsr & ISR_SOFTINT)              /* ISR, bit9 */
+		pStatistic->ISRStat.dwIsrSoftInterrupt++;     /* software interrupt */
 
-	if (dwIsr & ISR_MIBNEARFULL)          // ISR, bit10
+	if (dwIsr & ISR_MIBNEARFULL)          /* ISR, bit10 */
 		pStatistic->ISRStat.dwIsrMIBNearfull++;
 
-	if (dwIsr & ISR_RXNOBUF)              // ISR, bit11
-		pStatistic->ISRStat.dwIsrRxNoBuf++;           // Rx No Buff
+	if (dwIsr & ISR_RXNOBUF)              /* ISR, bit11 */
+		pStatistic->ISRStat.dwIsrRxNoBuf++;           /* Rx No Buff */
 
-	if (dwIsr & ISR_RXDMA1)               // ISR, bit12
-		pStatistic->ISRStat.dwIsrRx1OK++;             // Rx1 successful
+	if (dwIsr & ISR_RXDMA1)               /* ISR, bit12 */
+		pStatistic->ISRStat.dwIsrRx1OK++;             /* Rx1 successful */
 
-	if (dwIsr & ISR_SOFTTIMER1)           // ISR, bit21
+	if (dwIsr & ISR_SOFTTIMER1)           /* ISR, bit21 */
 		pStatistic->ISRStat.dwIsrSTIMER1Int++;
 }
 
-- 
1.9.1


