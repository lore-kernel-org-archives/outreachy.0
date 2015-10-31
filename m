X-GM-THRID: 6211822819926343680
X-Received: by 10.50.82.98 with SMTP id h2mr3127854igy.1.1446302984805;
        Sat, 31 Oct 2015 07:49:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.151 with SMTP id v23ls855487iov.77.gmail; Sat, 31 Oct
 2015 07:49:44 -0700 (PDT)
X-Received: by 10.68.195.197 with SMTP id ig5mr10797910pbc.4.1446302984556;
        Sat, 31 Oct 2015 07:49:44 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id fa8si1163866pab.1.2015.10.31.07.49.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 07:49:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy1so95902275pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 07:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=O6+3ysvL1AJBLMkIa/Nt4IzNiExYFCzRTugleozqru4=;
        b=vphfyBIy9mwR94pXC+X5Ut/00+tb5BaB5j+TDijIVqAe7juP1OCCW8CJMcaNRNA4Fl
         LDA6P38PBeW3F+hwCn8hoh0TEKef42JPwwn9qEEUrYLYM4I5nB9EsLA9pJCEQl57478O
         E8107eAVUU73o/LCbfjVkTOhRaNqYXFATMvjgm3rzmdEwLg3RXs7cBE6hphTPCIt4M+O
         lQcMNjp0RncRMYATk4gHyZMebBZDoBrGKsg7jZr3NiJCQurmsB2PzAB0J8j+WB5q1udU
         ewLsueFrIzdy5nw30hH5uilMFCCa2whtL9m4wNFLsXveSilfg1QXnABLo0X5v+xnG7gc
         qtog==
X-Received: by 10.68.255.37 with SMTP id an5mr15227008pbd.163.1446302984432;
        Sat, 31 Oct 2015 07:49:44 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.37.188])
        by smtp.gmail.com with ESMTPSA id so4sm14296069pbc.72.2015.10.31.07.49.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 07:49:44 -0700 (PDT)
Date: Sat, 31 Oct 2015 20:19:40 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8712: rtl871x_mlme: Remove wrapper function
Message-ID: <56777be2654563393608184385ea3118deef9f64.1446302505.git.amitoj1606@gmail.com>
References: <cover.1446302505.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446302505.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove wrapper function free_network_nolock() that can be replaced by a single line of code.

This patch renames _free_network_nolock() function to free_network_nolock().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index fbcb248..8972c15 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -123,7 +123,7 @@ static void _free_network(struct mlme_priv *pmlmepriv,
 	spin_unlock_irqrestore(&free_queue->lock, irqL);
 }
 
-static void _free_network_nolock(struct mlme_priv *pmlmepriv,
+static void free_network_nolock(struct mlme_priv *pmlmepriv,
 			  struct wlan_network *pnetwork)
 {
 	struct  __queue *free_queue = &pmlmepriv->free_bss_pool;
@@ -233,12 +233,6 @@ static struct	wlan_network *alloc_network(struct mlme_priv *pmlmepriv)
 	return _r8712_alloc_network(pmlmepriv);
 }
 
-static void free_network_nolock(struct mlme_priv *pmlmepriv,
-			 struct wlan_network *pnetwork)
-{
-	_free_network_nolock(pmlmepriv, pnetwork);
-}
-
 void r8712_free_network_queue(struct _adapter *dev)
 {
 	_free_network_queue(dev);
-- 
1.9.1


