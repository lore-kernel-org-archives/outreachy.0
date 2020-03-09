X-GM-THRID: 6802195878840893440
X-Received: by 2002:a0c:a281:: with SMTP id g1mr14422040qva.168.1583759722953;
        Mon, 09 Mar 2020 06:15:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls3596197qtm.8.gmail; Mon, 09 Mar
 2020 06:15:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKfdpGvzLnMPwer3zNycGhXHDIuFwdsJTXHkSua/PD51c3k1gzXCSC+IFwrCluEqzNGoD5
X-Received: by 2002:ac8:e45:: with SMTP id j5mr13946581qti.215.1583759721921;
        Mon, 09 Mar 2020 06:15:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583759721; cv=none;
        d=google.com; s=arc-20160816;
        b=X3B98pF4WFQDPDrn/3IPsR9YD876g7JdDHnsWZiZLVvg2OLOKaoMaRQwl0M9dyKU39
         0M35NLhyBunVjt7s/aLimbzfKESdNtzcsP1ogSzAjoUCK2n69G1NSrr4+Nb7197gSnaj
         AX2/99M867kQ/n3T1SOcWoH6zanxSksGO4iT91CH1zMKNBJW8FDfJIRNxkJxOCkK7q0P
         MuNbOD7UYhsu3rPyh7R6bAxLxD1xwFn3MjaxPcOdOUSKnIGTzUr+NGWTtgfAMc/3FOdC
         L66R5gIC9sU+q1503EIl81A0v9Lg1433cSLTTOQoHNC8vhHlSzn/DkGdP60wS9U0rG8N
         c0pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=HtQ4mhhYUkCrlaobIHyQiUastubjbptsUJZaIYkKny0=;
        b=kaGPEFswws94ByTxG1xg94IBsN785dTbNmAZ9zQkW4IeXfT5MEleTkLfHB1DEvQ+Wl
         Wpw9LhncNJGqGlYsf8oJsO2xRaCEEnglL21FRbucP/3AQU6l8TnZUBH6CbASY1r4GPML
         PZb0kv/WOg7Sk8UblFS3Q85SFcYraUkkDqP9UCb38COGBdBTmlSKF3CJnovYggtihzE/
         +X1CDByWub0/BRpjim7mNk3kAkQADbVf7fxcZcYs/Ek5nURwWBBA8J358halRXyN3nwu
         DLYum1rZLpqLJFrlDQeLvnqLPjbsJbJMwYJ6H3jsvAMYSb49bLINhe6llDRscU/Za9U9
         VnWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkV7evWm;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id w53si546323qtb.4.2020.03.09.06.15.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:15:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkV7evWm;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id m5so4708789pgg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 06:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=HtQ4mhhYUkCrlaobIHyQiUastubjbptsUJZaIYkKny0=;
        b=nkV7evWmx/x9QYqiOGGUwDx1I/QO1s/XUNTNE8ZEAHR4BozgQ/n+YR31ZGaj0KhFhY
         DOm+tBoc1nhcCjxCDqsV0fKGz0EUDM1P6X3XDqosSde1tHoQjNMUAYEB559ZVe3P3s3a
         iu5WQmW5lExDH5vEp+HCs/yahd+T4EdwQFwfHYPjqX6PuMz0+JWesSl4ZV8WAC+UmvbC
         Isfy9OUG3wuD/FDWC8CAm7AYfaWfLqc70IqwNpdAPCSDqvxOoVMqoneFk1NwCLUyJKlf
         L1g5hk7Pn7o1Nmy5ktR5Z+gUxIginD7bdmPbosZ1Q03Ca38iDVzal0MIIFql2PJrD+SK
         bgpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=HtQ4mhhYUkCrlaobIHyQiUastubjbptsUJZaIYkKny0=;
        b=B+Ge7jjF/lhxeoVW7B8w1XNyEvCNIcXnaxE4BH3bz+T4Ffh4gDPiRuxBPsgNOr0ofp
         g34yq+epbAMXfpi/CEqtbprbffbi7nG3M6k0KIFxkcSljknf3G9v0gFk6FfLpEcJDHzd
         MW1y1xCct60qR5lfy+ueoklpRfzLxNhfLnK0H5+2fyvdCL3reZrSCrFezCQt/GiozSbx
         zbZVSAA0jcWJNHPpAtWeT91UNTqbKqo0tS6/2BJ+HqBAHhvhWI7XNHdnrYD90EClVqrs
         3YhutMLTM5ebAm1KuTKpk1c7wRgs0xhyzi/GWVQAcZJ7c3tjYoJ8TTaFDrO1H6eJRs3B
         l9UQ==
X-Gm-Message-State: ANhLgQ1srYMvd+alIs00EkCWZ+E4FbcaxjIMNSwO8yrNAemvNQ044boE
	L1iLnYnuFNRZVTzpPgZ5SOlGkRlzHOY=
X-Received: by 2002:a63:5864:: with SMTP id i36mr17135513pgm.426.1583759721025;
        Mon, 09 Mar 2020 06:15:21 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.162.233])
        by smtp.gmail.com with ESMTPSA id j8sm19274579pjb.4.2020.03.09.06.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 06:15:20 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>,
	linux-usb@vger.kernel.org
Subject: [PATCH 3/3] [Outreachy kernel] staging: qlge: qlge.h: remove excess newlines
Date: Mon,  9 Mar 2020 18:43:56 +0530
Message-Id: <4afcd06ab36ba7b37af7dcc304a7d4f9608154ae.1583759118.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
In-Reply-To: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com>

Blank lines aren't necessary after an open brace '{'.

Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
---
 drivers/staging/qlge/qlge.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/qlge/qlge.h b/drivers/staging/qlge/qlge.h
index 4ef8dae3d7a0..fc8c5ca8935d 100644
--- a/drivers/staging/qlge/qlge.h
+++ b/drivers/staging/qlge/qlge.h
@@ -119,7 +119,6 @@ enum {
  * Processor Address Register (PROC_ADDR) bit definitions.
  */
 enum {
-
 	/* Misc. stuff */
 	MAILBOX_COUNT = 16,
 	MAILBOX_TIMEOUT = 5,
@@ -1762,7 +1761,6 @@ struct ql_nic_misc {
 };
 
 struct ql_reg_dump {
-
 	/* segment 0 */
 	struct mpi_coredump_global_header mpi_global_header;
 
@@ -2059,7 +2057,6 @@ enum {
 };
 
 struct nic_operations {
-
 	int (*get_flash) (struct ql_adapter *);
 	int (*port_initialize) (struct ql_adapter *);
 };
-- 
2.17.1


