X-GM-THRID: 6249367928124211200
X-Received: by 10.182.236.4 with SMTP id uq4mr35491531obc.3.1455049920743;
        Tue, 09 Feb 2016 12:32:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.83.9 with SMTP id i9ls4971872qgd.61.gmail; Tue, 09 Feb
 2016 12:31:59 -0800 (PST)
X-Received: by 10.13.221.75 with SMTP id g72mr3818614ywe.34.1455049919921;
        Tue, 09 Feb 2016 12:31:59 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x243.google.com (mail-qg0-x243.google.com. [2607:f8b0:400d:c04::243])
        by gmr-mx.google.com with ESMTPS id i133si2235845ywe.7.2016.02.09.12.31.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 12:31:59 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) client-ip=2607:f8b0:400d:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::243 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x243.google.com with SMTP id 14so5275212qgg.3
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 12:31:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=TkxUDpV88Dr7CMuLTiGyJ/GsEbI56iYyN6PlRdYPf2g=;
        b=iN8fk9MaGA4niEaP/C0Q0SaXmVJj7UagBIOLAIF20Tt5ZnHiqc37XnaqJKb5SRPHHl
         s+3Qn0UtHNJDaBifpKT5DlzcfauQ3vq8DvcbLL30HK1eF2OtCvNd4+nR94xuXBSNvHDq
         9aQG0+NPQg9tnYEs2C5g5L25rtx9XeOC0sFrwLNKY43nxyV42SlhQv0AnSryDyqtUyvU
         5EbupgtkXD00PLtYoCyJlxuk0cZ1bIiT2vNaEY78PxSPFc3XZhUAuWe4zDwbx4W+nrFS
         IvAC+BYCZKp4oNkjUu/qe1wLKRMGQ4JAYJwBV92Yalrwjnu3lyJ25TW+bBiaTX1GK35l
         qvcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=TkxUDpV88Dr7CMuLTiGyJ/GsEbI56iYyN6PlRdYPf2g=;
        b=ZkawAMVBix2GIcsHiuk3z+PDLq3HKRql7c4iiGzjgKZOMr67fPr0hVaps/iC6EMo4O
         0yCE/N//PuCXGsnsh0pUThkQpo3sK76yDJ+vGsR6JUkbzUr8ySrvSJ5e9C5L84Ibf8xm
         9gHbC/IhGUTAUjeGI9oXlBZlIaqd1ZG4TDPahWORwkc6jCZDwWNrm47fd1wSW3HmNut4
         UJUum+3qwNaJrs/pjMr7KEjEYCA0ds+7kI0vy4S/GeY9geFAX02qO1k7qG0T3ZRQLjmO
         G7dEEfc7eMMPsTs+vkfL/DYaFkzRMJuwfL6edktz+xLotpeYA585qj7JEzJC2Zf3DLLF
         0/aA==
X-Gm-Message-State: AG10YOSHFNNhqEkDK2BM79rii2WJD+zou4CR5hBO4DEniux1+HuzdNAQxmz3OnBbHgSdVg==
X-Received: by 10.140.235.137 with SMTP id g131mr47217903qhc.43.1455049919773;
        Tue, 09 Feb 2016 12:31:59 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id w16sm16447642qka.35.2016.02.09.12.31.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 12:31:59 -0800 (PST)
Date: Tue, 9 Feb 2016 20:31:22 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8192u: Use kmalloc_array instead of kmalloc
Message-ID: <20160210013122.GA12148@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kmalloc_array instead of kmalloc for arrays. Coccinelle patch used:

@@
expression E, F;
constant FLAG;
@@

- kmalloc(E*F, FLAG)
+ kmalloc_array(E, F, FLAG)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Corrected an error in commit message.

 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 28ad63a..fb344d1 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -601,8 +601,8 @@ static void RxReorderIndicatePacket(struct ieee80211_device *ieee,
 	bool			bMatchWinStart = false, bPktInBuf = false;
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): Seq is %d,pTS->RxIndicateSeq is %d, WinSize is %d\n",__func__,SeqNum,pTS->RxIndicateSeq,WinSize);
 
-	prxbIndicateArray = kmalloc(sizeof(struct ieee80211_rxb *) *
-			REORDER_WIN_SIZE, GFP_KERNEL);
+	prxbIndicateArray = kmalloc_array(RECORDER_WIN_SIZE,
+			sizeof(struct ieee80211_rxb *), GFP_KERNEL);
 	if (!prxbIndicateArray)
 		return;
 
-- 
2.5.0


