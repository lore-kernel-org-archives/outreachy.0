X-GM-THRID: 6535126466824241152
X-Received: by 2002:a9d:3df6:: with SMTP id l109-v6mr7871935otc.58.1521577761805;
        Tue, 20 Mar 2018 13:29:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3137:: with SMTP id e52-v6ls1271027otc.7.gmail; Tue, 20
 Mar 2018 13:29:20 -0700 (PDT)
X-Google-Smtp-Source: AG47ELvq/Ylta5Il3tsixL48bP2XERP1GN5XIcGNdbrrdwCec4Xqa/N7kBDPwPLOfe/gTHAJjRW2
X-Received: by 2002:a9d:1814:: with SMTP id b20-v6mr8295523ote.101.1521577760648;
        Tue, 20 Mar 2018 13:29:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521577760; cv=none;
        d=google.com; s=arc-20160816;
        b=xM424KouPCSADxYK61exHozZXwVofEpIGTSUUUwCZMrzSchLR6oajQqrksrCeE0jdp
         szNMs0ode5tW3SG6ufv5Yq5EbmTMlmywtq55DJyxc1nruWkFOuWP89K+1Qw88AQuszik
         3eIRLMhknZDkmZukOEK4UAM5xtMdWKr8/BcW+sE1SR8p2AU2slsXb4bFNPE7H0PlRqRp
         TjXZp5TYRdE1Cy4uKbtsyBFaP6L+qgds4Ejt+3/yqpB4DIQGcuJQAOtgKpTUn1XkdqzD
         BVCXaA2m7eCf83+SLox2uyRXTWhz1HuPjQxFAXjLXMYOE5GONgPMQZaXCTVd85W/wvLB
         0O8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=cDfzip5NCU5pc88l0zfJzXXltUOgOvfJNo2y1LwC600=;
        b=Be7vrVqD7PrCwI8jMWdP/B1vk4L88xGuQGg7ek7XWS09tLdNGRNdxaohTFz0BNm7Ha
         Hz+VcgBD+dhByq7R9TAIO7kdMl0rjHifdqWmuiZiuViv4F8gSJm+tf/fluC5t18p3ReM
         MrjmDU7Ai6rhqoulRRpEdbSYWF1/cUs4OqQ+ROOvfQqqyN3/XQh78073RayvA+AzYi9t
         uK0lkWO9oOo4HVl8AqtfnC2L9Y11NBI6rr4979KoIL/x9U57SXICAc6Twzb3+XKCZJ+A
         Pt3z7z3z5ynL4AxtMGi192uXWdWFNqH9cENFZ7hM8T2PviS+4dU1T/ahAc3MulRB4zxY
         +D+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=IISFnpRZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x22f.google.com (mail-pl0-x22f.google.com. [2607:f8b0:400e:c01::22f])
        by gmr-mx.google.com with ESMTPS id b13-v6si198197otf.2.2018.03.20.13.29.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Mar 2018 13:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22f as permitted sender) client-ip=2607:f8b0:400e:c01::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=IISFnpRZ;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::22f as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x22f.google.com with SMTP id 61-v6so1727977plf.3
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Mar 2018 13:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=cDfzip5NCU5pc88l0zfJzXXltUOgOvfJNo2y1LwC600=;
        b=IISFnpRZ4AzFsIdMDnpmAPbl6VWWGI3UCIoFsp5DaNXWy9m6oZLGy9V+kMtgHA9kNr
         mQqOSeJI+Oc/7kRbRBgunPzVYuIkY/yMHRCJmpcjZwG5x0Dxs745scDikX9kh18s5sIR
         Dn0xzVSKHZT5l/u4ls0dCNT6o0b6KbA8NDlI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=cDfzip5NCU5pc88l0zfJzXXltUOgOvfJNo2y1LwC600=;
        b=NRtOxH5zTPm+Rmswehe8uNL7w37mJzGat/yUP1nyf4UgaMctCb9hdKC1jpA6iIqcud
         mfSWyUrQLMNf3ngkrFeaKAlvNYXdCWJ9/vrVhL0Lg+i5R59BqyKO9ipgo6vYsupA83ql
         5P/NX6zhVBRy9cziWMEPKYZkmv3DnXUbEtyaBFAmhEIfR21Oz1DW9aL1wnhNyRTP5/Lv
         RnBR3cIXh1V7Lgyokx83UzsWekePYzs4NfofGCchZzhfQSqvZyEuxF2vTdI+GbsDioG5
         zoGWZ4UkgTtNvYmbaHUtCivNXOJRflXrIICVIQPFDCScs8LBnQ4N0bbzuceLcomhpJFg
         0ZTQ==
X-Gm-Message-State: AElRT7GNti6dZyqzljXAbKiFgkRMlBZD9A/DVBcTWK9jv333TgtPFPKm
	6ut5az2OYhrVYqRQqw5meGln7w==
X-Received: by 2002:a17:902:820a:: with SMTP id x10-v6mr7383093pln.105.1521577760292;
        Tue, 20 Mar 2018 13:29:20 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id d77sm5480831pfe.20.2018.03.20.13.29.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 20 Mar 2018 13:29:19 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH 5/5] staging: vt6655: Remove else after return
Date: Tue, 20 Mar 2018 20:27:59 +0000
Message-Id: <1521577679-21104-5-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521577679-21104-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Remove else after return. Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
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


