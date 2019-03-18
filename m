X-GM-THRID: 6669728292045586432
X-Received: by 2002:a24:7d06:: with SMTP id b6mr4067913itc.6.1552917131529;
        Mon, 18 Mar 2019 06:52:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:90d:: with SMTP id 13ls3470002itm.2.canary-gmail; Mon,
 18 Mar 2019 06:52:10 -0700 (PDT)
X-Google-Smtp-Source: APXvYqymeBR9aZfk+GQT0MdTWQyakWK5kUQBfKawV0jKlmawc1PdC4JvMMB1w/pl7P1QtKwYAOEU
X-Received: by 2002:a24:6b55:: with SMTP id v82mr10256081itc.37.1552917130421;
        Mon, 18 Mar 2019 06:52:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552917130; cv=none;
        d=google.com; s=arc-20160816;
        b=qkNR9823Th44Npm+5cfTwjJVX9HwmXad9DRi+2xwMFD5+GroNyReQga0fhUJQYXFak
         y0m/EOu2d29p2RitBT3P2PSTR7yG/o0QT/PcJB1ptvhX+e9jKllZH7gSsYhXcsC+vfan
         2Gc0q90H+H83zudP0hQ3aOyLroa4UA/pg7LiV6oBcFxJIlJaxA9ajL0k04ISfvk49+Dk
         bfR34WYJ7PJKY/Qu11cFFhIvXATh37DyoApTiz4zXIT11JZOXVDmKKyx7/B7vqp2zOwJ
         EUdfZT9j+mZLf+fNamS0ErN03AfUdJwnCwV53+ZRHcciQeLkM+8RbXjPBTBUcBHALLt4
         Ks4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=GeO9JMOKsY6lvLO8bUPoC+RzHCr0TWoMwRoW27GjSLw=;
        b=xTEsK11ScLkZBNuaDXO7w5glqCIyUe0l3s/ttGhHwbnk72ZazUOR3PEHraLHZTAKGu
         BSiYQ+m2Pj53MZBOfCRYiLz7rWj0snUTw68+kxLY3+g7Mi7y7dNDBhPQSjq1S/9sEO9o
         MdA4V9QjhHKLkA94zqBBV+ivTtTkCOU9uUsmoxT08o6d0RTz5u4uFZdKiOFjNpZBntbr
         30WvuzbWUrKMERG9SDJpa7g7uMQ00QnRqikHf9luRLwsGvwDSV6PZo3KiVNfyWpWvkgJ
         /3CeXoVNZf0gQmfZEn5lL6kj2lqrk4xQuAAyqavBoKiLyYH0oIJMtQSuda5EfPsYbDpk
         /xGA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TBtmS8QX;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com. [2607:f8b0:4864:20::42b])
        by gmr-mx.google.com with ESMTPS id j196si525967itb.0.2019.03.18.06.52.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Mar 2019 06:52:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) client-ip=2607:f8b0:4864:20::42b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TBtmS8QX;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::42b as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42b.google.com with SMTP id s23so11289459pfe.13
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Mar 2019 06:52:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=GeO9JMOKsY6lvLO8bUPoC+RzHCr0TWoMwRoW27GjSLw=;
        b=TBtmS8QXgMKtVOVQWPOqD8OD9u6JN5Hjmp/xunWTw2tBQjFZnQt1ZpChGjJ54JBJbV
         7Qsg5KXqxkvT1yMa9l3mUD3h+rcAdAgMdBqDhbm61OJNJqb+f3UQqZwWgqN6XdrjnqYJ
         zs9s1QiuqUBbWZc2FyYHBVlrSmvHZbkdE0x00sgXh8agawfrt4XDEvqNL74P/cP6x+rK
         wSUv1HOOuEvCqVwHd4dhP7K37TkXsm4XuDfIJE+7EPEQCaigSwLA6HlUa8OhkeVTsCAc
         EsvV35Se9/EMEVEMP6SS9yjFXTQwIdgV90ZR+8oNhLGEVzaOkgulJ4YLroMs2UEdwfmM
         Uq8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=GeO9JMOKsY6lvLO8bUPoC+RzHCr0TWoMwRoW27GjSLw=;
        b=J68iL6wW9BorQnob9ejUCjdJCCqOmM3AXl3RRnumlHAi7SSBzhLhp8V8Sk5WWfIthz
         LJiXhXfZPptw/XBK9gzv7CCI8BjyLMhYjc64NDeS7o+6CY/Jk3j3/Fo3B3tSyG9frtph
         wJrx0R95ATXOC7BlH1e1gkoGzIsxT3QGCLufj71wH5m3H+YeKYsAL/G9lFCSjfThPiUY
         Bc9OrZeSMSCIe1s5tqikIcvH9XEA65H4NTvco0YGSTyof1QBVBnA2lLHXj18obfdfTuB
         TULkU+xzDqPbdvBJ0n28ECTrS0ZJh3wl+Li9pv/K2E8QM84LNGTTCXxJPxMe8MglINmk
         130A==
X-Gm-Message-State: APjAAAXBHD/bcTkddr8n7zdW05q2uQWvbCxWWvs4hjlQ82KtRqXHmMTC
	X3mifrCORx8+R3j+ejwnQfK/7PvD
X-Received: by 2002:a17:902:2ac3:: with SMTP id j61mr19274391plb.112.1552917129486;
        Mon, 18 Mar 2019 06:52:09 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.125.144])
        by smtp.gmail.com with ESMTPSA id p14sm19812013pgn.34.2019.03.18.06.52.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 18 Mar 2019 06:52:08 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel] staging: gasket: replace symbolic permissions
Date: Mon, 18 Mar 2019 19:21:54 +0530
Message-Id: <1552917114-7936-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4

Symbolic permissions 'S_IRUGO' are replaced by octal permissions '0444'
in file
drivers/staging/gasket/gasket_sysfs.h at line no 43 and 78.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/gasket/gasket_sysfs.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gasket/gasket_sysfs.h b/drivers/staging/gasket/gasket_sysfs.h
index 151e8ed..60590ea 100644
--- a/drivers/staging/gasket/gasket_sysfs.h
+++ b/drivers/staging/gasket/gasket_sysfs.h
@@ -40,7 +40,7 @@
  */
 #define GASKET_END_OF_ATTR_ARRAY                                               \
 	{                                                                      \
-		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, S_IRUGO, NULL, NULL),   \
+		.attr = __ATTR(GASKET_ARRAY_END_TOKEN, 0444, NULL, NULL),   \
 		.data.attr_type = 0,                                           \
 	}
 
@@ -75,7 +75,7 @@ struct gasket_sysfs_attribute {
 
 #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)                     \
 	{                                                                      \
-		.attr = __ATTR(_name, S_IRUGO, _show_function, NULL),          \
+		.attr = __ATTR(_name, 0444, _show_function, NULL),          \
 		.data.attr_type = _attr_type                                   \
 	}
 
-- 
2.7.4


