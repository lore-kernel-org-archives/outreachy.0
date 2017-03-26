X-GM-THRID: 6401747006830673920
X-Received: by 10.176.68.66 with SMTP id m60mr4853697uam.18.1490522876803;
        Sun, 26 Mar 2017 03:07:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.98 with SMTP id 89ls8168936otb.22.gmail; Sun, 26 Mar
 2017 03:07:56 -0700 (PDT)
X-Received: by 10.157.51.170 with SMTP id u42mr3890817otc.150.1490522876470;
        Sun, 26 Mar 2017 03:07:56 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id a3si1158703pfb.2.2017.03.26.03.07.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 03:07:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id g2so5491208pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 03:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4iOd+UYN/fsR+t5aG3VP33EiCrKuSvnl8Csp1zQqAWY=;
        b=WQ3DRa5XBIozgcRlAPBrfVgfWzotVsx2CfVQwxH8seQz3XCbBn4AedVxkKUCRnMY27
         sDNQ+zL46Zm5+NQ2QaaTfFHcArTYQGMDNS4wOJrYh4b8Ztw2pQTgj475BsF0+babmZyf
         /voFQFApV1PYzZ5/RjGhiYWHZP9UEL6mvAKtGKrR0dmXSBZswiWodjsqjk1IHlYcTDvf
         0zmbuppmQYqePliVX4OMmnMirq2VUcRJPA74XN/OVtEBxQwV8dTYSASK8qrmUnWTVIgX
         0NzswdwwgeJdqUlxx2bFUh6eX+2zIShm+/SpF2XdgtSnEio7m6ce+7t5nguIAWTt+K+K
         5HAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4iOd+UYN/fsR+t5aG3VP33EiCrKuSvnl8Csp1zQqAWY=;
        b=jiHvILP1kDxAtnxhi/6bV3LL4xeVZ4FpssrDMaxHeCpPkCw8fE+SNOl7RbtcajzELK
         o1yEow5lPSlJeMq7MyOO9QTxQg7VlvHDk55RDU677mBrksJS/5mwNP5vhPGHlLxBWfl+
         i8GYCZjixuXVk7oy/Mj2Qf+uGtBoBNPg4CaS1KsYJFP6c8Xtpalsw4jjMt6lBENOukNR
         HxNDWPJRwtrt3jYtHlQhxUpRGEPIAT48ipHNpvnR1/4JEfA3Yt3rm5QGpB6HaXllLXqe
         Woub3/8yw8ZawOpRzM2s04ru5WxlDIx9LgYHsfJDtlW6AmS8YpK//3WVxmwOXZSwt9B6
         I0uQ==
X-Gm-Message-State: AFeK/H1WNgNoqgzc9+c4NButQTcj5VQ+Kw8+ms6SD5iOZCyNDqpV04W+WmUF0wpPpFwl5A==
X-Received: by 10.98.95.197 with SMTP id t188mr19005356pfb.150.1490522876231;
        Sun, 26 Mar 2017 03:07:56 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id p9sm14490346pfe.22.2017.03.26.03.07.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 03:07:55 -0700 (PDT)
Message-ID: <58d792fb.09b8620a.585f4.540f@mx.google.com>
X-Google-Original-Message-ID: <20170326100752.GA16178@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 15:37:53 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 4/5] include: linux: pid: Add a blank line after declarations.
References: <cover.1490516333.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490516333.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add a blank line after declarations and this patch fixes the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 include/linux/pid.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index b450100..1de53e8 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -152,6 +152,7 @@ extern void disable_pid_allocation(struct pid_namespace *ns);
 static inline struct pid_namespace *ns_of_pid(struct pid *pid)
 {
 	struct pid_namespace *ns = NULL;
+
 	if (pid)
 		ns = pid->numbers[pid->level].ns;
 	return ns;
@@ -182,6 +183,7 @@ static inline bool is_child_reaper(struct pid *pid)
 static inline pid_t pid_nr(struct pid *pid)
 {
 	pid_t nr = 0;
+
 	if (pid)
 		nr = pid->numbers[0].nr;
 	return nr;
-- 
2.9.3


