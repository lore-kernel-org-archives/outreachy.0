X-GM-THRID: 6153646899200
X-Received: by 10.182.97.2 with SMTP id dw2mr31158161obb.0.1425362873249;
        Mon, 02 Mar 2015 22:07:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.39 with SMTP id s36ls2011330qgs.19.gmail; Mon, 02 Mar
 2015 22:07:53 -0800 (PST)
X-Received: by 10.52.246.135 with SMTP id xw7mr30063923vdc.8.1425362873106;
        Mon, 02 Mar 2015 22:07:53 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x236.google.com (mail-pd0-x236.google.com. [2607:f8b0:400e:c02::236])
        by gmr-mx.google.com with ESMTPS id ri9si1843245pdb.1.2015.03.02.22.07.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 22:07:53 -0800 (PST)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) client-ip=2607:f8b0:400e:c02::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::236 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pdjz10 with SMTP id z10so45698281pdj.12
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 22:07:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=obS5F0dEMVn7PCmDpt4xk7LDSGTaL3p1cLzQKwV4xyc=;
        b=0vK9qLI4nr/NkrNo9cjLjnMK05xbvXuwZ+Wg239LQkgfyUc3jxuxXyf8Q9wDyC+7XK
         xUlaQNKHLUXRXOCecMbXbsBHysWp32RukZlNX3hIH365VZJd4T1FzggVZCXXcuFyOe0/
         W1AaSzaoNHMyV8adBx2iEyCt9U9Ctdz7ZC1cptln/T1WJH5tbpRwA5CqB3xAga8YOALD
         6kaTs2PRfXtMH7UYj60aCzvMVzcn8eS1ZZBUifJEqLJ85Px5wEcfuR7+YvddeCyTEqn1
         6Suuh1rzUAqNk6iueRf0bEGsK/ickUfWCwLlrtsopnr2XTYkAEK4yIFVcZeBojZpVjwD
         skwA==
X-Received: by 10.70.52.8 with SMTP id p8mr52662894pdo.27.1425362872846;
        Mon, 02 Mar 2015 22:07:52 -0800 (PST)
Return-Path: <vatikaharlalka@gmail.com>
Received: from akanksha ([14.139.82.6])
        by mx.google.com with ESMTPSA id ep2sm13636626pbc.78.2015.03.02.22.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 22:07:51 -0800 (PST)
Date: Tue, 3 Mar 2015 11:36:21 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Remove unnecessary type cast.
Message-ID: <20150303060621.GA5148@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Using addressof and then casting to the original type is unneeded.
So these casts can be removed.
Issue detected via Coccinelle script.

Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
---
 drivers/staging/rtl8712/hal_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/hal_init.c b/drivers/staging/rtl8712/hal_init.c
index 324da34..0a1c631 100644
--- a/drivers/staging/rtl8712/hal_init.c
+++ b/drivers/staging/rtl8711/hal_init.c
@@ -92,7 +92,7 @@ static u32 rtl871x_open_fw(struct _adapter *padapter, const u8 **ppmappedfw)
 
 static void fill_fwpriv(struct _adapter *padapter, struct fw_priv *pfwpriv)
 {
-	struct dvobj_priv *pdvobj = (struct dvobj_priv *)&padapter->dvobjpriv;
+	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 	struct registry_priv *pregpriv = &padapter->registrypriv;
 
 	memset(pfwpriv, 0, sizeof(struct fw_priv));
-- 
1.9.1


