X-GM-THRID: 6468311343549120512
X-Received: by 10.223.153.226 with SMTP id y89mr448273wrb.18.1506599313075;
        Thu, 28 Sep 2017 04:48:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.47.194 with SMTP id v185ls31863wmv.9.canary-gmail; Thu, 28
 Sep 2017 04:48:32 -0700 (PDT)
X-Received: by 10.28.212.14 with SMTP id l14mr127194wmg.11.1506599312474;
        Thu, 28 Sep 2017 04:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506599312; cv=none;
        d=google.com; s=arc-20160816;
        b=g+qu22P2eINZd5cMvqbKfB2gOdCQ9gIcnkZglqowlPsGoUULQj/paLP7ispXi8x7yd
         BSelFcITyldP7jFGm029SP3OkZ8QTEd+4VhKqjyQTPD50GYD2zJyLnZ2a7q5o5EjCICi
         4s4TAjuo6IFVnOoKVtlEMfyiqnguH5qRpinkXjiqRpA5qbCJ3pxPNsXJwdBtXGA9lhwy
         9FCxSApnDZyENdT4J77UTjGfZn0S0LGDhJG5RANgSNDsyupDzQrFr0dDNg9gN7mJ6QvA
         biv++b8xZpHkdL10owo5E5lmTj4zM2omVzRsMJAtsFaLLjniJ0j6KvbmR/PN0lx38ZPl
         WV/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=BC8W5lXwW3Pi9WMcczRdGiZOZDQayY4qT2cD/1sZ7iU=;
        b=TuUJpE3LL850CsfwA0Y7TyMQiy2mpSmvJQ5hk48ExBLTem9HpBf2xQGC9u49sWbo7G
         jhrNwlgZu6Puardlvae9qtpkQDxiEn9T3Ub8hlsWk1upE3n4nnrH8dp24O+KBr1+WtVt
         wVQ6ml9LGrkC8HZripTNVuO7/SSx+O8Z9ujOi34kb8tPtq3gwwIQmCUumRST8dDX3ued
         qjdVz2oPEw1LvcLAVXFxBhl55+uhtbV/Lpx33/j9gLbhgeojY4Yay7cKeMdeOSCeLiAI
         7BySLnI/wPZ7CgAEC430j+raPg/tCG3Wve0+d8cboHzojksGwBG9hJ8etne+Oe1h2VPb
         UEMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dBJI4eGF;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id h17si103048wmd.0.2017.09.28.04.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Sep 2017 04:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dBJI4eGF;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id 97so1807850wrb.0
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Sep 2017 04:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=BC8W5lXwW3Pi9WMcczRdGiZOZDQayY4qT2cD/1sZ7iU=;
        b=dBJI4eGFS8shWn2UWqb9Dr+asvPTWdHOQAKWqQarPpDaUuloyRJCp7WP3PEbnG8S9T
         0i0MXRQtd497S/M0OzP6cOYsy4Nee+Wqhe7e1nvCzpCTEv9Ri3qWGETjPbhaZ91Odhdf
         VLsz8/WkOICLjYTC7LDn0ez3WoJMDpXF49Tljl0d7fKil6cgdsxz40UM+JuV38QRZU49
         gtTH4GqHEtuobeo1kVXgniJanw0NMTCoFIH+gEGwdRuNNGWiEo/OY7yjqKeatFQY+YKd
         m5TBhYG/uu5z86/RT/DXM0EcrhLY3pK+9hJGs5aRmYc6fJt4uwF1wUEW8idLPCSEp03Q
         j3gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=BC8W5lXwW3Pi9WMcczRdGiZOZDQayY4qT2cD/1sZ7iU=;
        b=ZM4XRV0ayC7HnVSEoabhKVwZKDqH9lwrNlPB2iCCv+iaZjybLkpmZIzlJjIusFBRdT
         jf8VHVwJeKaCgHpgv+1vQnAF500X52IY5wmvC/utArxnvCiLMcyEMDz3ReKm5hP/Sovp
         eVCA9xY4M2+yE7PtXzzPM0laTpRFLhxv0c+7z1FkLlwLYRQe4dpi+ZvKYOfIIM9VUX3u
         pZZ9phnh0wa3wYBhqzk0YP7szRrT/zM1ar6YQd7rzMqch6wPA1nI3f09s+GGeH6FTtSF
         aoeVJFBRKth0854gYgJ2i5VFaY9t7T5ktDpSO6LSW1Js1fjrkUbu45ZM1GjjrlULVHhD
         1V/g==
X-Gm-Message-State: AHPjjUi3p3/OGArliBlfgLeVEH6rzdQT5HBkFOV+IeOkxQEjEdE4oBRD
	5MXPbs4zpn/y70pJYPJBRDf/rQ==
X-Google-Smtp-Source: AOwi7QBedWqvFMueNgvEroiwPb/R5/VeHkis/ElDGQ28+HTmJXdBNIfiSdoa7YvraOzkiZdNj6N6Vg==
X-Received: by 10.223.156.203 with SMTP id h11mr4045085wre.178.1506599312118;
        Thu, 28 Sep 2017 04:48:32 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id 25sm2339928wrv.8.2017.09.28.04.48.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 28 Sep 2017 04:48:31 -0700 (PDT)
Date: Thu, 28 Sep 2017 04:48:30 -0700
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: vc04_services: Remove typedef struct
Message-ID: <20170928114830.GA12488@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch removes typedef from struct and renames it from "typedef
struct vchiq_2835_state_struct" to "struct vchiq_2835_state" as per
kernel coding standards.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
	- rewrite log message to have less than 70 characters per line.
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
index ee00f51..a96bae0 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_2835_arm.c
@@ -84,7 +84,6 @@ static char *g_free_fragments;
 static struct semaphore g_free_fragments_sema;
 static struct device *g_dev;
 
-
 static DEFINE_SEMAPHORE(g_free_fragments_mutex);
 
 static irqreturn_t
-- 
2.7.4


