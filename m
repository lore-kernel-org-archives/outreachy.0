X-GM-THRID: 6401807929545064448
X-Received: by 10.129.113.10 with SMTP id m10mr6342569ywc.140.1490537060532;
        Sun, 26 Mar 2017 07:04:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.195 with SMTP id 61ls11301417oto.31.gmail; Sun, 26 Mar
 2017 07:04:20 -0700 (PDT)
X-Received: by 10.176.81.70 with SMTP id f6mr1651300uaa.5.1490537060131;
        Sun, 26 Mar 2017 07:04:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y90si1440623pfa.6.2017.03.26.07.04.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Mar 2017 07:04:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id p189so5265927pfp.0
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Mar 2017 07:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uescfN5511z7mWxrPSc2nfgd+SCRfXmwu8cSCNnqRdo=;
        b=pCaS8PmEb6XkrdKEbk6LfB9OiPwasde2ySbfGviRHjz++U4WQzJita/Fv8MFD7aCw4
         EfreaIBJCW4q0Kbs9hN6XFExNpc7QnLJezLd1krMpnomb8v/ELW6YEzrIfRyXvZeDCBi
         SX8vWzCNGFBfRPhNoS26N3f6lmVJUYiUI3ieHIQUkPq1zRmSS6SLMeWBkRvLhjjAIC5J
         5ZBJABLBJDymH/w5vWtlc34r16qbj66Lxb00Gq0UpSyciOW0pHGwWCduRdx2iFYhGxag
         l++hcqLGcfU0kk0dTeKJ8u/VOnxrLJI2f8+X0YGBGFKyJLRmCIfxbqY9QXUMnFbeCYEm
         IVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uescfN5511z7mWxrPSc2nfgd+SCRfXmwu8cSCNnqRdo=;
        b=YBJgLnyKO2J0FAB8o+TmuDwYAbnpsaOumbrdzFr64q5zFNsb3FODik5xZ+iYp1WQqZ
         YfJ0BknS4lTEilhFidkW5M9q5wBswbcKsrOK8SdOzR8KRd5tWNuIcOF9bSmBEUqmYbUU
         zqBs24mhrqdOJMcGX8zp8aj9smc1S0ZRLmtmrfO+pZE3GUfB4TohvuXZMeBk3DMNi3jA
         eO4MRaAAqleC8u8Nhe0vZc/X2IEHyidvePlycRTKnEBs/9RgVpeNw16jrBniHdxdUXrv
         jUyJxRsAk14mrKsamcoAbd0R4asiZxhB9VF/jsAioTrEwN5ge/uoNNfy1dLndfp2ayLc
         QO9g==
X-Gm-Message-State: AFeK/H22hYMadvHX+2O4cJMfoMJQq0Ol3tdaE1l+11c3JJl3OnSQgkkXUOtfyc6uaRuN2Q==
X-Received: by 10.98.91.130 with SMTP id p124mr20287513pfb.165.1490537059842;
        Sun, 26 Mar 2017 07:04:19 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.132.176])
        by smtp.googlemail.com with ESMTPSA id h25sm15369760pfk.119.2017.03.26.07.04.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Mar 2017 07:04:19 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: mawilcox@microsoft.com
Cc: outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] kernel: pid: Update Documentation
Date: Sun, 26 Mar 2017 19:33:44 +0530
Message-Id: <1490537024-9591-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit

In the free_pid() function, it is not intuitive why the reaper
needs to be called if number of pids in the namespace are 2.
Update the documentation based on the discussion here:
https://patchwork.kernel.org/patch/2851700/

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 kernel/pid.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/kernel/pid.c b/kernel/pid.c
index 5822142..8fc5b9e 100644
--- a/kernel/pid.c
+++ b/kernel/pid.c
@@ -268,6 +268,13 @@ void free_pid(struct pid *pid)
 		hlist_del_rcu(&upid->pid_chain);
 		switch (--ns->nr_hashed) {
 		case 2:
+			/*
+			 * It’s possible to get into a situation where a
+			 * pid->ns reaper is <defunct>, re-parented to host
+			 * pid 1, but never reaped. Wake up the reaper even
+			 * when nr_hashed hits 2, to prevent running a
+			 * container whose init is Process.exit(0)
+			 */
 		case 1:
 			/* When all that is left in the pid namespace
 			 * is the reaper wake up the reaper.  The reaper
-- 
2.7.4


