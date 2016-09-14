X-GM-THRID: 6329929865196732416
X-Received: by 10.36.110.210 with SMTP id w201mr3108052itc.7.1473812860400;
        Tue, 13 Sep 2016 17:27:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.32.200 with SMTP id x66ls7595ota.23.gmail; Tue, 13 Sep
 2016 17:27:40 -0700 (PDT)
X-Received: by 10.237.34.194 with SMTP id q2mr2982312qtc.3.1473812860068;
        Tue, 13 Sep 2016 17:27:40 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 142si276318pfx.2.2016.09.13.17.27.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 17:27:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id g202so252367pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 17:27:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=hhXtJv4PTHVYEKehLBjqSisWNdRqWLm26Zz0cohNNS4=;
        b=WZ4uc6Y6AnZ8BdwpvRoG/Ic/T+DUNlpJsoj7GJKDy/bEL8MQkPjJZw5aylKSBlRjB2
         TTihu0q9zFCh2sxA9vBwxoIDtR/NqwjLv3omWWzAsvpnhQaneK921ugWjRb8rQ3jClD+
         QXEky5oIUQ0bd4lzAi0qyzlPneuXlCwKRdabLmKBPMWgEVSha5duRjFZUK1U7qgRXZ2Z
         HvvLyDV5RhImGBY9cGOpiOR9TSOcO8sBFsHQ05P8+pW/y2Vw0d+Ro5HWw8Jyj2wdXLSQ
         ZzIdxLKIlqb1VgmFHhpsdjjhobVAXf2RDZQSokYK4f6ApBVl/Zm1Gg0RRSLLSArV7pkD
         jn1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hhXtJv4PTHVYEKehLBjqSisWNdRqWLm26Zz0cohNNS4=;
        b=EuqoYXh8AiC0orzZoe0/cb+HEAE/UMwhzcp/bsgGJcAw/k33lxzzk4BeaZ4uu2h+oa
         FbxyfKWTZFk0JEyNPrSlS8WdDf3rOyaW82z9zuS/n/RTg8wkZBGJo6C27II30wVV968n
         BbcQ+t7HSgkW/RFQDpzB0rxSqWx7ySEZZACPCjkZZMEtTLCp9CRTIpIUkGp74nI2TXw6
         b5WZLNw4N/B/O8EgWRhzvZgktl1U3t3/VVdt1sQoFx+T5fp7iSrzLbW50KRmbag44IBJ
         sd8jadAfqhXYgpTlPbCbue6MH5xmItkRhk6Gff0dPbV0Uwoy0/qHH6+54Bmvk1YYMLXj
         We4g==
X-Gm-Message-State: AE9vXwMjtEL0qBfbhbk0jqkA2tbxaeLh9ncyMQ8LLr42ZfgYSVHvu041yEnGJAjdT8F/pg==
X-Received: by 10.98.99.67 with SMTP id x64mr6306321pfb.26.1473812859535;
        Tue, 13 Sep 2016 17:27:39 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id m128sm33506766pfm.42.2016.09.13.17.27.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Sep 2016 17:27:39 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3] staging: octeon: remove multiple blank lines
Date: Wed, 14 Sep 2016 05:56:52 +0530
Message-Id: <20160914002652.12359-1-gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Fixes the checkpatch issue Please don't use multiple blank lines.
---
Changes in v2
	- Change the commit subject to :Correcting the commit
	  message. Fixes the checkpatch issue Please don't use multiple
	  blank lines.
---
Changes in v3
	- Make the commit message more clearer. Also, fixed the subject
	  mistake in v2.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/octeon/ethernet.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/octeon/ethernet.c b/drivers/staging/octeon/ethernet.c
index 0bd5c18..ec8e424 100644
--- a/drivers/staging/octeon/ethernet.c
+++ b/drivers/staging/octeon/ethernet.c
@@ -686,7 +686,6 @@ static int cvm_oct_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-
 	cvm_oct_configure_common_hw();
 
 	cvmx_helper_initialize_packet_io_global();
@@ -929,7 +928,6 @@ static int cvm_oct_remove(struct platform_device *pdev)
 		}
 	}
 
-
 	cvmx_pko_shutdown();
 
 	cvmx_ipd_free_ptr();
-- 
2.9.2


