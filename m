X-GM-THRID: 6805856323251470336
X-Received: by 2002:aa7:d318:: with SMTP id p24mr1878914edq.386.1584611908381;
        Thu, 19 Mar 2020 02:58:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358b:: with SMTP id o11ls827300ejb.3.gmail; Thu, 19
 Mar 2020 02:58:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvJY+KitMnPew+WsMdvzfGjrye60re2vagSMVlzMTCjp+wOhgPTiOYsWobdeppK5S0Pc9lD
X-Received: by 2002:a17:906:939a:: with SMTP id l26mr2439802ejx.276.1584611907142;
        Thu, 19 Mar 2020 02:58:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584611907; cv=none;
        d=google.com; s=arc-20160816;
        b=qMGM3d5U3CCzG91w30TAaBSAnSiTKhKtddDh+e2WMiwBM7AR/PI8qZnE2duM0Mbyiw
         BgAxYg+vxffNbsdczvlBwgl1BdcXdXyeRDg7OljD60Jv/3edou9qeBn9V9plRvnn3jCw
         +CFge97eiKIoqHhhuE09b1AvWmcm5jvJi5EBfojAxtzdVF0o31qV/W/5uAL4wYO+rySF
         SGcBbACVmlkIMl+Yl4Q+1tqX4b5h2/S7Xyax4dWf285rqO8FRu99dlKve9q6GCKELuJX
         wiB8K3F6rFUmUa8iY5CFdCYW+zw5w5LiSBl0i9x9xGfE40meAVBNyKSUMjNnS3Zhppzs
         Kueg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=wDXvgexGRKQ7fGBA23f8xKPsKBQYwDPjnmBJ+pvTvrs=;
        b=y4/biMTLksTfv6h1iQUejB897j3/qVjadLEIbO8z7MuysIf3lHimdeIwV+aOLnWh3l
         tXb7HWwCnBaDRJ/568QBtLjEQM13lzhR9O5TLjLdrZPalVBYAy24XWtkN45p9fgaQFfG
         pMAqbndq61IrfyNLsGa3FyzpmLKdRK2gaK4K2YTxpHZ0yGXqHTLlt6JJhERvb291bizd
         iNy0BiRkr3JiYttZzexhYsop47bSuqLe63UkEQw/49eqvGzdatLQhDjcr9gqHPIn9mwP
         /rhGErccmg0eApiAqyNT6mPOBgC/4zSoxrTNtqAT1jkGl4WUFkxomo4pbT5E4mNh9LP5
         mvcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id x7si80089ejw.0.2020.03.19.02.58.27
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 02:58:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 26735 invoked from network); 19 Mar 2020 09:58:25 -0000
Received: from unknown (HELO tulip.local) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 09:58:25 -0000
Date: Thu, 19 Mar 2020 15:28:15 +0530
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [RESEND PATCH] staging: rtl8723bs: hal: Correct typos and long line
 comments
Message-ID: <20200319095807.GA3243@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Correct long line comments to respect 80 character line limit.
Correct comment lines as per kernel-doc coding style.
Correct typos in the comments.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/Hal8723BReg.h  | 14 ++---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 61 ++++++++++++--------
 2 files changed, 44 insertions(+), 31 deletions(-)

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
index a69e8ae16565..f85cbcaf2c2b 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -823,7 +823,11 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 }
 #endif /*  CONFIG_AP_WOWLAN */
 
-/*  To check if reserved page content is destroyed by beacon beacuse beacon is too large. */
+/*
+ * To check if reserved page content is destroyed by beacon because
+ * beacon is too large.
+ */
+
 /*  2010.06.23. Added by tynli. */
 void CheckFwRsvdPageContent(struct adapter *Adapter)
 {
@@ -1409,16 +1413,22 @@ void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable)
 }
 #endif /* CONFIG_AP_WOWLAN */
 
-/*  */
-/*  Description: Fill the reserved packets that FW will use to RSVD page. */
-/* 			Now we just send 4 types packet to rsvd page. */
-/* 			(1)Beacon, (2)Ps-poll, (3)Null data, (4)ProbeRsp. */
-/* 	Input: */
-/* 	    bDLFinished - false: At the first time we will send all the packets as a large packet to Hw, */
-/* 						so we need to set the packet length to total lengh. */
-/* 			      true: At the second time, we should send the first packet (default:beacon) */
-/* 						to Hw again and set the lengh in descriptor to the real beacon lengh. */
-/*  2009.10.15 by tynli. */
+/*
+ * Description: Fill the reserved packets that FW will use to RSVD page.
+ *
+ * Now we just send 4 types packet to rsvd page.
+ * (1)Beacon, (2)Ps-poll, (3)Null data, (4)ProbeRsp.
+ *
+ * Input:
+ *
+ * bDLFinished - false: At the first time we will send all the packets as a
+ * large packet to Hw, so we need to set the packet length to total length.
+ *
+ * true: At the second time, we should send the first packet (default:beacon)
+ * to Hw again and set the length in descriptor to the real beacon length.
+ */
+
+/* 2009.10.15 by tynli. */
 static void rtl8723b_set_FwRsvdPagePkt(
 	struct adapter *padapter, bool bDLFinished
 )
@@ -1599,7 +1609,7 @@ static void rtl8723b_set_FwRsvdPagePkt(
 #ifdef CONFIG_GTK_OL
 	BufIndex += (CurtPktPageNum*PageSize);
 
-	/* if the ap staion info. exists, get the kek, kck from staion info. */
+	/* if the ap station info. exists, get the kek,kck from station info. */
 	psta = rtw_get_stainfo(pstapriv, get_bssid(pmlmepriv));
 	if (!psta) {
 		memset(kek, 0, RTW_KEK_LEN);
@@ -1791,18 +1801,21 @@ static void rtl8723b_set_FwRsvdPagePkt(
 }
 
 #ifdef CONFIG_AP_WOWLAN
-/*  */
-/* Description: Fill the reserved packets that FW will use to RSVD page. */
-/* Now we just send 2 types packet to rsvd page. (1)Beacon, (2)ProbeRsp. */
-/*  */
-/* Input: bDLFinished */
-/*  */
-/* false: At the first time we will send all the packets as a large packet to Hw, */
-/* 	 so we need to set the packet length to total lengh. */
-/*  */
-/* true: At the second time, we should send the first packet (default:beacon) */
-/* 	to Hw again and set the lengh in descriptor to the real beacon lengh. */
-/*  2009.10.15 by tynli. */
+/*
+ * Description: Fill the reserved packets that FW will use to RSVD page.
+ *
+ * Now we just send 2 types packet to rsvd page. (1)Beacon, (2)ProbeRsp.
+ *
+ * Input: bDLFinished
+ *
+ * false: At the first time we will send all the packets as a large packet to
+ * Hw, so we need to set the packet length to total length.
+ *
+ * true: At the second time, we should send the first packet (default:beacon)
+ * to Hw again and set the length in descriptor to the real beacon length.
+ */
+
+/* 2009.10.15 by tynli. */
 static void rtl8723b_set_AP_FwRsvdPagePkt(
 	struct adapter *padapter, bool bDLFinished
 )
-- 
2.20.1


