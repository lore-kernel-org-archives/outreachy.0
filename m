X-GM-THRID: 6210775302197477376
X-Received: by 10.140.235.193 with SMTP id g184mr31037792qhc.10.1446058811488;
        Wed, 28 Oct 2015 12:00:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.100 with SMTP id y91ls5451620qgy.7.gmail; Wed, 28 Oct
 2015 12:00:10 -0700 (PDT)
X-Received: by 10.13.209.70 with SMTP id t67mr41196486ywd.46.1446058810811;
        Wed, 28 Oct 2015 12:00:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id pe1si5082343pac.2.2015.10.28.12.00.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 12:00:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hk11so14806891pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 12:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wx2tlPn9ihY4CRUwUvcAL91vnDGU6jckqLMCgXoZZmw=;
        b=za95wGgWHu3/h9rahBZT/TWXapA0bt1j7Gyviyink2bfgfK720LtxRHd7Mf6gk1Xy3
         5D6e2izAqbZgczRyM+pU0K5ysgXcFH4WAu6VhHrJ6a9picJywwNbMpI2CD26bFjUfzoG
         S7ORXGTpKHKcLXukN5DXSSrjMBQt+4MKRldX8qQCM/K9c7TaP2YyPmodvvucgCeAgRf9
         2VidIMZy2ZLp6is5Hmh0qFnmmu1bha5ukUuub5KO/crMjwR4tbaCFLvFJMlQxx2A3WxE
         4l//McbS6KXHLXDxoxJZseKrgWoTMViytNMfJQXlRrd3RuccOnE3mXbvIY0NZzHURKpW
         W2Og==
X-Received: by 10.68.217.102 with SMTP id ox6mr36794581pbc.146.1446058810662;
        Wed, 28 Oct 2015 12:00:10 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id d2sm31852150pat.24.2015.10.28.12.00.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 12:00:09 -0700 (PDT)
Date: Thu, 29 Oct 2015 00:30:01 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations: Remove irrelevant
 wrapper function
Message-ID: <20151028190001.GA24637@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the wrapper function WILC_WFI_add_wilcvendorspec() and replace
its call with memcpy().

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 20 +++++---------------
 1 file changed, 5 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index ac32d2b..7a03b0d 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -2180,20 +2180,6 @@ static int cancel_remain_on_channel(struct wiphy *wiphy,
 	return s32Error;
 }
 /**
- *  @brief       WILC_WFI_add_wilcvendorspec
- *  @details    Adding WILC information elemet to allow two WILC devices to
- *                              identify each other and connect
- *  @param[in]   u8 * buf
- *  @return     void
- *  @author	mdaftedar
- *  @date	01 JAN 2014
- *  @version	1.0
- */
-void WILC_WFI_add_wilcvendorspec(u8 *buff)
-{
-	memcpy(buff, u8P2P_vendorspec, sizeof(u8P2P_vendorspec));
-}
-/**
  *  @brief      WILC_WFI_mgmt_tx_frame
  *  @details
  *
@@ -2316,7 +2302,11 @@ static int mgmt_tx(struct wiphy *wiphy,
 								}
 
 								if (buf[P2P_PUB_ACTION_SUBTYPE] != P2P_INV_REQ && buf[P2P_PUB_ACTION_SUBTYPE] != P2P_INV_RSP) {
-									WILC_WFI_add_wilcvendorspec(&mgmt_tx->buff[len]);
+									/*
+									 * Adding WILC information element to allow two WILC devices to
+									 * identify each other and connect
+									 */
+									memcpy(&mgmt_tx->buff[len], u8P2P_vendorspec, sizeof(u8P2P_vendorspec));
 									mgmt_tx->buff[len + sizeof(u8P2P_vendorspec)] = u8P2Plocalrandom;
 									mgmt_tx->size = buf_len;
 								}
-- 
2.1.0


