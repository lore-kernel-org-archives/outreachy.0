X-GM-THRID: 6466340392828665856
X-Received: by 10.31.10.146 with SMTP id 140mr15745428vkk.18.1505562195188;
        Sat, 16 Sep 2017 04:43:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.138.1 with SMTP id v1ls2620987itd.3.canary-gmail; Sat, 16
 Sep 2017 04:43:14 -0700 (PDT)
X-Received: by 10.36.219.133 with SMTP id c127mr3734103itg.37.1505562194384;
        Sat, 16 Sep 2017 04:43:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505562194; cv=none;
        d=google.com; s=arc-20160816;
        b=lyQsOPlQWQYbSWKlVPqXJydDUuS8aaW8CiJTIOnwJHy62vKLRFDDXjtVrs+iLGzqQ2
         XzxqQJ8sEdu4SLrSCReD+gYOY3UamBRdIdOYDVsgJOwV+RBzoWwQF5meXmc+RaHbWrzp
         wlLaMxEFTRhXK5ccgU6M3Cssv5s+D9nDARmBBR7q9sJ5IF6ugPmbsU8G7XbWeecyiOOC
         Ue90EI3JKiIElpgwIvGwOGua/XSD8LObhSJLiD2j5/psf06yPlPTGRBrs9/4gxool+sy
         0eCN+UM10OJPeJps8tjeCZrcTvqTnpCvds+sUJk3vaHrGn0JohSuEXlK64gJqLedbDVG
         2CAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=W70taLWoKCuFbBepDcqSE4tGse4UJPjkdsS9KvIgZc8=;
        b=vUtTXN21cb52sGvyeL8wRmRRPYBg3nTZwVV2kG2xpZvgcRbuKTR716DbV9j/v6InEr
         aPxVDRF1hPgsx8YH6fiBLKCxls14JrqLVq4dJcVJnedaIblW+QnSkT2WyiudWfCS8W1p
         bPxh++MidARilrJGi9h2yXE1sraGuPipLkmfCEzCol4FzI8YjPn1T1Oow+tsD114n9v/
         VPErYlA+sdBVOOOXuga5KgjZehu9FIEU5LROl3H92/7GzHBJ6HzssfG+5fE5vUsWzA2O
         EUgZSzlOizYFq6XgrA+Kcd2xPsoP9qRd/ydu0S5lnoAkPTmYGZZAgxfPVMJl15yC/KtS
         gDXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ltjhn+lP;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id w11si139317pfk.4.2017.09.16.04.43.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:43:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ltjhn+lP;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id f84so2446604pfj.3
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=W70taLWoKCuFbBepDcqSE4tGse4UJPjkdsS9KvIgZc8=;
        b=Ltjhn+lPPp0ADVrEAyh/3sE6dG/+Tz8B2KZ0WCuKDclHfmanDnz//81U7IQqZTbK6Y
         0epIcGiGPPVPtykR/hN30tvK/Hd+6uNYkj31yhfn/UTsrcMBnJqq27gpg/+5CHSG3Ga7
         sApiEOvYn1CWX5Ad7KkdL+/fdnUdg/QT57siT5KaOHJmhWsWz1tZaDK3ABxupz4CVWLE
         fyV+P596lJa8034XSdH4eiZwhOK3qckLqdNYP5EYWj6RwJCTrXt2cUoIrQ9y0Eu3NrWE
         HwxeQZ+kopYrZ7r0bM4tXun5RbdDaE5xcbKrJQY4lA/fT5bpDJdbGBQ4U/HLiGO/XOyn
         oOLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=W70taLWoKCuFbBepDcqSE4tGse4UJPjkdsS9KvIgZc8=;
        b=UhcKrg8ZdsgR+N31HwXVIlOZeZK2csYg/xWKASIVDOzpaqc2AqJRq0VCHFoHPTXP4N
         3OX6BFPzCZHu4f8spv52y7Ma1NkSdFcpJgVTw7fxE4oIDAkUftVEziWpkUc9d5I5haSI
         kXf/YRVAPIikERz4/GubLlB4osKX6B1ECb3jRNIPuMC+zliEXxg2x1lQ60+UjqdksBgb
         VixaUlh1rrdZRiHXHXfIqMaMcAV/ce0MzF2Gdc1/bL5uXopZpKZxtsELwqlJhDL3niSd
         JO4ZiuUe0UqXf/7HMh34NVhovx6IOxlq11be3psn+F7SyqC/vAZIYLULhk7pVqJ7HDIz
         /lyg==
X-Gm-Message-State: AHPjjUiVKIofDMJTC3b9Xr2aJi1Bv3/VWlrjMzIZlG0jByYz6tEQr9lU
	J5WfowznxbnTsQ==
X-Google-Smtp-Source: AOwi7QCkHrPs2DXounglZ0XZZai1Hikt9n4J55ndS3VsgTZQSgCLNY7CkNIHxNQK9nw9r5WJiWDASQ==
X-Received: by 10.84.132.66 with SMTP id 60mr17325747ple.158.1505562194140;
        Sat, 16 Sep 2017 04:43:14 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.202.126])
        by smtp.gmail.com with ESMTPSA id n12sm6588148pfb.131.2017.09.16.04.43.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:43:13 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: lidza.louina@gmail.com
Cc: markh@compro.net,
	gregkh@linuxfoundation.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH] Staging: dgnc: Remove unused variables from structure definition
Date: Sat, 16 Sep 2017 17:13:06 +0530
Message-Id: <1505562186-11813-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Some variables in the structure were unused and hence them and
the comments associated with them can be removed.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
 drivers/staging/dgnc/dgnc_driver.h | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_driver.h b/drivers/staging/dgnc/dgnc_driver.h
index 764d6fe..2b625cc 100644
--- a/drivers/staging/dgnc/dgnc_driver.h
+++ b/drivers/staging/dgnc/dgnc_driver.h
@@ -103,8 +103,6 @@ struct board_ops {
 /**
  * struct dgnc_board - Per board information.
  * @boardnum: Board number (0 - 32).
- *
- * @type: Type of board.
  * @name: Product name.
  * @pdev: Pointer to the pci_dev structure.
  * @bd_flags: Board flags.
@@ -140,13 +138,9 @@ struct board_ops {
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
@@ -200,10 +194,6 @@ struct dgnc_board {
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


