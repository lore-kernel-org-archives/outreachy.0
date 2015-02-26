X-GM-THRID: 3635562938368
X-Received: by 10.180.182.44 with SMTP id eb12mr3549170wic.4.1424943421765;
        Thu, 26 Feb 2015 01:37:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.88.98 with SMTP id bf2ls76192wib.30.gmail; Thu, 26 Feb
 2015 01:37:01 -0800 (PST)
X-Received: by 10.180.182.44 with SMTP id eb12mr3549128wic.4.1424943421383;
        Thu, 26 Feb 2015 01:37:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id cl5si77201wib.3.2015.02.26.01.37.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:37:01 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id h11so39441065wiw.3
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:37:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=smhWdtz/00huab5a7DaEVeJ3WezDacbBmyatn4fbilo=;
        b=A7K1gaSuzpfmpT4toSEEj4syIB86kP4iGavTSai3s8RrEi8z9ZnBs+/VpuJhc3u28+
         z/lsXN+FNi9CtD5hHVrzauenHMBmt8NyuF2dGFd5lAx5dJF/h5DSvUX3tR/22JmzMcgE
         AfoVB7Q3gqQUAuFuE6y0MT+GHbdDk9WKxRUjvmy3Xr5b/ISPYCwgQo2Huez1FEWJli2Y
         58ZVq6m2aPhq8o5WWctIuBuGcoCb4CI4AlsZd/Ik5kThoB07iX+1x/CCY1RlQOrQcYNZ
         ufvBxGoQFan2nJQA0uc6zz3AacS2P+uXZMJKXKbOJuf+4nesHEAdjCcFInIOrylszN/V
         fJ0g==
X-Received: by 10.194.185.9 with SMTP id ey9mr14769270wjc.135.1424943421306;
        Thu, 26 Feb 2015 01:37:01 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id hd5sm1922319wib.21.2015.02.26.01.36.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:37:00 -0800 (PST)
Date: Thu, 26 Feb 2015 11:36:56 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 08/24] staging: rtl8712: rewrite the right hand side of an
 assignment
Message-ID: <8e05f69e5ea5ba699d4301e955faf125baf4fd1b.1424942339.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index cd8b444..e4fc9e0 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -161,7 +161,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
 	u16 drvinfo_sz = 0;
 
 	drvinfo_sz = (le32_to_cpu(prxstat->rxdw0)&0x000f0000)>>16;
-	drvinfo_sz = drvinfo_sz<<3;
+	drvinfo_sz <<= 3;
 	/*TODO:
 	 * Offset 0 */
 	pattrib->bdecrypted = ((le32_to_cpu(prxstat->rxdw0) & BIT(27)) >> 27)
@@ -436,7 +436,7 @@ void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
 	voffset = *(uint *)poffset;
 	prxstat = (struct recv_stat *)prxcmdbuf;
 	drvinfo_sz = ((le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16);
-	drvinfo_sz = drvinfo_sz << 3;
+	drvinfo_sz <<= 3;
 	poffset += RXDESC_SIZE + drvinfo_sz;
 	do {
 		voffset  = *(uint *)poffset;
@@ -749,7 +749,7 @@ static void query_rx_phy_status(struct _adapter *padapter,
 		 */
 		if (!cck_highpwr) {
 			report = pcck_buf->cck_agc_rpt & 0xc0;
-			report = report >> 6;
+			report >>= 6;
 			switch (report) {
 			/* Modify the RF RNA gain value to -40, -20,
 			 * -2, 14 by Jenyu's suggestion
@@ -775,7 +775,7 @@ static void query_rx_phy_status(struct _adapter *padapter,
 		} else {
 			report = ((u8)(le32_to_cpu(pphy_stat->phydw1) >> 8)) &
 				 0x60;
-			report = report >> 5;
+			report >>= 5;
 			switch (report) {
 			case 0x3:
 				rx_pwr_all = -40 - ((pcck_buf->cck_agc_rpt &
@@ -1039,7 +1039,7 @@ static int recvbuf2recvframe(struct _adapter *padapter, struct sk_buff *pskb)
 		frag = (le32_to_cpu(prxstat->rxdw2) >> 12) & 0xf;
 		/* uint 2^3 = 8 bytes */
 		drvinfo_sz = (le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16;
-		drvinfo_sz = drvinfo_sz<<3;
+		drvinfo_sz <<= 3;
 		if (pkt_len <= 0)
 			goto  _exit_recvbuf2recvframe;
 		/* Qos data, wireless lan header length is 26 */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

