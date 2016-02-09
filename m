X-GM-THRID: 6249238680974655488
X-Received: by 10.194.204.194 with SMTP id la2mr3817191wjc.7.1455014264556;
        Tue, 09 Feb 2016 02:37:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.15.170 with SMTP id 42ls788647lfp.35.gmail; Tue, 09 Feb
 2016 02:37:43 -0800 (PST)
X-Received: by 10.25.154.129 with SMTP id c123mr3902171lfe.1.1455014263875;
        Tue, 09 Feb 2016 02:37:43 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wm0-x22e.google.com (mail-wm0-x22e.google.com. [2a00:1450:400c:c09::22e])
        by gmr-mx.google.com with ESMTPS id 5si641477wmm.2.2016.02.09.02.37.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 02:37:43 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) client-ip=2a00:1450:400c:c09::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c09::22e as permitted sender) smtp.mailfrom=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22e.google.com with SMTP id c200so53885613wme.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 02:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=AK2WNDjbx5+Zgen5WyG5AVBGjSiFpD7t+K4tkFwCXZ8=;
        b=O+py0ASe+mFDwAUh8lTfVQVfDCl0zqUHvmQU195sve363uan3IEOG2R5TMJ+GokXT5
         nDZZ8P8p4uoZYWc3xIGrffDffVOhbaA2j3th/jKpwPyPOj+vEBQt892e5bwTmGwWMSjf
         L401LzVK/hLCcTWMwUpY7hbcPsgMkQ0iNmOOqoAlbvGHmeNIINkIKgYJ5CMKI0hqmBQM
         1ukTkZoEEKflM4Vn49pqSS1ELB093vwgIKuUqSxY0W0RemwuSVx/iEXovHOOVBx4cQLG
         25B91VfKIxXbQuTIhqc4gNIEoPzVokCw4i/Qq+cSYzEs804JlJiJedTZ/F8kRFV+Vc9f
         IvjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=AK2WNDjbx5+Zgen5WyG5AVBGjSiFpD7t+K4tkFwCXZ8=;
        b=l0U3W3p0BQLGqWbWjL3dpHekI6ZSal/Pplw/MUe2+X9K9a3cer6+64nxlbCvhSjsAM
         P+CZ+19qIYwMFGFHnU7CHjN7+FBgYWQ7RdNQ9I0+k5UyjnND1Rn1w5CymVC88tzX+cvk
         FdSkVAIs1KvaHArvd8rgCRum94M0o+eS4mTI5K7iqm4YNmBO7JJNaatkVEIr/PL8cadn
         33rgbk3kkYO3Mp2k3nyis3qej+X7oxNNdmRNr9srG6onTJ6F6DQ4w97v+THevHOhsk/O
         zYc8Tfx8Sn0FJmCZzFNNzF1ln7wnudRhfwJUkFfxgKSZ45M1p7b9KhK/z7pek8yyGTaD
         KHjw==
X-Gm-Message-State: AG10YORNvd02xLWf/5CjGDJeJ0HQsrUG9aruGHuVMgU97o40GM1uPNWcwtOPrCqDuGTRKQ==
X-Received: by 10.194.172.97 with SMTP id bb1mr36605052wjc.173.1455014263754;
        Tue, 09 Feb 2016 02:37:43 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneenVB ([109.171.130.235])
        by smtp.gmail.com with ESMTPSA id v78sm16757224wmv.23.2016.02.09.02.37.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 09 Feb 2016 02:37:42 -0800 (PST)
Date: Tue, 9 Feb 2016 13:35:40 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rts5208: fix check for dma mapping error
Message-ID: <20160209103540.GA27735@haneenVB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

use dma_mapping_error() instead of comparing the returned address with
zero after dma_map_single().

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rts5208/rtsx_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
index f27491e..0c9549b 100644
--- a/drivers/staging/rts5208/rtsx_transport.c
+++ b/drivers/staging/rts5208/rtsx_transport.c
@@ -653,7 +653,7 @@ static int rtsx_transfer_buf(struct rtsx_chip *chip, u8 card, void *buf,
 		return -ENXIO;
 
 	addr = dma_map_single(&(rtsx->pci->dev), buf, len, dma_dir);
-	if (!addr)
+	if (dma_mapping_error(&rtsx->pci->dev, addr))
 		return -ENOMEM;
 
 	if (card == SD_CARD)
-- 
1.9.1


