X-GM-THRID: 6670855650542616576
X-Received: by 2002:ac8:2e75:: with SMTP id s50mr3371076qta.375.1553179614244;
        Thu, 21 Mar 2019 07:46:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:58c4:: with SMTP id m187ls2554963qkb.7.gmail; Thu, 21
 Mar 2019 07:46:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyVrRe2+3SQWxZXvcVqo0Xyt+HPqzV0wESdojcLyiX3HyfsbfbyZSXFolq75oH2jv0xHzgf
X-Received: by 2002:a05:620a:9:: with SMTP id j9mr2726830qki.45.1553179613608;
        Thu, 21 Mar 2019 07:46:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553179613; cv=none;
        d=google.com; s=arc-20160816;
        b=ymbqe3yt3I4jgZ2ccMsEXKIOH9HXSevH8eVMra2uIaItChjNgF8lRxjkXDlnWDlpqO
         DeV7A8IreTpa+ZL9xzHt+VI5rcfJdwbkgiwfTR4OMYD9hMLvx3eq6tuWO+tk5UJiTChz
         dER7EMRWGD0hK7TWWmJoLwAiNfxrA6CB+NAZ1a5SDmaqYwNDF2ncg0OPz+K7gIc98+rK
         GKN+NSVn7Ds3z3pcwjB1J1vmdzGpdCWXiTVUniT+r5SNVJ2V7oHDuwnzByF9+ok82ZeN
         Q3Dp8KOUgqFwPEV7w7yFrNh9MtGtOVLKElNf9CU5XfNCm9UGxp8fsJrr4/rcMgR40U1O
         rQIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=/hTUQrIi1jucBYFDVpMDNyl0WP2rCy4RLAd9fdCHwjc=;
        b=nvGjaeb/blM58jl9ZI50v8sRjAVRFXxYshP1gPW4OVs1NddYXCsznyZygRMockHLWJ
         6zS5HcM8yxkWJjg1rOeeUAjL2E6I7ORlO+CrPyMmHxjH7aaOqN2zNJVXy6OVaRPIgGg2
         /RLg45J6U/Q4KA+wy7dNILyCm5i11sPQPNcjhztBrq0h0lmjyVkoDpQUvv5UJNsid3jw
         ef6LgXa9nj++O28TntPPdPRrav/NTKl2yWwKsxdLudIxB3IMQYC6JeE7arNFjVl40hoJ
         QLXs1LoR2tsPHvDjzvTMy/Lmu+vWqQ3mWO74A81lIUeajquen+RtUjy1LL9mcTLtQuV4
         c9MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Me7MLlZB;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id t17si508976qtq.0.2019.03.21.07.46.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 07:46:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Me7MLlZB;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id 9so4191710pfj.13
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 07:46:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/hTUQrIi1jucBYFDVpMDNyl0WP2rCy4RLAd9fdCHwjc=;
        b=Me7MLlZBjDFI/Su0t3jtQV5hCwtBpq51fziFXh2IlPUBtrY8DmxyY6aXfRt8rYN2Si
         TkYzSlNMQ8U6MDtzv5t2FSFqmxGCtvmIHSIZ7ltIS3IrneJ/6IcCmNgBJLQPZql77U4A
         3OtSsxlfRPOW33/5P3xkDfMZ4rer9p/NAbd5H+oUUXS4EwpbJVcDhgcPJAJkg0L36S/H
         TonFZ/dSuE/qB6ebZL4GD2tEnbD1e7fSukeGfMbm42PqcgSoO49VhQfAiff96BTGqtP0
         gSMdo66T8i+iWG9OO4O6EH+Xl00H+5kcUQReWtJ/y7dfFAN5Js6gL/OVkMMJHX1vaM/g
         1r5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/hTUQrIi1jucBYFDVpMDNyl0WP2rCy4RLAd9fdCHwjc=;
        b=Xear8EwNMXyhff/PpvTdxjQXj8IZE5ZObM0qFiADbthKRxt4Yz46P9Tzgh72lAyrca
         aZieuYQ/wA5/h4jZ1v30tG39Rp/F3AtnTDndks+VhJcV/x2hqc2ogC3kCenXzltb0dT4
         WS2PHAZe5g7oTqDtRdJ9ekOsOXYtv11nxGhYxm39w1aTQOr8UyaUfifuQ5DxcGJy9Iv4
         HqGGms905cJuahwsPD9lRsJWmQ0CrYOaIs+upa2Gc1IWPgXFXEmczHSm+aGNc/pxBhy9
         u7q++9t5LakdyKoHZvZsFiniul9qmYUY9u8cfQsbxD7cxWecjQ1lDMsNEf5TpL0fpCbS
         D9Ww==
X-Gm-Message-State: APjAAAVEW86ncIkw/lBil7PfvWiohhuuXDMULkUuybZv3LKPVw1J/RtF
	IhlQ5+hP2GwwJbUZvX0hX0VwtJaS
X-Received: by 2002:a17:902:10d:: with SMTP id 13mr4045884plb.230.1553179613008;
        Thu, 21 Mar 2019 07:46:53 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.235.30])
        by smtp.gmail.com with ESMTPSA id k83sm15820782pfj.178.2019.03.21.07.46.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 21 Mar 2019 07:46:51 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH 1/2] [Outreachy kernel] staging: rtl8712: rtl8712_efuse.h: remove blank line
Date: Thu, 21 Mar 2019 20:16:38 +0530
Message-Id: <1553179598-6366-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

To avoid style issues, remove multiple blank lines.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_efuse.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_efuse.h b/drivers/staging/rtl8712/rtl8712_efuse.h
index dbba51cd..41de101 100644
--- a/drivers/staging/rtl8712/rtl8712_efuse.h
+++ b/drivers/staging/rtl8712/rtl8712_efuse.h
@@ -4,7 +4,6 @@
 
 #include "osdep_service.h"
 
-
 #define _REPEAT_THRESHOLD_	3
 
 #define EFUSE_MAX_SIZE		512
-- 
2.7.4


