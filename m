X-GM-THRID: 6464167912849539072
X-Received: by 10.84.128.15 with SMTP id 15mr5836845pla.36.1505064329931;
        Sun, 10 Sep 2017 10:25:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.107.24 with SMTP id g24ls1064976ioc.6.gmail; Sun, 10 Sep
 2017 10:25:29 -0700 (PDT)
X-Received: by 10.84.224.65 with SMTP id a1mr5881111plt.18.1505064329249;
        Sun, 10 Sep 2017 10:25:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505064329; cv=none;
        d=google.com; s=arc-20160816;
        b=VU54DiNlqbSYRVcRJklgbwEp9fv6twkvNqXW/Ywo/2sL1PMHW6SODzvDMn25u3OZA8
         CAFhgHwCPe5r2r+sFcHPZg8zazPCX/0eO/rUGBUuY8NPBT5GqlbeEJVNR/2wbSzCjwDu
         sIU2UsL7k2p8Svxrg+GzGUxiuCexBPJsSUy/EAC7t8JIxuozgCsK96naBznMb4sBgKpg
         wXBCoWar+qC0TcgEmj+q4pT6wEYERDulP9M2ZfwE5kQ6q2gOGz9ZG5+1mqPxA7DezK6v
         RAuQg9MNjHjPH4tVRbEyFVomq/boEu5nvmgtpRF5zkmjF3m5JQYZaW3VplJdJsfkMD7l
         8roA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=YGSMhM5R1nqWYWAmtJv/3+JldgeRXv64PfBkwMEMXVs=;
        b=w/wXi/l16bLgcKpa3uXI5h3z1xgoTaZB3MCUwWQWIDojsjTrp2y084TXuzPxjyiyOC
         q0iUnfu5ubl7aA5ZLUY73QvvKbnz0Dh4m4oEalODY6BI963h5xdwSMkq9WNOKHW/stUl
         rI6ev3HybKKszcGBO/W+MKRNDKJ/YKsQIMgqxJ9K/byagC9tFl9tYNRfbqbPMNvl1b/x
         WnPs0+9XnnxD8H4+3edinwVZp1/mLuw0TtzFDQ5/qPloSmUA2Ct5rQNNsRB7aRqUvdDd
         9kzbvrFpfCsobOE234rPCcjh0wgZkTKcvIMTUY4L+/MaW9jbkdXJad8nNmOl9rsWB7Vd
         Adsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+p7qsWl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 88si381560pfm.20.2017.09.10.10.25.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 10:25:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=g+p7qsWl;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id g65so3723500pfe.1
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Sep 2017 10:25:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YGSMhM5R1nqWYWAmtJv/3+JldgeRXv64PfBkwMEMXVs=;
        b=g+p7qsWlcjlj/5gLfO2fDjMR3CauaKG2PriogmXpU0dADeV+nDch+DaJvrkXbkAu7r
         u11CGnvkIxpaG7lIri4HYPHBPF50moN6g5eBsC/AEhxI0gz1q40CgYM6BnuCz8kH0B3x
         PfmNFhBu/MJLflbD1rhEIYUXl77f4Wt8y26EXChgXm4oChTmdaXxACdvUDB++MZbeirz
         eDOq6kyWV3p162qPPqH4noPrdixWxMy4SpCwuadeCqdv9xdthNatdL78SLGu2lr8syvM
         3NLAHWPCNGrjHlyI7IcZQ3aXRHjBlt3fpdi8z96lCyD26bDsDhtFXxGdJD8J2jx19mqX
         Hr/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YGSMhM5R1nqWYWAmtJv/3+JldgeRXv64PfBkwMEMXVs=;
        b=EHmXanr/vjAGMe4sToS5dhqnK68Ekcc+kECsEWaK+SHIsafxvHXH5qzFV6qlR0KIsr
         AA/DZ6zCn2/nXhPyyO3Bhnd8jIfzj8syW7RPPaNtON0nZrpnd/GLDaA0VlUjq4r6ll+T
         LSn0o3YH5fHPRpUqMK6zXkZBKPIXb4lIosapmH8tKUfk0nGeg4ujxwjWOhkKi3hXhuRU
         wGNBSNh0imA0+fkVdH1eBxEZZX3vjkYa/UTQLs3UuzEswK3flSBP67kRpVmcBAstdvNd
         din0gKgZetDjPWakTHkncSmLr36vRIeYPZzDk5hBOXW9vkaVEIFof+xYcmaKVjeGu1/2
         0diw==
X-Gm-Message-State: AHPjjUgFrL1g3XGgwVmNFoBTWWdwd53ifXH5ozJawIkPTcZ5F/RZIbnV
	IG2R0iRWkroAsA==
X-Google-Smtp-Source: ADKCNb5vNYZx3d9ctQPfuenDO8FQA+Jco8NoYE8aOoXIjn4/a0ohA6rGwQPHK0VlzDQAjSnAAZoshw==
X-Received: by 10.98.65.27 with SMTP id o27mr9506473pfa.205.1505064329025;
        Sun, 10 Sep 2017 10:25:29 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id i63sm13853977pfk.34.2017.09.10.10.25.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 10 Sep 2017 10:25:28 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH 04/10] staging: rtl8723bs: Remove unnecessary spaces at the start of line
Date: Sun, 10 Sep 2017 22:53:22 +0530
Message-Id: <94120b866c10e83ec66c8b96522ae7d265d254cc.1505052882.git.harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1505052882.git.harshasharmaiitr@gmail.com>
References: <cover.1505052882.git.harshasharmaiitr@gmail.com>

No spaces at the start of a line

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 5ceccd7..97ff3ab 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -597,7 +597,7 @@ u32 rtw_start_drv_threads(struct adapter *padapter)
 		_status = _FAIL;
 
 	padapter->cmdThread = kthread_run(rtw_cmd_thread, padapter, "RTW_CMD_THREAD");
-        if (IS_ERR(padapter->cmdThread))
+	if (IS_ERR(padapter->cmdThread))
 		_status = _FAIL;
 	else
 		down(&padapter->cmdpriv.terminate_cmdthread_sema); /* wait for cmd_thread to run */
-- 
1.9.1


