X-GM-THRID: 6401746378661298176
X-Received: by 10.99.9.129 with SMTP id 123mr6098394pgj.120.1490539841253;
        Sun, 26 Mar 2017 07:50:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.156 with SMTP id u28ls2375379otc.49.gmail; Sun, 26 Mar
 2017 07:50:40 -0700 (PDT)
X-Received: by 10.200.50.241 with SMTP id a46mr5613896qtb.13.1490539840875;
        Sun, 26 Mar 2017 07:50:40 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si1387920pfz.1.2017.03.26.07.50.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:50:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n11so5350020pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=542nYc0x657Tgx2hQrrmcZBmGEB2mZq+SjOBXJxapSE=;
        b=AasCuCoFeZgAgl1bTB5cJErRzoJD7Ka/BRPnXuP5tqWtZY/GCtt74CN8XfQYrOv8Hw
         6e/O5/c1MPIlNUE91zh1uyp1SKlengUKg1kT/+pGhy/+aSZTvo2eG+f5vl9tY17nPxnT
         1l6zksSUND9ALqGPHY+nqShtADi1vxXFGm/iHZOHptxjuqG7MgGbKh7jpGz+mqYgVBKN
         miGhr+5YJ8ULady8mELARuDUcXepEfktTVrIH5DCcJd5h35B76KkCyjYCGOGVNyixmTr
         okVZVAPoFeMGOPFKLDG13aOPwtkmEZvJjq47HU4h6dbLHVrN8doiyag2mORkBzo95rcM
         x3LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=542nYc0x657Tgx2hQrrmcZBmGEB2mZq+SjOBXJxapSE=;
        b=CGWYPqQ8YTQchB8SRrBN4hdPaCGPbZWqcnGRChy+lWmL7ngp0XWHSTPXm7RzgpNqsM
         wuP39F0T1eVY+UaKb7aU+yH0FACdEpWnFf/Wia1cCyoLobn34cypvQl5HAHwTJDQyKuf
         FsyvjCQ5kkrhCJsAhdLi1g7ygJYYQ0Jr0Hx14cRvYaKzTvxq8NXaCaz7C9cVusAVhcQX
         q+3/GQaR016QnIHm43/gRBR+sZl83y7sdirX2PnqgdIinqQqELYDZ5I23xCC5fScUGJm
         wTDW5dFSBT0kJcc8au5OgySHF0KgX2dJ9B1q8JP6MJmdjfG6XKYU/zO1tgmJgQJ0DxzQ
         OSbA==
X-Gm-Message-State: AFeK/H1yNS3rG5aOs1StQEkqA8sfyg3317SReZEsPGpAC2aXO8ROueY5gKZ1bLVPS6lhLA==
X-Received: by 10.99.62.4 with SMTP id l4mr19112941pga.172.1490539840421;
        Sun, 26 Mar 2017 07:50:40 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id x15sm15543455pgc.16.2017.03.26.07.50.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:50:39 -0700 (PDT)
Message-ID: <58d7d53f.0f7c630a.f322c.6dc0@mx.google.com>
X-Google-Original-Message-ID: <20170326145036.GA18943@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 20:20:36 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/5] include: linux: pid: Move open brace to previous line.
References: <cover.1490539294.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490539294.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Move open braces to the same line, as that of struct and enum. This patch
fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 include/linux/pid.h | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index 728ba63..c27ca01 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -3,8 +3,7 @@
 
 #include <linux/rculist.h>
 
-enum pid_type
-{
+enum pid_type {
 	PIDTYPE_PID, /* Process ID */
 	PIDTYPE_PGID, /* Process group ID */
 	PIDTYPE_SID, /* Process session ID */
@@ -66,8 +65,7 @@ struct upid {
  * @numbers: Instance of upid for each level.
  */
 
-struct pid
-{
+struct pid {
 	atomic_t count;
 	unsigned int level;
 	/* lists of tasks that use this pid */
@@ -83,8 +81,7 @@ extern struct pid init_struct_pid;
  * @node: List element.
  * @pid: Pointer to the struct pid of the process.
  */
-struct pid_link
-{
+struct pid_link {
 	struct hlist_node node;
 	struct pid *pid;
 };
-- 
2.9.3


