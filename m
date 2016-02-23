X-GM-THRID: 6254399524520853504
X-Received: by 10.98.0.132 with SMTP id 126mr30741595pfa.2.1456215866200;
        Tue, 23 Feb 2016 00:24:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.160.37 with SMTP id xh5ls892880igb.42.canary; Tue, 23 Feb
 2016 00:24:25 -0800 (PST)
X-Received: by 10.50.85.100 with SMTP id g4mr4768517igz.6.1456215865889;
        Tue, 23 Feb 2016 00:24:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22d.google.com (mail-pf0-x22d.google.com. [2607:f8b0:400e:c00::22d])
        by gmr-mx.google.com with ESMTPS id u66si4113441pfa.2.2016.02.23.00.24.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 00:24:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) client-ip=2607:f8b0:400e:c00::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22d.google.com with SMTP id q63so108291414pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 00:24:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Xx0kA82YIgTB0F/q9Xfp/30NUGaN9ODrOvM1mpvPlbU=;
        b=lNYiV/6PiTsA4CmuZsEtnmnJTlWyILY9HIHh4Pue6otU5Rq5kwQn0Rx5vtKttYFatB
         CGteYBJ3nBQ0QwNExV7hNPEJJimtA01MOdKG5L5jkOdtlGr2o+P/DaS6+29pErIvcb+S
         d5ueYL/I3vRn7jS0i5I+unA5sFL3DTNTO6AkyNzM5MVLv5/IEMCVuuVQHAGscuLaPdkp
         RBdZJJ75gVBwrnlk/sGx8hahTyb0qnRjiaHPX1cdEDc7ZW/Ttbc/BMXOZs3Hq1m2M82T
         fhWMGDy0E6MZZ+7dBgryIPOeMylKoRh0mwUiyytoUQcTwL5B/B8t+ETDKWCFOtMoa3nF
         UF4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Xx0kA82YIgTB0F/q9Xfp/30NUGaN9ODrOvM1mpvPlbU=;
        b=RzqKkOShylZRBcfP+kgFxij/KgDIEGkxHzEk5qQfyYEXZpKPTKNoKOpNSU6Nq15JV+
         XqLvt4hrU9ZZyNSBfLxS1NTug1bplLNHD9FtPJ+TVnQLFt9CLLKXitHC14WTe8iWV+Jk
         cliRed4jZoaHrferh/0Q4t33lzhRZHYGl9qGBuUpe0q12L+7gmCGIJWWRKtI+k7D91F4
         i5jWlMhG8Sbt1GKC+YeFHz0Xd3c6wXj3we2sp4Sf8Tya/gbe24FQaTYrFZ0Rsm8F72oa
         AsrO6CDJZwG8FqykdQ/ddCAY/XYJtK7kjLF0L2zUNwj+pTvB5omepB0rH5PWPctfzI2w
         FHeg==
X-Gm-Message-State: AG10YOTrnoefXG5D9YQ4qEwJ26c0AcM6DKE0KswY1ruIMMFDlwjBUnaHTEVodb9Unxyp5Q==
X-Received: by 10.98.18.207 with SMTP id 76mr44019868pfs.53.1456215865680;
        Tue, 23 Feb 2016 00:24:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id x13sm42004419pfa.72.2016.02.23.00.24.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 23 Feb 2016 00:24:25 -0800 (PST)
Date: Tue, 23 Feb 2016 13:54:20 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: lustre: obdclass: Replace simple_stroul with
 kstrtoint
Message-ID: <20160223082420.GA29931@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace obsolete simple_strtoul with kstrtoint.
This change was made with the help of the following Coccinelle
semantic patch:

// <smpl>
@@
expression e,g;
@@
(
* simple_strtoul(e, NULL, g)
|
* simple_strtol(e, NULL, g)
|
* simple_strtoull(e, NULL, g)
)
// </smpl>

Additionally, changed max_t() to max() since the variables are of the
same type.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Replaced max_t() with max()

 drivers/staging/lustre/lustre/obdclass/obd_mount.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/obd_mount.c b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
index 5fa6ce6..dca25f36 100644
--- a/drivers/staging/lustre/lustre/obdclass/obd_mount.c
+++ b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
@@ -900,6 +900,7 @@ static int lmd_parse(char *options, struct lustre_mount_data *lmd)
 	while (*s1) {
 		int clear = 0;
 		int time_min = OBD_RECOVERY_TIME_MIN;
+		int val, err;
 
 		/* Skip whitespace and extra commas */
 		while (*s1 == ' ' || *s1 == ',')
@@ -914,12 +915,16 @@ static int lmd_parse(char *options, struct lustre_mount_data *lmd)
 			lmd->lmd_flags |= LMD_FLG_ABORT_RECOV;
 			clear++;
 		} else if (strncmp(s1, "recovery_time_soft=", 19) == 0) {
-			lmd->lmd_recovery_time_soft = max_t(int,
-				simple_strtoul(s1 + 19, NULL, 10), time_min);
+			err = kstrtoint(s1 + 19, 10, &val);
+			if (err)
+				return err;
+			lmd->lmd_recovery_time_soft = max(val, time_min);
 			clear++;
 		} else if (strncmp(s1, "recovery_time_hard=", 19) == 0) {
-			lmd->lmd_recovery_time_hard = max_t(int,
-				simple_strtoul(s1 + 19, NULL, 10), time_min);
+			err = kstrtoint(s1 + 19, 10, &val);
+			if (err)
+				return err;
+			lmd->lmd_recovery_time_hard = max(val, time_min);
 			clear++;
 		} else if (strncmp(s1, "noir", 4) == 0) {
 			lmd->lmd_flags |= LMD_FLG_NOIR; /* test purpose only. */
-- 
1.9.1


