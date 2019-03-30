X-GM-THRID: 6673442126229929984
X-Received: by 2002:a6b:6a11:: with SMTP id x17mr6372061iog.35.1553922815696;
        Fri, 29 Mar 2019 22:13:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:574d:: with SMTP id u74ls1317305ita.4.canary-gmail; Fri,
 29 Mar 2019 22:13:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8kqaPuSWb/SuCjY0QxJzxwZUr8hEDU63f8DQ3YQN/ZNzlai5xNvhjS8/1ZT5xMgKBIRMI
X-Received: by 2002:a24:6893:: with SMTP id v141mr2558514itb.39.1553922814887;
        Fri, 29 Mar 2019 22:13:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553922814; cv=none;
        d=google.com; s=arc-20160816;
        b=vT0Of7fkmF/PtgN0pL1/mqwq3681Teof02JPqnxk8AceHV2BD1e462AP1nQpVMvYjM
         1pfiJr9/6sGX3kLumwRdlTRHJ7s+aizRtxC0XYj7dlMh4GCIuP3VFevEP2SiNUnv1r7q
         Q/7+JN2yXvjDWsr0QySul2bXYiAu+G3fsKcHht2WWVziE8o2N/SAaCGcZf2WfPHpaajK
         lR6c+3+jNDet1or4sU6NDKg7AZK29Hjd5r+b5hAfNmlVwlvhUltndHVhFbvkMpkJ0R3e
         PNVPEdMHf9ClX85T03+T+URlorbKtJec+zkdFXNpb8R5TGr1m7LLbHsg8Wrnwshj+ldZ
         0BPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=6bBPUYt6YCpc5nx8Rxx1L4Tw8iEJWC8yfsUlFhaueMM=;
        b=HHYtKxvdFVK5Q7iO6xJ//yWt5lRSptOkixRtT453XawT2jL45ggfylRIyRVJSQ15QX
         w9nZg0orFupkbxZvetLxlVsvbJDzmXX8erctBI+ugaCuEpPWkSH+zKsaPjryV22Rjsug
         9zGDClRAhpQO/ZebkQ9/hfDdLse+tjYx3QJ/orVcHRwwInPs9DoifQBIcZBTTiStw8tv
         zLMMaQc2q6MfUliWlHtwUQ4CyeBVKScXJf4dTFT6WuH2QM7Bjci1G9d+D6sIVAYsKTDf
         z7VUS+J/UD36KQw+M8t/S/qubZtQrTrXk6PZrT0cR4HVdGMWTBlbv5mxPtZn7qXfYH9h
         OxeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q8wypmle;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com. [2607:f8b0:4864:20::429])
        by gmr-mx.google.com with ESMTPS id k26si146930ioh.5.2019.03.29.22.13.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Mar 2019 22:13:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) client-ip=2607:f8b0:4864:20::429;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=q8wypmle;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::429 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x429.google.com with SMTP id e24so1984240pfi.12
        for <outreachy-kernel@googlegroups.com>; Fri, 29 Mar 2019 22:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6bBPUYt6YCpc5nx8Rxx1L4Tw8iEJWC8yfsUlFhaueMM=;
        b=q8wypmle/Oxsd414egy8fmw+3L6uw+iono3xqt3j+AxZCFHq7YaIdbISrz/mgOotf2
         LDmnpF+gx7I3sqxG//Ckq0JITlqJ4t0rCxkt7wAjC/06ah2/2wiTZxvBTQVX8qatqgtD
         vskAlodRpt7O0j2PxPuD8mO8KGpJgq1Ch93U92Y1F+pRHlt5cf4Qrg/EKHwVlkvl1NFe
         esOU4PDfgqze35BZtwvx+b5yIgZdh+c2XsHcPsK1hx6pAvj+q/+dqAk/jW5s0vob2EmU
         sVHuU5imQqIVgEqk82koPCNMpfd6N7PZTDg/M8+yu7eSYASQuRMwX2FM3OfVE0OUIUKV
         dUSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=6bBPUYt6YCpc5nx8Rxx1L4Tw8iEJWC8yfsUlFhaueMM=;
        b=lFiNsQcg7xqfZ20M5+o+PNp5PkAwXxVYNvRDCw3pEXKJvKiKWGL2rZTDQAtfS3hQr1
         PQgjrl4iRq1L1LCAcUVDPXJ3UsV9fqQtid8kRDgBM3cAVFqRZmpnm0q8yRU/btooP3hu
         f/XUD7jU9bI4h5VNYi10aAidi4v/fLwpAb+JNkiZP5oTAKWcB7NjR7lRcxqUqEIwQ7FF
         2jU4IS18I0MTnKL7Itu4JUH0aHnuj5Nde+E5yk2xcqvVJT41CY2baGgdzto9/zxD++8K
         ioBZJ3wkzyDBmw0QisDxg0dXppr7T7SLy8wbH8rg+RfK8df5R7tUf1oKBrjA6ws/kE/Y
         MkKw==
X-Gm-Message-State: APjAAAWcNhi7bvrNBcjFrrYmbKhv07+n9sEstGBOSlhzEvFDDV+zsFpY
	wDT6oQOmbe+xsMTcO99Be86Y+rIE
X-Received: by 2002:a62:5543:: with SMTP id j64mr50817612pfb.105.1553922814318;
        Fri, 29 Mar 2019 22:13:34 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.4.242])
        by smtp.gmail.com with ESMTPSA id o2sm4864557pgq.29.2019.03.29.22.13.31
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 29 Mar 2019 22:13:33 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 6/8] staging: rtl8723bs: core: rtw_wlan_util.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 10:42:45 +0530
Message-Id: <1d20cb0591e15f13a60cd218112aa46585b0a857.1553921776.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553921776.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around an expression.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_wlan_util.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
index 2c17296..fdbf967 100644
--- a/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8723bs/core/rtw_wlan_util.c
@@ -518,7 +518,7 @@ unsigned int decide_wait_for_beacon_timeout(unsigned int bcn_interval)
 	else if ((bcn_interval << 2) > WAIT_FOR_BCN_TO_MAX)
 		return WAIT_FOR_BCN_TO_MAX;
 	else
-		return ((bcn_interval << 2));
+		return bcn_interval << 2;
 }
 
 void invalidate_cam_all(struct adapter *padapter)
-- 
2.7.4


