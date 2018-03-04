X-GM-THRID: 6529093465723109376
X-Received: by 10.202.91.138 with SMTP id p132mr5073673oib.60.1520173051792;
        Sun, 04 Mar 2018 06:17:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.62.67 with SMTP id l64ls1553303oia.16.gmail; Sun, 04 Mar
 2018 06:17:30 -0800 (PST)
X-Google-Smtp-Source: AG47ELu87mw2B9pod3PXzlzkqLtwOe1adH6nyx2XRDcMZu50sNq2Zynyu452sCQrRmY3G9GewckG
X-Received: by 10.202.253.129 with SMTP id b123mr5759695oii.33.1520173050876;
        Sun, 04 Mar 2018 06:17:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520173050; cv=none;
        d=google.com; s=arc-20160816;
        b=U2u5AM/v2DgCiGUNiGkjIyGz5466nI8+w0tKIw5KdALal3KE7MbyJ7/h3QhWEI5niI
         yHX1IOQGaFEwBcZKKx4w5p37Nu5luPyASJFNj2cIyAsgkL2mCu+xX+I/f/50KjrNrSUi
         zuepPwGRiRHqheVs/gSB/Oj1+lrAjn5hf46gjpZjJQeTDHfmHrVg46AiDKm9lfuDNUvk
         U4CPmQt5XUNiuCScyN/S2OCAEXuL0VRDXLs6mGE2RitLGejhIqkTfgvD8yM+pmi6IH5F
         lsI0TZLIsUCOp+uy1l0AzUTt8fAwUq+DZ1V+v+DpK/8QhqTvFl67Di3bl+ZcoOcjRfTe
         PX/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=WehHqyVTUTemy0RzkLpX7am8qebdptpWdpc0XXj0ai8=;
        b=01nIMDE2fuOGN8xXngC3PXe29qxR4TGme4GbmF8ln99hrmq1y2GnKG+eMVgkhVbR9L
         Re5j3n3nh99Nfrdu1a66w/0hPpKVzGiODx7HjHTzzQ1ajSWhYPOy7O1ht8H/zZCTnEI6
         1pgaEMgEzhgGkPWy5RnGmMZgOgIsEoseFK3sj0/cHtaCjsNVTldRMMkL2unUeeZJEoze
         ykvHPfj6pYARnueRIBZ5n3tZirylqQuBv3I0rNffGcNWlWt5mCRj6NqejpP4fDkG8X6j
         b/m6QqDp3t5FcF77oQunm+B5QM+HtsOgQM5lFLDyIQxKQKVtoFgmWTgEi2/u3C5DN6A7
         RP4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F9qxjDVO;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x235.google.com (mail-pf0-x235.google.com. [2607:f8b0:400e:c00::235])
        by gmr-mx.google.com with ESMTPS id d131si772098oib.3.2018.03.04.06.17.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 06:17:30 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) client-ip=2607:f8b0:400e:c00::235;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F9qxjDVO;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::235 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x235.google.com with SMTP id u5so6103097pfh.6
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 06:17:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=WehHqyVTUTemy0RzkLpX7am8qebdptpWdpc0XXj0ai8=;
        b=F9qxjDVOrSwmrRzP6ptCkGOUFVkKrkw5oVRK4tQXIwFnxwviJyD1LLYyEkA6tzoRRw
         UehzZq3nzCkeInPpMGfaDyKYQBY1D+c6W4Y3YO6rn7rJ1E3DTtDWXaEt8sTe7hGmfBX3
         QXV67JYWwZ1qdlDASYU7s1AjSixxUIXDgbgZxQE3WFzsplf+pflB8goZC9Njmrk4shGe
         4ykokhfmqF/OoPYpVQcNjQkYcJjQLfPrfxapOnAXK+7icXoKHL9xpDWChM34AzNS53OU
         PdRgxKRD73XSXe3KdD/enx+7mzAw4ADPYjCyJ0Z774UI9yZzTeGvfA49gGQtGYxq4uuW
         lPzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=WehHqyVTUTemy0RzkLpX7am8qebdptpWdpc0XXj0ai8=;
        b=ZeGSSATLOkz7wLlBKI5+3alt8w0YG6XQv/iwupcwXvrVgXd/oumfxKJEcaPUFktBiA
         8wGP4l+1HCpfUyF1Mctv18CMsJFqMewNf9g9KzfVeQx86Msr6Oarp2uzcgmK1F6UHxty
         bxt+BKiIKVuSGQb+XNrSa6zs1vjhkM7s0VU3VmEEQqsvjbgV+b/khAZXYdM9dqSIenp4
         VZirdxX+v0hpHgInx0w5peuNKFaOO3w8SwMmCJ1cAjp9BZCaGSzvnIL4eiZMONL1QXeW
         LXcRT4YcRUzo+0MruL88iMPVXbiaKH6TKePduAwemM80FzeX4FNlMwfTeje4hC9nLI+S
         32iQ==
X-Gm-Message-State: APf1xPD0bjQ0huSI4i42NH5uLFsD0AuT8BhC+4hiaIP2/CGmRXjYGUkP
	/wz+xdepuuv9IGqCc4jdgCg=
X-Received: by 10.99.110.201 with SMTP id j192mr9834877pgc.59.1520173050494;
        Sun, 04 Mar 2018 06:17:30 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m3sm16041826pgd.3.2018.03.04.06.17.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 06:17:28 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: oleg.drokin@intel.com
Cc: andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org,
	lustre-devel@lists.lustre.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/3] staging: lustre: Replace "to to" with "to"
Date: Sun,  4 Mar 2018 19:46:07 +0530
Message-Id: <1520172968-17448-3-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>

This patch replace "to to" with "to".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/lustre/lustre/include/cl_object.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/cl_object.h b/drivers/staging/lustre/lustre/include/cl_object.h
index 90419dc..341a145 100644
--- a/drivers/staging/lustre/lustre/include/cl_object.h
+++ b/drivers/staging/lustre/lustre/include/cl_object.h
@@ -1833,7 +1833,7 @@ struct cl_io {
 	 */
 			     ci_verify_layout:1,
 	/**
-	 * file is released, restore has to to be triggered by vvp layer
+	 * file is released, restore has to be triggered by vvp layer
 	 */
 			     ci_restore_needed:1,
 	/**
-- 
2.7.4


