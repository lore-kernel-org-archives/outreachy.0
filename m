X-GM-THRID: 6466280658813583360
X-Received: by 10.31.107.141 with SMTP id k13mr14333418vki.79.1505548287109;
        Sat, 16 Sep 2017 00:51:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.145.68 with SMTP id t65ls8101720iod.50.gmail; Sat, 16 Sep
 2017 00:51:26 -0700 (PDT)
X-Received: by 10.55.17.10 with SMTP id b10mr14304618qkh.54.1505548286322;
        Sat, 16 Sep 2017 00:51:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505548286; cv=none;
        d=google.com; s=arc-20160816;
        b=tXJ93Nt/C2sAWwJ5xVS4lVjA0thz6YMndbHq7mXt4Ha83hkt5+VlXdQg/grpypm49b
         klSxds+nDZooWxBJAZUUAAnf8Khf2v0bB8mUjh0e1OyZngrr+U7JDptWFqDgJTxaBWQd
         Bqs3QzlfrAPR9s2s7YmCoji6oAjnvrhQpkAo/XhnHaE0EJIh14Co45rCdjEjqOmXW8B/
         sl4esqoiTvl/Zz2VNJZ91lUCg43GIK4MhyfCgpJ9fe62wnn+AJKeP6Fg/Z/D6uKiJ7Bf
         Z8k7CYsdFNpAP9j2V+dXsFULETYjC4FtIx5u8QnwQMqlZr26GZ3opxro2PHjqtV0rtZi
         5CKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=YFwuWgoajxo867HF9xvSU8gR95Y5evx+6RcYwtrsFyY=;
        b=NtWy+crfKZ3wKO1ERl5D9NHNu+kgz8IJmu5pjB+95s6Z2P9VoNEJO8d7UFpiP10gxG
         PDpGGPrhDH51Vq5bFhWGeT9yJklLI7sS0htK9t8Z5JMW9ZnoTKOyaCmSiRisWxrVX6os
         z7ew0joJ2I8zDA4cv8yexzQvDSBVKmYwubxnRxzZArk+condgt/Ne9Zqbu5DwflcDJ2s
         hADJ/JKQmXLV28oVxE1+a4pxY38HYLRPDF31uHu1tttjgUvpo9qk+K2OVd8wQQ36HtoN
         nh4XU4cFdH8FrsJDmNwE3TSgFoM4zOe2fitym7mOS8oTjOA4APlibq7vXeW4paw8/IPN
         kMSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ESSFpcne;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id t77si255074pfi.13.2017.09.16.00.51.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:51:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ESSFpcne;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id v82so2456794pgb.1
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 00:51:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YFwuWgoajxo867HF9xvSU8gR95Y5evx+6RcYwtrsFyY=;
        b=ESSFpcnezwv9zB6MlwQcFioM5KWuwtq8PslxtKha7ASY2FdRnq6JXL2lC/6fPxxHt/
         Xd8/NNnaaYr+yXUSIprCXbRx/AD3v5pv9mI/XrxdR25WYLfGBYK3OukCovZFxi69dfkd
         SeHHcTYnMJCiRAnCEr9IljnxgH59KU2FnbuIn0c0nBHw9R8ZrRw15VCAjUB6MI38vfiu
         X8XQmsNq48xK35IOntOhV6/+Oqb5i6AGeYN8kkLHKKOkm1Js7VSBkH2Kn7XFSm0eG/rf
         3FPJPn0QgQXeFf6EWYEnjmLWFNjs4ktxRIc2QR0Ouj4Q8R8RFjVIjUNAdKJnuQ1z5IeD
         uddw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YFwuWgoajxo867HF9xvSU8gR95Y5evx+6RcYwtrsFyY=;
        b=dbuZWj8PMsqOGsXQZbJPypFdD46MRmn8BcMrU1ttZkL6SzuZXR9ze714xTd1EyBPzA
         PQGI4R9/4fEYUSGazLdCyzcqHvcjC4dQXkbKmitTEKbn/qfE0QW1XqT+4XzM8csFwYSO
         Kp2/sxEial2W5LHz2anAKnd0iVvKRrIUu1d3q/10A2AxsxNqHzpM28NTN/13/rAg739l
         JATXSvlH4h4QSHz9tsFb5lT+ZTvUY71ncI75aytaLfHmXmq4LAcFl8H0WJDeCu0A3QF7
         YbSKutrpGtBUpzCAnLSMKpj23KrIbjFUQ+7xQKKbmEvNiIzTzs9gJClqPkuwjEnIzCom
         LxeA==
X-Gm-Message-State: AHPjjUi8rMLPyO8I7Wr7CHEJ/lZUugeXuADNYVkGMMYdeh09wbI4ER67
	EXGIwtHozpf9rQ==
X-Google-Smtp-Source: ADKCNb5AwMpwulE8Ns/SKUt7E4HezDSzCCAcJ+gCMTts/fl+0QkeqEu4QKXbtUYWK75UxeBbCFtMeA==
X-Received: by 10.98.27.8 with SMTP id b8mr26434381pfb.21.1505548285938;
        Sat, 16 Sep 2017 00:51:25 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id b90sm5973529pfm.17.2017.09.16.00.51.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 00:51:25 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH] staging: rtl8188eu: use pr_info() instead of printk()
Date: Sat, 16 Sep 2017 13:21:18 +0530
Message-Id: <1505548278-18277-1-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4

Fixes checkpatch.pl warning:
WARNING: printk() should include KERN_ facility level

Replaced printk() without any KERN_facility level with pr_info().
The statements before use pr_info and the new line character is to be
appended to them.
Could have used printk() with KERN_INFO level, but used pr_info() 
just to use the same function as that had been used before in the code.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/rtw_debug.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/rtw_debug.h b/drivers/staging/rtl8188eu/include/rtw_debug.h
index 9cc4b8c..33bc7f5 100644
--- a/drivers/staging/rtl8188eu/include/rtw_debug.h
+++ b/drivers/staging/rtl8188eu/include/rtw_debug.h
@@ -106,9 +106,9 @@ extern u32 GlobalDebugLevel;
 					 (((__i + 1) % 4) == 0) ?	\
 					 "  " : " ");	\
 				if (((__i + 1) % 16) == 0)		\
-					printk("\n");			\
+					pr_info("\n");			\
 			}						\
-			printk("\n");					\
+			pr_info("\n");					\
 		}							\
 	} while (0)
 
-- 
2.7.4


