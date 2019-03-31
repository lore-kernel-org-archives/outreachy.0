X-GM-THRID: 6674617337151225856
X-Received: by 2002:a9d:7511:: with SMTP id r17mr5541223otk.16.1554055475291;
        Sun, 31 Mar 2019 11:04:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls1452879oif.1.gmail; Sun, 31 Mar
 2019 11:04:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqztnmjJeMj9b/5FxyI3W4WNJSwBM8YXqqqjQK77L/Fz7Eev+cW2QX7ZQ3deHmYwpSD2/SHM
X-Received: by 2002:aca:6c53:: with SMTP id h80mr4027428oic.11.1554055474762;
        Sun, 31 Mar 2019 11:04:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554055474; cv=none;
        d=google.com; s=arc-20160816;
        b=eejf7EBe5QeyOEi2xAPrhDIuVe+7tKxAV799fchxyxb/6up3X+pTBlWPuXjrzzC4ew
         ew1WGZ7z4VMssHC3w9hcQMB91/dgiEljIOgTtqdM4OlEZwskN3UcQ/nyG1DxUFMN4N92
         5Ktu8nVz26MFBipdsc0Tc9LhOlQcE7w6ORlajPX7oJ2vsJzPEVhvhY6xr/MGNl9s+hdz
         yyRxM1QrbVPljm4yQQHyZvwH0+RB0L9bi7SaQqZYIdkXWfhyfeOGKbHvhG5PevUQ1+iB
         XEU4ScmIJf3X5AoIBiZf4qennBlEgqHW7rYhgXy5KfZeOu9VL4VQW1CqWfkZAfw9anDu
         KVPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=2cpKV6HeEOW5jL/qcOc/5HmUlhkUdrBN6X6DN61tKWw=;
        b=P1DD7HopI9GJNpgkl+83jBl3Zw7uJP1hV459kd7pljl3lUJ3BEexrW+eNeUF5gO8mI
         wmqPQzp2SNxFijYYw0WA3XWZ+I+3Qr22lI5tpNALhXTxXYOL/dXFf9ZB7NZjWvRf5fvJ
         MzfSfst/1rZXOzSPG37wZD3dgf6WmVTBcgNE+Uo7C2YwXQAIz3JyaT+nebNY6xS0nAC2
         YUL4gnG8NGVRVyVtIynrM6AxEavHcl82K1P50PnQeAn41W0QTbIqPnc4AgtUI9chKBKY
         KGveudr0ZBARlMJwUG5BO8qybUIvZX9W/uhAnpxZ0FV0mxe0WDHXmRZAiqTEjpvEVTkP
         wvlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j15J6IaO;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id 196si367529oii.2.2019.03.31.11.04.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 11:04:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j15J6IaO;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id ck15so2126949plb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 11:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2cpKV6HeEOW5jL/qcOc/5HmUlhkUdrBN6X6DN61tKWw=;
        b=j15J6IaOHAazX/Hjh3HTHe5BBQvj1nvQplkRGMzNnZED9AkbjOJaXPDKzRwD79V4o+
         aPFpgw62JTc4TdOi5lVX+chCAcY7fsTqZnqoQaOhBll0zjpCrjyARYD/urGlnWy6yC7I
         zSHZjnWt8Xmjjz4Q62e/9NNbyVwDiyRTOD76owbnBVPalhPS+h6bTSZL0z+9u/kIra+c
         blTRtuWM5pOAdCXRbKaJhPiYQQ9FsSOZ00TOUpfot/JRvh6m3jv9SeDXHxUueH6Lzntt
         QkqQUv4Z82QNaaBciY/Iqq5aRrJXYD4/R86s3F5Gb38IsyiDt0hDeirlMDtJP44bytMi
         9iMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2cpKV6HeEOW5jL/qcOc/5HmUlhkUdrBN6X6DN61tKWw=;
        b=k9cAMF5pzEEnIpLGaTJUYUJYiWkHLQ8NV8YEhSoIFQcomefOZ925u9MYkpchu0y0Az
         w7/9HH7e9ncc6wbipL5amRRSkR22eGr0vnJne7d6ZPkzCefN/S9DXWIFvvFpRBvZIG51
         j++gm7pbYH1WLdyxyLgf3M0pwJfWmKdLzBpbKQSgW7/Z4ELZ28vOzLGKujgFUZgTLvDu
         55USdiuOdMZEChgbaEiOo76bTSZvgjs0J5+gGfgmYbKJVnjIojCO7jgGlt9/e32ARgEi
         MMQrGv22Y5QDydyqmIQivyFG7wpyHW6LcWY492gcL88RMNfFXZZgbFY3parLbNg7dojb
         rqnQ==
X-Gm-Message-State: APjAAAVtdNa2br1NpyOzp67ajS406LvqQt8OhroHud5ts5O9Iq1MWszv
	yO7N5NxmRFO0e8uyfNU0dzptRl3D
X-Received: by 2002:a17:902:b715:: with SMTP id d21mr31340574pls.103.1554055473788;
        Sun, 31 Mar 2019 11:04:33 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.230.116])
        by smtp.gmail.com with ESMTPSA id e1sm8289669pfn.187.2019.03.31.11.04.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 31 Mar 2019 11:04:32 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH 4/5] staging: erofs: xattr.c: use !x in place of NULL comparison
Date: Sun, 31 Mar 2019 23:33:50 +0530
Message-Id: <a97298002b948592e465f5950e8960d0c4b02856.1554054896.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1554054896.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Avoid NULL comparison, compare using boolean operator.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/erofs/xattr.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
index f716ab0..aecbbda 100644
--- a/drivers/staging/erofs/xattr.c
+++ b/drivers/staging/erofs/xattr.c
@@ -36,7 +36,7 @@ static inline void xattr_iter_end(struct xattr_iter *it, bool atomic)
 
 static inline void xattr_iter_end_final(struct xattr_iter *it)
 {
-	if (it->page == NULL)
+	if (!it->page)
 		return;
 
 	xattr_iter_end(it, true);
@@ -107,7 +107,7 @@ static int init_inode_xattrs(struct inode *inode)
 	vi->xattr_shared_count = ih->h_shared_count;
 	vi->xattr_shared_xattrs = kmalloc_array(vi->xattr_shared_count,
 						sizeof(uint), GFP_KERNEL);
-	if (vi->xattr_shared_xattrs == NULL) {
+	if (!vi->xattr_shared_xattrs) {
 		xattr_iter_end(&it, atomic_map);
 		ret = -ENOMEM;
 		goto out_unlock;
@@ -344,7 +344,7 @@ static int xattr_checkbuffer(struct xattr_iter *_it,
 	int err = it->buffer_size < value_sz ? -ERANGE : 0;
 
 	it->buffer_size = value_sz;
-	return it->buffer == NULL ? 1 : err;
+	return !it->buffer ? 1 : err;
 }
 
 static void xattr_copyvalue(struct xattr_iter *_it,
@@ -435,7 +435,7 @@ int erofs_getxattr(struct inode *inode, int index,
 	int ret;
 	struct getxattr_iter it;
 
-	if (unlikely(name == NULL))
+	if (unlikely(!name))
 		return -EINVAL;
 
 	ret = init_inode_xattrs(inode);
@@ -543,7 +543,7 @@ static int xattr_entrylist(struct xattr_iter *_it,
 	prefix = xattr_prefix(h);
 	prefix_len = strlen(prefix);
 
-	if (it->buffer == NULL) {
+	if (!it->buffer) {
 		it->buffer_ofs += prefix_len + entry->e_name_len + 1;
 		return 1;
 	}
-- 
2.7.4


