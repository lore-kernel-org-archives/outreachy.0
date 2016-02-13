X-GM-THRID: 6250414407945289728
X-Received: by 10.50.87.7 with SMTP id t7mr1295433igz.11.1455338031336;
        Fri, 12 Feb 2016 20:33:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.34 with SMTP id rt2ls356107igb.40.canary; Fri, 12 Feb
 2016 20:33:51 -0800 (PST)
X-Received: by 10.98.8.15 with SMTP id c15mr4997351pfd.0.1455338031070;
        Fri, 12 Feb 2016 20:33:51 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id tn7si1879692pac.1.2016.02.12.20.33.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 20:33:51 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id zv9so319737pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 20:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mVJjcfGmLeWqkbaxALwzT7NLkvFkK/zvkNluY4Z2TT4=;
        b=R5uZev5xs2Qt8X4EvrVDDATQWbnWgGHGIp3F7DDUH2Z4cfTG9e2XeQLggvHzUQO6wT
         qYS7TacDXW/9GMlAEkTghzRJlh6SBhyoUdDbfihXRDwmqvuYz0Fk//sqVBQhrIaP1j0k
         cDSrXUGXu1KIeh0BLvA3CR6maejXp224UC36Bj7MKNZzSKAamAO4AhJ5xZvANmiUJPFu
         ApYstVbNsuY4R6dSuJp/Q49GseRMAHGqkGFEGB41KR8DrcKZFakIq0PrVKmQdksjtEU0
         gLhXFTKdmK979Rav5J2WaqUGng0pZ04UeO+vRFNYKeYqhlTtON7JsYJvQyJbNGDuZ3fy
         sqYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=mVJjcfGmLeWqkbaxALwzT7NLkvFkK/zvkNluY4Z2TT4=;
        b=G7TdHyNANoesprkUYbCnwQ3qaUn0NcijQJL5Ooeq1wlo0tLytF4mfj9exquZ7DdkWY
         Awd5yW8cmjxtKSAzEyxwgrkf39dBp3avgdPYt3ZdKVIw6tI24ln2/yoTZ5jBh5cYppAw
         jDh2yXpNUiS6cZycZCg+NYHQ/nl+Yy9iQ5pkMzUk+o9ap4KIcAm+jSd+JfvTgeKFDJM+
         SYobOz+KHIZIJ8DpQ1PTFzY9h4aLqIDz1Ggg/eh44PFgyd/OV+5ZLDaWpPqEehN6u0B2
         aL9TdYD7uIQnuH/8sE6iQXiS9bPi6HujM/yctry0uGMSNhYBQU5r3ec/V7WbZvB5+BvP
         encQ==
X-Gm-Message-State: AG10YOQUdFUnSi0hSJ74mmn7TVuVyeBPZWpQgT+wT3Zwd0Trf7EpEAm86Cr0Cbh5JE1Vow==
X-Received: by 10.66.141.44 with SMTP id rl12mr7433912pab.48.1455338030928;
        Fri, 12 Feb 2016 20:33:50 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id 87sm16396544pfq.93.2016.02.12.20.33.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 20:33:50 -0800 (PST)
Date: Sat, 13 Feb 2016 10:03:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/6] staging: rtl8192u: ieee80211: rtl819x_TSProc: Replace
 MSECS with msecs_to_jiffies
Message-ID: <20160213043346.GA6258@amitoj-Inspiron-3542>
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
Changes in v2:
        -None

 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index f33c743..36a165e 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -87,7 +87,8 @@ static void RxPktPendingTimeout(unsigned long data)
 	if(bPktInBuf && (pRxTs->RxTimeoutIndicateSeq==0xffff))
 	{
 		pRxTs->RxTimeoutIndicateSeq = pRxTs->RxIndicateSeq;
-		mod_timer(&pRxTs->RxPktPendingTimer,  jiffies + MSECS(ieee->pHTInfo->RxReorderPendingTime));
+		mod_timer(&pRxTs->RxPktPendingTimer,
+			  jiffies + msecs_to_jiffies(ieee->pHTInfo->RxReorderPendingTime));
 	}
 	spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 	//PlatformReleaseSpinLock(Adapter, RT_RX_SPINLOCK);
@@ -212,7 +213,8 @@ static void AdmitTS(struct ieee80211_device *ieee,
 	del_timer_sync(&pTsCommonInfo->InactTimer);
 
 	if(InactTime!=0)
-		mod_timer(&pTsCommonInfo->InactTimer, jiffies + MSECS(InactTime));
+		mod_timer(&pTsCommonInfo->InactTimer,
+			  jiffies + msecs_to_jiffies(InactTime));
 }
 
 
@@ -590,7 +592,8 @@ void TsStartAddBaProcess(struct ieee80211_device *ieee, PTX_TS_RECORD	pTxTS)
 		if(pTxTS->bAddBaReqDelayed)
 		{
 			IEEE80211_DEBUG(IEEE80211_DL_BA, "TsStartAddBaProcess(): Delayed Start ADDBA after 60 sec!!\n");
-			mod_timer(&pTxTS->TsAddBaTimer, jiffies + MSECS(TS_ADDBA_DELAY));
+			mod_timer(&pTxTS->TsAddBaTimer,
+				  jiffies + msecs_to_jiffies(TS_ADDBA_DELAY));
 		}
 		else
 		{
-- 
1.9.1


