X-GM-THRID: 6252766612799094784
X-Received: by 10.182.79.134 with SMTP id j6mr9642616obx.4.1455835675971;
        Thu, 18 Feb 2016 14:47:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.131.166 with SMTP id on6ls48801igb.6.canary; Thu, 18 Feb
 2016 14:47:55 -0800 (PST)
X-Received: by 10.98.44.87 with SMTP id s84mr9538460pfs.3.1455835675601;
        Thu, 18 Feb 2016 14:47:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id 12si1283675pfb.1.2016.02.18.14.47.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 14:47:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ho8so39503510pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 14:47:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=uyHSKCrkwFVNzOXFLRVIOyyxYn4XzbtjBSGYNgavCXw=;
        b=0gfduiDaK2HG10rdyxljZNfDpxzpctC1Fa7f3/jHu5FWq4JkbgblFMWj06D1ywN3S3
         pqryaX4oqKLu1jjHWbLTjLWHpJPgrU5657VjOgiuuAUQRxqnOwjzWmd0DL7MJzUUjY4H
         AdLapgplwi0i2rqJCyjiV2AehHWgjLX83LPpOlqfLIWPMTIMXW4NqKLygPaEb9yUtKia
         ls0ZwvHu+/rJtKT1yp5Vl4apILuHeiAOQjA5XIwEmZxMDEZmqrUCWy5M7jqdwkYJHMXN
         d/DibcS/cZ33Qe6P9p89MKCzWXYTzddNO1ljsrTGWhgwGlBrSV47+b+9h+bjAoyuLrcv
         ITcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=uyHSKCrkwFVNzOXFLRVIOyyxYn4XzbtjBSGYNgavCXw=;
        b=FaATCuHAumAT3GOVHEADUwQeJUOLxqlK4jA+15garvFNIhyM4iZ5cJq7wupZ1aNjzI
         f5FpeuGwtYqYPeeH1A0rMEpZVnMsnK7Y3A4r0tuFWibpGWKZkPgIh6teg1Rwc/YOjPAz
         Ny9MKCU9bC7mjBvF9qsTVFLJo5aWbpetth7U23fjkTPYhLTJuN7FkfD866Cl55blURAC
         bvuJam+mwxFtqi3Dl3Td0MBQc8ccWTUdVh0DW1oQ/dRuKOKCCKakx8IlGMwYj5y1v1CB
         wOEVFumx/PjsaiR1cAWn0Uxf+ffa/MnLurqW929gjOwUFaVirk5C9mIlY1k+14yKqsc2
         np3w==
X-Gm-Message-State: AG10YOQNEmgC4cYbWudh2Avz8vcgoZmyUhwuM0k8znjrY7yH0T10GysHW7uj0Uhc3dojtw==
X-Received: by 10.66.147.74 with SMTP id ti10mr13972346pab.128.1455835675509;
        Thu, 18 Feb 2016 14:47:55 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id dz8sm12683334pab.19.2016.02.18.14.47.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 18 Feb 2016 14:47:55 -0800 (PST)
Date: Fri, 19 Feb 2016 04:18:24 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: Remove unnecessary braces
Message-ID: <20160218224824.GA10625@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes braces for single statement blocks. The warning
was detected using checkpatch.pl.
Coccinelle was used to make the change.

@@
expression e,e1;
@@

- if (e) {
+ if (e)
  e1;
- }

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index c81639c..40b7a30 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -116,9 +116,8 @@ void _rtw_free_recv_priv(struct recv_priv *precvpriv)

 	rtw_free_uc_swdec_pending_queue(padapter);

-	if (precvpriv->pallocated_frame_buf) {
+	if (precvpriv->pallocated_frame_buf)
 		vfree(precvpriv->pallocated_frame_buf);
-	}

 	rtw_hal_free_recv_priv(padapter);

@@ -910,9 +909,8 @@ static int sta2ap_data_frame(struct adapter *adapter,

 		process_pwrbit_data(adapter, precv_frame);

-		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE) {
+		if ((GetFrameSubType(ptr) & WIFI_QOS_DATA_TYPE) == WIFI_QOS_DATA_TYPE)
 			process_wmmps_data(adapter, precv_frame);
-		}

 		if (GetFrameSubType(ptr) & BIT(6)) {
 			/* No data, will not indicate to upper layer, temporily count it here */
@@ -1527,10 +1525,9 @@ struct recv_frame *recvframe_chk_defrag(struct adapter *padapter,
 		if (pdefrag_q != NULL) {
 			if (fragnum == 0) {
 				/* the first fragment */
-				if (!list_empty(&pdefrag_q->queue)) {
+				if (!list_empty(&pdefrag_q->queue))
 					/* free current defrag_q */
 					rtw_free_recvframe_queue(pdefrag_q, pfree_recv_queue);
-				}
 			}

 			/* Then enqueue the 0~(n-1) fragment into the defrag_q */
@@ -1646,9 +1643,8 @@ static int amsdu_to_msdu(struct adapter *padapter, struct recv_frame *prframe)
 		a_len -= nSubframe_Length;
 		if (a_len != 0) {
 			padding_len = 4 - ((nSubframe_Length + ETH_HLEN) & (4-1));
-			if (padding_len == 4) {
+			if (padding_len == 4)
 				padding_len = 0;
-			}

 			if (a_len < padding_len) {
 				goto exit;
--
2.1.4


