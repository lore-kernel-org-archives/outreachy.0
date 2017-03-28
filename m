X-GM-THRID: 6401747273458384896
X-Received: by 10.129.18.130 with SMTP id 124mr9557856yws.56.1490696148536;
        Tue, 28 Mar 2017 03:15:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.88 with SMTP id 85ls4651809ioi.39.gmail; Tue, 28 Mar
 2017 03:15:47 -0700 (PDT)
X-Received: by 10.99.111.6 with SMTP id k6mr10081498pgc.131.1490696147924;
        Tue, 28 Mar 2017 03:15:47 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si615744pfx.8.2017.03.28.03.15.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 03:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 81so20194910pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 03:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=eD6I4Yg8uUFXvVwo2vVo+l2ahopRp2d1771NejIyigY=;
        b=uqxtD5KOJf+W10kZoyDC6gpg+tNmbsb4ZNbGAllsN6eYSdvm2NGmYRz222gfrB/V9S
         E9zUO8MCtpuiSKudSPOGjLXnLkbu/URU6QuvWao7ydubcJCSOQ8j6OH0zjbSEtgcPNYB
         HSpCcJlA6Grp0Au3Ej6W0Xz053mGu3Wb0Y3QC85tg6cti8oJXvmwCs5IujPaLy4vTWfR
         l/GX8vyYh1Q/2B2u5H/iYL5zjfWil6v0Oskd8SM7ebQBsHXxr/k+jBEeqKZLZ2+vZdLW
         JZ4QedR2RZ8jzmlM8x9qjFGrMeCYxRu4O7SswQpTSOg/ggyzG1LI6tzrcOv3p8c39m2h
         8mfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=eD6I4Yg8uUFXvVwo2vVo+l2ahopRp2d1771NejIyigY=;
        b=R85xyF2yHYERXBA91smLiHuWMKMfxGrTfm45SNa8qpD2iIcIzfmBFAhNSev1UVheR2
         gEnVz8VMYavEo9zZOaLmRzGJczNk+kwUMq0or8PLzYNUJxLzmh2k8cy1UycHHnM61kTm
         iTQAXz8IVJz94qeOyWTBuNkwdQlkB/K8erIsuQBKPi8zXBPx4ndIuJm5NstFOyJlbhzs
         XmbClD944Wd+PW7jsU3czaLuSZpg161fCQG8LKQUFQkUPSTjUcLtRK2BV1k3SseVipCM
         g9L/z5FZMjb2UY0feDshkjb/SmO28q8TQ+9CZC1wSmjMD+Pe/niRjZl4JT3l8Hb5AMTC
         jGvg==
X-Gm-Message-State: AFeK/H2T9vsAl0YCmXto3aUStCSB+JgNvLZ4zAjI7IlZ391D4cpgnStN+vrrAGswe5LuRA==
X-Received: by 10.84.232.131 with SMTP id i3mr35157723plk.172.1490696147579;
        Tue, 28 Mar 2017 03:15:47 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id 9sm6438186pfn.108.2017.03.28.03.15.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 03:15:47 -0700 (PDT)
Message-ID: <58da37d3.890d620a.9afe5.0a67@mx.google.com>
X-Google-Original-Message-ID: <20170328101543.GA8280@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 15:45:43 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 5/5] include: linux: pid: Remove space before tabs.
References: <cover.1490695255.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490695255.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove space before tabs. This patch fixes the following checkpatch
issue:

WARNING: please, no space before tabs

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- No changes.

Changes in v2:
- No changes.

 include/linux/pid.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index ba4f90f..5feb5c3 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -144,10 +144,10 @@ extern void disable_pid_allocation(struct pid_namespace *ns);
  * allocated.
  *
  * NOTE:
- * 	ns_of_pid() is expected to be called for a process (task) that has
- * 	an attached 'struct pid' (see attach_pid(), detach_pid()) i.e @pid
- * 	is expected to be non-NULL. If @pid is NULL, caller should handle
- * 	the resulting NULL pid-ns.
+ *	ns_of_pid() is expected to be called for a process (task) that has
+ *	an attached 'struct pid' (see attach_pid(), detach_pid()) i.e @pid
+ *	is expected to be non-NULL. If @pid is NULL, caller should handle
+ *	the resulting NULL pid-ns.
  */
 static inline struct pid_namespace *ns_of_pid(struct pid *pid)
 {
-- 
2.9.3


