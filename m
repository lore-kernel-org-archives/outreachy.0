X-GM-THRID: 6466384589611859968
X-Received: by 10.107.200.73 with SMTP id y70mr5062748iof.42.1505572514118;
        Sat, 16 Sep 2017 07:35:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.37.2 with SMTP id l2ls7982026iol.33.gmail; Sat, 16 Sep
 2017 07:35:13 -0700 (PDT)
X-Received: by 10.129.175.70 with SMTP id x6mr17956260ywj.87.1505572513316;
        Sat, 16 Sep 2017 07:35:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505572513; cv=none;
        d=google.com; s=arc-20160816;
        b=vJCq5KnO31GIkSlm+jQbeE0XxK8QqS4y+qMGMINwXgq8dsZUeRo6HHNWn0EpTNcAiD
         pFRGxJif1qhJ7qDM69+Do2YONmJUMilmUEU6z5VyE+QqeITTVLbiPScJNODPH1NcPAyq
         vaukHuIE/mVKeUCzQFfH7lpmn1siuQcnbdi71/rt42DAvpZbF65BDmy7J2U80SgRtg/e
         jxuu5zd8ljGOSxlhq7XfVQOjjJI6/n0uBfncLmLo25MSVb4zB1PJELbnqxGo4j/8z4jC
         gtE1hYONHwlSISWZSbF0yiLZDcsoNL1o1HjqBekEwOJfziq5XOrtHSUoLlQ8Ux+caCcW
         La1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=0K55oPD6jKrA56/ZHhrXzIUSOQG0XHT0yeLeKjgiw08=;
        b=Mt1yJVTIBp6A6evDg23jx09qCJLOd6Ph3Gl6CTqYAAd2Lp1WsuNZpAccJIVl2Fn8Yq
         1TgUnnqNyRxx6wO8ncOH6FvcXopjCC2+txFFnj51wfGIKLN1mrspc0rW80TABkDbkXC1
         3ehUKF7A5L90eU/HQRFY+vlUil569Y8nH95Cx+NIRv/z1WP60y1BXErrmu7pzZhSfr8K
         CP0GaEQ7InbRzF39laVoOXAJGRfCPU9sSWzc4CGVQRUY4Qcqf5eQIZ70n9zz8eB+Ubli
         xa2cweKmkmGbLMnkCDghPqOurJ5OtDfjfYF9VcmgrHvkghJyQAgduy5CF7xVhoQL9MNo
         TqfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AE3Ya8+F;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 88si304407pfm.20.2017.09.16.07.35.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 07:35:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AE3Ya8+F;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q76so2575057pfq.5
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 07:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0K55oPD6jKrA56/ZHhrXzIUSOQG0XHT0yeLeKjgiw08=;
        b=AE3Ya8+FHaFKGbgG9pNzMO73CXWmyrARWurpYsYLsEIaW2b7yzJhm0YL7SV5U/G5Ek
         buy+t+vV6Ep99F0IhTTZpRpuwCb6XGwrC0Nj34pej5D3ikXx6MeU78tjPICP7IdHux38
         30oMZdHWQqj3QE9r/KAZtH1V4YcVQfuUYyqyPqdLmJoQLM2pfSSrvTacnx5SCI38UG2I
         CKQc9oSFMpo7Kp8QRwnQZVodwyEBIy23biWd1sLnIqHKmXiOPaOWi+I2T8QinrAn5CiH
         pzf1YY7SM3YiybbfymTYoV5LfIL3EKG2m0h89lQh8Xz+8V3VWsQFlvuLVSesJ9wmW3O2
         +ODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0K55oPD6jKrA56/ZHhrXzIUSOQG0XHT0yeLeKjgiw08=;
        b=Z97e4rafTSSw9yIkelQ3gNy9InWljDhsXJEGtvZCjkt5+KFYQVLF0JPe03Y9uAOHfd
         vHEcY3cFpL1qTKovFtH/AGrt6R9Pl1R0Ydd7gQeLsQ6fQs2s9/glSxOxdUabJDo+cOea
         BIlLG5Wo2sZA5fDUhgcq1eO0oDE0FqCDxpBl+fGX03PM44fdNtIrBRKWMZ++PKIJfQCj
         F9Yx05qb9KWP3j4ml4t9FV68J1K6qDrS7eo4fWXzC4mdPKWlydnb4SfIX2p6fZvwznWA
         /TxfSlQ22KGRiqDuyRT3dOTcEK+6YputEP1ZV4uTmRKV+iVBz7rnLZPpeSBTaaXeA/yC
         N30g==
X-Gm-Message-State: AHPjjUj6z16eL/2qREOWw+F0jLnk3Bwlm0r5PTj8pYGolLY+3SsD4SmU
	H5bUrgXzzuHj2g==
X-Google-Smtp-Source: ADKCNb6MJITp5G7NvknN2HEM5ByJBp8sZSJ9xDwkECu+kW93eL6ULjJtsjb6fyyQ8O6dFZlkJ4vDsw==
X-Received: by 10.84.199.194 with SMTP id d2mr23202934plh.346.1505572513045;
        Sat, 16 Sep 2017 07:35:13 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.15.200])
        by smtp.gmail.com with ESMTPSA id 195sm7305987pgg.42.2017.09.16.07.35.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 07:35:12 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: lidza.louina@gmail.com
Cc: markh@compro.net,
	gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 1/2] Staging: dgnc: Remove unused variables in struct dgnc_board
Date: Sat, 16 Sep 2017 20:05:08 +0530
Message-Id: <dd9a08aabab9cfc60a5c7c7c0d5191d72e68c2d2.1505572018.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505572018.git.srishtishar@gmail.com>
References: <cover.1505572018.git.srishtishar@gmail.com>

Remove unused variables and comments associated with them in
the structure definition.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 764d6fe..5d2566e 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -104,7 +104,6 @@ struct board_ops {
  * struct dgnc_board - Per board information.
  * @boardnum: Board number (0 - 32).
  *
- * @type: Type of board.
  * @name: Product name.
  * @pdev: Pointer to the pci_dev structure.
  * @bd_flags: Board flags.
@@ -140,13 +139,9 @@ struct board_ops {
  * @dpastatus: Board status as defined by DPA.
  * @bd_dividend: Board/UART's specific dividend.
  * @bd_ops: Pointer to board operations structure.
- * @proc_entry_pointer: Proc/<board> entry
- * @dgnc_board_table: Proc/<board> entry
  */
 struct dgnc_board {
 	int		boardnum;
-
-	int		type;
 	char		*name;
 	struct pci_dev	*pdev;
 	unsigned long	bd_flags;
@@ -200,10 +195,6 @@ struct dgnc_board {
 	uint		bd_dividend;
 
 	struct board_ops *bd_ops;
-
-	struct proc_dir_entry *proc_entry_pointer;
-	struct dgnc_proc_entry *dgnc_board_table;
-
 };
 
 /* Unit flag definitions for un_flags. */
-- 
2.7.4


