X-GM-THRID: 6469984660854145024
X-Received: by 10.28.24.207 with SMTP id 198mr262001wmy.12.1506410693888;
        Tue, 26 Sep 2017 00:24:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.85.202 with SMTP id g71ls1504028lje.14.gmail; Tue, 26 Sep
 2017 00:24:52 -0700 (PDT)
X-Received: by 10.46.86.157 with SMTP id k29mr717018lje.39.1506410692520;
        Tue, 26 Sep 2017 00:24:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506410692; cv=none;
        d=google.com; s=arc-20160816;
        b=dkkt72wC56GhJI2/dI7bnP4xEItIw91wHNraII8ecvQVECYjX8x64Bh8rZ/+D3h7kT
         U+gbpXn39AD+SHfSjZqow51TulKekjKfmd4iNjM6O3JG0osEH+8UM9yUXO9uVX/+dVWQ
         YcnNYxCN69ABYKQHuO7jpUsisnEMzHbzGGvPlZF5XRYFEUHFzgGbAgG6gvXRWNa/KUP/
         9tHS0LakM/E5/I41O5MnOIh6IAnagpxOG8NLuo0OGnFejSxzT92eyn4R9XhncVO9a5Co
         /iOjVtxhrUu9XYXNpNoJM+bxB2J6Oz0eTMUmR6WowFI6I0/GK+Y+7eKASvR+0yu+Lkw8
         OiTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=epycRWLSDk2hywn2oBStjgQfrx4APTuxD6weHlXl27k=;
        b=SCLFZXFPmEMMD71htp1rRY6hd48HW9gZgK/frgBSbPLitNE2NvHyVBT59o3/Qa7nIe
         L+DTpZbPFpR/hLlX3LsDtm7Evd4VJr8+vXlnJwtZalBWNjVop+KphfvOgEfqg545EJCv
         56wTwta8aoAZcslaAtFJElY2D29U6FTfaRaN1IILWCeYxkrD3IeVXXArsoBwINiw6f9i
         21G0l6uU/JKW+2CMxVkh24BU+4T7beLG1G9FoDqE7Bp7ri3N/bXPWJg0ZnjipAE3dRkQ
         nuB67tSdrbmJ5DEjN5XtQKhn+/SffpraaDvyM+wAIpshn9J9jC89Ntvfqlm05ty7SGYq
         gQMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BDJuR8vK;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wm0-x235.google.com (mail-wm0-x235.google.com. [2a00:1450:400c:c09::235])
        by gmr-mx.google.com with ESMTPS id k18si843686wmd.1.2017.09.26.00.24.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 00:24:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) client-ip=2a00:1450:400c:c09::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BDJuR8vK;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c09::235 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x235.google.com with SMTP id m72so4470630wmc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 26 Sep 2017 00:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=epycRWLSDk2hywn2oBStjgQfrx4APTuxD6weHlXl27k=;
        b=BDJuR8vKreJO5GatjyXQJKGc1bh/Wf6WVWguKC/3CMtj+z4vdoUJh627QH8YpbDhP3
         74sJH/7StLfUdsQ5Wbp7zfC+erEa8qCdBfcMryZY2hXisJ1o1XUbiT3ctD5Cdm3QmSYQ
         M9eMEKTfbXzg6n/SIeElR8v2XTUvUvfytr8W1x7Nm25kUFSYIJ8wDGA8oLK+igxnD+oj
         gNsij9g22QeFjAZx1TmJPT6FDgqOhRajdSMNEzYVxxbWGdZdICc811fRuWGMGfRkdpWv
         Ljtcf3MI5iGbW8Chsd6VslMJT1wq0UXtUibqedcQ6S1wxOw4+ArlDRWYzpERI8PVmXt/
         Jz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=epycRWLSDk2hywn2oBStjgQfrx4APTuxD6weHlXl27k=;
        b=SO8Hugrk9Akvja4gfaAh0c5k/vFd2eKGoz6CJJ3h1WruUqTISFnlEjwacF+k98iS3i
         cx8k/3YDNUvar3ZBEd6YbdMtCc1hDtQ72Bmw+63tl6ubkw4TOsI0oeMRESaWrPcgytVX
         Cn92dpDlxHXZKHkS5AlcJHYRJaXO94Ar3aI/LhB9mnjOSE7d0Nd3/FWCJyraSOXeWtnd
         7+ocgzW0QZ6jQkWVftpMXukMHV1XEeXQ/C2U34i12sHNdhH3lmEq79uB8IQenN8ONIzP
         WA2A/KA/op5UamKadPUI6EQ7LBwfJV5zK7hc2KgmA1UMTgWiZz78pGFQnxYHRTeU5ZLq
         lRfA==
X-Gm-Message-State: AHPjjUg/gIJExmmffmjvnzfgBEvfBvIoIFNap4wbeUnzmAUnDUUru7ZC
	dgxEKWJp7fGehqgWxHv+2OEuCesC
X-Google-Smtp-Source: AOwi7QCBCoLtdgn440SuxaTKLJqSxTsaCeyrbD1z2mIUU60/u6jLZLLuVFwMxfA+IKhzhPJtlzFCCA==
X-Received: by 10.28.165.136 with SMTP id o130mr2453796wme.107.1506410692268;
        Tue, 26 Sep 2017 00:24:52 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([93.122.248.7])
        by smtp.gmail.com with ESMTPSA id m138sm1153151wmd.29.2017.09.26.00.24.51
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 26 Sep 2017 00:24:51 -0700 (PDT)
Date: Tue, 26 Sep 2017 10:24:50 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl8712: Fix indent coding style issue
Message-ID: <20170926072450.GA10682@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes an indentation coding style issue found by
checkpatch.pl:

WARNING: suspect code indent for conditional statements (16, 32)

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>

---
Changes in v2:
   - rewrite the commint message.
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 0978727..8f555e6 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -149,7 +149,7 @@ int r8712_free_recvframe(union recv_frame *precvframe,
 	list_add_tail(&(precvframe->u.hdr.list), &pfree_recv_queue->queue);
 	if (padapter != NULL) {
 		if (pfree_recv_queue == &precvpriv->free_recv_queue)
-				precvpriv->free_recvframe_cnt++;
+			precvpriv->free_recvframe_cnt++;
 	}
 	spin_unlock_irqrestore(&pfree_recv_queue->lock, irqL);
 	return _SUCCESS;
-- 
2.7.4


