X-GM-THRID: 6250932396840976384
X-Received: by 10.182.120.170 with SMTP id ld10mr8897393obb.30.1455408613107;
        Sat, 13 Feb 2016 16:10:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.196 with SMTP id l187ls1079541iol.30.gmail; Sat, 13 Feb
 2016 16:10:12 -0800 (PST)
X-Received: by 10.107.15.143 with SMTP id 15mr10389723iop.15.1455408612767;
        Sat, 13 Feb 2016 16:10:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id q187si1604260ywf.4.2016.02.13.16.10.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 16:10:12 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id o6so44354653qkc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 16:10:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=K0UMgRrveCnlMF3VJuY1UgZpDEAYyj5+qrCnJZ/tcMo=;
        b=h4jDPRf8le/UmADP3X1LavqDB9+ceXE2eWKwrItw7PEc8FHA5JuELaIJ8FKWoGuQd+
         G4W+yj9nnQ2kwPg8tkg9TjcaIsOQnOA5J1C7XpsQzUm7DcGblpcxMFAeq+oFZs316tn4
         uNlRTHT3dccuu5bScsbttMwzdR1SEqa+rs7kApEbvJSBsSRAGj8zSmc7qtIDm/9g6O+1
         ejAILYqFNXmEcTN7j5nDbfAxF5If+rx6mDAGvtgISV7Dmrsu45AU0DIZ861sPryoIeU5
         I37fP3cIkSqusHhpEjeNVM2ZWE35zpiOvwujrZNbFhA7iG8JAr98hmqSVVdxXxFszhMT
         GPxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=K0UMgRrveCnlMF3VJuY1UgZpDEAYyj5+qrCnJZ/tcMo=;
        b=V+LOG2mYS2i1U7Mt3g7Pfm5alWcvcr4y7l+2AK67akN6ORduf4U51x5CIh0jSTP18f
         xae0AH8MRf7dcwtZgjR4xhQ9DmiQuUvXK1yQC9nvLALQNF7/pgetSKG00qubIqyv2XJc
         BWF94Mm8oqfY8F234G+Vg6dqUu2YslRdI35eW4lwX2vYonzAPyvdq+9PnOCf0GoNr6Ym
         FfoeIfZEy4R5YZtIGEYPABk71gCIs80YOaHkiQiEgyeGpcXhJbTTTAWQ1+JOSd8xDBOD
         GwbHF0EYQHj64bWsCSmfwIw+7hFz3dogvBSOob1C4p5VtAQJGTLWVX0w4RukmJ+ho1ka
         88Cw==
X-Gm-Message-State: AG10YOTE7gygHvxl9e9s9rr3FW4PadfZifit9CvxRRTcl535VIf0yF5pJ7Es9M9ssEUprw==
X-Received: by 10.55.78.70 with SMTP id c67mr11245327qkb.37.1455408612635;
        Sat, 13 Feb 2016 16:10:12 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 ([2620:cc:8000:212:5635:30ff:fe6b:610b])
        by smtp.gmail.com with ESMTPSA id n35sm8365650qgn.10.2016.02.13.16.10.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 16:10:12 -0800 (PST)
Date: Sun, 14 Feb 2016 00:09:33 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wilc1000: Simplify code by eliminating else block
Message-ID: <20160214050933.GA26308@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove else block here as it is not useful after the return statement in the corresponding if block. This simplifies code. This issue was identified by checkpatch.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/wilc1000/host_interface.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
index 472fd7f..fe27560 100644
--- a/drivers/staging/wilc1000/host_interface.c
+++ b/drivers/staging/wilc1000/host_interface.c
@@ -3355,10 +3355,9 @@ static s32 host_int_get_assoc_res_info(struct wilc_vif *vif,
 		*pu32RcvdAssocRespInfoLen = 0;
 		PRINT_ER("Failed to send association response config packet\n");
 		return -EINVAL;
-	} else {
-		*pu32RcvdAssocRespInfoLen = wid.size;
 	}
-
+	
+	*pu32RcvdAssocRespInfoLen = wid.size;
 	return result;
 }
 
-- 
2.5.0


