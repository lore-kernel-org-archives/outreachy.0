X-GM-THRID: 6673442126229929984
X-Received: by 2002:a0c:9aea:: with SMTP id k42mr970537qvf.35.1553965961390;
        Sat, 30 Mar 2019 10:12:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b918:: with SMTP id u24ls1113775qvf.3.gmail; Sat, 30 Mar
 2019 10:12:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzXFRn+q0j4WiXFWAesx6P3vYZ+G3u74e/CQ3gj4sSELU0XI+XNn+6qFsMJsu89K9E63Wm4
X-Received: by 2002:a0c:9182:: with SMTP id n2mr5319831qvn.13.1553965960862;
        Sat, 30 Mar 2019 10:12:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965960; cv=none;
        d=google.com; s=arc-20160816;
        b=d3L+YE3g3b25RkoTKfVtso5dw3Z6qL7zjTtgDIQiAjoi9L1ephcf+oiiI+bsVojm9d
         0rVmpDqqqniLxp+yJbG54qc8K0lnVG+2ctvqbM3URjhT2XD+H/sWgMsrFbpIQeO4cVIv
         Mx6Mwztvzjq8tbRYRD30S/PNkctrWg6NoTO+Lbprl+5qZbmSYHwHUntzN/dYJ6/mItcU
         ssyiyLnkVkoir0mEgbX9XtsoSZC+vJHPxZb8HtEuAqfkSMdx8nVvicd9L7DS8dBIXRIR
         Zxt6C4sbqwNjXUNa09o+7Wkw+J6PTBVKdCP3e+a3HN82DfeteLaBorrOrUfcTk72dYMv
         VuDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=6bBPUYt6YCpc5nx8Rxx1L4Tw8iEJWC8yfsUlFhaueMM=;
        b=CSSlp4u9s2CLTf6dIM9OXgh4Gn+nqjgvZGa4xx8xw576sNEls3H/JZ84+cgEt07QUH
         nkbDCRgRIxSFejhX+tkKX2b7xZWOgPpP7ekKs0UEqJG9UgeGmVg9ulNy0UqxQi5LeRTO
         FywDKRDCGuBmGurwRJju+9PE0AJ3bnnMSCkvFR1fLjlEJ3deWdaQMDANWRwQBRp0Y/vn
         Jf5c8FhAXNo0B7yAeG/4Ca+tBXKlTZ6pzl60sul19Bc5SnTBM1hDKOOffJ5ZmQf3ZXgu
         8bSl+qH3ojS/Zd/etCUcpy6a0m+UmeFw0WE4H48KDoq2suowTYpiWQGy6KQN/Z7ml+RI
         sswg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZcBGJcWF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id v65si113372qki.4.2019.03.30.10.12.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZcBGJcWF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id c207so2502517pfc.7
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=6bBPUYt6YCpc5nx8Rxx1L4Tw8iEJWC8yfsUlFhaueMM=;
        b=ZcBGJcWFsaIeMXlLdcpf0ooYC0do16Om2uClbNJNabezdy1IC/OmW5K0iXtA259ctk
         jXccOYyleAuHB08qlE1iRiyb12fgmh/9pZE+RmHj8/Wfo1SBP+sSgnIQ7GVtNh5DDhUu
         6/SEcjMLWzfauAxMBMOYZcSS/0PBuUq6o365XG+KDbiF2KUg5Z4LP1zi3lUMopS2TDvd
         aHRgUhnJqduy35ixMXLgNwuH9qj60820+rXt3QKpW5a4qjsfqEc80SawvA6XVq79Ex+o
         BQTGZL4sAEBsZi3+Cewr3Sgt7ArjyGHTOkJ77U9N6XfNyFfDSC+cgS14hnvQA2IsGSiN
         nX/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=6bBPUYt6YCpc5nx8Rxx1L4Tw8iEJWC8yfsUlFhaueMM=;
        b=is64fnfFmjZOOm5u/li2gSFjeIr4qXC8tv0l1mXKkeZIsxs8QQGOLb6fhTXDyqvXso
         lMWyBDHrGBpD3vqi6l3IGZ7mc3NKLr7uWXhwtYtQ65l6Uy7Chp4w9/I49tETNhOeQfvX
         o9ndEwTqFCaqEFaJEHmI2WABHVpq0K0K7fwtBuydG4O2HRp70NFmP7O8TpbWF7G3x+du
         FtxX0taR4LRItXYBu51IYsLCqg5go5RPNfDizkR5i4o5KIW5zlAv9FTCYdrH472btTQn
         WYBxGA7ByadJr3dLVxH5jtjl+3bD6B+nq9n5oCV7y4nAcKmXcyme8Rgeun9vs6JefLPi
         oJbg==
X-Gm-Message-State: APjAAAV2KxUjnf21fCo1oWizi3L1NtOYJFPSf68urvTurpFDXxZQ+asj
	dR9flSfmdX3LnBsQA/J/6v/NQkJI
X-Received: by 2002:a62:76c1:: with SMTP id r184mr19232651pfc.229.1553965960067;
        Sat, 30 Mar 2019 10:12:40 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:39 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 6/9] staging: rtl8723bs: core: rtw_wlan_util.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:53 +0530
Message-Id: <1d20cb0591e15f13a60cd218112aa46585b0a857.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

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


