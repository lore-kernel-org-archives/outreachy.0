X-GM-THRID: 6465611589668044800
X-Received: by 10.55.221.210 with SMTP id u79mr12059419qku.11.1505422045139;
        Thu, 14 Sep 2017 13:47:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.211 with SMTP id y202ls5933593itc.17.canary-gmail; Thu,
 14 Sep 2017 13:47:22 -0700 (PDT)
X-Received: by 10.99.181.19 with SMTP id y19mr14085742pge.47.1505422042318;
        Thu, 14 Sep 2017 13:47:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505422042; cv=none;
        d=google.com; s=arc-20160816;
        b=g6YTKvYSgIA1BFgLEd1uB8LsL7BcsLgYl5wYnRIhcAdKyYCPl4pRucSL4kU7tUR4ob
         R7s5yBJ0QcljJGWEofpq2fCXUHiqrgopVJAPQeF0umf7x64ahvmX5Tw4FAbQSckFRaTi
         /cGmNEnOiawQXYrfVwbU2UAdl+tCR6A2R5y0sQPhH4LdDJC7VpezTd85QEwMbTNa5uRE
         Loe8ISoxPBdyQP0D3JQjBx5LE9v3xx+nrVNjaJ9uq59ovGe4oaExhwDdjKwefVXj9DN4
         GC5vdYk2MVcadBuGUeIRQNGNnDT1cRJ5gs2eP8uFzpB7EnNBMhtFyxs5l3G08/YdcFZt
         3fLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=GaSla2GT8UcgOexc0ndb7mJbG7B60s6jlTlALScGOQ0=;
        b=RdFaSClMQG92HJR9kPd5J5atUZuadGcTY33LK0B2/30gW7VShKVoKuDZW5A+8P2aix
         JXgtj01ITdL4p0bNEP+k34IPkDJGSTipu2ElvfWYml3SuUsrFJmOAwymXixkW5d0XiNq
         7QMi6XLBF/KqtyuOIpDBepKs0oNnFUL+PGx09b6xtSQ6e+RyzBvv2868lfISZcQ5EZCx
         ULeKklKhrqg3RV+oyN6JOR1UN+6FBPC1dBagv3LQJojDNz8TO8PvQC/gNTu/uPG/G4Cn
         syfAX5LQZzZsJupl6/rp/QaFXGyriuh/ueftKoPAa1uRYazDKRgw8+oHWYtwlbmC5Mrn
         qgmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nU+mnumS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id d207si1349244pfd.16.2017.09.14.13.47.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Sep 2017 13:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nU+mnumS;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id m30so229718pgn.5
        for <outreachy-kernel@googlegroups.com>; Thu, 14 Sep 2017 13:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=GaSla2GT8UcgOexc0ndb7mJbG7B60s6jlTlALScGOQ0=;
        b=nU+mnumSCrpDVyGxDDNRDcLSjcEU1a/DEaYXaNWz4QNL6GENfqT5S7FnSIzt7kMEiJ
         Lh+o9bwaRaWuaACFfr5KYhE6ko+/WD9GDxmIR/tUqSHMd5RnZjqPGhJES2shgDR6bGJT
         8EbulZuMwwdlafRVQQaog1u3XBjH5dBLOTsbffb0vOY6zneVqxvExyvyJyZ0fyd57dds
         qgnxhkEe23Qi68ZQhVk/EzuNXv9rqIzAA60Fo/dJdubHJaBa/mHM5DP5+e/jv3hhIojR
         Bdd11whqbxpOmgwGMj0vGUHkGeqilUB1BNoe8apP74XznSmJX4RD5PUI+klah1IqVtoQ
         xnOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=GaSla2GT8UcgOexc0ndb7mJbG7B60s6jlTlALScGOQ0=;
        b=M1od9ZSEvnXiUKA/ts7fif3P5s+ByUtVRAqmdZZ4S1Yk5RO9ZhztKGt9ugQ5dtPXtd
         l0gyTm29dnrfYNJdT7xa+T1MF9FNNP5YDlWT/5duTJUwHgKzUh6EFQ60m0IL1dpeXYin
         BRiQhopgYn02LKiaPWzJlXlzWN57utZEIuSbCmV/op+LGIX7yuLtGCZjmdwGzJsEdPwL
         fHq4mplvUqiLOXW4eqcgWZGm6q8qu26lBGyD2GhAHJjCbJYSj9MzwvY66Wenk4OuMgd0
         ZtUDMxAvHZ2sqBA3WXXA1t+anUY/cvXokvrelgRR7fmkV3BmHD6V7FHkv2Pw3vq0z6Ah
         pkbA==
X-Gm-Message-State: AHPjjUiNVnciEvK1KWPmz32DxsX+81KpEwsOZEmPc2ujsdyLZ6+i/hTB
	2421vN9Trt0lEA==
X-Google-Smtp-Source: ADKCNb6n6wcB3s0VfGSTVRvZAt+5yfzxNTIckRSP5TiKZie0LHq7tx86i2vut72rEuMuQeAMwV51Vg==
X-Received: by 10.84.248.7 with SMTP id p7mr25334766pll.237.1505422042058;
        Thu, 14 Sep 2017 13:47:22 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([171.78.243.118])
        by smtp.gmail.com with ESMTPSA id w5sm28506260pfw.99.2017.09.14.13.47.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 14 Sep 2017 13:47:21 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 2/2] staging: lustre: drop macro definitions with no users
Date: Fri, 15 Sep 2017 02:15:34 +0530
Message-Id: <4f8124c17164512190f8984cb26801f8e90a13d6.1505421269.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505421269.git.aastha.gupta4104@gmail.com>
References: <alpine.DEB.2.20.1709142137000.2650@hadrien>
 <cover.1505421269.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505421269.git.aastha.gupta4104@gmail.com>
References: <cover.1505421269.git.aastha.gupta4104@gmail.com>

This patch removes DLUBUF and PLUBUF macro, both of which have no users.

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---

This patch is as instructed by Andreas Dilger in one of the previous mails.

 drivers/staging/lustre/lustre/include/lu_object.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lu_object.h b/drivers/staging/lustre/lustre/include/lu_object.h
index c8d5e0b..d5ecd58 100644
--- a/drivers/staging/lustre/lustre/include/lu_object.h
+++ b/drivers/staging/lustre/lustre/include/lu_object.h
@@ -1305,8 +1305,6 @@ struct lu_buf {
 	size_t	lb_len;
 };
 
-#define DLUBUF "(%p %zu)"
-#define PLUBUF(buf) (buf)->lb_buf, (buf)->lb_len
 /**
  * One-time initializers, called at obdclass module initialization, not
  * exported.
-- 
2.7.4


