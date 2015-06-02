X-GM-THRID: 6155780182483402752
X-Received: by 10.66.249.70 with SMTP id ys6mr34704781pac.36.1433254262514;
        Tue, 02 Jun 2015 07:11:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.176.196 with SMTP id ck4ls1268244igc.5.gmail; Tue, 02 Jun
 2015 07:11:02 -0700 (PDT)
X-Received: by 10.69.13.226 with SMTP id fb2mr8628649pbd.0.1433254262175;
        Tue, 02 Jun 2015 07:11:02 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from mail-pd0-x235.google.com (mail-pd0-x235.google.com. [2607:f8b0:400e:c02::235])
        by gmr-mx.google.com with ESMTPS id x3si1874395pdh.2.2015.06.02.07.11.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Jun 2015 07:11:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) client-ip=2607:f8b0:400e:c02::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vatikaharlalka@gmail.com designates 2607:f8b0:400e:c02::235 as permitted sender) smtp.mail=vatikaharlalka@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pd0-x235.google.com with SMTP id ki1so133761104pdb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 02 Jun 2015 07:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ttPPjLZzY1/WkWFFYTCxLoRPzkm6GNJ2gAulvvwVf9o=;
        b=TPG2wnAMwIRRUXwHXmAwc4zGWNxNMspDOS92ZynUFr4FtdDAtvCxF2RgzFCLwTLAcs
         NGksOD+ZpliBHJ6DYYO78CHxHGVPyRSfY+x+dDDk/fBxkvLuWIWRhKHIc7eoSmXUDzYw
         TPoE4gbwg37qhQiMwMyEa7YtfBB+7z2DfenwlzGa9jXkOkZE5SGfKEZqgixDkT2UMshr
         CpiSgO7/G2qc47BQIr7xB/cRBTjP3WDkb/TVL0V5fJ0uvFFBqcij/ryjJJBoRaUzTFQj
         wLrUVwq5AW1VQoEr79lH051ioKd4XQGKaLRTrdOiZMXnhu5W2OTm2HV6yLBKCMVewjk4
         Tqaw==
X-Received: by 10.70.96.194 with SMTP id du2mr51038107pdb.108.1433254262093;
        Tue, 02 Jun 2015 07:11:02 -0700 (PDT)
Return-Path: <vatikaharlalka@gmail.com>
Received: from vatika-Inspiron-3443 ([122.163.20.212])
        by mx.google.com with ESMTPSA id i1sm18016633pdm.19.2015.06.02.07.10.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 02 Jun 2015 07:11:00 -0700 (PDT)
Date: Tue, 2 Jun 2015 19:40:56 +0530
From: Vatika Harlalka <vatikaharlalka@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [RFC] core.c : affine non-pinned timers.
Message-ID: <20150602141056.GA15743@vatika-Inspiron-3443>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

---
 kernel/sched/core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 57bd333..e2785e0 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -599,7 +599,8 @@ int get_nohz_timer_target(int pinned)
 	int i;
 	struct sched_domain *sd;
 
-	if (pinned || !get_sysctl_timer_migration() || !idle_cpu(cpu))
+	if (pinned || !get_sysctl_timer_migration() ||
+		(!idle_cpu(cpu) && is_housekeeping_cpu(cpu)))
 		return cpu;
 
 	rcu_read_lock();
@@ -611,6 +612,11 @@ int get_nohz_timer_target(int pinned)
 			}
 		}
 	}
+
+	rcu_read_unlock();
+	cpu = cpumask_any_and(houekeeping_mask, cpu_online_mask);
+	return cpu;
+
 unlock:
 	rcu_read_unlock();
 	return cpu;
-- 
2.4.2


