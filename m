X-GM-THRID: 6663618170330284032
X-Received: by 2002:a9d:735a:: with SMTP id l26mr12600983otk.51.1551745466637;
        Mon, 04 Mar 2019 16:24:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:3189:: with SMTP id x131ls333617oix.2.gmail; Mon, 04 Mar
 2019 16:24:26 -0800 (PST)
X-Google-Smtp-Source: APXvYqyDt3UrH67YQwHunlBjIBDAlsrqdV6/HCaVtjqOF+mmhnZaJGCywxQ3wHJ85xLA70RsQBDg
X-Received: by 2002:aca:4911:: with SMTP id w17mr13586214oia.5.1551745466025;
        Mon, 04 Mar 2019 16:24:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551745466; cv=none;
        d=google.com; s=arc-20160816;
        b=u4H22AG8+dnGy6Dad7E22rrjlGYR9ycLf/wTIdpSAl8+GBsBUmY6EiYJQTImQd3MJn
         WLd1swhUmroQ4pIOws2LZgy72vB9oxpwExEF44VfeWOPCG2FUKIb9ciFDKE0OHUIwqbu
         GYR4FIL3odD1cJBTnkJAz7IPj1dBYNU+LDl6WKYZ5bCjn7Am7f2G8ebwYRW3JFdWCzsM
         t7R8cmCxnGLt7gJYC/HtXOye18Udh7MnwzdOvDZTvubDuRPMQNKB3zFH1bY5GO6PlEnf
         lfamVhGp9D5ZN9cT2zDSc8VQyJB1A4YTu6Kl7Rcb+6pXPLnd0Qo5agPB3nutUp9SJmBL
         ofIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=czSAUTEBLeAHhFnIra8ObxBAz+gfebAG/clcdgOCDn1YWgx/dS5goly1MFCxDVgmAU
         PiAXbwtHgggAkOvP04FoL4x+o04aoDTRrGo/09ot89KDoy9I/WcKhcQenKt50WvKds8Z
         +VzNc3kREpZ4QRwRg1V7WuPHBUueT0Cn9524n1eWWtgnyGpS8ExlgEYcS3fSNb9ex8cJ
         35v1In7cB0/e+Y5nB1r0x75kb3OQKxdi2H4l6conUIdVMYPOPEq93AjVqoM8OUXIISFR
         4yhQvAsutDcPuYNLi4iVizXtOcq/iyIBBxj0BBgAfvM4fFay7pPNHECn2K1vDsIcJAAB
         +DcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LmGP0pas;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id l6si529752otn.5.2019.03.04.16.24.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 16:24:26 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LmGP0pas;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id v62so5921773otb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 16:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=LmGP0pasXAzYhoItOzKW3savoTYs748VwTkpEPrgj/tG/92LaESp6odaowVNVQA+v7
         N6D/KrUES10pQc5VAmS6q3O8R3wO6kGvUqZhB7c83UJgNF3bvFYqyZb5mGKvVJj8PZFY
         pfsnaXJpqcSht7xbzm6OMEKjzfdFrz9rYE8SOUUncR8cuhYGdRIQN9pogK5GbFtxvyF6
         VvQPG73jeGV4sES3iNVz/rXIi/pzKwyrbDDchsHAMLcN3O8U5y7Hw4youds6XiKOTgyC
         jAlcGvDmRl6DK+2/AuixGilZN7jVbX+2Sz6xaiPwNiP91GoyJI72QKIzF5YVnxYQ76FX
         zHTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=h0kTcG1C3nCyH6BFVXDI0Agz09VGpFy0x/kjpnAvEzk=;
        b=aR0FvWzqMHH4i1HPqLFlto1ivLy5Y9YgoLkwdtAKW4ycdbmhz3Rnlfx3JJ0UvEjFFB
         4ucBmHCVxX8NWRMt563mo/9T/jbfgAQe6hiXsQfnB9d5x0RCk7/pdsdIomKNHBPE699N
         RxAqRxHhY8/5cSNVTcWt0eveevXAtA9EyieOUto5eus92F3vjj7rgewamnhgxqmi4hYr
         3MORmzXn9Qi75GK1ohu+CALqzvBCDpn7sstT060o5f5XGN3gtoAJ4I6Na6BsDwWVDnIV
         U6+9e0USC36DMnsoMqvjZcQloVLSntarp7WdIZD5UTxE5fv6H58CFvQd6k3GDo7cS0Ft
         My7Q==
X-Gm-Message-State: APjAAAXt9b4O7pgPSkS04h+4mAae5UsnG0nSNibRNzzyMCfSWw10CrjF
	j9hQJK3VroPo9qYOMnPW7I4MigTVfDE=
X-Received: by 2002:a9d:7986:: with SMTP id h6mr14782298otm.88.1551745465780;
        Mon, 04 Mar 2019 16:24:25 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id s21sm3421136ois.2.2019.03.04.16.24.24
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 16:24:25 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 5/5] Staging: vt6655: Fix space around binary operator
Date: Mon,  4 Mar 2019 18:24:03 -0600
Message-Id: <14e333a7c15e2335ddf48b0ec5fbcb2519b51a9d.1551745071.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>

Fix the check as per Linux kernel style for use of spaces
CHECK: spaces preferred around that '-'

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/rf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/rf.c b/drivers/staging/vt6655/rf.c
index 825b6ab5c0de..fd09b9771cf5 100644
--- a/drivers/staging/vt6655/rf.c
+++ b/drivers/staging/vt6655/rf.c
@@ -792,7 +792,7 @@ bool RFbSetPower(
 			byDec = byPwr + 10;
 
 		if (byDec >= priv->byMaxPwrLevel)
-			byDec = priv->byMaxPwrLevel-1;
+			byDec = priv->byMaxPwrLevel - 1;
 
 		byPwr = byDec;
 		break;
-- 
2.17.1


