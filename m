X-GM-THRID: 6536210357179908096
X-Received: by 10.107.26.211 with SMTP id a202mr7182832ioa.36.1521830096156;
        Fri, 23 Mar 2018 11:34:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.223 with SMTP id k92ls268667ioo.8.gmail; Fri, 23 Mar
 2018 11:34:55 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvsDrsp4toxKKyY4mO8NT+zUk8x6BJunEDFPvKBvHGYr4UXg3Uh/568LUoT4F/x9kr8s/yl
X-Received: by 10.107.11.227 with SMTP id 96mr13618292iol.129.1521830095552;
        Fri, 23 Mar 2018 11:34:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521830095; cv=none;
        d=google.com; s=arc-20160816;
        b=ECDl9IAQHNJ3++EHBCDSMj5tHYimbe2UhgLmwfdebwjDUEVoQefNkWQmaD6NxKWYXt
         0TfWLYtGH0MU2cvPtP0iLAsSaiMc2AKi6zIg4AtAqmyxfpjU+6TuwimP8+gxE3iFZxue
         ciLRx7FCr3ccib2C7Q4zey3XMRW9wJfc3OrIyH+HgSwnQ5c0J0zDxRz6nyCbBkLODsP1
         nMce1E6geROIGi0IkslxKdxcpC6A96M/u7n6TKczUQnhQvUsHybHsdcC2Kh1F0Khv9Gi
         aAGqX5HnEFF4zvDv4haMnLYzDo/KPLLhmQGWo2U41IPHVinoLFvJXPF3YkNdlXgTQfAL
         N+HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=EDCtoP2TWhi+GUUP+N6F2etZa4rcrs4js+ji5mYQ/yk=;
        b=mSINdxKPDXFFVk1hnVlkB/jDZWZDsdyRYru6bCYZqa+g3DQ65+i+qYu6+Lnf4MmDe/
         AQygDFlvMTnCWr/GZGDoMeY81fZ2pj3E1qyfg37IWGfYCrbG7QnQwAffxymkyADl0vSo
         7eu+pJ4Iw6W3qhe7VsksBxQqPuu2kMWKPXAuQWEvcs1NWANN0KQn6qzjJ9caKtQi3yhc
         Hanqbn+yhpwG6/mU5jQ7bCmG8THuyInjMCOc3ETn8bYMPOjb/qHbEK+61/+I22RzlwBt
         w9K7UImoWwT1UvthIO/8T/ApCe2zIxvosOK40/8KHQXB2qZ2J7bj+lN8ttUTMp95Cko1
         31Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XlCmGeM2;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x242.google.com (mail-pl0-x242.google.com. [2607:f8b0:400e:c01::242])
        by gmr-mx.google.com with ESMTPS id i201-v6si374847ite.0.2018.03.23.11.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 11:34:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) client-ip=2607:f8b0:400e:c01::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=XlCmGeM2;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::242 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x242.google.com with SMTP id w12-v6so7941207plp.4
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Mar 2018 11:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=EDCtoP2TWhi+GUUP+N6F2etZa4rcrs4js+ji5mYQ/yk=;
        b=XlCmGeM2TUT8kkVP6NJlG/ttqSh7Ss+7na2Mm1qQjsxmQEHaQVtDod1uuFoh9XoYr2
         dpbUhQ3uT+XFt6CHWrQcvSkdD/BH9G4ksgQrjwARuIzposzzB0Y32iJ4es23UDjrxZ+I
         YFy8lmMwa4V5D6eNp4E0+bTpdeaD/dksMg8pI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=EDCtoP2TWhi+GUUP+N6F2etZa4rcrs4js+ji5mYQ/yk=;
        b=IbucKkeeKSYgpZBr+1E5Zq3FoRjkBS2xNo3Ps+/7fYeOVheRjN53L+YBjZhxGgs+RW
         z8/qTnr876YIjKRGNkhLlX5ks9MwlrCrK2teQQuasBS0h/X6QGPU9MVcco28HP2kxctC
         x5++xHMI4XPP4bGRVZl9Vc8Pe9kd6AxgK2mBh0fBd85qEmYUtUe36w1NIUyFUBVvYBYD
         qQGU4q/pv+GrBymC6XCe5jrXm1haaz7VlRIlm32SMTQ+8qnpuPcKfZHR6zNO8qPa1qJp
         NUFAehB4e6CCtwPatplO+iEpX02MS7/lIx/Vtn6qiVLSoGtReLxZ8VhyYDplYuIhup4f
         iNog==
X-Gm-Message-State: AElRT7FVpxT5jiUa0eBBfHGQtIYjLmD+3SqBJHCFF5mmPvSchUKp5qZ2
	5KPy11VcKgkJDYSe9fxUtel+HMKf
X-Received: by 2002:a17:902:820a:: with SMTP id x10-v6mr19970394pln.105.1521830094955;
        Fri, 23 Mar 2018 11:34:54 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id e14sm17799445pfn.180.2018.03.23.11.34.52
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Mar 2018 11:34:54 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 5/5] staging: vt6655: Remove else after return
Date: Fri, 23 Mar 2018 18:34:00 +0000
Message-Id: <1521830040-7138-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Remove else after return. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - No changes.

 drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-------------------
 1 file changed, 18 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9c4a532..89adee4 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -568,28 +568,27 @@ s_uFillDataHead(
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
+		struct vnt_tx_datahead_ab *buf = pTxDataHead;
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


