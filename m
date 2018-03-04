X-GM-THRID: 6528628385749401600
X-Received: by 10.223.199.139 with SMTP id l11mr1092939wrg.26.1520194201576;
        Sun, 04 Mar 2018 12:10:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.170.204 with SMTP id i12ls3910128wrc.4.gmail; Sun, 04 Mar
 2018 12:10:00 -0800 (PST)
X-Google-Smtp-Source: AG47ELt+RjMd0iGeonum1NjyAZ0fOUrR6CIk6htQxxX8VKy22KgGOKhz07YYiH7FcUzJTMsrAjjF
X-Received: by 10.223.172.146 with SMTP id o18mr1064261wrc.18.1520194200355;
        Sun, 04 Mar 2018 12:10:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520194200; cv=none;
        d=google.com; s=arc-20160816;
        b=d0rHoTKjS0z0dXNWYq//bYr7WSiztv/nBShTHe0Q9X0pl4tQrpUCdvShJd0tH6Db0t
         JorUgotizPu18vAr8okcT3Nj9Rj7i8/1A1EwK5Lk5WJAe0zLvmRpdgNMEBfaBRJV+ltR
         eGs+uKU6sssq4bIYjBIo0x6dyGwF7Oa0sJ2cDItm+0LjA8jY003h0emOmWrYC09LM7Re
         vSZgph7aN0QYSlah53yvtdj7eMMcN20+Gi7iI/4lsYv20NmPUA01d2UcaDq6pC7D1IpS
         DYSOMveyJV79KCZz2Df7EyVX9gfHGOF49ZYpt5gJ3tbcYtj4H8vRzj1awiIrpxJBd7IQ
         Zk7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=rlXbMYM8n6raDGkgi+Do9Knaa81jxmB4G4nzngwGmpY=;
        b=ID/XU6uREcnEY1yNnDY9GvWGyAYTKG992BI5VT5iPwg3BCUyI/h6GX7T8mnypJvrpH
         xsHXZG38kDpJlAUcAhvazTCDChFcF4T4qu90sb4vdCwWR40IrFHmlyUpYELfuRo/atax
         CNs44GEAuW8DG7iXmJyuvAJnvCA/oOaocKB7lwEgi0Pj0TjoKPbDVK/UmqzJAGZa3s0f
         2E0Tn2la15J0VqYyfDseUTLroyfDZFBMSq3xdff1tudg8oDG8nUmVdVfloyCJFyhZ53d
         V0xsuiQxGyhOfI94/NlEMeeZcU1W4KKbCyfOB0gVqHtLf/M4X2FOhVCYMmaLgdaWU7/0
         X8XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iT+FCEqv;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x22c.google.com (mail-wm0-x22c.google.com. [2a00:1450:400c:c09::22c])
        by gmr-mx.google.com with ESMTPS id p25si159271wmi.3.2018.03.04.12.10.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 12:10:00 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) client-ip=2a00:1450:400c:c09::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iT+FCEqv;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22c as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22c.google.com with SMTP id 139so11787270wmn.2
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 12:10:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=rlXbMYM8n6raDGkgi+Do9Knaa81jxmB4G4nzngwGmpY=;
        b=iT+FCEqvYMeV+PUXD/f8Akvt4/YpSH5Px3DvGmLKBSxJUR4HOM/zWpehLyCmENT1dV
         Td+cXNnpCuywa8vqKzBp6aWGKt0NVM3nqavV+/JGeuQw/ftRyY5AZPUj0+54RKwOpbKl
         WJipRJvxw8IJLGaWzojgk3xqVyRipUUgkKQig0ppenQRCnCRURkwOmpD7XU3wfEvxczK
         Bf6f6NkH3FswhM1nhOQdLAnetbpSY7pV/VxlggHn0NA45c83u4Vd0PtUa4ZpDjFbScnq
         W2Qf4mfNG9+PKcfcd48xI2xpqB/cn+lRIC/+pczB0Oeo+UasABXNZ9c6oSHttEdtSS8I
         LwyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=rlXbMYM8n6raDGkgi+Do9Knaa81jxmB4G4nzngwGmpY=;
        b=EGvlTZljzS0OrCkdXCwdnvefc7C0VB7/99gLyad2tU8yN+SCxmpDdY4dOwWxlVXnMk
         8tqjXv840nYOWV0FvzEgZQ/ih7P+3dHRVyU6Jv+DafyWB6QrbkIohw4hcoaCD3f7/QDR
         Ve68MYYj+N4/nQrFAN2+4DLXvB4Ky72ud9bvHDstMHJpOUMXFDFWWmvAwEdODK1owQsg
         ekhKjzY+t30vBZ3A6sZ8aV1wuMHyD23hSzEKjSXN9W0/K7sTQ23GX5ASPLVXMXt5y/zP
         3kIrtwmG8EVH9GfCOc+GpdTZa5pXoxKN3EsGJp96g7u1EAmSlLKnNfqKLP7JewvV1RH6
         FxkA==
X-Gm-Message-State: AElRT7FjqQY+RCzphDj5K54QXemjdHK8LlsUf1T+W0Sw8FWHofpouJmo
	I+F8afLq74SlcpT58fozN2k=
X-Received: by 10.28.234.197 with SMTP id g66mr6307611wmi.10.1520194200087;
        Sun, 04 Mar 2018 12:10:00 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.huji.ac.il ([192.114.91.234])
        by smtp.gmail.com with ESMTPSA id c1sm7081212wre.27.2018.03.04.12.09.58
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 12:09:59 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/3] staging: lustre: obdclass: Replace 'unsigned' with 'unsigned int'
Date: Sun,  4 Mar 2018 22:09:34 +0200
Message-Id: <e9d39e45fb23d8bb81e368c38d8ad1ace8f129d8.1520193794.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520193794.git.dafna3@gmail.com>
References: <cover.1520193794.git.dafna3@gmail.com>
In-Reply-To: <cover.1520193794.git.dafna3@gmail.com>
References: <cover.1520193794.git.dafna3@gmail.com>

Replace 'unsigned' with 'unsigned int' to improve readability.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
 drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 2 +-
 drivers/staging/lustre/lustre/obdclass/lu_object.c      | 8 ++++----
 2 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
index 64cc746..2ed3505 100644
--- a/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
+++ b/drivers/staging/lustre/lustre/obdclass/lprocfs_status.c
@@ -1467,7 +1467,7 @@ int lprocfs_write_frac_u64_helper(const char __user *buffer,
 {
 	char kernbuf[22], *end, *pbuf;
 	__u64 whole, frac = 0, units;
-	unsigned frac_d = 1;
+	unsigned int frac_d = 1;
 	int sign = 1;
 
 	if (count > (sizeof(kernbuf) - 1))
diff --git a/drivers/staging/lustre/lustre/obdclass/lu_object.c b/drivers/staging/lustre/lustre/obdclass/lu_object.c
index cca6881..964e854 100644
--- a/drivers/staging/lustre/lustre/obdclass/lu_object.c
+++ b/drivers/staging/lustre/lustre/obdclass/lu_object.c
@@ -1797,10 +1797,10 @@ int lu_env_refill(struct lu_env *env)
 EXPORT_SYMBOL(lu_env_refill);
 
 struct lu_site_stats {
-	unsigned	lss_populated;
-	unsigned	lss_max_search;
-	unsigned	lss_total;
-	unsigned	lss_busy;
+	unsigned int	lss_populated;
+	unsigned int	lss_max_search;
+	unsigned int	lss_total;
+	unsigned int	lss_busy;
 };
 
 static void lu_site_stats_get(struct cfs_hash *hs,
-- 
2.7.4


