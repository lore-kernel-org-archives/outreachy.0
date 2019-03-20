X-GM-THRID: 6670328284538994688
X-Received: by 2002:a25:3b10:: with SMTP id i16mr1369728yba.70.1553056827107;
        Tue, 19 Mar 2019 21:40:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4f56:: with SMTP id d83ls361285ybb.4.gmail; Tue, 19 Mar
 2019 21:40:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwt4Zq7S8nugENCWQkTWgEyAV9hCPZx8p7zGhLu8YR2P/9/qXefyGIvEpAlIAl3u6RAydM6
X-Received: by 2002:a25:400a:: with SMTP id n10mr1312888yba.38.1553056826109;
        Tue, 19 Mar 2019 21:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553056826; cv=none;
        d=google.com; s=arc-20160816;
        b=zNnZV7cQ4aGRVZ5QV0H/KL21it7cZ1nDuAj7nW9G1JLzDKZXXzO2o30O6wpYiFq3Ee
         7hClHPhMXTl8DBkv4ZQZ9GVJDA9IDf48lvljBhnrB809j1qIX160kVl1iDpZd/7ejEJb
         tY12hdfILyRhLYkQHGSytCgNYIulovhEj/D81SJKe1HDfj8URPpEK1UGmCukN3YbX/7a
         BJN7EifEbM3v9x8fg1lh9L1eT4aNXPlGsyVwURqPHJEOwmhnh7c/3aV1dWTLzyT4pK9W
         OZoCShrh8kEAl/G2RHTC9HO7KILL2AN9KdbuKUQhv2XhPl9HnQ03J8IJY7vZNGEbola9
         2Khg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wVk2Se66mwnW/HEHpDHK65RF5e31/WpYqAY3NnRJkwQ=;
        b=W8Z5huucs8mYSfliEFmGmPbB5+3NHb6O5bWMyolkeBvyOuXDUtrN3019IyKEI3oNZ9
         FEU2hGC7jPw6FHaajirlyzKmFzlxHRdQPgqSCBaxgrdAc8ZtPqy96+sbzQpAlSg64fvN
         s9vdqX+5o0wDGErgZ5qpohdib5HfQRUv62agH7qHURb9K8umE8dj4HOjN8M08kWA0DfG
         PXzK3wwPOiaADYQ9DD6nvz3SDn5p30uozVjhTpewQ9h6oKO/jFQY+b5dOGp4qYeTLUpH
         aLU24gEvT9qMl3aBH4TlbDTCLCrbiFlO1HCFvIOFG4ReXlmn4sQiDjnb2b9Mxe1/rMu5
         fVYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hQSQ+CZI;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 62si62715ybf.2.2019.03.19.21.40.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Mar 2019 21:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hQSQ+CZI;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id p6so797253pgh.9
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Mar 2019 21:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wVk2Se66mwnW/HEHpDHK65RF5e31/WpYqAY3NnRJkwQ=;
        b=hQSQ+CZIxqoGB9XWnZzXf07o5F3cIOUE3c23MjvNqHKDhf4cnAiarijaToYaLFm3Ii
         /WhMCQ7p0e3TnVT1iudz+u2/3UH3SsUlxP5zXFeVQ9r0faB1jOTB77+6lMJ7LDAttOUZ
         HL7wSWMRVvdGqn8EPOtCaIf8EVdWsgxawMSPQBfsMAC7JGTDo+f1sLJhSHpeJljqV8Ck
         y7IvbGnc5QGLY8teGUZStqo0zXrT3UqwlVFuNDoQ0dtU5i5j38c5jenwLUMlFZM3Ls6a
         UC5ad3uN7wmCdV3CGZOOpG/0k5HKyBmYBuyjpA+Sq4l2Wj/GIVWiOHF2P8GtCKmD6qdi
         uYOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wVk2Se66mwnW/HEHpDHK65RF5e31/WpYqAY3NnRJkwQ=;
        b=Dpddv3pRHZydCwhMH+G2B+jSSZD2yfOjp/AOJVNd4XnaSU3Fw3E6GgEGwAupYgOaZW
         ObO3ENEnkko3kXRL9G2bA/X6ZF7Wqq3n6kceTYOz+F219l4jV4GHTozKd6lgXahDY+jZ
         L5sFnFQV6Lu7Y3tszo9u2vDn9poTiFR0GCJzR5K0ukDnYICOtRkTMsrjm5X0dNg3ePVv
         C0U/4Ie3fS13F5FyzTVBF8AaFl8iVoQeE+U24ZWr4cpT3NYPyR9yND+r08GFGnnxlW5a
         RcekRC+w9+MDi4qsZUBEUzb7h/8pVsHnZ/GbH2xUVC7EHqypt4wK2Qy4gECrYkINiW7b
         m0FQ==
X-Gm-Message-State: APjAAAVa7iyvrg0gkFfagSMCDc3091SvprFlAewOecrnsYOztN+BZk7q
	AkuWZqFZFzT6BK7hJ4UtzgI=
X-Received: by 2002:a17:902:8c8a:: with SMTP id t10mr29884164plo.160.1553056825400;
        Tue, 19 Mar 2019 21:40:25 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id l7sm1193716pfj.162.2019.03.19.21.40.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Mar 2019 21:40:24 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: David Kershner <david.kershner@unisys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 1/4] Staging: unisys: Correct malformed SPDX-License-Identifier
Date: Tue, 19 Mar 2019 21:40:18 -0700
Message-Id: <20190320044018.5233-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Correct SPDX-License-Identifier comment characters to silence
checkpatch.pl warning:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/unisys/include/iochannel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/unisys/include/iochannel.h b/drivers/staging/unisys/include/iochannel.h
index 45c785d80ce4..9ef812c0bc42 100644
--- a/drivers/staging/unisys/include/iochannel.h
+++ b/drivers/staging/unisys/include/iochannel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (C) 2010 - 2016 UNISYS CORPORATION
  * All rights reserved.
-- 
2.11.0


