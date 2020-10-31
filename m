X-GM-THRID: 6889706616955863040
X-Received: by 2002:a67:c11d:: with SMTP id d29mr9321023vsj.23.1604134868972;
        Sat, 31 Oct 2020 02:01:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:6102:: with SMTP id v2ls1004290vsb.7.gmail; Sat, 31 Oct
 2020 02:01:06 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyMVqUxq5qa6GroS2Hu2lqswyRn/prvJRIuD7+EmXCpcb5vZwC5eebTJtw0MEeTArrTtkrd
X-Received: by 2002:a05:6102:342:: with SMTP id e2mr10594776vsa.3.1604134866838;
        Sat, 31 Oct 2020 02:01:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604134866; cv=none;
        d=google.com; s=arc-20160816;
        b=pNTzongo5U41vFeyv5r3s5nxukUZs8mdQIPcCM7AnhXQcEEYNFrseGnLZdfEbCvKxY
         JEZcoFVTMwoOp06H2i5u1orFBqZC68iQplxLcQDRsZ57zfj7O33P7LiGFBf/byTxdZDM
         weR3ihtHoGLqbCa0tHChVaMNFxiGPQtGtjKbTAjzICU1834twUDue861Cqc0HUthbjR+
         gNrCTKyPh4edXIc1W29QhvxQJSQQPyBJ4lUEQEOJ1uaTjLqGum7fZdpJBfRal8oyFdKG
         bbsswyBmqO+yyL6f8I56doh57A4ikVan+/xrEBJqKNDr9EdgzoT02UDuPGPfhy4k/ydC
         X//w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=xH+jdb7E1CmlIZReqgDHR4w+cWDKP1gkjDsONMdG9rs=;
        b=o1frwXtzGivD3oUJ0E4MrMgyIQ/g6FiChBMkgYSSYFOUBbl7U0net4g9WObr96dQMU
         /+4d+LVeMe7H0yoBO20q5BWgggG0LQVulHue7do4l8cwzOMSf1+NtWGbcCAFmjazGP/v
         e5P4FHnf2cuJqTC9bH6UGt4pWyEGcBsVqHScQgioNHQGzaZT34jrTkFGwzi13aLWWCnF
         RUuy+NKsylRYDgOeBnff8/sor1AMdbhfsuVrSi5hnmk+baBeCrZPriYlL6t0cwuvw+qL
         D4jKjWIv6gz68TtOMXcCfU8ukgEHIFvkhQAubHBFxh2GBeBJIGNNa3yNVMJDW4okUjQc
         E2aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NNpyAAdY;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id s199si383764vkd.0.2020.10.31.02.01.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2020 02:01:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NNpyAAdY;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id 1so4212133ple.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2020 02:01:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=xH+jdb7E1CmlIZReqgDHR4w+cWDKP1gkjDsONMdG9rs=;
        b=NNpyAAdYj7V8tprzC0TJaH0qee40sdz+Pi2qHedAo2H4cZtRbl+/Ib/Wvhotg3rGFw
         1KG1OVqVnK/HwSxH8fdUFd5Lwxdqvd+fNwzOZ/Q1VQ1h8rWy823nSqArYQGd6smewCBK
         rgp8BK2GPxt1TjJBEioVYOifj11CTY/ZGR71rMvh/X5/YHmejK6fAXlAHARqVJvBXrLQ
         UAZZjL7D6NH+hL/4dt2MUw3mAYeRoLVEV6k4edr0z3BwnS+frX5JVXYPBN4svvDc/1tp
         m8S6UUJabddlZQK+fztM6UDLq1YaHnYuUqwSQdIY9P5VwDo1oVEByWqu+nrUWDp7CIb+
         Mzfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=xH+jdb7E1CmlIZReqgDHR4w+cWDKP1gkjDsONMdG9rs=;
        b=QH6vu7ZIAtLpDaxIXHKX4h935kntvTod/Can5muo4hmdpTL386XusHKkbn1rOw7rjJ
         fYdttt9g2LwH+aL01mKeY0O4PFt3UcjOr4puMdtFoaljb+klmOa7ZWP1vCv8Pbh8MUUD
         K4vPEsREbLrowHw6eeNNovMCnCL9JCkJN2nJ4fIbQU2ghRzJftDq50waK33tbLtX1Z4B
         G/RWv5m3dxk3B9U0VRg3iinDfbp/evQCIevVXVj2h2bnhb4x7TWQ2CMZrqyE4B8OSYkT
         a943l16Te3nOCWDjjrHvGiZvHF/p+TGEnwo5edcdWXh367ORdKmylXXEcVacsN03/jLu
         G4LQ==
X-Gm-Message-State: AOAM532w1RkXKuEgHpE6NOKvfMOpJhxE0TzhMJVYKAPlgWSjTMdDOjGI
	PrZLIYIh1I13wL/N31hfzYkqdzBKzPhxPaqE
X-Received: by 2002:a17:90b:807:: with SMTP id bk7mr7249594pjb.166.1604134865984;
        Sat, 31 Oct 2020 02:01:05 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id e1sm8474885pfd.198.2020.10.31.02.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2020 02:01:05 -0700 (PDT)
Date: Sat, 31 Oct 2020 02:01:03 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: vt6655: Remove useless else
Message-ID: <a2a006887ecd8077789a35eed8dccb3161750c24.1604133727.git.mdejesusfilho@gmail.com>
References: <cover.1604133727.git.mdejesusfilho@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1604133727.git.mdejesusfilho@gmail.com>

The else statement is not useful due to the presence of a return
statement on the if block. Remove the else statement and adjust the
indentation of the code. Reported by checkpatch.

Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 37 ++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 18 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index c1da54314fbd..9db4317f9a42 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -505,6 +505,8 @@ s_uFillDataHead(
 		return buf->duration_a;
 		  /* if (byFBOption == AUTO_FB_NONE) */
 	} else if (byPktType == PK_TYPE_11A) {
+		struct vnt_tx_datahead_ab *buf = pTxDataHead;
+
 		if (byFBOption != AUTO_FB_NONE) {
 			/* Auto Fallback */
 			struct vnt_tx_datahead_a_fb *buf = pTxDataHead;
@@ -521,28 +523,27 @@ s_uFillDataHead(
 										wCurrentRate, bNeedAck, uFragIdx, cbLastFragmentSize, uMACfragNum, byFBOption));
 			buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
 			return buf->duration;
-		} else {
-			struct vnt_tx_datahead_ab *buf = pTxDataHead;
-			/* Get SignalField, ServiceField & Length */
-			vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-					  byPktType, &buf->ab);
+		}
 
-			if (is_pspoll) {
-				__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
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
2.28.0


