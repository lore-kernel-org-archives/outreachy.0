X-GM-THRID: 6336167354964115456
X-Received: by 10.107.183.215 with SMTP id h206mr2470187iof.6.1475253923978;
        Fri, 30 Sep 2016 09:45:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.7 with SMTP id m7ls4150391otc.36.gmail; Fri, 30 Sep
 2016 09:45:23 -0700 (PDT)
X-Received: by 10.157.4.12 with SMTP id 12mr2093632otc.145.1475253923632;
        Fri, 30 Sep 2016 09:45:23 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f12si4892027pfk.0.2016.09.30.09.45.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Sep 2016 09:45:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id n24so5173325pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Sep 2016 09:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=1kI0bZHrAlGYvuHblnJrGW2bvprSfGh01Qlsp6RmH5w=;
        b=j3i8WSMTvH3YOWFSSAyYl6LSdH4g9Qm3o4SNKtrFzmAnZo1mcoOwsu2hbT3hVRQlPR
         VBrmOp90N9zhDYxaAMWyLhoxri06P4xOLGQpPqOGgPPHv5eSlPaafiUYV46P1QcTW22L
         7rgO07h0yNkT6boDDH3wWEDps7UXdM6HSJyevJ/GFKsrXldenHw90vyLyktIRb9jMnjG
         KAJUppQDtn35xoUrr2N/7whRP0goykWJWuaDCobqRtYDqjt4KfAqgCn9HvG7AcECF2i5
         jEYBhDIRE5a6uEjF/qodaBn46vse6LGRB8rUtnDRkjRlptsgcVlEF+93ojgJZCibPXkK
         ztSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=1kI0bZHrAlGYvuHblnJrGW2bvprSfGh01Qlsp6RmH5w=;
        b=Y29i6vezeYogDVaYNYSkkpMr+2YIzuvEQAdrN5a+5pod8Ci+509Rtj7sNxrJMGnBRw
         5yBfivm/ZTBGDIexm4pNwE1/8WMLMaiXkw/8bRV3nful71cAvACBpt5HlJTNXPLm0/2s
         zBeWUlrgcmFwuLtMZlHa782X4AYVLM1k6fJEX2hBMFGOENmJELztA1WLlYE/kPhEbWwd
         T9Z62OLdylOOSoLp/1qfvSQYxJ/d7CRs3NFsip4MUrb13gRxs/L3n0iq3Cx+5mFXTtr0
         SiaBvp5KoaMQQ7mSCE9uquJAsBHIiCJOKk1joPWQAU8xSTqhlQzAEbSPzcDRN4LhU1Qz
         Slrw==
X-Gm-Message-State: AA6/9RmiSlbhPCOk8Lt1z2b9hRRpir8453RX3pogrDO94rCSa6YJlKbGqv7tLBfftiXzcQ==
X-Received: by 10.98.158.90 with SMTP id s87mr13162008pfd.117.1475253923426;
        Fri, 30 Sep 2016 09:45:23 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.218])
        by smtp.gmail.com with ESMTPSA id o123sm29134063pfg.78.2016.09.30.09.45.21
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 30 Sep 2016 09:45:23 -0700 (PDT)
Date: Fri, 30 Sep 2016 22:15:14 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8188eu: core: rtw_ap: remove boolean
 comparison
Message-ID: <20160930164424.GA4879@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Boolean tests do not need explicit comparison to true or false.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
index 79d326a..fbe9941 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ap.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
@@ -767,7 +767,7 @@ static void start_bss_network(struct adapter *padapter, u8 *pbuf)
 		update_hw_ht_param(padapter);
 	}
 
-	if (pmlmepriv->cur_network.join_res != true) { /* setting only at  first time */
+	if (pmlmepriv->cur_network.join_res) { /* setting only at  first time */
 		/* WEP Key will be set before this function, do not clear CAM. */
 		if ((psecuritypriv->dot11PrivacyAlgrthm != _WEP40_) &&
 		    (psecuritypriv->dot11PrivacyAlgrthm != _WEP104_))
-- 
1.9.1


