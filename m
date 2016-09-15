X-GM-THRID: 6330466800696819712
X-Received: by 10.66.147.34 with SMTP id th2mr6287064pab.24.1473944007666;
        Thu, 15 Sep 2016 05:53:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.177 with SMTP id 46ls1187587oth.38.gmail; Thu, 15 Sep
 2016 05:53:27 -0700 (PDT)
X-Received: by 10.13.223.216 with SMTP id i207mr6150107ywe.10.1473944007311;
        Thu, 15 Sep 2016 05:53:27 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id 7si1013958pfw.1.2016.09.15.05.53.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:53:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id vz6so2120054pab.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 05:53:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+JpJgdq5uZQR3CaWTYek3fTnHm+BAJvinSuchMJk5ME=;
        b=K7fSyDJUtkkQaiZnI2ZkRMo7RiKiLUEcCv1+b9iu17hMUQal27Pb5l1LDyVRuufooq
         qVOTntyLkZXq6EMRuy94yWYVchLuL7IaGDqWWS+BeDfwjuglXT+c4Yh3hVMaVc6A+2wp
         FLrNHoU165OpKvCrUPyuGkAIbwHYAWjEEi3YaFsYUVOsbWn6cKAAEyrgO/hAVXSHZT7S
         HoLBJ4cTODYhHILeQ7rTWGTWKVhCj/BqYijS9a6e5ezrFrK0bd42dbLvLFk3IIlvTYTN
         J3WSU10hc+n2h1XG1eZPTTK7eCkXYQGq+5ovlQjPK08m9TaMsCRtnvLzeNuOGknYZNHl
         Qk9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+JpJgdq5uZQR3CaWTYek3fTnHm+BAJvinSuchMJk5ME=;
        b=Xf9/QaedktmjoV+H3H2IQM0kSyQIwZWOAyhGzGoDPn4oblXmAj3XTY9Z/iR9K8kDCw
         csetaDZJLMEGJMWVbsRDQgjVQkzBI5RfTM2HEc7xkKp4cYGLEONIZx5E2FUwl0Go6TLS
         HfPxJiD+2ZN6VKSl38lySb9YiNGRKqotrvdEWcWwq5GTUktcigeU2XRO3PZ928414qFu
         RBLorzqJy+GqDkXAuwpjxjgpJFLaJZWCsx2ScTYOudydtXk/wlL96OeZm4YJRa+BTXBb
         KvVQ8TriGXqERKHuAMojovFFbN+hTekeSYpZExL8zho6TDn52TxouzZfWdl4qo7MGsaL
         BHhA==
X-Gm-Message-State: AE9vXwNYfaNiEGB/UZG+KULgGFbHAg+mGgfyjrSUupblXfe/gAD4C+N5n6YtxpJ8MdygKQ==
X-Received: by 10.66.126.46 with SMTP id mv14mr523634pab.166.1473944007120;
        Thu, 15 Sep 2016 05:53:27 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k80sm7075773pfk.27.2016.09.15.05.53.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 05:53:26 -0700 (PDT)
Date: Thu, 15 Sep 2016 18:23:18 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2 6/6] staging: lustre: Fix indentation
Message-ID: <1777c3403301453d0edbeecb44af83f29debd690.1473942874.git.aquannie@gmail.com>
References: <cover.1473942874.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1473942874.git.aquannie@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Fixes checkpatch.pl warning: Statements should start on a tabstop.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/lustre/lustre/llite/file.c | 2 +-
 drivers/staging/lustre/lustre/llite/rw.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
index e2e81bf..bfac6dd 100644
--- a/drivers/staging/lustre/lustre/llite/file.c
+++ b/drivers/staging/lustre/lustre/llite/file.c
@@ -602,7 +602,7 @@ restart:
 	} else if (it->it_flags & FMODE_EXEC) {
 		och_p = &lli->lli_mds_exec_och;
 		och_usecount = &lli->lli_open_fd_exec_count;
-	 } else {
+	} else {
 		och_p = &lli->lli_mds_read_och;
 		och_usecount = &lli->lli_open_fd_read_count;
 	}
diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/lustre/lustre/llite/rw.c
index 23747fa..25de3bf 100644
--- a/drivers/staging/lustre/lustre/llite/rw.c
+++ b/drivers/staging/lustre/lustre/llite/rw.c
@@ -1022,7 +1022,7 @@ int ll_writepages(struct address_space *mapping, struct writeback_control *wbc)
 	if (result > 0) {
 		wbc->nr_to_write -= result;
 		result = 0;
-	 }
+	}
 
 	if (wbc->range_cyclic || (range_whole && wbc->nr_to_write > 0)) {
 		if (end == OBD_OBJECT_EOF)
-- 
2.7.4


