X-GM-THRID: 6251854821494620160
X-Received: by 10.107.152.10 with SMTP id a10mr22564684ioe.28.1455623382029;
        Tue, 16 Feb 2016 03:49:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.236.2 with SMTP id uq2ls1709731obc.11.gmail; Tue, 16 Feb
 2016 03:49:41 -0800 (PST)
X-Received: by 10.182.254.35 with SMTP id af3mr20133554obd.37.1455623381681;
        Tue, 16 Feb 2016 03:49:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x231.google.com (mail-pf0-x231.google.com. [2607:f8b0:400e:c00::231])
        by gmr-mx.google.com with ESMTPS id 12si3072686pfb.1.2016.02.16.03.49.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 03:49:41 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) client-ip=2607:f8b0:400e:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x231.google.com with SMTP id q63so104018260pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 03:49:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Kv2BlxyGTjlPT6Fl4Ai/DXTf0WHLCjf4AGb+bJvdDlA=;
        b=B7fbgD/Ljva45ve8CNMwAddYYucgEhW4wfY2EgCW7hfqyst3YtcdzkMaD5RFYpN+na
         iTg13/A9xyYMXuFcjsBDYu0fnO8s37TVUBGS4nChYklV4zF36N7fprhECm0PYp+mqwHW
         HMEDfij4H9+QomOQl1nDoBQdzRQYPFlVXEmw0ZSEAfYsLm1q0f/diFNLjnSldUqCDOuQ
         c9S7y2MVJJgVb6IIhNEyzUWDVrLGsGND99b9U7AzWRD/LmctlPtiFCx99fgwgLbmn6SA
         i7vjePf0PBbKSr6ynj3mnN3dxUwODItq/Vi0/VUWUKr4HSFN3jLpG0IJU1X4oHQmCfg2
         mO0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Kv2BlxyGTjlPT6Fl4Ai/DXTf0WHLCjf4AGb+bJvdDlA=;
        b=Fo2Uhqb48HZT7ZVQvagu19IXDE9MzC0BYRA196tQ2ObNtacwGSqzNHMVFk6a59pDS7
         ok4JtyNQiKJ2Fbzjacn4ExrYpSeRs0pOLb/ii+Nfqy95BnNDTYl714AUd7eAi11j4uNK
         VqMJkrwgOWI/OK5lVHrPfYyrFA9TwzPhJdRBAcKIVc+/KFleM8wcNf6XKa3TKVKNER9y
         ftCjf/sQ00Zwm974y37ZMQFuvtaqA3lKs2bIJMHRMfc241r+0lVREh05UmvD8Xo7kDUn
         i8O8zgsAnYpiZfajz3SyRROvvSczalBmmO6Gc7/gKiQV5NMuGoEks5Xa2EaMYiHeCBqL
         m1ww==
X-Gm-Message-State: AG10YOS+lboPff9W7gSKTIbaFZhyb8fz3ylebubP/TUgxuebRzt7k15FLf/6KodiB7nsyQ==
X-Received: by 10.98.11.134 with SMTP id 6mr30751103pfl.109.1455623381471;
        Tue, 16 Feb 2016 03:49:41 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id y15sm45311792pfi.16.2016.02.16.03.49.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 03:49:40 -0800 (PST)
Date: Tue, 16 Feb 2016 17:19:35 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: obdclass: obd_mount: Declare function as
 static
Message-ID: <20160216114934.GA15426@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Declare lustre_mount() function static since it is defined and called in this
file only.

This fixes the following sparse warning:
drivers/staging/lustre/lustre/obdclass/obd_mount.c:1169:15: warning:
symbol 'lustre_mount' was not declared. Should it be static?

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/obdclass/obd_mount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdclass/obd_mount.c b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
index b5aa816..a486a96 100644
--- a/drivers/staging/lustre/lustre/obdclass/obd_mount.c
+++ b/drivers/staging/lustre/lustre/obdclass/obd_mount.c
@@ -1166,7 +1166,7 @@ void lustre_register_kill_super_cb(void (*cfs)(struct super_block *sb))
 EXPORT_SYMBOL(lustre_register_kill_super_cb);
 
 /***************** FS registration ******************/
-struct dentry *lustre_mount(struct file_system_type *fs_type, int flags,
+static struct dentry *lustre_mount(struct file_system_type *fs_type, int flags,
 				const char *devname, void *data)
 {
 	struct lustre_mount_data2 lmd2 = {
-- 
1.9.1


