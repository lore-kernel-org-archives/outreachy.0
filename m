X-GM-THRID: 6401809788222570496
X-Received: by 10.129.1.197 with SMTP id 188mr6107987ywb.3.1490537493013;
        Sun, 26 Mar 2017 07:11:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.6.207 with SMTP id f76ls3450905ioi.6.gmail; Sun, 26 Mar
 2017 07:11:32 -0700 (PDT)
X-Received: by 10.99.111.11 with SMTP id k11mr6398733pgc.38.1490537492154;
        Sun, 26 Mar 2017 07:11:32 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id g82si1271564pfb.5.2017.03.26.07.11.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:11:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so6015652pge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:11:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=h7E6qYcsUO/GTLfHoHn7Wb53yCFeolPu2+gmUIrDTSI=;
        b=ZyqnoZL64mLBfuuzWmYcrp4IIIdQzdN7rGBAkkHs/M+CG7B86XsOkJ7BZBvbT8BTut
         XOGuwn1DgG6aiphhRdJz8aszImPM+cOsuksz6/NY7+GUnVa6uil6ST65zT1iNr4P4q1w
         I4xhK2x8DVZKYp8SKK99s12JsTBHxEKiJOD6HI4FXBykK6gHuBUAcegFzHC2ASWI/zB/
         iiEnBkw9I4unU0ODDBn0WjKBe8gE9he9zgqiwqW8z7t2f3+2xFDUDW3C+a3jPi0zK9PL
         W1On0ry/f31CxP7YUsaAVa96im1RospePYZRziGtJQWrwY/ce0lcdthvnLB998PFMz5P
         ueMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=h7E6qYcsUO/GTLfHoHn7Wb53yCFeolPu2+gmUIrDTSI=;
        b=GU9AvyPCO/oJo1yDbieI5CsdENX8P9RoXAZ0k0LcoVJsnAALSYBOEl8Mu7z0e0bTml
         L7OfElrN1FM462f/GCfGxnVEPY15NCI4yC93Piue2/2doFKjPX1JpbS2p5PnaOi8IF6Z
         MxtHp4QjE6KUI1KsUZTzmcEuYaV57UhFLKjqbkSfWlcFoTfKPueB1stM+iQ4aCt4QjMQ
         1EmcdSu6FkdoML46PDBhOfJt0J/meIQtcrUTJG3oA3z70diwmkeKnjKXKIFW89iAdq1I
         bm9LhJjwaEdwoB6Ou4eNbewaTo1W78SfddNvRa/fTl8ekeDsdp3FQpaDlEKJW/ogPkyP
         mbRQ==
X-Gm-Message-State: AFeK/H2obRYph8DQw+M4OVs+XWHqNZLv9ES/08kATlttHeA7kQeWQSkrT0vP1qh2XUf1/A==
X-Received: by 10.84.138.1 with SMTP id 1mr23062223plo.29.1490537491937;
        Sun, 26 Mar 2017 07:11:31 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id s26sm15410220pge.33.2017.03.26.07.11.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:11:31 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] kernel: pid_namespace: Remove spaces before tabs
Date: Sun, 26 Mar 2017 19:41:15 +0530
Message-Id: <1490537475-17528-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Removed spaces before tabs to fix the checkpatch issue
"No spaces before tabs".

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid_namespace.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/kernel/pid_namespace.c b/kernel/pid_namespace.c
index de461aa..bee22fd 100644
--- a/kernel/pid_namespace.c
+++ b/kernel/pid_namespace.c
@@ -228,12 +228,11 @@ void zap_pid_ns_processes(struct pid_namespace *pid_ns)
 	 * to exit.
 	 *
 	 * Note:  This signals each threads in the namespace - even those that
-	 * 	  belong to the same thread group, To avoid this, we would have
-	 * 	  to walk the entire tasklist looking a processes in this
-	 * 	  namespace, but that could be unnecessarily expensive if the
-	 * 	  pid namespace has just a few processes. Or we need to
-	 * 	  maintain a tasklist for each pid namespace.
-	 *
+	 *	  belong to the same thread group, To avoid this, we would have
+	 *	  to walk the entire tasklist looking a processes in this
+	 *	  namespace, but that could be unnecessarily expensive if the
+	 *	  pid namespace has just a few processes. Or we need to
+	 *	  maintain a tasklist for each pid namespace.
 	 */
 	read_lock(&tasklist_lock);
 	nr = next_pidmap(pid_ns, 1);
-- 
2.7.4


