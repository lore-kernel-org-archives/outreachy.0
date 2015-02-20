X-GM-THRID: 1642985422848
X-Received: by 10.66.162.6 with SMTP id xw6mr59350pab.47.1424472664436;
        Fri, 20 Feb 2015 14:51:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.4 with SMTP id n4ls812352ioe.47.gmail; Fri, 20 Feb
 2015 14:51:04 -0800 (PST)
X-Received: by 10.43.144.81 with SMTP id jp17mr411545icc.25.1424472664249;
        Fri, 20 Feb 2015 14:51:04 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com. [209.85.220.42])
        by gmr-mx.google.com with ESMTPS id bo1si3435096pbc.0.2015.02.20.14.51.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 14:51:04 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.220.42;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pablf10 with SMTP id lf10so11370992pab.6
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 14:51:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=iV456olEpmVrGIyaR1qlYSuA29TxqnJu7PmYiwmFt64=;
        b=T7sK466OuRdMhe26EhqVCk8+DTqErP+1peR9Q4dL6cY9JoNKuwzWdP4bh57mXiq990
         1cQgI08teqWt3/HtK5Gq1Cl/5e5BcDxUDSOkMihyUuTe7R/g4wAG0WR27PoYeNoPXBjk
         bGTSRCR0SEk7yF9VGpDtjaCm6vheooGY9BALoeMsZZyPXuD9aMxdZ++l5ldL3Zjc/9Yi
         4rbZrnHaIQX6SP1YEJOKLptL6YRmbbLvcMZ073GlNdFh7bT1QV93a4a+MbrzOkECITOZ
         g6tLvrJmkhMHl6ec5sDTR/iQuraE557RwUCjjCftQ6l5kpIhoblivZJo6xbKt3xOMtOu
         dbrg==
X-Gm-Message-State: ALoCoQkZzA5gBbZ6zSyDWG3QG81e75yYccTkc74Fpj4knOyAUc7dc+ggKi/5cr6QooBf5obXKRGk
X-Received: by 10.66.102.65 with SMTP id fm1mr14365096pab.115.1424472664049;
        Fri, 20 Feb 2015 14:51:04 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:b929:33ec:23a3:1811])
        by mx.google.com with ESMTPSA id go1sm27845385pbd.75.2015.02.20.14.51.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 14:51:03 -0800 (PST)
Date: Fri, 20 Feb 2015 14:51:02 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: vt6655: break lines over 80 characters
Message-ID: <20150220225102.GA9456@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Addresses checkpatch.pl warning:
WARNING: line over 80 characters

Break 2 lines over 80 characters and align with opening parenthesis

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/vt6655/srom.h | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/srom.h b/drivers/staging/vt6655/srom.h
index fc4b179..531bf00 100644
--- a/drivers/staging/vt6655/srom.h
+++ b/drivers/staging/vt6655/srom.h
@@ -90,10 +90,12 @@
 
 /*---------------------  Export Functions  --------------------------*/
 
-unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase, unsigned char byContntOffset);
+unsigned char SROMbyReadEmbedded(void __iomem *dwIoBase,
+				 unsigned char byContntOffset);
 
 void SROMvReadAllContents(void __iomem *dwIoBase, unsigned char *pbyEepromRegs);
 
-void SROMvReadEtherAddress(void __iomem *dwIoBase, unsigned char *pbyEtherAddress);
+void SROMvReadEtherAddress(void __iomem *dwIoBase,
+			   unsigned char *pbyEtherAddress);
 
 #endif /* __EEPROM_H__*/
-- 
1.9.1


