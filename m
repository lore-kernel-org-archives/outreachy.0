X-GM-THRID: 6250414407945289728
X-Received: by 10.129.155.201 with SMTP id s192mr1741529ywg.4.1455288009266;
        Fri, 12 Feb 2016 06:40:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.82.71 with SMTP id g7ls178484igy.8.canary; Fri, 12 Feb 2016
 06:40:08 -0800 (PST)
X-Received: by 10.107.152.10 with SMTP id a10mr2763481ioe.28.1455288008869;
        Fri, 12 Feb 2016 06:40:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si1465997pad.2.2016.02.12.06.40.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:40:08 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so3479570pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:40:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=vnCaaN/Vz2EqPNF+1j/QGmQ0JYcxiK/4oQ42pdts6uI=;
        b=LAPDoCknB5LLi2cwmDndXTmpDlglrDTUtezxa4wVzZqjHZ8ejOB8LGsg44hu3LCOnK
         yJEKunyCGB0PMsYleV2odsYSghrLnnVsh6u9V3SzazhAs/Ej5+vMmkjk4r/1WyTV8fRO
         93rjVYUF+J32fiA68HxVCVEYMpYv9In6WXo7SLy9Mj15Hzua+vgV6ctTw+aIXbGa4kX0
         PabDBifzC2WTEZ6vhjtA3Pzyn4Kz0GkLKjUmYxFp+NF0ObL9Q34FhWvYS7BixFJQ+5V9
         6Kjw/cTZW9L1guJLrro4KznjLMEbSsoV9F5cVMpKgupH/OdfEsCA50cFeeDbfJLob3jm
         kDTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=vnCaaN/Vz2EqPNF+1j/QGmQ0JYcxiK/4oQ42pdts6uI=;
        b=KUvohs/DuA2g+0y6ZKwCYoNUnUWraljxuJfM96HtHBzS034UMFQJuE7VmnIlsi6fbY
         WDBRIS+Y6/xjP6zilZquzMGpoJvk2FojnSpRuzOkh1WjKATT9QYUNyrPTSuwT6mT6uLx
         nslEQTCQxoWu2SvjFNMj631AGctxH6WCgtPeDLCgcWUdMGpYdbj+t0KBOWiTXM2RVeyU
         3+ibNc8cBFzlugxbFN4Qhr+XQXRX7nOU6ppbKjjZiHltqhg3DbddIXbwPazV7r/muUJw
         QxeSYE7ers/NT8AWNAz3m/YDaoTN/vEQOaDnhV5u7GtJy5iKjNv+cWEYsuZ0KNSPVEhB
         uQJA==
X-Gm-Message-State: AG10YOT4IeZPsFABvN9vFmOxE3RUuwLhha/YmvL6H9DpnYx7FM+oGBL5qOWz04ZSJmkISg==
X-Received: by 10.98.32.218 with SMTP id m87mr2675803pfj.48.1455288008651;
        Fri, 12 Feb 2016 06:40:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id z3sm20042915par.17.2016.02.12.06.40.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:40:08 -0800 (PST)
Date: Fri, 12 Feb 2016 20:10:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: rtl8192u: ieee80211: rtl819x_TSProc: Replace
 MSECS with msecs_to_jiffies
Message-ID: <20160212144004.GA1259@amitoj-Inspiron-3542>
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


