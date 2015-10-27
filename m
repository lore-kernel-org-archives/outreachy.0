X-GM-THRID: 6210381585761435648
X-Received: by 10.50.61.234 with SMTP id t10mr21781191igr.4.1445967393866;
        Tue, 27 Oct 2015 10:36:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.148 with SMTP id d142ls1824414iod.13.gmail; Tue, 27 Oct
 2015 10:36:33 -0700 (PDT)
X-Received: by 10.107.17.8 with SMTP id z8mr17812999ioi.12.1445967393644;
        Tue, 27 Oct 2015 10:36:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id fa8si4344227pab.1.2015.10.27.10.36.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 10:36:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id z6so228330541pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 10:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=3xf77eNTW9FvzcLRutiAckAeNvb2kWGB4UftvS957kY=;
        b=iMUrgqlurC9OHJ/rmcjQCm4UHM1JTrmL5DO5UgUuaWaa1FpAzB59E288rru1BJ3CLb
         HPUoWtUzF+KIRuqkIK6DP6V2Lk657pnpktjuUMDLG7b+ylbfwZUKegNrMTRNj8R2tsMC
         zg2AC0oZXTPwaZF6iiNnMsbNiq3im6HmZ7mxEUh1vQ+JOvy5xLMSx484vInYzjt/Cjkz
         9CeVXAtuZ9EhRvXXKYHAxqyhH5SmzYFQxs/C9qXcGnNMx5jQO+qfN/Y0GpxDRml7JKeg
         Dxz/LY9aKrXEJF8H9D7He9rk7GCoMQif5wwzG8Mp7h1ZXwe8YPoIH1KZfbCPdWJUYdrk
         fIdw==
X-Received: by 10.66.153.139 with SMTP id vg11mr29169921pab.118.1445967393486;
        Tue, 27 Oct 2015 10:36:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.134.91])
        by smtp.gmail.com with ESMTPSA id yp9sm40881014pab.1.2015.10.27.10.36.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 10:36:33 -0700 (PDT)
Date: Tue, 27 Oct 2015 23:06:29 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8188eu: Remove unused function
Message-ID: <6588334b302da894539ec12c69cd0dae96bdf618.1445966850.git.amitoj1606@gmail.com>
References: <cover.1445966850.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445966850.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove function that is declared but not called anywhere.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
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


