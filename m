X-GM-THRID: 6401746705564303360
X-Received: by 10.157.27.181 with SMTP id z50mr6005468otd.90.1490539903924;
        Sun, 26 Mar 2017 07:51:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.24.83 with SMTP id t19ls6187614ott.28.gmail; Sun, 26 Mar
 2017 07:51:43 -0700 (PDT)
X-Received: by 10.157.40.100 with SMTP id h33mr6067765otd.56.1490539903624;
        Sun, 26 Mar 2017 07:51:43 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id s67si1294777pfs.4.2017.03.26.07.51.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:51:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id o126so5363801pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0L1YWCB1kAs3t62hy2ZLdWkfKer2D+rr/wk1y7JGYYs=;
        b=GEi3S2bZODq3TELXdWzhyQlViHPmmKX6IzP9IzdyqBwYZTHMFeaEijcklCyq+dew29
         QFOVNfLvAyRSSBT0eKaziLmkNH95XxM7W7sxFdaH4A6tzwSY27tIotVmzYRXbDeT1/J3
         Bz4ykQN14n+hMdB0RJcdQxQW8hHN2ZGIUiO1Sx7y1jOoo+FPDzu9nKFZ7XeVZGmmDqCr
         0jgBR+e6PpcplF0ZZNeAmM9lIu0TpzZHvsCsn5GLfeuWFK4SF5SlL0OeQbtta5vMLj4o
         nu/Qeh+avFv2yFKZHERrA7o8cOGxyIc8qHnR5cOZskE8fVNh7x1UAVLBf8k3mMub4g5P
         ZIfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0L1YWCB1kAs3t62hy2ZLdWkfKer2D+rr/wk1y7JGYYs=;
        b=iy1INQxYSanehS9CDzN6fPT0XpTYNNLE3KYh97WtN3JuVIywrRCe5umhiZusPsMosW
         Jl0Cu3FZDnQ49d9qzWwfUCGlbJfQ/veQc0FwjdwQ+F0FGUqNt8yJlcccvRNCLpdyW/Fc
         M48bSK7woAEG201y+v6r1rhJ0PfuinMMyzFuStj4HQikvQ1cHQwASB71G7Qe6renzUcf
         rl1dBvFJ1iNTUv8szhpsnurg9lWi03GKfQOaVUJhfH+lame8EMmKygGkw/Qp4A2sL3M+
         4v10XbjEVjlgSkER/Hm95JBm/MmiL/StgXgk131v7Oy+Cn9OAOnxksAa8OvZDLc0cZ3M
         F5zA==
X-Gm-Message-State: AFeK/H0LzhNdRXjrGAc3wKjPZ8q8mSLin8/odZFZcMMItTy3F+y6fmzT1sAMd1oGQxGgTQ==
X-Received: by 10.99.104.9 with SMTP id d9mr1620901pgc.27.1490539903193;
        Sun, 26 Mar 2017 07:51:43 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id g5sm15567579pfe.12.2017.03.26.07.51.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:51:42 -0700 (PDT)
Message-ID: <58d7d57e.059f620a.28d36.6ef0@mx.google.com>
X-Google-Original-Message-ID: <20170326145139.GA18961@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 20:21:40 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 3/5] include: linux: pid: Add identifier to function
 definition argument.
References: <cover.1490539294.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490539294.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add ns as the identifier to function definition argument struct
pid_namespace and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 include/linux/pid.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index c27ca01..04c0a5b 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -131,7 +131,7 @@ extern struct pid *find_vpid(int nr);
  * Lookup a PID in the hash table, and return with it's count elevated.
  */
 extern struct pid *find_get_pid(int nr);
-extern struct pid *find_ge_pid(int nr, struct pid_namespace *);
+extern struct pid *find_ge_pid(int nr, struct pid_namespace *ns);
 int next_pidmap(struct pid_namespace *pid_ns, unsigned int last);
 
 extern struct pid *alloc_pid(struct pid_namespace *ns);
-- 
2.9.3


