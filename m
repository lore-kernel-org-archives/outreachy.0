X-GM-THRID: 6473410411176656896
X-Received: by 10.98.238.16 with SMTP id e16mr319680pfi.20.1507782707485;
        Wed, 11 Oct 2017 21:31:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.0.12 with SMTP id 12ls768717pga.29.gmail; Wed, 11 Oct 2017
 21:31:46 -0700 (PDT)
X-Received: by 10.84.234.140 with SMTP id n12mr295092plk.5.1507782706828;
        Wed, 11 Oct 2017 21:31:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507782706; cv=none;
        d=google.com; s=arc-20160816;
        b=UCgSD/srPa1ApGZSXTLW3R1r6U04as441Brt46PecOl/nnyXrcQBWAU8uhtUV09l2j
         Q2/NcCVu/hgpRG7S7ku529cIIs1tdDlBS5u9MO1p7vMlPmlsK02fk+cHcE0ZGoUh1rxo
         +kMyNQN7RR0Dk2KV664Nt8jCJYFziF3xYAjYGed/PIHZ8j30wPNTp8Ej2lJKqPe0lX9d
         fLGTMnuP8vZ8Nu1ziAaZy9UqLHTiDT4eVHORgv9O0zu1xPgPrk11wAiWoSaG4d6gfHb1
         AuCSsWryAdf26K2k/Gbp9aP6M4Ozy0Z0asknYL7UYqezrvsZbSwoGdRrAW+3FLXQjNTa
         M54w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=cb2qxxuVHRVb9+pQVfq6DhjNPSg6YpKTyaJHSNzhP8aIqNFuePK+Mshcls1ONLIEQZ
         xPOZ7ln3WUzg4xTl6jkqkHy3aOsGePzOdZavGxf4LmNgLk4aooRMJ2+/nhs0i7CzvFGF
         7qWGPzRibznRmDZPf6sGEGj5xxL4B6LORUUjfQ+g7dPInuGxF0GVK/UsiSSrrWTyZ0sv
         lQcBJpDfIuL99qrPIeeYemDEQFItsxUERx56ALDc0k4ueKQMi6QizvyR5C/+OgIJfCqB
         woo0zZmL69L3wf0lyzs4KthEcDki/Kn+vC6C3uRJMtGoI83i+pHKKtko0RLdpgEZH/PW
         N8eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTenEk9H;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id w11si1605851pfk.4.2017.10.11.21.31.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 21:31:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTenEk9H;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id m28so3249755pfi.11
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 21:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=NTenEk9HVPNaNbTHRv5d1af6PT1bPKF3GH5Tz1z/neUluhY/SqaZ6AjDq//EOoWa8N
         AQUhYEuszyTQj5ACjJCIMxpLKh9cA+6yjIkiyQ/pfJaG1OgZNLhzsF8ki3/86TcBhmgo
         y5Vg+oAzUQWQvnd9afA3rUM5XbztvM6FJ/msAm/1Xdoc+q1GX+UmvnB5dAXJv9zm6AMF
         qZvLGXlS9ZeIJg9YDMWzlpJWN6kZiTdaauRZFHhdtiii+CfjqS/tbbuC+N6SuhlzY48u
         NYVKcrGtlC19e5W18+3FDqlTgbyW3WDLVnFTQq3Ecze/o4qx6XHbHiVAYpcX8yue/a50
         kK4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eZIWsGMaauBNFteWa8e+UIcE/L3LknodtQ/CRuK3DJc=;
        b=S4QgQmsiQIDcS6nFsASJbx+rrLHve80lX2bpRNJTLTDTqGb2n/Ck3DREusH2/EJp9d
         kAlAZfCbKGfWiW7xyLtLw7rrCKgMzzNq8atI8k+5CCUucwSpwP34+dZB0XchZf3wT/vR
         mHsS2ROqt23wL2nuKBgErwldR8YRds8VpfekD9Ypi7wZ0vPBu07TMZCxoR29bvxluaOk
         GhxxxlJ6gm/iN6kv63CRexMRZq5Mcmrg7U+Taw+TJQjU6BD1EBCBmN2A0sCnnm6mWTgP
         QOwqnvIIFIZg499Cy+oElOaBki0ddQJk8bgVpiVLKMe5VUyxyJAMzyp5zi5nswA26UPr
         kgJA==
X-Gm-Message-State: AMCzsaU2HyUnXB3gKOv8tWed4QMQAM16h7+bIUvuwAHVy4Oc0PwmDB6X
	TOBVTuhsPyLs1YAvh7V/iY9FXC/R
X-Google-Smtp-Source: AOwi7QDdCcG6b9L9SjC9E04mJOSlI6dAu6bK5/NU3yyryb8S7ETkxiXA1j5VmhaKU0n7Hi7XW0Xb8A==
X-Received: by 10.98.205.12 with SMTP id o12mr1106890pfg.339.1507782705949;
        Wed, 11 Oct 2017 21:31:45 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id y5sm17156594pfk.3.2017.10.11.21.31.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 11 Oct 2017 21:31:45 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 02/10] staging: lustre: fix comparisons should place the constant on the right side
Date: Thu, 12 Oct 2017 10:01:15 +0530
Message-Id: <1507782683-12754-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>

This patch fixes checkpatch.pl warning:

WARNING: Comparisons should place the constant on the right side of the test

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index 4f213c4..a3c0481 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1130,7 +1130,7 @@ struct lu_context_key {
 	{							 \
 		type *value;				      \
 								  \
-		BUILD_BUG_ON(PAGE_SIZE < sizeof(*value));        \
+		BUILD_BUG_ON(sizeof(*value) > PAGE_SIZE);        \
 								  \
 		value = kzalloc(sizeof(*value), GFP_NOFS);	\
 		if (!value)				\
-- 
2.7.4


