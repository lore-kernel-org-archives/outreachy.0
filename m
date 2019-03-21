X-GM-THRID: 6670738983645872128
X-Received: by 2002:a9d:6c02:: with SMTP id f2mr536971otq.73.1553152451992;
        Thu, 21 Mar 2019 00:14:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:5c05:: with SMTP id o5ls145501otk.6.gmail; Thu, 21 Mar
 2019 00:14:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyySZE1WOnWWdZNPW7qoFYPU0/3wKL/TA6fCLms4DTddx+diiciaLcngA04RdqNYQR5MdAu
X-Received: by 2002:a9d:560d:: with SMTP id e13mr556688oti.45.1553152451448;
        Thu, 21 Mar 2019 00:14:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553152451; cv=none;
        d=google.com; s=arc-20160816;
        b=NT04u6PhWMGRLjoW3WxSOJD8TO3i7wv+E5IOKFWouzzoVVr2vpJhTn/e/ldMatUULd
         /dgK2V7QNm2XK86hCLLJsLGtdYkuDW18OPRQNsjzQZtKh3DEg6uiHN6tTdFydy5NqOKS
         r/jg1m7V9qldWIpe/woQva/4+yYjRXnWOrSxPKhSBMpvsSxlq+TXCYnTtM+JUbucECXy
         ulJdlh/7wD04YJtj9gAmnmO6NvsuxbStnScdVruHE/aSZPiDG2DfJ+cssh6cHl0v1QZa
         Ua5L8cdCAs4I2rqJLxRbNcT8IzvcAu5XlhV9ZZae7i0fz4hw8yiwE2DbuQhB6tztm+H+
         T5IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/Ihpl4G6sWwhtpsTrQBMz5LlHMlb8jpw3PHfCh9swmo=;
        b=zLBGJ41myMRftLVZ70QzXX3ipRfrdWRquSkUCnsphREGJ9Q3vM5SgjpuuCOW1LsL7S
         ceIkUtbpHYMg0EGmjvBUosOmhUTyl1ut5m7d19D0t7k6DTiuyf4CS39ovwmop3wMdiGi
         j5kYcQYWgTzCwCDAY4WykS/9iCeI8AlZShdC5HzV5qYqI5VXM0hEW1cYsCJD7JpUVC15
         RIqVpPjrli8ZIwHabiiEcqkSkXt4T6yey8IcOC9WtnWV8/NBrbOx9mqiE2iQOCUvmQJ5
         fMqP8h10S8+UeWRNHUOkrEzRP3mh90W4dEZqurxW3d2GkD4wwGtaxnQM++d8CHugqWl5
         elCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LQARNsuX;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id u185si224257oib.2.2019.03.21.00.14.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 00:14:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LQARNsuX;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id h8so3606739pgp.6
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 00:14:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/Ihpl4G6sWwhtpsTrQBMz5LlHMlb8jpw3PHfCh9swmo=;
        b=LQARNsuXntTJA38C4lgno9woUM6Q26GP8GcnOr79dfjxAc9NMm0QI0Lsf0dDpB5Dw0
         4r5/a15Sj7/Mo7loYOiiEMqAdJ/DukEQpx9i0iVK8DiJlB75cC3m6qKcakKzqtZgxDpH
         g16NAjOxQSgkdu2b9bDN4NiJ9df5oW6Rz8wQVLt6VhSAsukjCaY1hxISSP6ivWp4PvAu
         Oy1WDNGsj8q+nGTQlK9ztCJnEqNmJJ0lByXD1wHGczLT9S1eudEhcy1M1VPK5AXmfz3Q
         BkLUT51blFLwARczOGBq6Nq11Txg7S0m678ob1tIYj9TlhZppjAJlYS9nq33CseTXf9x
         Ih6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/Ihpl4G6sWwhtpsTrQBMz5LlHMlb8jpw3PHfCh9swmo=;
        b=S/v6kwpihCYm1QXqhzceSzQ+GVDpdaCt/2PAoSj7YaZrGl+uOoWIWKMDckCBywt07F
         yfEIzuW7nvKbpdAXceq07VJlFKp4XfxM2+gY86NKCPJ0P9lVBQx6msWtgFe7DLFNW3Uc
         Rz6sEGZZFbL7fwWWHYHSiL8J2R9tccNoI+QvxFGMeXKt5bNw6VCqjUYoaWODA6L72/Rd
         7I6d2RZVhX/QQX9PHAMriizIK+YXFUZjvuNhe6EL/cVwfElU3CNRPvoWkIzTR6xbsKbR
         WOTe3wIiXuMbrEJXjKpsJ1uWY96gHZlbw0+a2EMj5jlKSl53Zr1s/iHfeS5kMmr8k14Z
         Z9zg==
X-Gm-Message-State: APjAAAVwi5L0W+jpcV/Ws9Gac3197or5ppvqF6kNNUYyWt0F/9ArFSCX
	oPrZgyt+RvFwYudMZdC//TuG1gVR
X-Received: by 2002:a65:518b:: with SMTP id h11mr1994505pgq.41.1553152450407;
        Thu, 21 Mar 2019 00:14:10 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.215.204])
        by smtp.gmail.com with ESMTPSA id l64sm5478280pfj.179.2019.03.21.00.14.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 00:14:09 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] v2 [Outreachy kernel] staging: vt6655: spaces around operators
Date: Thu, 21 Mar 2019 12:43:54 +0530
Message-Id: <1553152434-10057-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Add spaces around operators

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/vt6655/device_main.c |  2 +-
 drivers/staging/vt6655/rf.c          | 26 ++++++++++++--------------
 2 files changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/vt6655/device_main.c b/drivers/staging/vt6655/device_main.c
index b370985..866d794 100644
--- a/drivers/staging/vt6655/device_main.c
+++ b/drivers/staging/vt6655/device_main.c
@@ -592,7 +592,7 @@ static int device_init_rd1_ring(struct vnt_private *priv)
 			goto err_free_rd;
 		}
 
-		desc->next = &priv->aRD1Ring[(i+1) % priv->opts.rx_descs1];
+		desc->next = &priv->aRD1Ring[(i + 1) % priv->opts.rx_descs1];
 		desc->next_desc = cpu_to_le32(curr + sizeof(struct vnt_rx_desc));
 	}
 
diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index fd09b97..444751a 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -723,11 +723,17 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
 				MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230InitTableAMode[ii]);
 		}
 
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable0[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable0[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable1[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable1[uChannel - 1]);
 		ii++;
-		MACvSetMISCFifo(priv, (unsigned short)(MISCFIFO_SYNDATA_IDX + ii), dwAL7230ChannelTable2[uChannel-1]);
+		MACvSetMISCFifo(priv,
+				(unsigned short)(MISCFIFO_SYNDATA_IDX + ii),
+				dwAL7230ChannelTable2[uChannel - 1]);
 		break;
 
 	case RF_NOTHING:
@@ -755,11 +761,7 @@ bool RFvWriteWakeProgSyn(struct vnt_private *priv, unsigned char byRFType,
  * Return Value: true if succeeded; false if failed.
  *
  */
-bool RFbSetPower(
-	struct vnt_private *priv,
-	unsigned int rate,
-	u16 uCH
-)
+bool RFbSetPower(struct vnt_private *priv, unsigned int rate, u16 uCH)
 {
 	bool ret = true;
 	unsigned char byPwr = 0;
@@ -893,12 +895,8 @@ bool RFbRawSetPower(
  * Return Value: none
  *
  */
-void
-RFvRSSITodBm(
-	struct vnt_private *priv,
-	unsigned char byCurrRSSI,
-	long *pldBm
-	)
+void RFvRSSITodBm(struct vnt_private *priv, unsigned char byCurrRSSI,
+		  long *pldBm)
 {
 	unsigned char byIdx = (((byCurrRSSI & 0xC0) >> 6) & 0x03);
 	long b = (byCurrRSSI & 0x3F);
-- 
2.7.4


