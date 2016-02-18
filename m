X-GM-THRID: 6252675281637605376
X-Received: by 10.129.87.73 with SMTP id l70mr7760437ywb.13.1455814410458;
        Thu, 18 Feb 2016 08:53:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.47.154 with SMTP id v26ls2328860iov.91.gmail; Thu, 18 Feb
 2016 08:53:30 -0800 (PST)
X-Received: by 10.67.30.161 with SMTP id kf1mr7944070pad.21.1455814409970;
        Thu, 18 Feb 2016 08:53:29 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id kr4si173170igb.0.2016.02.18.08.53.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:53:29 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x229.google.com with SMTP id 9so79352615iom.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 08:53:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Mhy5LAb/I2LkbELidO4ARafZntClz1rrJfhrfQ6idtE=;
        b=SSbb6L6vuuhDqsp675TJrHl000EGOJjhgNl/r5v9AO5hJML05xnRRKN12ZxcpOO6Vp
         KxwvTyIDv6agQYkoVPNrt5oTOhlpK04r5Ociun21yid6cEEr5HEnbTZUkYwONjOCyeF+
         5Yxqa13j4uhLQYU2R9o99j2gEpGFC2GiRNH6JYqJQvv2ka8NmKRtH1z+nM+fCKGg95ve
         f8VNVh346ny2CmeVZjQbNPwyp8aHSwBy7wBU/gYzmWW4C/0NxANUcdfprFApL45e8/i7
         SQEfIRxXAoMW5r4q2bnAHWgQx5qfWk0tnr3R/LyKA/AwOO7OwzGm9dggHosw8Dez8MFF
         57SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Mhy5LAb/I2LkbELidO4ARafZntClz1rrJfhrfQ6idtE=;
        b=PPz8IZcVTTwTwdy8BynjNypcCZ9o0KSF47LFazaeUW7O20MheQ+JexM1eOXHcuUu7Q
         FxNKHPJGzCxQ/HCM24YAtCs+LW5f49pQTgii6wCK9nqVDOh6Zuw0osQ1EqxkCTcSxSHf
         l3y/pX3VMsaBKy1MmJu8p0XcDWfAuDTCwnVMj3R0P1hEvfiBXWMEyaK74LVmacvAJgez
         dNR6lIdvTNavfsJpnzGWcJR4oI1w9WPqmmSwKlHGQJJ8Bun0tKygRk6a5zy7LzbEP68Z
         4AFgko5T9icEFwG33Mnw1jmbYeq0QXDswC8a9Vrj0RD0tbbME0WrMV2vb7reXxQJYUjK
         EzqA==
X-Gm-Message-State: AG10YORegyR2U+HBHtfVDvh4FjU+xUhGEHLAgptS12euKJ10lUlf3Cb4UGnmoIban6IvAg==
X-Received: by 10.107.63.2 with SMTP id m2mr11500534ioa.7.1455814409822;
        Thu, 18 Feb 2016 08:53:29 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id 78sm3825493iof.22.2016.02.18.08.53.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 08:53:29 -0800 (PST)
Date: Thu, 18 Feb 2016 16:52:45 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lustre: Remove unnecessary else after return
Message-ID: <20160218215245.GA7025@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Else is unnecessary when there is a return statement in the
corresponding if block. Coccinelle patch used:

@rule1@
expression e1;
@@

	if (e1) { ... return ...; }
-       else{
	        ...
-       }


@rule2@
expression e2;
statement s1;
@@ 

	if(e2) { ... return ...; }
-       else
		s1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c    | 3 +--
 drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 ++---
 drivers/staging/lustre/lustre/lov/lov_obd.c                  | 3 ++-
 3 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
index 079d50e..a03c82f 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-crypto.c
@@ -235,8 +235,7 @@ int cfs_crypto_hash_speed(unsigned char hash_alg)
 {
 	if (hash_alg < CFS_HASH_ALG_MAX)
 		return cfs_crypto_hash_speeds[hash_alg];
-	else
-		return -1;
+	return -1;
 }
 EXPORT_SYMBOL(cfs_crypto_hash_speed);
 
diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
index 64a136c..cfcbcd3 100644
--- a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
+++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
@@ -135,10 +135,9 @@ cfs_trace_buf_type_t cfs_trace_buf_idx_get(void)
 {
 	if (in_irq())
 		return CFS_TCD_TYPE_IRQ;
-	else if (in_softirq())
+	if (in_softirq())
 		return CFS_TCD_TYPE_SOFTIRQ;
-	else
-		return CFS_TCD_TYPE_PROC;
+	return CFS_TCD_TYPE_PROC;
 }
 
 /*
diff --git a/drivers/staging/lustre/lustre/lov/lov_obd.c b/drivers/staging/lustre/lustre/lov/lov_obd.c
index 65077b7..d72c313 100644
--- a/drivers/staging/lustre/lustre/lov/lov_obd.c
+++ b/drivers/staging/lustre/lustre/lov/lov_obd.c
@@ -1552,7 +1552,8 @@ static int lov_iocontrol(unsigned int cmd, struct obd_export *exp, int len,
 					    len, karg, uarg);
 			if (err == -ENODATA && cmd == OBD_IOC_POLL_QUOTACHECK) {
 				return err;
-			} else if (err) {
+			}
+			if (err) {
 				if (lov->lov_tgts[i]->ltd_active) {
 					CDEBUG(err == -ENOTTY ?
 					       D_IOCTL : D_WARNING,
-- 
2.5.0


