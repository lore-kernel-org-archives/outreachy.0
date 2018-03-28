X-GM-THRID: 6536210357179908096
X-Received: by 10.176.86.88 with SMTP id z24mr15394361uaa.16.1522257299064;
        Wed, 28 Mar 2018 10:14:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.160.67 with SMTP id j64ls2685268vke.21.gmail; Wed, 28 Mar
 2018 10:14:57 -0700 (PDT)
X-Google-Smtp-Source: AG47ELtYV6/ix1t7uIVYpT/RxXAe8EVYIDesFKgvZCNiKqWLUo0pnyBWvuMI5vFS6ApZdHzlpReS
X-Received: by 10.31.114.203 with SMTP id n194mr18996796vkc.9.1522257297860;
        Wed, 28 Mar 2018 10:14:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1522257297; cv=none;
        d=google.com; s=arc-20160816;
        b=bHkDFQLKtt/FkLf3ha1bQ3+lO/Y2EdBtrkdcfGi5GvYNep4UQhNdfi4bmym/CJYaGF
         r+PP8NGB2vhXltzGfRap8OnhSRhvlK4kFBczPj0GjuzmqeoxvkLO/U3hspIFEp3GvvKQ
         OgYaOoWoFKk5RHfqz9O+1xCFuGacYtfrJ5q5fOQQn179C5Azl9yqsFopEyOe9ExswBzz
         bh4TraBZ311/QfdW5s8IaHS/S+jHh+4axY7pouwCvZOojXmIfoRBYD9h3ywcnBl3+GQZ
         JA8AOfpbvK0A4zRF4d/7AN002pi6ILZR1ja642gv9ClLoknLxNrqFlTMwBozVECZZXtk
         0/HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=hl5325rVLLcjSR088X3YNBiDVdzlYgf8IaFuqD/eCJ0=;
        b=lAlA4NzMCkEn5jQgCccurqCRQLbrZeLCzbQwYItDT9qswD5dsACxtM1wvtX2uETN8y
         QDDKJLZfWCXyoC5ilbnsJ7NMmBga7UOfXRrEw9m8VTPqUWSXZdEsTgVbcNCfhGE2MLGc
         7amGofEnFxZjGpBa+U1pzWoPI6/xo5BtWPrygm6bmpWZL3I5/exyeUmbZ1pmot7DTRQb
         vB5Mmn0giTqmW9c0a2rABDM/dhYBa5seS1OcdVPo1eBeTTFDbQ63+3gm81HKDq8aCi3l
         MWgQr7sDTRB2TC74OYw/8M3iFELAW0omX9TUow0cDht9Or5FLEKWPV7C4VHkU+VEFne/
         cNNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SQs+WT7O;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::230 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pg0-x230.google.com (mail-pg0-x230.google.com. [2607:f8b0:400e:c05::230])
        by gmr-mx.google.com with ESMTPS id t23si321940uaj.3.2018.03.28.10.14.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Mar 2018 10:14:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::230 as permitted sender) client-ip=2607:f8b0:400e:c05::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=SQs+WT7O;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c05::230 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pg0-x230.google.com with SMTP id i124so1167846pgc.10
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Mar 2018 10:14:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=hl5325rVLLcjSR088X3YNBiDVdzlYgf8IaFuqD/eCJ0=;
        b=SQs+WT7OLiIrjLopTnC9vzlyf1y+B9RucmbFJy5iEPcDCbBzkTg7dr9KL2lCHE13zq
         AP+qN3Z9sCJR8rIoY5Hqhg2M6NFDcNeKAlz+FFt1Nj9/xu0PRLjSkgE4cT5jTiQ40kkc
         dO8w6D0zkr8+y7wFhc4KSkccIrgKUBXen5IlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hl5325rVLLcjSR088X3YNBiDVdzlYgf8IaFuqD/eCJ0=;
        b=bbUy4TfSccEi9gmFZsvzkTa0P7lyEN6z0JfiPokuB8M+SlH2OYsbMClXFsE0RbvbCF
         w6hdkxjzj27FkVqWLiyXZ/Vh+0+3boRTrnk2/VjZ1lbCQsB+oKpj/l4+mi/beYvn+Toy
         oYzE6C8calo4RPRojbVG+1OucB6d9RaGAvZGOg0bukhu5jDjTZYudlNYpqL9t55iUDlX
         uxXUTJYYF5eRDxdqzdrEOtIaPcXVOFzbccmk/+sZGh+ebM5mZ7DmfHujMjgk8pvXcMPd
         7MX7ZJtsLMVlxdUv8GIINUT9KTYXB7AxiwhAvYCWurZTvMiVCIDJApRkXfToh5uEIKYW
         Gctg==
X-Gm-Message-State: AElRT7Eg+MYO7PSQ3hYoOyu7dsHKGmvuXW8UJnmtlNdBxaVcZCuwzqFD
	acuiz5BOqm4rozaTBZWuHLbgMw==
X-Received: by 10.99.102.132 with SMTP id a126mr3057876pgc.385.1522257297233;
        Wed, 28 Mar 2018 10:14:57 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d199sm8891288pfd.95.2018.03.28.10.14.55
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Mar 2018 10:14:56 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v4] staging: vt6655: Remove else after return
Date: Wed, 28 Mar 2018 17:14:43 +0000
Message-Id: <1522257283-2147-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4

Remove else after return. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
 drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9c4a532..ee327c2 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -552,6 +552,7 @@ s_uFillDataHead(
 			return buf->duration_a;
 		} /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
+		struct vnt_tx_datahead_ab *buf = pTxDataHead;
 		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
 			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
@@ -568,28 +569,26 @@ s_uFillDataHead(
 										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
 			return buf->duration;
-		} else {
-			struct vnt_tx_datahead_ab *buf = pTxDataHead;
-			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-					  byPktType, &buf->ab);
-
-			if (is_pspoll) {
-				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
+		}
+		/* Get SignalField, ServiceField & Length */
+		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+				  byPktType, &buf->ab);
 
-				buf->duration = dur;
-			} else {
-				/* Get Duration and TimeStampOff */
-				buf->duration =
-					cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
-									    wCurrentRate, bNeedAck, uFragIdx,
-									    cbLastFragmentSize, uMACfragNum,
-									    byFBOption));
-			}
+		if (is_pspoll) {
+			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
 
-			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
-			return buf->duration;
+			buf->duration = dur;
+		} else {
+			/* Get Duration and TimeStampOff */
+			buf->duration =
+				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_A, cbFrameLength, byPktType,
+								    wCurrentRate, bNeedAck, uFragIdx,
+								    cbLastFragmentSize, uMACfragNum,
+								    byFBOption));
 		}
+
+		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+		return buf->duration;
 	} else {
 		struct vnt_tx_datahead_ab *buf = pTxDataHead;
 		/* Get SignalField, ServiceField & Length */
-- 
2.7.4


