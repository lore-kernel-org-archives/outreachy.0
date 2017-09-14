X-GM-THRID: 6465611589668044800
X-Received: by 10.99.143.69 with SMTP id r5mr13838454pgn.10.1505416336124;
        Thu, 14 Sep 2017 12:12:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.200.85 with SMTP id w82ls5723090itf.22.gmail; Thu, 14 Sep
 2017 12:12:15 -0700 (PDT)
X-Received: by 10.55.187.7 with SMTP id l7mr11828545qkf.48.1505416335624;
        Thu, 14 Sep 2017 12:12:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505416335; cv=none;
        d=google.com; s=arc-20160816;
        b=WgrfSyQJRA3+0u/ji/1wGN7G9Dq8Zn2ILowvB+CWy8TI7nPg3qpzDnBtacx1Xe59BW
         fOjMYCRFPB6KFCzEImaRVlA7rH/PZk6C3/o/QxOZzBxOQzAzCz4VmUWswA7Y8+OEbFDB
         CdBWbFI5qsvKLS/70JOYkGR/IyyQj32oAsBCh7EDJfirrrmbk1/xV4vsvkWARZOu8kYA
         42C0RlTNowNJTKjiqn/TbU1Ip1SlYD9EaljgBdk/YSEJ5+JwNdHplA8nHcxAXt/6Y+U4
         ZvImNLbxTdkOeKFzwfZbCD46t4E3OMZZVpJQg264Npx1LOJWSjwmKyI4yr7UKN8T540u
         lJFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=nvp9n7nnByR/j88rE5lHDPTLvU5itpXFq1ptndoLxfc=;
        b=W0920CZO3JeRPC0P6ewahZZymSU1b9MnuVEBspIHigHWLr8TebJ++yT5dSkO8mP0KQ
         SlJz4r08C10CaA5Ynf2j8w4XF+VKAc3dDV708xvy2yLqSzGSYR3J5URxnqlLu2dG2wMf
         mzLUDkUHFUmj8U/kZkNk+pizxLxVAt5N2i6bDzg+Nu9eiQGwvt4FN6luiP7RzMI8Cj6Z
         pD6B6I95niQrVJPVpIRdzB19uilLemPjRw+PghwTPJykk4/VzNsHWC5MUcqxk5pIUHsM
         d4R/fL1lzHzgBUkG1sksjYVbOxKwfR4HR8/Dwa9QX8VGO/sZcaGGnOY089/qT0i7buHU
         v48Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OuXFB74U;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id t77si79396pfi.13.2017.09.14.12.12.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 12:12:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OuXFB74U;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id d8so130956pgt.3
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 12:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nvp9n7nnByR/j88rE5lHDPTLvU5itpXFq1ptndoLxfc=;
        b=OuXFB74Uhg4CC6E2/8ndMO1jaoDDLnp7bJpd4Br62EnH2nUDlTQ7xhuBPs9eGZGNi3
         0L353C7ZkZMbLV/PnXODjVPyj2M29PRT9Pr9p6ishWOgekAls0zXJpYeIpS57cOG5QV5
         g13l9L8bmg1TMYA7sTHSQ/RpNSo1IivfFQpqnPo704dQuUmVIXqaFSxtBPOUDi+on1Ih
         uySPFfDKf1wAmcGtMMi0CIOYTsRUU3jVlbqGWzqiMjsKa7AwpbUSKBoX5M/X196H50Ir
         vJvmz3Yik95mQdcXvTz27Kj4f7WxcHS26AuSU46voz/VVNVhPfUYOr5v3zJQXJXCdxBv
         AOKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nvp9n7nnByR/j88rE5lHDPTLvU5itpXFq1ptndoLxfc=;
        b=C6FVfjZdUrNvemzXLOiR6twbszCCtdTOx9EnVUp1D+OlxgIKNRxErFRHGR4F1Z8IpN
         klhnHdDgneKyskMgy9dArKazz/hhmnK4gQ7QU6jpKqbCs46gMmV6DkZNalf5Md5Qz+Ey
         qr4lNzZxvNXqegM9qNmnFgpp7D357GH+0Fw+quu7PqKFzaxLihMyoNXH9YpewWzkUKOB
         v29Q64QIRY0aMtAdZn9seAeVwn3N7zdn+6wnCP04QxYVM8Njkq2gY30P04eXbHJ0LNBO
         Y9TjyyednnJZ6UNu41+TxxnltTJ2szorYPnWqu8RvtFrFbZQL0uZ15lzmedrjMN/amOQ
         UTpw==
X-Gm-Message-State: AHPjjUiZgv8Q1IJ/L32t/qHd+2Fo/2BDiEL95nTbZQ/fOYxJs5IZTpts
	rArqU73IdTE+Pg==
X-Google-Smtp-Source: ADKCNb6foB9VM/duiXuse+sq5aC3xVmtOttauMUIBQwa1vJLTg+uJc+En1fh6K/Y/4g8e/wDv6ZVrg==
X-Received: by 10.99.120.197 with SMTP id t188mr22006312pgc.3.1505416335316;
        Thu, 14 Sep 2017 12:12:15 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id b68sm33654909pfk.23.2017.09.14.12.12.14
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 12:12:14 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 1/3] staging: lustre: enclose multi line macros in do-while block
Date: Fri, 15 Sep 2017 00:41:51 +0530
Message-Id: <93cfc5fc6f59b33d9aca6dd3b33f86150e1f5abb.1505414917.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505414917.git.aastha.gupta4104@gmail.com>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505414917.git.aastha.gupta4104@gmail.com>
References: <cover.1505414917.git.aastha.gupta4104@gmail.com>

This patch fixes the checkpatch.pl warning:

macros with multiple lines should be enclosed in do-while block

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/lustre/lustre/include/lu_object.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index a3c0481..4e4bcf4 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1151,8 +1151,10 @@ struct lu_context_key {
 	struct __##mod##__dummy_fini {; } /* semicolon catcher */
 
 #define LU_KEY_INIT_FINI(mod, type)   \
+do {					\
 	LU_KEY_INIT(mod, type);	\
-	LU_KEY_FINI(mod, type)
+	LU_KEY_FINI(mod, type); \
+} while (0)
 
 #define LU_CONTEXT_KEY_DEFINE(mod, tags)		\
 	struct lu_context_key mod##_thread_key = {      \
-- 
2.7.4


