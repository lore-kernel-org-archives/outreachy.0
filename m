X-GM-THRID: 6809948615797112832
X-Received: by 2002:a17:90a:be18:: with SMTP id a24mr7700346pjs.92.1585564719976;
        Mon, 30 Mar 2020 03:38:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:6455:: with SMTP id s21ls11554280pgv.9.gmail; Mon, 30
 Mar 2020 03:38:38 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsYFpFNtEzIA9NCHiBF9qFVHdVGwAtJj4mDqowdsB+oe6prvWHt+KrVCPPznig6zWvBsFBT
X-Received: by 2002:a63:770d:: with SMTP id s13mr12375047pgc.5.1585564718603;
        Mon, 30 Mar 2020 03:38:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585564718; cv=none;
        d=google.com; s=arc-20160816;
        b=Y8L5nSNym/rB88kWXU1GLdcqI5tXmpXYBgPzYLjfOo27x5BTG05YxQ3SQhws9CLCso
         7AkiDFcIfIBA7kFlOWr/e/cNcMw2Jki0ZSZ0wl035IZebIIYF6YMLmak7LgkBP54Qvbf
         YwGLGIyFcnocRpKVHVWMIOU+7hhuaV4Z6kvH9Jp88HbG0NaA++rYWWkMpOl2tykWOeVW
         aFps5P3a32kEDNxCripVKVFH2FpKFPRMpCWgPOXZBGr0AVe1NB/obY89Cx4LReUbpqyj
         g4cFl3oukNCsPcR5XEFbz1MWFSHj/0fFJe2cdvbO+W8hoxmAZ/jqYlECPLFRMYHpZvS8
         h9XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=USg8LmP2UmiYxUXQPkCBKoGbEz0f9bclI81RA4aINcA=;
        b=w4mwpEFBIfpKt/NLt2J8KOQs8I4L+MQK1gPuLGUHoack+oA0r3AGPrMmgyB/3/V4C6
         TKl/e56gKJlVbLXusRYkNXo55ufNH/4SWR7SJYhnhiw6nayStAMi4RjlLYPS57unAjuX
         x13BRjUU/uuQwU60O8rXanq64KCIi0ZCc8KpubeYOurd74ZLcZAmZtf4+n4Jv4NXLmPS
         yXK/9wTEPtWlI7ziv647kiikg1p8YbyYsySNFbrpSGQ3Q4bptAOPDT1v7kOOFJuqllPB
         Yqbm0duhjduzW5NDcjhQ9/qtCh8uvWYcrrUNXEWAiwBLnq4wCd1lCHR8bodPGJZwCXKz
         aLDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fsCamMTC;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id y5si794211plr.4.2020.03.30.03.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 03:38:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fsCamMTC;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id u12so8451595pgb.10
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 03:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=USg8LmP2UmiYxUXQPkCBKoGbEz0f9bclI81RA4aINcA=;
        b=fsCamMTC9R0n2+XtrYD5rnIHKJYR4WNfwv8p2W5blpxPdSuqWxrvdkl9XkGPs3oHoE
         nOuPdwjD1FTDmZjXBIA8t6Jw+ink/2KEcEKkHz+YQal9Q2j5vdm06GSBhPyMWg1E+ArP
         rqOEwXDIWcIEfHUnWDiDb2ITLbuovJNeK0wmeZnUrlabmQaoGRyC7uz85cSf9/h4+rcl
         EF5nuNirxmKiOqB3YL/QUvkWTT1pGPZUiNDR7oe+LgxxYZj3G9+X4Bc3w82NTsFwAz8a
         +qju1wabmSPVKYt0QGLYLB0KzSMex8SEQS5Fdm8+Nd2vyTCpOjLaS6FiJyEN97xM9zJy
         1TEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=USg8LmP2UmiYxUXQPkCBKoGbEz0f9bclI81RA4aINcA=;
        b=XNK13rkNsHpqJJZHVE4vhPnIFiOCf5HsVlJZAyhGzKnn7all+zImIY8Jb4UuBrJubv
         nJQo9Eblj/rSPfZrHgF/+sYEWf+PKfI1XL8KF2FcFrFblFN3NNNcbQjA3nlLH/qPpIAk
         qyBQ4CM8Soj/fC6wJwOsrKc91vXTc2GYDOmglGXQYqllbeQ/b844n/BhMOK0Tctgj8ee
         yCYRRBXTv0BkErw/9O5ml2BPppZgOw8ILT8vNR128hJebHOIJ3LockNr0TR5sXjCS2FK
         Sm8z4WosHxFGB1d8jccbxDapMKzKHZTIIfPjfPNat9JiwSuML8lD2eOvonClTcf8fDgP
         OKfw==
X-Gm-Message-State: AGi0PuaJUZND59rJc3Jhuvyyn90Qfgkwi9bDY3vAkB0k1FCYu1U7iD+i
	5aOiJ6htTjJZBqHz0ppzJCk=
X-Received: by 2002:a63:31c4:: with SMTP id x187mr5526547pgx.205.1585564718263;
        Mon, 30 Mar 2020 03:38:38 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.199.31])
        by smtp.gmail.com with ESMTPSA id q91sm9785709pjb.11.2020.03.30.03.38.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 03:38:37 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: akpm@linux-foundation.org,
	dave@stgolabs.net,
	viro@zeniv.linux.org.uk,
	elfring@users.sourceforge.net,
	manfred@colorfullife.com,
	keescook@chromium.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Subject: [PATCH] ipc: mqueue.c: avoid NULL comparison
Date: Mon, 30 Mar 2020 16:08:26 +0530
Message-Id: <20200330103826.6531-1-payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Change suggested by coccinelle.
Avoid NULL comparison, compare using boolean negation.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 ipc/mqueue.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/ipc/mqueue.c b/ipc/mqueue.c
index 49a05ba3000d..dbc987d71445 100644
--- a/ipc/mqueue.c
+++ b/ipc/mqueue.c
@@ -1361,7 +1361,7 @@ static int do_mq_notify(mqd_t mqdes, const struct sigevent *notification)
 
 	ret = 0;
 	spin_lock(&info->lock);
-	if (notification == NULL) {
+	if (!notification) {
 		if (info->notify_owner == task_tgid(current)) {
 			remove_notification(info);
 			inode->i_atime = inode->i_ctime = current_time(inode);
@@ -1688,7 +1688,7 @@ static int __init init_mqueue_fs(void)
 	mqueue_inode_cachep = kmem_cache_create("mqueue_inode_cache",
 				sizeof(struct mqueue_inode_info), 0,
 				SLAB_HWCACHE_ALIGN|SLAB_ACCOUNT, init_once);
-	if (mqueue_inode_cachep == NULL)
+	if (!mqueue_inode_cachep)
 		return -ENOMEM;
 
 	/* ignore failures - they are not fatal */
-- 
2.17.1


