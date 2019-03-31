X-GM-THRID: 6674617337151225856
X-Received: by 2002:a9d:20e4:: with SMTP id x91mr5824371ota.19.1554055481178;
        Sun, 31 Mar 2019 11:04:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:eb8c:: with SMTP id j134ls1435941oih.0.gmail; Sun, 31
 Mar 2019 11:04:40 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyXZ2182CjV3mqYPxYASO6gmMjt9qfUIul7b2v3gt+VmWTHJssFzBsmSlK86VRD5qbBE+IU
X-Received: by 2002:aca:efd5:: with SMTP id n204mr5278278oih.22.1554055480648;
        Sun, 31 Mar 2019 11:04:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554055480; cv=none;
        d=google.com; s=arc-20160816;
        b=dL9xU5k3vjg9G6ZvVCxEZNyBXSASry1nMFe8jwlrRsimtLav0OxtVN3WmqRC8H/gsZ
         DqV1lqQG1z1kjaTZ25Kk5R3fYwBj5daT+3VlPlteyTSjsflhSGKAZTX8TrqkwxLrl6yv
         r0K2aPhbE0OPIiW7NLdDfYz7lcQLBqioJ/ZAWT7TPwHHK1MrYwo5QZ6RIyLxAorSfqA8
         wDeYmjeFdQp7XrJjJRkvwn34Nck2uMszvNo2G7GhTH6yJEfEcKOHbgcgCWNg5xapsCV1
         OZ3RCC44jWVDTcM25j2rpGfHjHMhBQFeqJ1/Orvu0XwKQZGxvKtuk7hreHyOxxUWNFcI
         R3Mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=72KkqUU4eFYnaKPIoxbH0oy0ZVwMUlxnYePvjfiFBJ0=;
        b=jq/EQA45ifp+N82vj7z5s+j84+AKA+9Hx5V+xFjxW2O5pKDJo2YuBzKpn+8TQYux9i
         HYsdIZm/9ud6YjgHYcjQSSwrbtA+7fCCOjhNN3zZOjzDNP8Kz7I3zZmyhy0gp2MTGVjL
         PgxfXzmL1Yt68PzWCRWk6iYMnmT7z05yksQS6dMVh0iIC9BgKGoLESyz0kceiscviP97
         XH/LsSCsbj7bgXFXQHALvGCX9N4cFrTE9cpaIY2GLxS2sxLoU8YiiJzVATPYB/wDxvn6
         9TZDYG3aHQMkQLbf2kLKh05TJZQ/EggvQFCuG6CDFGtI/Ca/O7wjC7UXNliV31nJmz7e
         RIjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXK0IRLY;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id d12si384918oib.0.2019.03.31.11.04.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:04:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gXK0IRLY;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id z5so2363964pfn.3
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=72KkqUU4eFYnaKPIoxbH0oy0ZVwMUlxnYePvjfiFBJ0=;
        b=gXK0IRLYDT8xmtJQDdNY1jBoY2kvY47/XhnM8C2vTHnBP+aiXZzgTUimirnnmSvYTc
         LYWgQtsIRSmLDDFmj3PRuVKeR717EOKQSaIOh/VKfRO3xIPoarVZxZ8J47pcGIJn+D+j
         mesn7mrMd0BQtd0S5sI5o54m28zRV6RvD3WEbGqTcSdvMCDuc6FYuIgSlhR68HPVZaxG
         YjpJ1iE9tw/MBog92b4jYkhw7p3SWRhLJbqL7FlU7Iv7OFnyGwEHrg0SnPWwijeFkV2u
         O++Ktj4uzxwHnHTyJc/hH9+4DhUMBjPCfvHQkS9UsRcFZpeYbcsc5MRVQv20o3HHcxhH
         lvsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=72KkqUU4eFYnaKPIoxbH0oy0ZVwMUlxnYePvjfiFBJ0=;
        b=C7Mx16fDUpfulUDHQ1uFfnodMVAds/dzNOLWZBfhD9iPwwNCiMBRQ28/hWcl7h2Kmm
         FhRhdzWxzxEcoHBt3u270zfkyN1MzWAnWJ9RdmXZieYfbqFA+CRti6bVL8FVYDBbrqpg
         FC5V0uqGtOEmJ6RAkgggdRlPB+eEAPlAQjzuYtOBvBLoN+YbKJ9Ff2SPZx8gfmmSFp0l
         OFxAo5L1+YzSu8sQXrvL/YnnJHa4xzWEvJKAyqtfu3jFRRxvfh0gPmP91aW1pGzzBPGW
         qDMT5QWXG4+5azPHGf9b+qZ2pYPZb5CSwyOf+6l70ZOVlE5pbMPtGcR8w0+zdAyX+H3x
         CASw==
X-Gm-Message-State: APjAAAVqSdpV7xuRSoBbPjL6hRHide769XpYq4vb284as/u+LRU4OCHr
	0Ztbz4i4aIDacr6wWPf7560c9/A9
X-Received: by 2002:a65:4108:: with SMTP id w8mr56734331pgp.236.1554055480000;
        Sun, 31 Mar 2019 11:04:40 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id e1sm8289669pfn.187.2019.03.31.11.04.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 11:04:39 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 5/5] staging: erofs: inode.c: use !x in place of NULL comparison
Date: Sun, 31 Mar 2019 23:33:51 +0530
Message-Id: <e6df527e5c73d438aae5b8ed3f98195f4a0d6805.1554054896.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Avoid NULL comparison, compare using boolean operator.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/erofs/inode.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 924b8df..90d6aa3 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -129,7 +129,7 @@ static int fill_inline_data(struct inode *inode, void *data,
 	if (S_ISLNK(inode->i_mode) && inode->i_size < PAGE_SIZE) {
 		char *lnk = erofs_kmalloc(sbi, inode->i_size + 1, GFP_KERNEL);
 
-		if (unlikely(lnk == NULL))
+		if (unlikely(!lnk))
 			return -ENOMEM;
 
 		m_pofs += vi->inode_isize + vi->xattr_isize;
@@ -264,7 +264,7 @@ struct inode *erofs_iget(struct super_block *sb,
 {
 	struct inode *inode = erofs_iget_locked(sb, nid);
 
-	if (unlikely(inode == NULL))
+	if (unlikely(!inode))
 		return ERR_PTR(-ENOMEM);
 
 	if (inode->i_state & I_NEW) {
-- 
2.7.4


