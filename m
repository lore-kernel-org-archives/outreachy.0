X-GM-THRID: 6388897294904721408
X-Received: by 10.157.12.36 with SMTP id 33mr6886529otr.68.1487567241805;
        Sun, 19 Feb 2017 21:07:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.231 with SMTP id t100ls2670666ioi.25.gmail; Sun, 19
 Feb 2017 21:07:21 -0800 (PST)
X-Received: by 10.98.43.203 with SMTP id r194mr1958883pfr.28.1487567240996;
        Sun, 19 Feb 2017 21:07:20 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id d63si62428pfe.2.2017.02.19.21.07.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 21:07:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 5so11360373pgj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 21:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=m7PRUNFjDl+PHz4Fwz3YzbGYDPcc48ECitzd2h1czeQ=;
        b=Zx+Qu9VNUArGhxCeSfIJzFk+WbOno4dhFIBQbAd8bvloFSMibCQtl90CqL6zvPMYWT
         cdvQyFgy6eLu2JiqjZxqSV8jiUEMgtm/BGQ//vWN+I6fGPQgBJU6RCJuJypDCHVMUhEH
         Q1y4Dtdd0/zkWI7ihlCppo74SIqThdQaXqlaLQcopDmHOHsfBchcugixrjMsGAQ+3w6w
         HDPPkFPRtoXdVkhWYfxAvxLF+B/7jTD4A2BVs8kk09kb0nzV9uVsxYDQheciqHSyepwC
         y65f6VujELsaoOlpp38iOXA0+SZNpLfFq37fLVGq+MhgHuUWJT+XwCBHNB55OnBgKlEx
         dDOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=m7PRUNFjDl+PHz4Fwz3YzbGYDPcc48ECitzd2h1czeQ=;
        b=YsdY5IOv+tPecK802fXPs/beY/zKXGZ71OtkgWa2sSoM3a8BylwwLsVSO+IIBAGSGq
         OvaE4DLp3NGkIC4khq+QcMXUOSSxQMJhRvJJjGJbTBCconRoxoBF4WlNh/C0envCmaXA
         e791D0vsEAhAOWgOUR1SyyYxzJx2+jx3Syr68Hz38RFZlIBLyGS5cufe8+0XUkU3xpt0
         3eraQyvDkvUJ71JB7TKDNOZ7LvSfqmge1hudeuRpM/nGvlZcKvp3zYLsmeFZKkmmyDLD
         gI93nAF6Np5zpf4yJg4UveMpFdKjvD1sO69fnEraXygXw5QHaHA2qukrNAKf2HcieZ1F
         jn3w==
X-Gm-Message-State: AMke39mBdDHpsowjIig+dtSp9xOsD5zSn7ksyJLSofec8+ji2K8kTFvuUPoSVrtqw9tDng==
X-Received: by 10.99.99.68 with SMTP id x65mr25635455pgb.126.1487567240788;
        Sun, 19 Feb 2017 21:07:20 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id z4sm32024767pge.49.2017.02.19.21.07.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 21:07:19 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3] staging: rtl8192u: Remove ternary operator
Date: Mon, 20 Feb 2017 10:35:08 +0530
Message-Id: <1487567108-6362-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Relational and logical operators evaluate to either true or false.
Lines with ternary operators were found using coccinelle script. In a
few cases using logical && operator would suffice. Hence those were
changed to improve readability.

Coccinelle Script:
@r@
expression A,B;
symbol true,false;
binary operator b = {==,!=,&&,||,>=,<=,>,<};
@@
- (A b B) ? true : false
+ A b B

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
----
Changes in v3:
        - Converted ? operator to &&.
Changes in v2:
        - Converted ? operator to if else statements.
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
index c27397b..1fbee3c 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_HTProc.c
@@ -977,16 +977,16 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	HTSetConnectBwMode(ieee, (HT_CHANNEL_WIDTH)(pPeerHTCap->ChlWidth), (HT_EXTCHNL_OFFSET)(pPeerHTInfo->ExtChlOffset));
 
 //	if (pHTInfo->bCurBW40MHz)
-		pHTInfo->bCurTxBW40MHz = ((pPeerHTInfo->RecommemdedTxWidth == 1)?true:false);
+		pHTInfo->bCurTxBW40MHz = (pPeerHTInfo->RecommemdedTxWidth == 1);
 
 	//
 	// Update short GI/ long GI setting
 	//
 	// TODO:
 	pHTInfo->bCurShortGI20MHz=
-		((pHTInfo->bRegShortGI20MHz)?((pPeerHTCap->ShortGI20Mhz==1)?true:false):false);
+		pHTInfo->bRegShortGI20MHz && (pPeerHTCap->ShortGI20Mhz == 1);
 	pHTInfo->bCurShortGI40MHz=
-		((pHTInfo->bRegShortGI40MHz)?((pPeerHTCap->ShortGI40Mhz==1)?true:false):false);
+		pHTInfo->bRegShortGI40MHz && (pPeerHTCap->ShortGI40Mhz == 1);
 
 	//
 	// Config TX STBC setting
@@ -998,7 +998,7 @@ void HTOnAssocRsp(struct ieee80211_device *ieee)
 	//
 	// TODO:
 	pHTInfo->bCurSuppCCK =
-		((pHTInfo->bRegSuppCCK)?((pPeerHTCap->DssCCk==1)?true:false):false);
+		pHTInfo->bRegSuppCCK && (pPeerHTCap->DssCCk == 1);
 
 
 	//
-- 
2.7.4


