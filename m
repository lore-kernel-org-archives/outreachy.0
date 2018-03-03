X-GM-THRID: 6528628385749401600
X-Received: by 10.28.13.139 with SMTP id 133mr407047wmn.32.1520064759464;
        Sat, 03 Mar 2018 00:12:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.69 with SMTP id r66ls625272wmf.10.gmail; Sat, 03 Mar
 2018 00:12:38 -0800 (PST)
X-Google-Smtp-Source: AG47ELvNCk7zDOyhkNsd8tnWaM5DLcTA58Bahh/sHtuFUXs52nkKd1XYZ306KmAF2RzyvNjLcIC5
X-Received: by 10.28.16.194 with SMTP id 185mr386500wmq.17.1520064758293;
        Sat, 03 Mar 2018 00:12:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520064758; cv=none;
        d=google.com; s=arc-20160816;
        b=j0jH26gGlgevW4+6mKq140Jebvl4O0vUFS/CyFaYB8dIqSXWBIupvJZ9YdMgqC2UIi
         V7TlXyYQwDC5PUqd8egMiEAi0c7FZhwgZd6Qpb71xWDj0rURNmU7Plna/YfgmDc7ePVd
         fvgQEtvqIuZTMty1ydCmBoN/xm3bis8YBin7FMhzOEyRIb9doh5UjU1Q64PY07Ozw/9Z
         YI6ZfwKGn+Xwl/411A/UsdIxJ408BEuaft4JjG/AiyOOF7P5/wSs+GwL/ZdndRrd9OZe
         wkZzpEENjQfoycZosy1kH3NUx13hEJtOTs7bOTCfVdkH+nOqFqyfNGn5ZM5nbQSTH7N4
         uurg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=j8mMeDe+jiMaEricYMtjyPMK5tuY2giKp+DTKjlkCL0=;
        b=A0WUcMU2DSgogoK9rYCnFKM1ON1sJxIr8SQ7RJLfKl75F7TBZghjTky4TtXep7T0q7
         0CjdKPxOrArMzxJvzxXI+WGjUfiQXo7nMijmlpnQl3TQpVAgzW5/KxLsYgXIOvzUlQXw
         nvlXLfpXOeyLFNodXTcuDtVc98Ezr5cKia0C1z+P3CZVOb9vI8F9PgaH2Lu1abZBZ9k9
         hWHSp8x/91plDDiqrR9jMLpaugJStVkw+956ZF+q0U1oazd3v77BGYTw+7D/VnTGC4rD
         wfnuvvTw1f7EcR6gF+EhngW5CUzDLP5cRcuH/XkI5VQ/w1KxRS9wg6TJL6hJIfNobTG4
         tM1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s64qsNRG;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id a72si94293wme.1.2018.03.03.00.12.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Mar 2018 00:12:38 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s64qsNRG;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id l43so12304128wrc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Mar 2018 00:12:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=j8mMeDe+jiMaEricYMtjyPMK5tuY2giKp+DTKjlkCL0=;
        b=s64qsNRGwz3xSefdD39O56D5gl/3li8uyldlpg3Y0iRhlQXq998yzicbRwbyVYnCfq
         KVYRqeXXO9fJeoma9YSvAEDASYVLqIactwA0sMj0x5UZ//CUU7v1LdhSwpOnhG6EJKBF
         BrQJ0EOzR1BsgDZ/rfQom5XTKg+cp9YNs5C7sP/ltWR1u54UXHhOpa0vGmPwBy3ZDMWa
         JpIE2ncokNtPjfTrjbh+EXe7jldHpieHuXLj2Z9nJdpemTobKgvRoltfgS/OlllkPOqM
         tk61SWCEpwfzqjK0YWKUOLEqjnd0+KA62UXOwrmgGetoEMN8SWyINjpkWkpJeUr6+kVq
         6WDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=j8mMeDe+jiMaEricYMtjyPMK5tuY2giKp+DTKjlkCL0=;
        b=QrHU3J0G3HVoklDEUyXyNsno+EqEpIv2Zc2XPOfag2yoKfOlMIdufqKbhk2lU4Bj86
         Vok4Er+2Mgc4dmuqFgcdwwdUjo1z9RIZsvDVRoplqaycrSv9zMwT8LoKIEMRCcB61Ygs
         zmukqUZmbu1NOVOQNAdY0WhOE5sc516w+x+HcoSlR5a1yzYJzKdZOxyv6vRbJ2Ys26fX
         4FHGi5Ds+Xmj1nIjCj7u34ItPlXmzRph4AumCObRaYCv7ZDxfpYTayRQ0LV/d0k2nZ4n
         YJnMyIbPSEAj1F2j4XW4HfHqtjUJEixAuUe3cYp2RGVCylQKC2DM81ZFVXu/naNV6jyD
         uPbg==
X-Gm-Message-State: APf1xPAM4b5D05oU3ATqa56QJGh6KKC+7rs3IUX01WO4kz0qP0DUO4hT
	QGTIPpA1ndskAXhoSYpYy+TJ5JcP
X-Received: by 10.223.160.125 with SMTP id l58mr6709880wrl.264.1520064757953;
        Sat, 03 Mar 2018 00:12:37 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from guri.home (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id r98sm18712986wrb.70.2018.03.03.00.12.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Mar 2018 00:12:37 -0800 (PST)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Cc: Dafna Hirschfeld <dafna3@gmail.com>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: lustre: obdclass: Add 'const' to char* array
Date: Sat,  3 Mar 2018 10:12:05 +0200
Message-Id: <dc905c3f60a58a91ccd636cf5d4d9ed0ea334595.1520014706.git.dafna3@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1520014706.git.dafna3@gmail.com>
References: <cover.1520014706.git.dafna3@gmail.com>
In-Reply-To: <cover.1520014706.git.dafna3@gmail.com>
References: <cover.1520014706.git.dafna3@gmail.com>

Replace 'const char*' arrays with 'const char * const'
since the values in the arrays are not changed.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/cl_lock.c   | 2 +-
 drivers/staging/lustre/lustre/obdclass/cl_object.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/cl_lock.c b/drivers/staging/lustre/lustre/obdclass/cl_lock.c
index 3aae332..8a73a66 100644
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


