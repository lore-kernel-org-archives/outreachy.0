X-GM-THRID: 6250414434247770112
X-Received: by 10.50.13.101 with SMTP id g5mr3760903igc.6.1455288015907;
        Fri, 12 Feb 2016 06:40:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.96.230 with SMTP id k93ls1706410qge.78.gmail; Fri, 12 Feb
 2016 06:40:15 -0800 (PST)
X-Received: by 10.129.80.3 with SMTP id e3mr1633088ywb.23.1455288015437;
        Fri, 12 Feb 2016 06:40:15 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id tn7si1542592pac.1.2016.02.12.06.40.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:40:15 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so3900797pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:40:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AltOaV1PadJXplsV6mMn4xIf6X1xJdr8ncQK28PEeJ8=;
        b=hiRlmNexcLrDqlN+nkTN7BkZeuteusE3E98FNF46q139mAOsrKuUnmty8Pj9vHmPn2
         HrILdFnoAjO6CR/DE7VDBu5JwMIwwOQnxlOsvcAgkwyCUgMAf6EQ5R5F7uxyP3dk+bPy
         SRTFH+altzHVcg3tgS4LFqGnn0bsY1Qj5avIzcTJPqgXbK82R6uNdUNSKxJqWVSuUU+7
         RJNyVb2pyByMFAXCkjNS02x7iAiUvi43VXQfyECsDNIRwgMp+sTu+2ND0kN7J/A84CKK
         te8ABpUFqmm1MvCE07cLuJPbY16D+en71KNAHDM99XT63DMCgPMuvRubHihSsxpNwKvL
         EZrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=AltOaV1PadJXplsV6mMn4xIf6X1xJdr8ncQK28PEeJ8=;
        b=myuHkiAvUe7/XLH+lT/67zo9p7Tz47TMwG21Vn5k8NxdPIOlO/wYTIgYQyE4U7X//g
         NqOebdVGWD0wSQnP216j4uuR/VU4H4ZoQ6aZkCOgBY5H/XgyPJLhvEr2/hEDbcX3Q8pe
         pvodqLSlZFdXJMt3UJHlsMBUSJBEh01g+QJ4fNr39HA4iDDR/lq9/szSxNomjLcllvfP
         yG+2YzLPnOKAfxcd2uDA8WjoW01E/d7rvXn2SJt4Xw+4ySq+mDuSL1dknOuyoOfvcPc+
         Oi6aBr0Rh/Sm1ND7EfUNciwxUfvu2AaJO+Wp62KlBalqv/I4DrP8K2/M3Gbx8KKaBbZl
         I6EQ==
X-Gm-Message-State: AG10YOQqc/K4Z4zdlic1boSX0FQQVNn0ah2WjMZWVudoUsxNF/c6a/ZVAUcTUeaA+4edvg==
X-Received: by 10.66.254.168 with SMTP id aj8mr2690796pad.18.1455288015262;
        Fri, 12 Feb 2016 06:40:15 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id z67sm19999398pfa.71.2016.02.12.06.40.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:40:14 -0800 (PST)
Date: Fri, 12 Feb 2016 20:10:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: rtl8192u: ieee80211: rtl819x_BAProc: Replace
 MSECS with msecs_to_jiffies
Message-ID: <20160212144011.GA1274@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific macro MSECS with msecs_to_jiffies().

This was found using the following Coccinelle semantic patch:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
index 3bde744..0f46a28 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_BAProc.c
@@ -19,7 +19,8 @@ static void ActivateBAEntry(struct ieee80211_device *ieee, PBA_RECORD pBA, u16 T
 {
 	pBA->bValid = true;
 	if(Time != 0)
-		mod_timer(&pBA->Timer, jiffies + MSECS(Time));
+		mod_timer(&pBA->Timer,
+			  jiffies + msecs_to_jiffies(Time));
 }
 
 /********************************************************************************************************************
-- 
1.9.1


