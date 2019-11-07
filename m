X-GM-THRID: 6756641036009734144
X-Received: by 2002:a2e:97d3:: with SMTP id m19mr3571103ljj.56.1573153083486;
        Thu, 07 Nov 2019 10:58:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3101:: with SMTP id x1ls1833487ljx.1.gmail; Thu, 07 Nov
 2019 10:58:02 -0800 (PST)
X-Google-Smtp-Source: APXvYqyik+NmZp0jxQzU5BsZlpBX5VcdjyXBYdvARMWjVv0MfuxmXO1qasf2H0vjlSzsGUvPi3f7
X-Received: by 2002:a2e:b5d4:: with SMTP id g20mr3584724ljn.140.1573153082316;
        Thu, 07 Nov 2019 10:58:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573153082; cv=none;
        d=google.com; s=arc-20160816;
        b=iTgvb1ovQuusa7SDQMyQ4TzskZhGqToR3AFL2Pq9qnlrZMSijwY0rpOavlPMQAY/rB
         QMF066fuZtu0ziTFyKV99LF/mvnF78dbYCDUeeb/MrA07R6R75zCR2nZa4h2px7GA1I2
         /X345/QGU01vVdt+X/PjdYoXyhv2PGAZ472E82KMTUeqZ9SJlwz6bMe2SZYgmPIbjI3w
         hvF5iGE0pe6GHE/WlftGBg3iiSYu/zQ5cNqfQmORRv3JupQAd6AuEdfAPytXm6MNU09u
         z+55k40j3M/KIxGOP8QXE9pK3WQ4xE3XdC64hf2+Qcjh1OnLN87+edLIPhNzBlTvEAoT
         z78w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ohdYvb1bcc7vF92vrVIjh/JYukuDFuJMPWiD5R3y3B4=;
        b=PHVphAyo6XSZPYo3aYbRdRdWBzuCIOS4RUv8pP1QtCmtRBOyHv2571b/d3iDX8Dv9/
         y75MMWj+YnD2o/vhgchoueG3p3xqtmFRspps9jTPLgF/PwI+rhtSTyA79ybdAkjCFHgj
         BDp5qda3OSUTVXGYSC0wZrnlGjSuc+Pn3QynUhH3NrIPjtjiBEBfotJK5nah9Eif7YQK
         jlyeR1jixDV9OLinzmHkBUd3eq5KpsX0OVA/NrYPOM4sYLbL7sDIsSs0xItGWx3X8lQZ
         I5pLUIbPb/gI8qGSda3moeb/jAcGL+xhO2fUmY4J0UbeUC+UyiHKe/Qsm8tvTHKEpDxe
         huYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfPmy5cJ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com. [2a00:1450:4864:20::344])
        by gmr-mx.google.com with ESMTPS id s4si369037ljg.1.2019.11.07.10.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2019 10:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) client-ip=2a00:1450:4864:20::344;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JfPmy5cJ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::344 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x344.google.com with SMTP id l17so2857906wmh.0
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Nov 2019 10:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ohdYvb1bcc7vF92vrVIjh/JYukuDFuJMPWiD5R3y3B4=;
        b=JfPmy5cJshhiVq+7H5oFWTJLSbmR/rp1woKs0dVH/O25zsvO6TeLb5CbuuB8L1bXQo
         6QEQWvO6xiKTu8D04tY/m/p5ovQU4H/0Y9a1Y7u47WDtyx7NkIAEGpqaIzRiFAbD2mZh
         CCTe1U+4rtZa2HBMTyDpwEu9PVVk/4T0y4FHaLTj9r2chcg70LI1GRFtNabl0W2a5bcH
         PaRb4hfsQxJIOf4SKhji+dAdYspDzkYHJ2k0N7JCljkhmCFIMcBDsmCllYrLsbtC8N/x
         T6zFdEu7V7r0ZSTldgfN99Xfcb1FABfrDUvlDqT9WXBLYQRzafL82vCKCf9mHnQYCDwQ
         Hakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ohdYvb1bcc7vF92vrVIjh/JYukuDFuJMPWiD5R3y3B4=;
        b=cc1EzYp5+9lnntpeXzUCsAX9EhtvSVyWtxlBLsieSlpPhVDc+omM4ehZEAD4sc8RlB
         Kt+SmKypqitCrjWKj+2hHNfemNQreVdW3XvE7+WDPfc+IsG5xRwlt2o60MvsGBIfhU86
         OpZ7unSqB8aMyf0e/jdS65hl/961zIh+ICO+BMpmykiuNxyaJ9OvwWzRyXAlzWVEQaEY
         8kNakJvdEZq3It3Ln/aKfWgWghhXWqqNmoc8HKIRf3J5XduS+9CjBA4lgMUAuYi1CPEo
         NYLvjpvQDzRLENlOK9dVGeXpDApS/yoUBDbUCF0waM07Kc7jeu2iM31gpJ1QnicDaWWX
         oupw==
X-Gm-Message-State: APjAAAVGFaWrKi982LLxwxnj4OWSgoDRVK1OL5XEIVq3pdTUNJVELoY8
	8NkyGVf5zCUDg3taz8wDYQ==
X-Received: by 2002:a1c:1fca:: with SMTP id f193mr4081257wmf.173.1573153081830;
        Thu, 07 Nov 2019 10:58:01 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from ninjahub.org ([213.205.241.171])
        by smtp.googlemail.com with ESMTPSA id j67sm2968939wmb.43.2019.11.07.10.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2019 10:58:01 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	jerome.pouiller@silabs.com,
	ast@kernel.org,
	songliubraving@fb.com,
	Jules Irenge <jbi.octave@gmail.com>
Subject: [PATCH v2 3/3] staging: wfx: remove unnecessary empty space before a curly brace
Date: Thu,  7 Nov 2019 18:57:40 +0000
Message-Id: <20191107185740.381485-3-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191107185740.381485-1-jbi.octave@gmail.com>
References: <20191107185740.381485-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary empty space before a closing curly brace.
As per recommendation of checkpatch tool.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
v1 and v2 are the same.

 drivers/staging/wfx/data_rx.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wfx/data_rx.c b/drivers/staging/wfx/data_rx.c
index 1d26c1b77725..5020b5b0c320 100644
--- a/drivers/staging/wfx/data_rx.c
+++ b/drivers/staging/wfx/data_rx.c
@@ -95,7 +95,6 @@ static int wfx_drop_encrypt_data(struct wfx_dev *wdev, struct hif_ind_rx *arg, s
 	memmove(skb->data + iv_len, skb->data, hdrlen);
 	skb_pull(skb, iv_len);
 	return 0;
-
 }
 
 void wfx_rx_cb(struct wfx_vif *wvif, struct hif_ind_rx *arg,
-- 
2.23.0


