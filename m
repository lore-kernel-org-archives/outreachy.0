X-GM-THRID: 6401746705564303360
X-Received: by 10.157.23.11 with SMTP id i11mr3251226ota.144.1490695985129;
        Tue, 28 Mar 2017 03:13:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls2457483otg.40.gmail; Tue, 28 Mar
 2017 03:13:04 -0700 (PDT)
X-Received: by 10.157.35.183 with SMTP id t52mr9074328otb.109.1490695984745;
        Tue, 28 Mar 2017 03:13:04 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 2si614859pfx.8.2017.03.28.03.13.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Mar 2017 03:13:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id o123so17443269pga.1
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Mar 2017 03:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EfaqomTFMbF/5C6z2pHZ4+YINBuPG2m2dSlFynaehs4=;
        b=JrJ4q9xE9G0kQYGXfQuDMzgLjUxmTU4DBZ28IGdp0K9FFhfzuiTpES6gTtQlvsvCoc
         KqZ5ByCLvmLlTGpIr7t/GJNLEbtqotveygJ9txCJXcUpt7sFIwH5qTL+xMqQdT2f85a0
         iZoHws9TjRBtQYregYhIErJHSOu5W7TEkggaGN1Qm5AYKs0UctgYhsSoHTh7YL4o25zo
         DVElPdL7HvDoDHdVYfe9otj0+AmqUEUnUUQjyeBv2ICnnx3exHz9hSYzDCLoVmFWRf/r
         j2hco33IT9bDEvXxqOAB7rnsZRGmJBgeXh8ZsyEUBcON6OoJXIvjOQgTN7UUsxg5x//b
         EWEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EfaqomTFMbF/5C6z2pHZ4+YINBuPG2m2dSlFynaehs4=;
        b=PIdmz82Ck7ujLLm3x6ckFzPGNr1bgfLDSyHvFZOG4tmEecOayo3weoN2Ywmm1E+nqH
         321EiSdkZGy/3lX7l1W0Y0NJI1EK3RmmKWSg+EEOGH8mJCqF49cxI0XBenNsEU75Jaj5
         8ik47p7hENSdRMmtCLZe/PTohtZyYioYxLukuOFU7isHgvrIQ11hZr2DWjQBzlqymWNq
         W6nnv44+V/xsVrnsegs4lnx+Yk1Z4dL6mBioxd0nyvvUBPMFa/rao0D4cJVFgKz7nT+1
         mgl4/QgFVx8SyWYTAQM0X8fFCREAf3RfZCisJKARWbI9vf3YIjkKA9htUbyyAnMXHo9Z
         ja9g==
X-Gm-Message-State: AFeK/H1BBcCJnG7YNZi8aNknEXZUFPmlaRjusl/CcHFYbVYcbNC4L6BrWXNeOpcTbJ7kJA==
X-Received: by 10.99.97.12 with SMTP id v12mr29491448pgb.124.1490695984470;
        Tue, 28 Mar 2017 03:13:04 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5181:ce92:a4e3:114c:b305:cb39])
        by smtp.gmail.com with ESMTPSA id g29sm6479374pfg.37.2017.03.28.03.13.03
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Mar 2017 03:13:03 -0700 (PDT)
Message-ID: <58da372f.1d20620a.54a11.091a@mx.google.com>
X-Google-Original-Message-ID: <20170328101255.GA6999@<rvarsha016@gmail.com>>
Date: Tue, 28 Mar 2017 15:42:55 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 3/5] include: linux: pid: Add identifier to function
 definition argument.
References: <cover.1490695255.git.rvarsha016@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1490695255.git.rvarsha016@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Add ns as the identifier to function definition argument struct
pid_namespace and this patch fixes the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v3:
- No changes.

Changes in v2:
- No changes.

 include/linux/pid.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/pid.h b/include/linux/pid.h
index c6d947f..b94c68b 100644
--- a/include/linux/pid.h
+++ b/include/linux/pid.h
@@ -132,7 +132,7 @@ extern struct pid *find_vpid(int nr);
  * Lookup a PID in the hash table, and return with it's count elevated.
  */
 extern struct pid *find_get_pid(int nr);
-extern struct pid *find_ge_pid(int nr, struct pid_namespace *);
+extern struct pid *find_ge_pid(int nr, struct pid_namespace *ns);
 int next_pidmap(struct pid_namespace *pid_ns, unsigned int last);
 
 extern struct pid *alloc_pid(struct pid_namespace *ns);
-- 
2.9.3


