X-GM-THRID: 6528628385749401600
X-Received: by 10.25.216.208 with SMTP id r77mr923363lfi.44.1520194200020;
        Sun, 04 Mar 2018 12:10:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.14 with SMTP id q14ls836951lfe.4.gmail; Sun, 04 Mar
 2018 12:09:58 -0800 (PST)
X-Google-Smtp-Source: AG47ELvPTqRDRFyC5YhlWwUr9TkGySAvbCte40aopksID187bYbP7UV1LU0Nzm3tLksvWuPQQFA+
X-Received: by 10.25.157.141 with SMTP id g135mr929393lfe.36.1520194198474;
        Sun, 04 Mar 2018 12:09:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520194198; cv=none;
        d=google.com; s=arc-20160816;
        b=EWRJ4fRCM7/z3N99RAL1H0bE32JPj/0kphKxVe+ZhzM3iGxo8DgMWkUDpqyotAvDO5
         5jqUwdcbc5PWISKNn/k7QO8H95aPkquVqjCW5F00ediHwqqse0m201g5aN+ANB9nUllz
         DpiHTtaztnNfPF0wBs9N8yplqNN4n1ONouRfcpY3iCtBNTCd+kV1mu7wWiSFD1g/l6QJ
         Mf/z6jyK0Y1SubHFu6XQsOD5V3yGCcU+wv5uSQ28XDlfQW7pBP9Sz+pUEKq0H1ihgdxr
         MXr613rfgRa512txTMEO51kMqX/CPwBxUTQl2HKs9FD7k6sRn34+HiVuM36WEmq4Z8XL
         sgTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=nLpdMNI0mcpM7YDpMjyVU1dDtjXd+GNWsFgbTfzL5as=;
        b=Bg25Rhe/cReuH91v/aO9kSuamia98vxJhEIUeT57dNux49DRz19H+UN8RKU2/8w5IM
         M26z+jtainS8/O5DwOObnkpqd6sh3TipCmEp4gWCMj2vnszzoj0DfuTutbI/oFEc795u
         ypmLnTly6EBEwYHdEjBeHsesv5UN/kag1I+yKiAIOax1oOrH7RDRxtWd+ctJfoukmKcS
         Pl+PuIOtH/NDXzIgy21uS+rcsTMVsNMHk4U43QMn7CyUrlCsRcCtoLXN8DLvXh7e7l0d
         SL29sOUU/bgDCpd7ygpXfhPLZLNY4sP6AcE4hKADYM36RQIUTXsK76pXm2+WkE6lO/E9
         fH5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4W01TbR;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x241.google.com (mail-wr0-x241.google.com. [2a00:1450:400c:c0c::241])
        by gmr-mx.google.com with ESMTPS id w7si549407ljw.4.2018.03.04.12.09.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 12:09:58 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) client-ip=2a00:1450:400c:c0c::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4W01TbR;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::241 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x241.google.com with SMTP id o76so15164461wrb.7
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 12:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nLpdMNI0mcpM7YDpMjyVU1dDtjXd+GNWsFgbTfzL5as=;
        b=J4W01TbRXZcnZV8gwjSrdHNsHzA0KOB32axxR/BZVynOQnGtdstqX+QT3vCBz0BjNj
         6dIt2skbsY1BHauHp+575wzJ4vgJH5x7i+xRTRoHEIDsuLY0Oa3uXWJXKsi8lgsSslVQ
         56DS4xumgV41nrIL1n+9Pk3RGtrJu+BRkCeXjHRvI4Z2dR4YRIbJmZY1fc8b7Lo+k3xI
         DnmfvlPIPq7aWj1Z5VqHAFv2P9QpRpFzAxJj8Ecfw9lpWFgLi0saE1NXA8fjm1m6bFmy
         OjUzMptBg/7xSNBW2cHf6Gn06gOkJ5GF9vOdYKQSHbpXAj/VUBJKLi5SV9T7jKhvSc1B
         9QMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nLpdMNI0mcpM7YDpMjyVU1dDtjXd+GNWsFgbTfzL5as=;
        b=EPhOM/PWIeqrp2oHxaxEW04oupZuFLgkP6yNFPp+DKeHIewyk8HOnOmReY/J0yrs6t
         utzLOegwsyHVLYRHDtOca8V7lZMeEEjX7GoYHp3t4cac2wwb47yjh9/entkdNCWGDPqN
         s5yE+UxNkvOYedFL7KhwzocdeOWmPAauZneQgrgo2hJC/1qky30H+sTnXCwnuR4iApxI
         NjRxpNvVYnMekEBgeCe6Vhn82kCcqbPTnKfm9zJZLvZx7LLKhUsE2uopD2OmAxuZi16r
         smfcCRt9V+NghPLqvy+bFob7WeiRpKwXy7gWVveGsO+EwSAEXuC5P/odhDzdKuS/i40b
         xSIw==
X-Gm-Message-State: APf1xPAtgrWaIASmydm8AnV5h6rZmv1b9gPu22ZkqG8ci0zpKuKaCrdn
	3ywrlNSVMDarF39Pyju92P0=
X-Received: by 10.223.134.170 with SMTP id 39mr10112422wrx.221.1520194197893;
        Sun, 04 Mar 2018 12:09:57 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.huji.ac.il ([192.114.91.234])
        by smtp.gmail.com with ESMTPSA id c1sm7081212wre.27.2018.03.04.12.09.56
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 12:09:57 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 2/3] staging: lustre: obdclass: Add 'const' to char* array
Date: Sun,  4 Mar 2018 22:09:33 +0200
Message-Id: <7691446cab52afe3a405ed17aeca59df06a5badf.1520193794.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520193794.git.dafna3@gmail.com>
References: <cover.1520193794.git.dafna3@gmail.com>
In-Reply-To: <cover.1520193794.git.dafna3@gmail.com>
References: <cover.1520193794.git.dafna3@gmail.com>

Replace 'const char*' arrays with 'const char * const'
since the values in the arrays are not changed.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/lustre/lustre/obdclass/cl_lock.c   | 2 +-
 drivers/staging/lustre/lustre/obdclass/cl_object.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
index 3b683b7..9ca29a2 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_lock.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
@@ -224,7 +224,7 @@ EXPORT_SYMBOL(cl_lock_release);
 
 const char *cl_lock_mode_name(const enum cl_lock_mode mode)
 {
-	static const char *names[] = {
+	static const char * const names[] = {
 		[CLM_READ]    = "R",
 		[CLM_WRITE]   = "W",
 		[CLM_GROUP]   = "G"
diff --git a/drivers/staging/lustre/lustre/obdclass/cl_object.c b/drivers/staging/lustre/lustre/obdclass/cl_object.c
index 7b18d77..7809f6a 100644
--- a/drivers/staging/lustre/lustre/obdclass/cl_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/cl_object.c
@@ -495,7 +495,7 @@ static struct cache_stats cl_env_stats = {
 int cl_site_stats_print(const struct cl_site *site, struct seq_file *m)
 {
 	size_t i;
-	static const char *pstate[] = {
+	static const char * const pstate[] = {
 		[CPS_CACHED]  = "c",
 		[CPS_OWNED]   = "o",
 		[CPS_PAGEOUT] = "w",
-- 
2.7.4


