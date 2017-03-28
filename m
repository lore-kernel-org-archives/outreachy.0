X-GM-THRID: 6401747006830673920
X-Received: by 10.200.57.131 with SMTP id v3mr8837878qte.9.1490696068018;
        Tue, 28 Mar 2017 03:14:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.241 with SMTP id 104ls10201055otd.35.gmail; Tue, 28 Mar
 2017 03:14:27 -0700 (PDT)
X-Received: by 10.159.35.167 with SMTP id 36mr7838326uao.13.1490696067439;
        Tue, 28 Mar 2017 03:14:27 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id i189si154734pfg.3.2017.03.28.03.14.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 03:14:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 81so20188901pgh.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 03:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Q9UepqkfOedSpOtAMCldYOukL8gLmwsUGkp3+JrUSOk=;
        b=aGHzGuiYLhAoEqGddMt8Shux9SpHcneW7ohhQlo+PD779sW+jwI+lliAj+WLf8jBhu
         YR3ZOvGTD2y3vV8ugcbpaxCv/jbQMqHDF6viAnCv67W710rAzS6HkZygh+elnuhy0wsD
         LxJ0nFAsicmcYid38JOzvMPmGQdz/ct91JXIMnZJvlqZDF/L9paNW3YXE3Euj4JZImDK
         Cp2luGv8qznSqaGUZcYoCM2XWkPZG12uMCoBeIxDpkhYCwNeBMLD1iBGFefuu8em/3SH
         4hvEsnMzuv9aYHFKmRaEPLfoRNHjHqOhq9kVDjUh/HHvbT80B9P1Fe6pfMPqlikKrvwQ
         KxWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Q9UepqkfOedSpOtAMCldYOukL8gLmwsUGkp3+JrUSOk=;
        b=jYK9jUlfIE5G6vroMtneJUOP44+4wkxyOYzobwdPIWzHxqm832bZGMIUy5x5vmnhgJ
         WPL5bnz+312we9n9iRhdiv7ZBw7kkTfUf6neiqWyoZZJ1G3A8HoPIq0L64nSb/b8UQ59
         PvzEgPXmt0hXTDB5SeftclsNj4QhtyNF8Cx/2iFVhH6b4RcyNCk9aLCOX1tKYSwkMTQc
         J0hHOvM7Qnwy+TzFZXMhI85fb4+NFKLHhrCe1ipQRXLKLtKi0HNuFQ9pws25KGnMBaJF
         5SInopFpEi2VehxG0Rm0zMLt/DZSYdDC4TZfrHZkNOetVzpQH8/w1sgT4MoUx9Yy/CeF
         mUrg==
X-Gm-Message-State: AFeK/H3Jdiinppak2eqp1mjRy2cp/JhP+XYOtUXcT4AzwxykaTvADjHNtIFw2Y2rBGFeQA==
X-Received: by 10.98.113.74 with SMTP id m71mr31004496pfc.231.1490696067208;
        Tue, 28 Mar 2017 03:14:27 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id t15sm6491886pfl.25.2017.03.28.03.14.26
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 03:14:26 -0700 (PDT)
Message-ID: <58da3782.4fd1620a.bcc83.0df3@mx.google.com>
X-Google-Original-Message-ID: <20170328101422.GA7582@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 15:44:22 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 4/5] include: linux: pid: Add a blank line after
 declarations.
References: <cover.1490695255.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490695255.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add a blank line after declarations and this patch fixes the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- No changes.

Changes in v2:
- No changes.

 include/linux/pid.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index b94c68b..ba4f90f 100644
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


