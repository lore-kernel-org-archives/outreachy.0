X-GM-THRID: 6251014829496074240
X-Received: by 10.66.249.41 with SMTP id yr9mr5510640pac.37.1455427855522;
        Sat, 13 Feb 2016 21:30:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.165.19 with SMTP id o19ls1287349ioe.53.gmail; Sat, 13 Feb
 2016 21:30:55 -0800 (PST)
X-Received: by 10.66.63.104 with SMTP id f8mr10012333pas.4.1455427855116;
        Sat, 13 Feb 2016 21:30:55 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 79si2708330pft.0.2016.02.13.21.30.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 21:30:55 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id c10so5958511pfc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 21:30:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=y9AbALcJXzw/xkELDKVtgeJI8i5dAoMQOqRtOTQnJeY=;
        b=g/WmbOFajOGosiO2Zj8Do5UwAo8RDntoN0rwjgU2BhnfGASnOUTt5YUvi9Ao6Icdno
         4OTffGTcAqL71xeA/TczSYAYamXa/GdT8WrfAovGcEVJ4gzHlkieGDL+OxVBXPs4+iYF
         YyGb0hrI2/htQBpJMLIrsEJCuRSfzjDtdqo8VxuNSfqwIZIYNxGbu3eQcgSrGK7FNrw6
         YSPBTANgk+60BpKEvaN5nWgwN2hpfkPRodh+Ent14DsqCBaubqQOl9lJARhZEoWPHASp
         yu0YDnb+HUA3THTlge+Ow5grt6qZOfTNDjN7iAOg1onGA6g0wzdRCeZCEByL18Ib2A9D
         iP8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=y9AbALcJXzw/xkELDKVtgeJI8i5dAoMQOqRtOTQnJeY=;
        b=QPyaLP6xEj6xWHGXeZ8Xa0L8powlh111PG3Wx2GKoV+zsIsxamP0mLXulwUDGaq/Nq
         MNNo3Z0qYWfQ/dduVa0Va0b7zuU5EZ3ZOcruyTzXL0jUy1mOZQMwav7mnl1+VBNGE+IS
         63uwdIRPQW8eNwMK2nPXQTbQ81rOVxUgy6cM6qlxe2rzXCo9bRMrvDz7GgFUNxrcXkT2
         Z88AzvhZpY4agfJzIwpjw+DpZFdgno1StTlcmTkoa6QBU9l1+WMbNXKsXDslZZcg6e7r
         7Pl9nDB5dorTotQvL319YNBwUcrURUYLIJZML/RZzStLNu2zEJnpdhy7FI0BXvWBJi5R
         lvAQ==
X-Gm-Message-State: AG10YORRnyN5fmMWkdnqNdoXlLdtTOTmv+l/zYEh155iSSunj1xAOA8YQfXDbofRiHHS8Q==
X-Received: by 10.98.11.217 with SMTP id 86mr14049969pfl.71.1455427854996;
        Sat, 13 Feb 2016 21:30:54 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.130.221])
        by smtp.gmail.com with ESMTPSA id tn5sm28471054pac.32.2016.02.13.21.30.45
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 21:30:54 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 11:00:36 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/2] Staging: rtl8192u: Remove useless comments
Date: Sun, 14 Feb 2016 10:59:50 +0530
Message-Id: <1c51e655017371120ab353c5a7cb1e6f75df5af1.1455427132.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455427132.git.bhumirks@gmail.com>
References: <cover.1455427132.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455427132.git.bhumirks@gmail.com>
References: <cover.1455427132.git.bhumirks@gmail.com>

Remove the commented out places where macros PlatformAcquireSpinLock and
PlatformReleaseSpinLock are called as these macros are no longer used.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index f33c743..2b182e1 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -35,9 +35,7 @@ static void RxPktPendingTimeout(unsigned long data)
 	u8 index = 0;
 	bool bPktInBuf = false;
 
-
 	spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
-	//PlatformAcquireSpinLock(Adapter, RT_RX_SPINLOCK);
 	IEEE80211_DEBUG(IEEE80211_DL_REORDER,"==================>%s()\n",__func__);
 	if(pRxTs->RxTimeoutIndicateSeq != 0xffff)
 	{
@@ -90,7 +88,6 @@ static void RxPktPendingTimeout(unsigned long data)
 		mod_timer(&pRxTs->RxPktPendingTimer,  jiffies + MSECS(ieee->pHTInfo->RxReorderPendingTime));
 	}
 	spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
-	//PlatformReleaseSpinLock(Adapter, RT_RX_SPINLOCK);
 }
 
 /********************************************************************************************************************
@@ -469,7 +466,6 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, PTS_COMMON_INFO pTs,
 
 		while(!list_empty(&pRxTS->RxPendingPktList))
 		{
-		//      PlatformAcquireSpinLock(Adapter, RT_RX_SPINLOCK);
 			spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
 			//pRxReorderEntry = list_entry(&pRxTS->RxPendingPktList.prev,RX_REORDER_ENTRY,List);
 			pRxReorderEntry = (PRX_REORDER_ENTRY)list_entry(pRxTS->RxPendingPktList.prev,RX_REORDER_ENTRY,List);
@@ -489,7 +485,6 @@ static void RemoveTsEntry(struct ieee80211_device *ieee, PTS_COMMON_INFO pTs,
 				prxb = NULL;
 			}
 			list_add_tail(&pRxReorderEntry->List,&ieee->RxReorder_Unused_List);
-			//PlatformReleaseSpinLock(Adapter, RT_RX_SPINLOCK);
 			spin_unlock_irqrestore(&(ieee->reorder_spinlock), flags);
 		}
 
-- 
1.9.1


