X-GM-THRID: 6401747273458384896
X-Received: by 10.129.173.101 with SMTP id l37mr6111169ywk.73.1490540108244;
        Sun, 26 Mar 2017 07:55:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls11523925otc.30.gmail; Sun, 26 Mar
 2017 07:55:07 -0700 (PDT)
X-Received: by 10.157.5.102 with SMTP id 93mr6194527otw.144.1490540107868;
        Sun, 26 Mar 2017 07:55:07 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id g82si1282093pfb.5.2017.03.26.07.55.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:55:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id o126so5370792pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:55:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0DNYtjicDEm61VOoySqCS129nFDTlwG/zHv+Zd9m1E0=;
        b=Gu52HKrnDvWc70TH1lsdHnw0Gmy7wqyMMn0qzBHHJ5D6B4EsnOjyskPb5AFRRf3fdh
         ylLdalcL9jH0H9ANePj27uZEzi7vlKlMVU8N3/IFJxfcnM/SMGW/4pHvFY31dnel1ZPQ
         5vESixax/cSfohm14lA3eJIxHvJ5OHn1w+s8zPfutZcLhSd0ywvW92Ttd7rWs9gVhOjF
         l4vr4A2AFBIla2f5zZAC8hylKR5xTdAasBuiTMlIFR5vypqAb2UU+tbKOasAQm/nz7zp
         Q/a+ubRsTAsJFQert8Y32FAKPRpZpey9j6eQiTTN2J2rrUn/hGtI/XlOBM82P6Wtj7sB
         17dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0DNYtjicDEm61VOoySqCS129nFDTlwG/zHv+Zd9m1E0=;
        b=aZmQRdwz1OWRMPcJph/0/ZWfUmPWU4L4LDMU7f4ZrLVo6Nyx5nKAGr/Zi+Ggj8THym
         j1wsRuCVFaSsOVsutkxImDCPOnYY+bev3m1/kEjMkbSXVB3huQJ8dcxlGsHmpqCTPD9z
         FoZB3d81+8JxkuO1mrkrTXOIQaEi3zLrviUjPiVNAngzB4vVUIooXEeZ1TIqQ/w7i0Qo
         iBMTbNgYj7wEf6HMBQJN28folUJbFJV1gYzWggpAf0jJRYmi7OMiToaah7Op1HNMrVY3
         N+4NbkpuMgw3eFbadk70Jf3ExrQiJwQsZmbS4+yOHYZPRkeQbYy45teS69AObijS7l8K
         G5Zw==
X-Gm-Message-State: AFeK/H1Ja1oxu1uJN2IUo/maOwBe1jEqckkzFvU9qE8Qz0ZoqKyfDdQBYUOOB1KZFtZbCA==
X-Received: by 10.84.211.97 with SMTP id b88mr23774544pli.113.1490540107636;
        Sun, 26 Mar 2017 07:55:07 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.128.197])
        by smtp.gmail.com with ESMTPSA id d10sm15586580pfl.59.2017.03.26.07.55.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:55:07 -0700 (PDT)
Message-ID: <58d7d64b.8adf620a.8760e.6c60@mx.google.com>
X-Google-Original-Message-ID: <20170326145504.GA18996@<rvarsha016@gmail.com>>
Date: Sun, 26 Mar 2017 20:25:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 5/5] include: linux: pid: Remove space before tabs.
References: <cover.1490539294.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490539294.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Remove space before tabs. This patch fixes the following checkpatch
issue:

WARNING: please, no space before tabs

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- No changes.

 include/linux/pid.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index dd74e72..94d61e3 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -143,10 +143,10 @@ extern void disable_pid_allocation(struct pid_namespace *ns);
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


