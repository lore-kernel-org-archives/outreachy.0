X-GM-THRID: 6210381585761435648
X-Received: by 10.107.134.102 with SMTP id i99mr1255470iod.34.1446099524089;
        Wed, 28 Oct 2015 23:18:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.103.182 with SMTP id y51ls252862qge.30.gmail; Wed, 28 Oct
 2015 23:18:43 -0700 (PDT)
X-Received: by 10.140.151.198 with SMTP id 189mr42919130qhx.11.1446099523656;
        Wed, 28 Oct 2015 23:18:43 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id vy6si4497pbc.1.2015.10.28.23.18.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 23:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id hk11so30721215pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 23:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xdw7oFRm3OAeqf5qRxciUhbDAOYEeBR0NJ9ewdh9K58=;
        b=SYINp3RQSBCFI4/UbxPWU4JM7cGKCBBmDJRKvqxK6BBXTSnjiafgqnjQigTdhzLQlH
         GWfX/UtVdgeckexlEAhKNGGMqWtfP2goq2uuQQfwWz1A55PGFdt9kdMUyF+4mH+AlN26
         7hnR/orLjsfEMIViQk3sscui4eyKHwm14ERo4gn7bmtg/68gnqWdKw/wHSOohAgsQSDH
         x7xENKsSQZoh5McoPZLMdmsnKLD5gcYazNWuAOzIA7esnewCKjXJUWxTegJLCF0YV1sR
         I4zOox9I0Q5gAyL5i68NR9YoEC6Av8nxdko5u3/KFUYA59jo5V/sG2P6tHqNqISP93fR
         fa8w==
X-Received: by 10.67.4.231 with SMTP id ch7mr9331325pad.109.1446099523491;
        Wed, 28 Oct 2015 23:18:43 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.198.148])
        by smtp.gmail.com with ESMTPSA id rz9sm18007pbb.61.2015.10.28.23.18.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 28 Oct 2015 23:18:43 -0700 (PDT)
Date: Thu, 29 Oct 2015 11:48:39 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/3] staging: rtl8188eu: Remove unused function
Message-ID: <da725e4523bd43041e267086757a7093212411bb.1446098996.git.amitoj1606@gmail.com>
References: <cover.1446098996.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446098996.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove function that is declared but not called anywhere.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -None

 drivers/staging/rtl8188eu/core/rtw_xmit.c    | 5 -----
 drivers/staging/rtl8188eu/include/rtw_xmit.h | 1 -
 2 files changed, 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
index cabb810..11dbfc0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
+++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
@@ -2186,11 +2186,6 @@ void rtw_sctx_done_err(struct submit_ctx **sctx, int status)
 	}
 }
 
-void rtw_sctx_done(struct submit_ctx **sctx)
-{
-	rtw_sctx_done_err(sctx, RTW_SCTX_DONE_SUCCESS);
-}
-
 int rtw_ack_tx_wait(struct xmit_priv *pxmitpriv, u32 timeout_ms)
 {
 	struct submit_ctx *pack_tx_ops = &pxmitpriv->ack_tx_ops;
diff --git a/drivers/staging/rtl8188eu/include/rtw_xmit.h b/drivers/staging/rtl8188eu/include/rtw_xmit.h
index 62f5db1..b7c2088 100644
--- a/drivers/staging/rtl8188eu/include/rtw_xmit.h
+++ b/drivers/staging/rtl8188eu/include/rtw_xmit.h
@@ -197,7 +197,6 @@ enum {
 void rtw_sctx_init(struct submit_ctx *sctx, int timeout_ms);
 int rtw_sctx_wait(struct submit_ctx *sctx);
 void rtw_sctx_done_err(struct submit_ctx **sctx, int status);
-void rtw_sctx_done(struct submit_ctx **sctx);
 
 struct xmit_buf {
 	struct list_head list;
-- 
1.9.1


