X-GM-THRID: 6401747006830673920
X-Received: by 10.99.146.77 with SMTP id s13mr6606759pgn.106.1490540003689;
        Sun, 26 Mar 2017 07:53:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.241 with SMTP id 104ls6241639otd.35.gmail; Sun, 26 Mar
 2017 07:53:23 -0700 (PDT)
X-Received: by 10.200.44.7 with SMTP id d7mr4491847qta.63.1490540003297;
        Sun, 26 Mar 2017 07:53:23 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id a3si1224081pfb.2.2017.03.26.07.53.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:53:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id o123so3380774pga.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:53:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ta2KpKoMWkFpKHuhmtdyGqkWqlBbc3lD/VQB1tD0wA4=;
        b=S1xuUpyVxo//0oAhndehaV1cuf82adpN4WNMFLg5qlQ6tXIh0CkgxFwmekF5K2mS3E
         5jG6JBznGuKQ+FLGu3lJMXuLnMXwrWbxVvfRsh/v/CZP1QbQy4pn6KQvK6xcJ9NTpE3W
         oisEu3IKzm1ww2tORKlcze28v6EKnSOk00Kx3L4rwa2sI1kGImkVSkvrZaYvPPWNq2Ze
         RC4eTBs6e/AIN1jwI/6yP/V2nl8GkWthqOPzQriA9YkGuOfFJcFmjBa8CpD1nc+zDGvz
         1tjGgnOjnuX9LbD9hu2Sj1cEUOO0bm76ZFje5vZotjQd7RZCbIk77ntqzpOi7wS0ibu6
         TY/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ta2KpKoMWkFpKHuhmtdyGqkWqlBbc3lD/VQB1tD0wA4=;
        b=aaaEDobnukwW5VnqdMWwi5XVAovsCF5+Iy0lxYaYpdwITcUj1ZDO70B+bBffow3TVX
         7TaVqQcTCOUVtqhDW2YuB9PrpTQjeVd3/y4s0Crdrtq2BaI2zqqpUtraHfglJAOwKmjH
         LuatWYnFQpolpkMi+ESNTwybrgwH+DBs/BVKhan/aao4VSy1FLhQrXz1tPvn7ar0Goxy
         6bByTQAzd9A4/0jX6ngjgFDYtreiUAt8V8QjT45SPvFYVOE+dJrsuEVrJ4S8rJH48p50
         WCH2KYQAqPqoG+00WEpKACnnorey3emIX9HMDEikTkHKH3mqa08gQA6epJog5PWBWhxK
         k6ug==
X-Gm-Message-State: AFeK/H1VsDtSMfLPhta+cFvEVXo4oI0bEgLhYbo3cbnmuIM60tf2wrFeOwrUGTWci2Lyyg==
X-Received: by 10.99.94.198 with SMTP id s189mr19465043pgb.211.1490540002880;
        Sun, 26 Mar 2017 07:53:22 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id z19sm15556612pfd.81.2017.03.26.07.53.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:53:22 -0700 (PDT)
Message-ID: <58d7d5e2.138d620a.7283.6ded@mx.google.com>
X-Google-Original-Message-ID: <20170326145319.GA18975@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 20:23:19 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 4/5] include: linux: pid: Add a blank line after
 declarations.
References: <cover.1490539294.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490539294.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add a blank line after declarations and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

 include/linux/pid.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index 04c0a5b..dd74e72 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -151,6 +151,7 @@ extern void disable_pid_allocation(struct pid_namespace *ns);
 static inline struct pid_namespace *ns_of_pid(struct pid *pid)
 {
 	struct pid_namespace *ns = NULL;
+
 	if (pid)
 		ns = pid->numbers[pid->level].ns;
 	return ns;
@@ -181,6 +182,7 @@ static inline bool is_child_reaper(struct pid *pid)
 static inline pid_t pid_nr(struct pid *pid)
 {
 	pid_t nr = 0;
+
 	if (pid)
 		nr = pid->numbers[0].nr;
 	return nr;
-- 
2.9.3


