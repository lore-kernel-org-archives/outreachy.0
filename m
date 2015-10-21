X-GM-THRID: 6208147011756097536
X-Received: by 10.194.71.166 with SMTP id w6mr2475701wju.6.1445446871409;
        Wed, 21 Oct 2015 10:01:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.84 with SMTP id o81ls230642lfi.48.gmail; Wed, 21 Oct
 2015 10:01:10 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr2436454lbb.10.1445446870860;
        Wed, 21 Oct 2015 10:01:10 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id cm6si1048091wib.1.2015.10.21.10.01.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 10:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id q8so103001777wik.1
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 10:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=RJScYM+hKTZletcS3qlEdvPgGxwOUDBiu18JRd+QYgU=;
        b=LEt9CebPWh3m2nU9mS2LFOZ5Ei1D0qE2Xja2ZQobU68Ut96jE4YhAtO04QEulOp3zS
         QcLEQtm/HCEEptpSoe+rZeIf/dqwI359GeFWCrQbrusrGBGfwGoygPpEz4mrSExEreM2
         EYET4CkzwZJnc2vISmdO2hYjbh9+0fyqZILf8Nv/oO5kHh0VaLZroGh08xVeFnY9xdQP
         srCNynTMzFZ6vcRqdp+vqiJajG7Wk/m+MXCA28OE/pvrKAe+R5lE/EfMbC5t/aodnNjm
         MdcFVcrs3KbuoNyJjBBwsOUX/n3xYVXg6yqF1YuJcNdr3EbmNLrhpF2tNYEQywSAetCK
         B6yw==
X-Received: by 10.194.123.2 with SMTP id lw2mr13407981wjb.48.1445446870768;
        Wed, 21 Oct 2015 10:01:10 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.204])
        by smtp.gmail.com with ESMTPSA id x7sm24456745wia.10.2015.10.21.10.01.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 10:01:10 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH 1/3] staging: rtl8712: Replace kmalloc with kmalloc_array
Date: Wed, 21 Oct 2015 20:00:49 +0300
Message-Id: <01dc6462a66136c42d0ee22abe8aa61a67d6d649.1445379358.git.cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445379358.git.cristina.moraru09@gmail.com>
References: <cover.1445379358.git.cristina.moraru09@gmail.com>
In-Reply-To: <cover.1445379358.git.cristina.moraru09@gmail.com>
References: <cover.1445379358.git.cristina.moraru09@gmail.com>

Replace kmalloc with specialized function kmalloc_array
when the size is a multiplication of:
	number_of_elements * size_of_element

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index fbcb248..e69621a 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -62,8 +62,8 @@ static sint _init_mlme_priv(struct _adapter *padapter)
 	_init_queue(&(pmlmepriv->scanned_queue));
 	set_scanned_network_val(pmlmepriv, 0);
 	memset(&pmlmepriv->assoc_ssid, 0, sizeof(struct ndis_802_11_ssid));
-	pbuf = kmalloc(MAX_BSS_CNT * (sizeof(struct wlan_network)),
-		       GFP_ATOMIC);
+	pbuf = kmalloc_array(MAX_BSS_CNT, sizeof(struct wlan_network),
+			     GFP_ATOMIC);
 	if (pbuf == NULL)
 		return _FAIL;
 	pmlmepriv->free_bss_buf = pbuf;
-- 
1.9.1


