X-GM-THRID: 6806184818941886464
X-Received: by 2002:a50:eb08:: with SMTP id y8mr1806867edp.49.1584688405626;
        Fri, 20 Mar 2020 00:13:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:206d:: with SMTP id bd13ls965101edb.9.gmail; Fri,
 20 Mar 2020 00:13:24 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvff/0GxXq9huNbfpGIXHLbVUFBdqqWMIqKM12KK2dTUCimZTCrgummyRlHcEjpxzsZMZ2Y
X-Received: by 2002:a50:c314:: with SMTP id a20mr6611361edb.201.1584688404076;
        Fri, 20 Mar 2020 00:13:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584688404; cv=none;
        d=google.com; s=arc-20160816;
        b=vqt8XSf2PBoAdAz/WLuuuU7WN1nSSQWHjVrYpWqmcM3J1ul5q8nE5269Yp5EYpybIi
         7XWfIHR7VdLtLsg2Utep+xwQbZW25KNRnKzEdzZCgk2F7my+F+nInQkBCuq1zkNYK5Ye
         67xMuSaSdk012T+etYZYLSEGpvEKzw5De/XRFScaGAd6bXAmvjtIuUN4AYbg3U4/L8iD
         2MC8JjXil/MsdB1+r556x/UCNBDfqcKpuVkiJdet3Xec+TqQcKLYHjYOJZV5AQzoZzL1
         ETJLvpHiOnA+K5A+ZyxxYKGtqGpPeBgFSAlm9xXCRdaECle1Z9slqyBz0ZsvQkpmrHpx
         q+ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=3fi+kh/bTioYapRm++FnTKNIN4um/QGYdoLX59dNl+Y=;
        b=0Yn4nD+MJWWTHQvDtLLQ2ddyFe3JRkIFtyi49lEAph5qGC2ksjIRJdbuNF1/CfrZNk
         KRQy6gZD16PzMBfhyvvBRF5709sy+b+sI/1NblfoaBzfQuvvaTvHIaUBZxQpd/AhApV5
         SYcFH8rQwvXUdjiMi7QQsJ1InXt3ejmR8c6Dqw9bWS92pz7/8sZYDDZ8UU/mQE0s3/Iz
         UnSDfHhKyVQq9IWZ0M/0BMXFMrrbI7/ELl/ya0nMMgodFxkooq54FDGs0yp6cG4NNEXK
         CjZhk5M5ZuyKX6XsnW1eZJQ4FTt76n9Ut9nsQzJb1W3tLmwgk0TtKplosLC7n66j6MGt
         Vi/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id cw13si256496edb.2.2020.03.20.00.13.23
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 00:13:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 6281 invoked from network); 20 Mar 2020 07:13:22 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 07:13:22 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] staging: rtl8723bs: hal: Correct typos in comments
Date: Fri, 20 Mar 2020 12:43:00 +0530
Message-Id: <46d4e7cd66ec8d5bf7445201e10e3d50fe1c618e.1584687545.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584687545.git.vkor@vkten.in>
References: <cover.1584687545.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspellings found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h  | 14 +++++++-------
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 12 ++++++------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
index ce02457922b7..b9aca99478db 100644
--- a/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
+++ b/drivers/staging/rtl8723bs/hal/Hal8723BReg.h
@@ -415,13 +415,13 @@
 #define	IMR_BCNDMAINT3_8723B		BIT23	/*  Beacon DMA Interrupt 3 */
 #define	IMR_BCNDMAINT2_8723B		BIT22	/*  Beacon DMA Interrupt 2 */
 #define	IMR_BCNDMAINT1_8723B		BIT21	/*  Beacon DMA Interrupt 1 */
-#define	IMR_BCNDOK7_8723B		BIT20	/*  Beacon Queue DMA OK Interrup 7 */
-#define	IMR_BCNDOK6_8723B		BIT19	/*  Beacon Queue DMA OK Interrup 6 */
-#define	IMR_BCNDOK5_8723B		BIT18	/*  Beacon Queue DMA OK Interrup 5 */
-#define	IMR_BCNDOK4_8723B		BIT17	/*  Beacon Queue DMA OK Interrup 4 */
-#define	IMR_BCNDOK3_8723B		BIT16	/*  Beacon Queue DMA OK Interrup 3 */
-#define	IMR_BCNDOK2_8723B		BIT15	/*  Beacon Queue DMA OK Interrup 2 */
-#define	IMR_BCNDOK1_8723B		BIT14	/*  Beacon Queue DMA OK Interrup 1 */
+#define	IMR_BCNDOK7_8723B		BIT20	/*  Beacon Queue DMA OK Interrupt 7 */
+#define	IMR_BCNDOK6_8723B		BIT19	/*  Beacon Queue DMA OK Interrupt 6 */
+#define	IMR_BCNDOK5_8723B		BIT18	/*  Beacon Queue DMA OK Interrupt 5 */
+#define	IMR_BCNDOK4_8723B		BIT17	/*  Beacon Queue DMA OK Interrupt 4 */
+#define	IMR_BCNDOK3_8723B		BIT16	/*  Beacon Queue DMA OK Interrupt 3 */
+#define	IMR_BCNDOK2_8723B		BIT15	/*  Beacon Queue DMA OK Interrupt 2 */
+#define	IMR_BCNDOK1_8723B		BIT14	/*  Beacon Queue DMA OK Interrupt 1 */
 #define	IMR_ATIMEND_E_8723B		BIT13	/*  ATIM Window End Extension for Win7 */
 #define	IMR_TXERR_8723B			BIT11	/*  Tx Error Flag Interrupt Status, write 1 clear. */
 #define	IMR_RXERR_8723B			BIT10	/*  Rx Error Flag INT Status, Write 1 clear */
diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index 11ddab1dce3b..fd2b74003faf 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -824,7 +824,7 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 #endif /*  CONFIG_AP_WOWLAN */
 
 /*
- * To check if reserved page content is destroyed by beacon beacuse beacon
+ * To check if reserved page content is destroyed by beacon because beacon
  * is too large.
  */
 /* 2010.06.23. Added by tynli. */
@@ -1420,10 +1420,10 @@ void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable)
  * Input:
  *
  * bDLFinished - false: At the first time we will send all the packets as
- * a large packet to Hw, so we need to set the packet length to total lengh.
+ * a large packet to Hw, so we need to set the packet length to total length.
  *
  * true: At the second time, we should send the first packet (default:beacon)
- * to Hw again and set the lengh in descriptor to the real beacon lengh.
+ * to Hw again and set the length in descriptor to the real beacon length.
  */
 /* 2009.10.15 by tynli. */
 static void rtl8723b_set_FwRsvdPagePkt(
@@ -1606,7 +1606,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 #ifdef CONFIG_GTK_OL
 	BufIndex += (CurtPktPageNum*PageSize);
 
-	/* if the ap staion info. exists, get the kek, kck from staion info. */
+	/* if the ap station info. exists, get the kek, kck from station info. */
 	psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
 	if (!psta) {
 		memset(kek, 0, RTW_KEK_LEN);
@@ -1805,10 +1805,10 @@ static void rtl8723b_set_FwRsvdPagePkt(
  * Input: bDLFinished
  *
  * false: At the first time we will send all the packets as a large packet to
- * Hw, so we need to set the packet length to total lengh.
+ * Hw, so we need to set the packet length to total length.
  *
  * true: At the second time, we should send the first packet (default:beacon)
- * to Hw again and set the lengh in descriptor to the real beacon lengh.
+ * to Hw again and set the length in descriptor to the real beacon length.
  */
 /* 2009.10.15 by tynli. */
 static void rtl8723b_set_AP_FwRsvdPagePkt(
-- 
2.20.1


