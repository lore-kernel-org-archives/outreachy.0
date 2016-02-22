X-GM-THRID: 6254101469498179584
X-Received: by 10.50.65.69 with SMTP id v5mr11395295igs.13.1456146470466;
        Mon, 22 Feb 2016 05:07:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.133.205 with SMTP id p74ls860050ioi.11.gmail; Mon, 22 Feb
 2016 05:07:50 -0800 (PST)
X-Received: by 10.66.150.68 with SMTP id ug4mr26552304pab.33.1456146470145;
        Mon, 22 Feb 2016 05:07:50 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ui7si3134783pab.0.2016.02.22.05.07.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:07:50 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ho8so93521232pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 05:07:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=fD3R+Ec3T+RBtTROg5gLangf+HJg8HDgwAGXr8lIBs4=;
        b=whoOVrt2CYFgFn9kpMKv0hoAwzjuXvAr3Tjv7lmRYVkY54eqCvHif5pNLWJxKZQfDr
         1tlLaXafJyZ6WPmuu2Zo/RZ56IuyAGDKojNs8eRkFIBE+cTYUUYmCICvzyyLnmWdTU2M
         e+8bWnqTnyIErINbN3xze0U7y3k9p/ub+oFYzYf332/bcY/PmsV0NSSZTvmaAV7f0NBc
         UBb/wbzLNsdq+UPyvIgNwcLZtXqceUcnUIVpTu2sZKFseWdxbl5HlH40FwuPP/fiOcF5
         dkRmI9Vgqd8mDsK5HFecPre7Kgdw+h+pIO2Z2HxUu7SssjITd3MtfwBsnYs1w4TGXT1V
         3ueg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=fD3R+Ec3T+RBtTROg5gLangf+HJg8HDgwAGXr8lIBs4=;
        b=kW36+Hs6lzEjsOsWThvgn/2rSsuilyLoIOhkzvgU29/XOeINyWgswoRzjWNQ9MZdgK
         3Nyr51fgruqibuho9cONRRxzY0Y/ex+CSTsusHC6gV4vdzyxgga8htIVMmJvdoMgPZno
         Eh5NxRQwSVMDd4vgpIdeSMpjpaHb+dSrx3N5jV//DUkOpxnwHy6s/H7tM1WKc1ZZ5mx5
         AfcSJXtTFBMBY1hsQKrl7Moc/FCLpqaGFOjRE3Dioqss24KAJg0KUQNQHD8lNXp2ENhK
         tHdjPf/nwwbiaJqePJ3nkw0h4Der8BB+qly8e0M5vajcQ62YGpddk6KWc8nFNle9SaOM
         Mpyg==
X-Gm-Message-State: AG10YORDI9YyyHVxIIKxVVL/f3g2GDMyPbfh6NEsRHVa+29BNfTU1vOpSZR7Uuwc4zlPbA==
X-Received: by 10.66.90.226 with SMTP id bz2mr12146919pab.31.1456146469979;
        Mon, 22 Feb 2016 05:07:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id ti6sm21301614pab.4.2016.02.22.05.07.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 05:07:49 -0800 (PST)
Date: Mon, 22 Feb 2016 18:37:36 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: obdclass: Replace simple_strtoul with
 kstrtoint
Message-ID: <20160222130735.GA26820@amitoj-Inspiron-3542>
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

Additionally, `err` and `val` variables were introduced to store error
code returned by kstrtoint and result of conversion on success
respectively.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/obd_mount.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/obd_mount.c b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
index 5fa6ce6..29b513e 100644
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
+			lmd->lmd_recovery_time_soft = max_t(int, val, time_min);
 			clear++;
 		} else if (strncmp(s1, "recovery_time_hard=", 19) == 0) {
-			lmd->lmd_recovery_time_hard = max_t(int,
-				simple_strtoul(s1 + 19, NULL, 10), time_min);
+			err = kstrtoint(s1 + 19, 10, &val);
+			if (err)
+				return err;
+			lmd->lmd_recovery_time_hard = max_t(int, val, time_min);
 			clear++;
 		} else if (strncmp(s1, "noir", 4) == 0) {
 			lmd->lmd_flags |= LMD_FLG_NOIR; /* test purpose only. */
-- 
1.9.1


