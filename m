X-GM-THRID: 6806184818941886464
X-Received: by 2002:ac2:4199:: with SMTP id z25mr4506100lfh.90.1584688399389;
        Fri, 20 Mar 2020 00:13:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:95c8:: with SMTP id y8ls1096692ljh.2.gmail; Fri, 20 Mar
 2020 00:13:18 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs+tj//MKsM0qm1U0EEGcgX/7rN/krK012bubMoDcvtooiJcT4LVqbjOfOY4Q+fJqp359W3
X-Received: by 2002:a2e:88d7:: with SMTP id a23mr4527256ljk.225.1584688398154;
        Fri, 20 Mar 2020 00:13:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584688398; cv=none;
        d=google.com; s=arc-20160816;
        b=Wlf7jvhTwwrjFeQ4CdN7iy+l09uDn9uNgrlzLTlJMQnDkHliti1WNZwyYdayRCod9+
         fBvm2Aa9uuhUcmJPXtRl7J9CZJpoirVEcWqIEsB60SxnmLC4I9/SzJw2bU6wdBxRgCoR
         pU1xNnbA/UvlX+vfblrrEniwEP+tAINiQyMywjZzeaDK25A+ivtgflzwycN3x1z3AK88
         zmMRTGuh1wIaAeGI+dH6lcoyOpc57EOrtgKPfidb4W5VkrfFDed6YocWFJ0l/U0+J+Qk
         V8YFpd3aP/NlxZNCNeAEffa/pmI+pslwVUp2gbzvGPShJ5ypA1JvTcNgRxzXUJbNqEFo
         22kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=6ccKWfcWOn5YoREmY9bz5o4AvqbpoKYEreK6U+nXgV8=;
        b=VfmQbw8WRW0fevnLhDwLTRGM7UeLVf1LR740nEgvwMXc6QrVYRch4qStVuBshvIAoD
         ZRwBh52+uov8tQNzi8YYpsNoZqTK6YoDG90FWWudnoOGBDIwLyq2XvYX+7U1Xb2r4vnz
         7lRA+Xe8C0KBn1bPHxH8W/vJnPtcfEDKBdOOhRhrbvDeFHEKInQAVC0N6E7qgGpsL4c/
         6QaWbP6T8RJYuQPu1qBlLZaOeGe2pNyhzjkjMMm7JdxjSLPHdFZHa7GSooXH2cwQ/wXe
         x9zHkegMnvEFU2ZwBPWLgHwiB8t/Bck9vw6NyUq4OrFDq3Y4YF7AMXWhn5uofnIYJvek
         +fwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s17si338142ljm.5.2020.03.20.00.13.17
        for <outreachy-kernel@googlegroups.com>;
        Fri, 20 Mar 2020 00:13:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 6269 invoked from network); 20 Mar 2020 07:13:16 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.249.188.29)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 20 Mar 2020 07:13:16 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] staging: rtl8723bs: hal: Correct multi-line comments as per coding style
Date: Fri, 20 Mar 2020 12:42:59 +0530
Message-Id: <5b5cdb520df6d579a6659fbe45ac545628be50e4.1584687545.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584687545.git.vkor@vkten.in>
References: <cover.1584687545.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct multi-line comments as per coding style to respect
80 characters per line limit.

Amalgamate individual lines into single multiline comment.
Reorganize it for readability.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c | 56 +++++++++++---------
 1 file changed, 32 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
index a69e8ae16565..11ddab1dce3b 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c
@@ -823,8 +823,11 @@ static void ConstructProbeRsp(struct adapter *padapter, u8 *pframe, u32 *pLength
 }
 #endif /*  CONFIG_AP_WOWLAN */
 
-/*  To check if reserved page content is destroyed by beacon beacuse beacon is too large. */
-/*  2010.06.23. Added by tynli. */
+/*
+ * To check if reserved page content is destroyed by beacon beacuse beacon
+ * is too large.
+ */
+/* 2010.06.23. Added by tynli. */
 void CheckFwRsvdPageContent(struct adapter *Adapter)
 {
 }
@@ -1409,16 +1412,20 @@ void rtl8723b_set_ap_wowlan_cmd(struct adapter *padapter, u8 enable)
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
+ * Now we just send 4 types packet to rsvd page.
+ * (1)Beacon, (2)Ps-poll, (3)Null data, (4)ProbeRsp.
+ *
+ * Input:
+ *
+ * bDLFinished - false: At the first time we will send all the packets as
+ * a large packet to Hw, so we need to set the packet length to total lengh.
+ *
+ * true: At the second time, we should send the first packet (default:beacon)
+ * to Hw again and set the lengh in descriptor to the real beacon lengh.
+ */
+/* 2009.10.15 by tynli. */
 static void rtl8723b_set_FwRsvdPagePkt(
 	struct adapter *padapter, bool bDLFinished
 )
@@ -1791,18 +1798,19 @@ static void rtl8723b_set_FwRsvdPagePkt(
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
+ * Now we just send 2 types packet to rsvd page. (1)Beacon, (2)ProbeRsp.
+ *
+ * Input: bDLFinished
+ *
+ * false: At the first time we will send all the packets as a large packet to
+ * Hw, so we need to set the packet length to total lengh.
+ *
+ * true: At the second time, we should send the first packet (default:beacon)
+ * to Hw again and set the lengh in descriptor to the real beacon lengh.
+ */
+/* 2009.10.15 by tynli. */
 static void rtl8723b_set_AP_FwRsvdPagePkt(
 	struct adapter *padapter, bool bDLFinished
 )
-- 
2.20.1


