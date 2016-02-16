X-GM-THRID: 6251851704411619328
X-Received: by 10.50.61.132 with SMTP id p4mr17148582igr.0.1455622656479;
        Tue, 16 Feb 2016 03:37:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.183.7 with SMTP id ei7ls1032633igc.16.gmail; Tue, 16 Feb
 2016 03:37:36 -0800 (PST)
X-Received: by 10.107.11.222 with SMTP id 91mr21711135iol.7.1455622656060;
        Tue, 16 Feb 2016 03:37:36 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x234.google.com (mail-qk0-x234.google.com. [2607:f8b0:400d:c09::234])
        by gmr-mx.google.com with ESMTPS id w126si2083556ywe.6.2016.02.16.03.37.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 03:37:36 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) client-ip=2607:f8b0:400d:c09::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::234 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x234.google.com with SMTP id s5so65437992qkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 03:37:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=eQgtQ5YUpd1cgTaP+VSuwlpHPljVmfcTZojJL1pLZgA=;
        b=PlxQphcI6LRKg4BJXlw1xUFaDkXJb4S0nYZ5qlwWMeTTF3a9qbMosxgtTpNUDXqYAa
         a36a0IX9+tKbKs74ciXKLBqxgo0EFjflqulIk5JusjLNxC3vNxTi4MYROTRfWtvoBf8d
         3xSYd5WIK12pEz0J/idCel/G4PekK4joPv06alXcZkxJlOQ0mm8dJ4drUcFiV158PMY+
         GOOu4CsTO6ANG8yGSQOJ7Kb7MynkxaxpdNbcYqOj+pyDJstxKE0qKoQ2DbbWG9s84md7
         hVe2F3GT0BhRlWgmPRtPSRjaY+NyTsZh6SO6+nScpFbXYsK1U76KaqWCy6uKmdKpcqUu
         ML7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=eQgtQ5YUpd1cgTaP+VSuwlpHPljVmfcTZojJL1pLZgA=;
        b=Ha8vcFn6WXgIDWt8I7mfjuaaQ4IGhhMbpsDjuzqtrxy7+7H/YnwPbuZZTEw498jFOV
         cROus5cQy05sWY8yb9js4ij+ghCCeycSg21ByTjc8TfUfCwowYv8D07L2BKY+OorTK2c
         qSt3bcHy+/lvyh0nxG1tfIS2Lkxu2jbe9eG6A9AWMnK4u0hLLl38UIaFxcBpGhSHnRzN
         kzTZVxyefvE8dRxvFX83vO1Hc1//B8HIw0AAVt+ygO4YnXxdooig0xFK/TnuCtVTuW17
         m0Y8FguZSiacAFnZPEngxLCTjj32ROzd+5RBEU2+P+mqYcMbhFiV90sdLcoEJWRKFfuR
         PLLw==
X-Gm-Message-State: AG10YOSBDxo2+b+OP+ijx/fB+i5aNkf202+OZ6Rzmu+NMsao2/d7VEAxVdbg8Jut2n36iw==
X-Received: by 10.55.56.134 with SMTP id f128mr26339769qka.92.1455622655857;
        Tue, 16 Feb 2016 03:37:35 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 11sm12908461qgx.32.2016.02.16.03.37.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 03:37:35 -0800 (PST)
Date: Tue, 16 Feb 2016 11:36:52 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org
Subject: [PATCH] staging: wilc1000: Remove trailing whitespace errors
Message-ID: <20160216163652.GA10221@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove trailing whitespace checkpatch errors.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 2 +-
 drivers/staging/wilc1000/linux_mon.c      | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index d1eedfb..04337c7 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3352,7 +3352,7 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
 		PRINT_ER("Failed to send association response config packet\n");
 		return -EINVAL;
 	}
-	
+
 	*pu32RcvdAssocRespInfoLen = wid.size;
 	return result;
 }
diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 21f35d7..9fcb497 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -302,7 +302,7 @@ struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_devi
 	struct WILC_WFI_mon_priv *priv;
 
 	/*If monitor interface is already initialized, return it*/
-	if (wilc_wfi_mon) 
+	if (wilc_wfi_mon)
 		return wilc_wfi_mon;
 
 	wilc_wfi_mon = alloc_etherdev(sizeof(struct WILC_WFI_mon_priv));
-- 
2.5.0


