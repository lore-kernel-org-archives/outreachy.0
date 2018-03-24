X-GM-THRID: 6536479698699943936
X-Received: by 10.200.35.12 with SMTP id a12mr11425006qta.41.1521892782718;
        Sat, 24 Mar 2018 04:59:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.200.48.24 with SMTP id f24ls2000811qte.9.gmail; Sat, 24 Mar
 2018 04:59:42 -0700 (PDT)
X-Google-Smtp-Source: AG47ELsLyvb0LkSEFWky2+kIMDiDuawsYt/KKaEkgeyA0k87KNbPPiDUUu7wBWyGE4gxZ7cf7JqL
X-Received: by 10.200.38.111 with SMTP id v44mr10182424qtv.17.1521892782127;
        Sat, 24 Mar 2018 04:59:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521892782; cv=none;
        d=google.com; s=arc-20160816;
        b=FjeqAMPY2zUcL0a0kN/Gy4LzeqXCXzDCZa/AsQEoBtnIDYF0euab8t+PG8ppoPLZHf
         98UxXUs7/TnWaoDLAq1qutytNVYyTCZ/MOTo3G4BljNEHwzPslCpQOvqC8ail8KZta7V
         CSGrawim3/VMeClmWlkkovkLCoihKn8EQnWIuZV2bLb1Y0Y7SJsTd1YL6Y9iYyhsU5Kt
         WvFO0P1AerMhQLijk3Ft8H2cPI4ddClupLjkM5GDaGtVqHcmSupMem6qe3P+mQwxsT71
         Esa0zpvwEZ0XFGVKreyEJJ18XymI+UbEaVvtUSUGijFSmiszomgIhKDrFoFPcACZFk7U
         vhWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=5TjLz+8vujCTkcsVUV1gd/GLQvvkeDRJd+f8D+sM2FE=;
        b=GF8+Ay199RYXx1CZYcP0QsPVmuIr/9Cr6ydDAPRYGVbqoG2k0AAGzmrkd4MXz6CMOF
         tsTv4OISe9ofg5cohvBcKqfJUioI0dcD9P6LFMv73fQ8GmM7o4QCCA0uzMnCW23pJVPo
         Yv30TI6c4WIYHuXfpi0fNNF1uHGA0JixI9rCLHbI7MOD5e1lZTftS3DpRxSSHCGbL0D7
         Aaapjas5X/J1xFjdprdwknO4epk6dVKZjcZ//hZTzE+JlVTnzX3fZYp4MGT0Ydp5+5Q4
         46kDbyKZMg5kDOgWwT9uMoDwWmbWDzZmta+wra4RLNqm5kgTIkeXxR+iWp3hNeOzNlTE
         fvfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=NcPCVQTB;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id b26si878672qtb.2.2018.03.24.04.59.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Mar 2018 04:59:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=NcPCVQTB;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x244.google.com with SMTP id b7-v6so9035901plr.8
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Mar 2018 04:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5TjLz+8vujCTkcsVUV1gd/GLQvvkeDRJd+f8D+sM2FE=;
        b=NcPCVQTBPgrwpcpRRx4OyqLW2ayDxX89NUPozh2GRRiaqKXdiOi8Z5nS8VZKkWDtDk
         gxaWgTvh1Hpv5rnxs+hnUqpw497LeBgJSyNADfhylfP6E5w68nFsfyL9t8CmGwP9Uhw1
         2ORwoP6QX8o7ptunIjRoWW82Il59Ztrt0hQQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=5TjLz+8vujCTkcsVUV1gd/GLQvvkeDRJd+f8D+sM2FE=;
        b=Zuy9G2JV0JOEIM3JCu5LgfXNQhAYm2EJtwkMOJUmuMUhbhP31L6kTJoN3KHUawUS0l
         TbsTde4RyoERzWcgQgy/3SAM7hEkdOiyNmTcA9SQhqACSKeMATiOKC40BwUq5qqKu5ho
         4yOTMxKJBCBS/e3W6LbWgm8VawLrTvjnioxCbdZWP0N67sbwRFPeGzZWhidJAFfI9QIy
         6ILkPyiZ+6YXe2pkXLvP0Wpx+j4sAJp3IwOQMhBngG3hYM3tNGhOrf625r4fNYb+ILXv
         YyPRQnyUPmYDsF0dbdRlbtRbL2msETb0vflD85dRnlcSlCtcZdLRrbiRXRPf9/x6E9ne
         NXqQ==
X-Gm-Message-State: AElRT7HwBA4CJ0Xn26d2+TmN7LkeBBzL3lumlHQzk/v1gU0rNeyu4mmL
	85nIsnZxBaN+GQ1977YZbna99w==
X-Received: by 2002:a17:902:b10c:: with SMTP id q12-v6mr33954410plr.197.1521892781254;
        Sat, 24 Mar 2018 04:59:41 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id x137sm25460453pfd.162.2018.03.24.04.59.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Mar 2018 04:59:40 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v3 5/5] staging: vt6655: Remove else after return statement
Date: Sat, 24 Mar 2018 11:59:18 +0000
Message-Id: <1521892758-27981-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521892758-27981-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Remove else after return statement. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v3:
 - None.

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


