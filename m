X-GM-THRID: 6391852583766458368
X-Received: by 10.157.32.105 with SMTP id n96mr7048330ota.8.1488219167039;
        Mon, 27 Feb 2017 10:12:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.133 with SMTP id 5ls12078540oth.45.gmail; Mon, 27 Feb
 2017 10:12:46 -0800 (PST)
X-Received: by 10.157.80.148 with SMTP id b20mr6675796oth.31.1488219165994;
        Mon, 27 Feb 2017 10:12:45 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h130si3263194pfe.1.2017.02.27.10.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Feb 2017 10:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o64so4744969pfb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Feb 2017 10:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=wx6bHQpmQFtE0dCgqA4sgIhd/wbk75lNMGZ8nPdw62M=;
        b=DSJX7o7+sU2h7YGJkJ/YVr8T6p6sQP8tV0U6fDTjdrWWaXvB7VgdLMSLEg3eEZUymI
         0ZPeD/fKqonD+enm1XwgSl2jS3Df20bdmfbVektYdj7aXjlj/B52X5d6MxANcx7cyIF0
         AvRG19CEGLxYjypPPfQC/r6qs/OuCh/UL1MZha5AUz/Xlsh/5+SyLRZtFi9rXjJozxYT
         jaQ0w1ahJ/gPibW242P92huhP3LeNVjC1tN4zi61GBxaSMghiHMuoxtjVvZZwHNUH0i2
         C3z7X0ISPc0USWEMsN0gfaTelSlYOwCWZVl3E5HDUp4xON6OPVFAb+COwn578BCE6pfd
         7paw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=wx6bHQpmQFtE0dCgqA4sgIhd/wbk75lNMGZ8nPdw62M=;
        b=L8GzkweMW5/Ipq4e5yfZtp7u18JTZoVTn89yWvm6N+kNfbSm+zsRGwjNhaXbB/UGAM
         dGOKXgIjJRRFiMqAEFD61EPkCSjqasFNCp5sRYmVSuJ/pH8RQczohJWm4WfdMqbmESdk
         O5jYAMusfcEqfIoAnq4rER2fldWhsPIAn4l72FnXSQEy4RZ6QkWxpAelB/uSDyzZAWuB
         ANacLuGTG2+JSCUr0CaEfm/GwlGHXtS8SKpPInYsgWM0FuVB8GjlClVD1C222+ApZ5ya
         iQOTxfN7XSLHgEefKA9zfnK9utK2OUN8f5ihG+4E6eyTbHFHCh9+DKPl2ndc0fKDVg/b
         jhqQ==
X-Gm-Message-State: AMke39nXyvVLmAo1BpZthQCfRissWSwP2gotb16TuxqoFCJOG6Iy4SMc97pp/n0SYSf8zw==
X-Received: by 10.99.101.131 with SMTP id z125mr22173728pgb.218.1488219165783;
        Mon, 27 Feb 2017 10:12:45 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from singhal-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id p66sm31927359pfb.88.2017.02.27.10.12.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Feb 2017 10:12:44 -0800 (PST)
From: simran singhal <singhalsimran0@gmail.com>
To: gregkh@linuxfoundation.org
Cc: lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] staging: gdm724x: Remove unnecessary else after return
Date: Mon, 27 Feb 2017 23:44:28 +0530
Message-Id: <1488219268-3006-5-git-send-email-singhalsimran0@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>
References: <1488219268-3006-1-git-send-email-singhalsimran0@gmail.com>

This patch fixes the checkpatch warning that else is not generally
useful after a break or return.

This was done using Coccinelle:
@@
expression e2;
statement s1;
@@
if(e2) { ... return ...; }
-else
         s1

Signed-off-by: simran singhal <singhalsimran0@gmail.com>
---
 drivers/staging/gdm724x/gdm_endian.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/gdm724x/gdm_endian.c b/drivers/staging/gdm724x/gdm_endian.c
index d0b43e2..4ef728f 100644
--- a/drivers/staging/gdm724x/gdm_endian.c
+++ b/drivers/staging/gdm724x/gdm_endian.c
@@ -26,30 +26,26 @@ __dev16 gdm_cpu_to_dev16(struct gdm_endian *ed, u16 x)
 {
 	if (ed->dev_ed == ENDIANNESS_LITTLE)
 		return (__force __dev16)cpu_to_le16(x);
-	else
-		return (__force __dev16)cpu_to_be16(x);
+	return (__force __dev16)cpu_to_be16(x);
 }
 
 u16 gdm_dev16_to_cpu(struct gdm_endian *ed, __dev16 x)
 {
 	if (ed->dev_ed == ENDIANNESS_LITTLE)
 		return le16_to_cpu((__force __le16)x);
-	else
-		return be16_to_cpu((__force __be16)x);
+	return be16_to_cpu((__force __be16)x);
 }
 
 __dev32 gdm_cpu_to_dev32(struct gdm_endian *ed, u32 x)
 {
 	if (ed->dev_ed == ENDIANNESS_LITTLE)
 		return (__force __dev32)cpu_to_le32(x);
-	else
-		return (__force __dev32)cpu_to_be32(x);
+	return (__force __dev32)cpu_to_be32(x);
 }
 
 u32 gdm_dev32_to_cpu(struct gdm_endian *ed, __dev32 x)
 {
 	if (ed->dev_ed == ENDIANNESS_LITTLE)
 		return le32_to_cpu((__force __le32)x);
-	else
-		return be32_to_cpu((__force __be32)x);
+	return be32_to_cpu((__force __be32)x);
 }
-- 
2.7.4


