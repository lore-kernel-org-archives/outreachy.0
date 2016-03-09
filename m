X-GM-THRID: 6260131401138438144
X-Received: by 10.66.244.171 with SMTP id xh11mr4806278pac.32.1457550423400;
        Wed, 09 Mar 2016 11:07:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.197 with SMTP id g66ls762534ioi.0.gmail; Wed, 09 Mar
 2016 11:07:02 -0800 (PST)
X-Received: by 10.66.122.101 with SMTP id lr5mr4815459pab.3.1457550422062;
        Wed, 09 Mar 2016 11:07:02 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id ui7si5723pab.0.2016.03.09.11.07.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Mar 2016 11:07:02 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id u190so18553726pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 09 Mar 2016 11:07:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3SgIEhYPxVGu+MuuEMsHp/EluNL315+dbIB4Fs6LQPg=;
        b=Pl+jFbi39lMrmldIl4PwQwXSSvoRyw+PFWuKKTDSCroWvpmsrQESa1nE10Y3mYRiuu
         hpkPz4IpabzGv1cgfRNoxgR7+FZPcCS2+zwY5HtOIuZDNb0g5fNJTg7NW9QOOKnQ1q2O
         Fa3/0hYLlDcdIX6FUswa9Gw6d5CR9VG6fBkuIMXRk7XEcHGCcnnc/ukj4x6rKeb6TEfX
         x8YgBY0DwjioVsyUPCNIvZKZAX71+01iJe/yxZWwEDFLqHDZvVvkc7hN3eF1jWgFBhzq
         lTPuWnPyJIBKC/9SDveAHFRXbUvVwpMJ2MDjpWfNMLfei1R2pPyFehBduI7zNw4LCJ1h
         04Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3SgIEhYPxVGu+MuuEMsHp/EluNL315+dbIB4Fs6LQPg=;
        b=hSbSBivpFJpPMA+86UldrvVTPdrX+pSCOyOlZc46LBTNe+6txMFlca/82x4cjulUid
         5/VZ+AukQ+kIv9HCNzN8/xl0BPJ1vuXTtcFywSPlDkhAWlQbMl+d6gASZ3bKzujbVO2q
         aJmPWImwmBvAGKseXPI6VCOqY5/8a85FY4f68klM7wvJV7bIu1jM3l72fFLtB784gOkA
         jIfb6fO0ZEDcCaSd6y6WICapH305CdY4Q1pYZPIJxc5rpw5CIvz9Bp6fdx/gvY1LZYAN
         G+twAn15Jo6jN9Rlu6BSCyGh0JLPCivwXaYwgBj4AfdMq2wHx73X+J9ZmKefIiX08lX/
         jOTw==
X-Gm-Message-State: AD7BkJLqqlpBJlg4I8XG35Cm2qBbOAj1W9S9sM+kH2KHiAe4LQEyXZV8Lgb+ywcROkRowg==
X-Received: by 10.98.14.67 with SMTP id w64mr52852664pfi.154.1457550421853;
        Wed, 09 Mar 2016 11:07:01 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id d28sm14079718pfj.68.2016.03.09.11.07.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 09 Mar 2016 11:07:01 -0800 (PST)
Date: Thu, 10 Mar 2016 00:24:49 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: dt282x: Prefer using macro DIV_ROUND_UP
Message-ID: <20160309185449.GA16509@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/comedi/drivers/dt282x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
index 6c26e09..40bf009 100644
--- a/drivers/staging/comedi/drivers/dt282x.c
+++ b/drivers/staging/comedi/drivers/dt282x.c
@@ -377,7 +377,7 @@ static unsigned int dt282x_ns_to_timer(unsigned int *ns, unsigned int flags)
 			divider = (*ns) / base;
 			break;
 		case CMDF_ROUND_UP:
-			divider = (*ns + base - 1) / base;
+			divider = DIV_ROUND_UP(*ns, base);
 			break;
 		}
 		if (divider < 256) {
--
2.1.4


