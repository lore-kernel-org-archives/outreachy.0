X-GM-THRID: 8122735263744
X-Received: by 10.180.90.169 with SMTP id bx9mr4747452wib.6.1426274532482;
        Fri, 13 Mar 2015 12:22:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.21.233 with SMTP id y9ls472159lae.9.gmail; Fri, 13 Mar
 2015 12:22:12 -0700 (PDT)
X-Received: by 10.112.44.167 with SMTP id f7mr5072944lbm.9.1426274531992;
        Fri, 13 Mar 2015 12:22:11 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x229.google.com (mail-wg0-x229.google.com. [2a00:1450:400c:c00::229])
        by gmr-mx.google.com with ESMTPS id o3si192083wib.2.2015.03.13.12.22.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 12:22:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) client-ip=2a00:1450:400c:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::229 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgha1 with SMTP id a1so25445691wgh.1
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 12:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=5XEjEaAJUd2oiR/EfKKUS5I0G7skP9bd4PZtqnpn2Xw=;
        b=A1snoSGWNCvGbTI0UrIndVPPvAf0ahvVuBpJp2jpb1/WohGUdgN+CWhmpjZEYBZPbq
         DkJgTI5ajKDEcqyFhiYPMOFB248Nw7IeNoVi1vSxZ2NsUfxjJZ3B8SgxQhDwaiQm5EI6
         3JvGD5DgUnEA35EK5UWbwuYEzGpyueoOg6cndCn9ks6TxplHzvNhAotEkRUH6RtSC+1i
         OnYs5pOy2yHd0M3C14Z2dbp0coMa0USRL9CFV4DXwLjZngLS5B/6xMiqE9lYzatvyz1U
         I+/NgbWZr8xOP4PCHtK4m+jR/ZpG9ToeTiauPHhQl1PNzjJyWwdRfJROUOQZo2PTXl6H
         6H5g==
X-Received: by 10.194.184.148 with SMTP id eu20mr97884493wjc.77.1426274531881;
        Fri, 13 Mar 2015 12:22:11 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id at4sm4056416wjc.16.2015.03.13.12.22.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 12:22:11 -0700 (PDT)
Date: Fri, 13 Mar 2015 21:21:31 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: rtl8192u: Bool tests don't need comparisons
Message-ID: <e06f165b2e1d593e590717a816ae7e1ef7d5c603.1426273386.git.cristina.opriceana@gmail.com>
References: <cover.1426273386.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426273386.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes explicit true/false comparations to bool variables.
Warning found by coccinelle:
"WARNING: Comparison to bool"

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 5 ++---
 drivers/staging/rtl8192u/r8192U_core.c              | 2 +-
 drivers/staging/rtl8192u/r819xU_firmware.c          | 6 +++---
 drivers/staging/rtl8192u/r819xU_phy.c               | 2 +-
 4 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
index acaa723..7505d47 100644
--- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
@@ -288,7 +288,7 @@ static PTS_COMMON_INFO SearchAdmitTRStream(struct ieee80211_device *ieee,
 	//for(dir = DIR_UP; dir <= DIR_BI_DIR; dir++)
 	for(dir = 0; dir <= DIR_BI_DIR; dir++)
 	{
-		if(search_dir[dir] ==false )
+		if (!search_dir[dir])
 			continue;
 		list_for_each_entry(pRet, psearch_list, List){
 	//		IEEE80211_DEBUG(IEEE80211_DL_TS, "ADD:%pM, TID:%d, dir:%d\n", pRet->Addr, pRet->TSpec.f.TSInfo.field.ucTSID, pRet->TSpec.f.TSInfo.field.ucDirection);
@@ -400,8 +400,7 @@ bool GetTs(
 	}
 	else
 	{
-		if(bAddNewTs == false)
-		{
+		if (!bAddNewTs) {
 			IEEE80211_DEBUG(IEEE80211_DL_TS, "add new TS failed(tid:%d)\n", UP);
 			return false;
 		}
diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 8f7a321..8253d1f 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -2824,7 +2824,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 		}
 		dm_initialize_txpower_tracking(dev);
 
-		if (priv->bDcut == true) {
+		if (priv->bDcut) {
 			u32 i, TempCCk;
 			u32 tmpRegA = rtl8192_QueryBBReg(dev, rOFDM0_XATxIQImbalance, bMaskDWord);
 			for (i = 0; i < TxBBGainTableLength; i++) {
diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
index e208c89..d27b1e2 100644
--- a/drivers/staging/rtl8192u/r819xU_firmware.c
+++ b/drivers/staging/rtl8192u/r819xU_firmware.c
@@ -281,7 +281,7 @@ bool init_firmware(struct net_device *dev)
 		if (rst_opt == OPT_SYSTEM_RESET)
 			release_firmware(fw_entry);
 
-		if (rt_status != true)
+		if (!rt_status)
 			goto download_firmware_fail;
 
 		switch (init_step) {
@@ -304,7 +304,7 @@ bool init_firmware(struct net_device *dev)
 
 			/* Check Put Code OK and Turn On CPU */
 			rt_status = CPUcheck_maincodeok_turnonCPU(dev);
-			if (rt_status != true) {
+			if (!rt_status) {
 				RT_TRACE(COMP_ERR, "CPUcheck_maincodeok_turnonCPU fail!\n");
 				goto download_firmware_fail;
 			}
@@ -318,7 +318,7 @@ bool init_firmware(struct net_device *dev)
 			mdelay(1);
 
 			rt_status = CPUcheck_firmware_ready(dev);
-			if (rt_status != true) {
+			if (!rt_status) {
 				RT_TRACE(COMP_ERR, "CPUcheck_firmware_ready fail(%d)!\n",rt_status);
 				goto download_firmware_fail;
 			}
diff --git a/drivers/staging/rtl8192u/r819xU_phy.c b/drivers/staging/rtl8192u/r819xU_phy.c
index 084e04f..3451ec7 100644
--- a/drivers/staging/rtl8192u/r819xU_phy.c
+++ b/drivers/staging/rtl8192u/r819xU_phy.c
@@ -1099,7 +1099,7 @@ bool rtl8192_SetRFPowerState(struct net_device *dev,
 	if (eRFPowerState == priv->ieee80211->eRFPowerState)
 		return false;
 
-	if (priv->SetRFPowerStateInProgress == true)
+	if (priv->SetRFPowerStateInProgress)
 		return false;
 
 	priv->SetRFPowerStateInProgress = true;
-- 
1.9.1


