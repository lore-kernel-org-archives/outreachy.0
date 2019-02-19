X-GM-THRID: 6659606226174738432
X-Received: by 2002:a62:63c5:: with SMTP id x188mr9821724pfb.40.1550560404748;
        Mon, 18 Feb 2019 23:13:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9881:: with SMTP id s1ls8486305plp.3.gmail; Mon, 18
 Feb 2019 23:13:23 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZTm4czaURspWyUsAWrhUeFyjc5scBZazA3e2039ZEcXorFyzVvNpUU7z5IwEigmtNvDV3h
X-Received: by 2002:a17:902:f209:: with SMTP id gn9mr8725570plb.85.1550560403880;
        Mon, 18 Feb 2019 23:13:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550560403; cv=none;
        d=google.com; s=arc-20160816;
        b=p56Sjo+jyyKv5+SIGedczpnQ/YuMNvlUgs8GmmdTMuNIYu2+6d8aeJFnEWaJCAejMB
         qZsSZCpGTfaLGFM/KjEjO0trrMtnw2k8W9OcEJfgLs0eEKJt9wEYzXdl0SVtDjkLbH+n
         sqYA6/fAif6pe2ZuTPwjYTTwoNwQpG4T0wDtKcjnzSBj1Snh5oDLXE0FUl3e/rEFJRkY
         iDoA1Q+v6wG6Zo89J1VgVjsifxz+XJjBGk5i+R3Sgvh9MBm/7XHugTz5YpFsC3xPUUbe
         aWDmfPmwSlgKgIPsdexcnj9UTz7HHHv1PmqKdgfZoFGtISTA+a4KBItKzUc6hVRo0zVW
         XFiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Tsn99krGtMuBOKNRuldrl/X6THKKw2VccXOj0h+75zU=;
        b=SZVTPFcOKMluujlJwLmzWGIxhjxTOBUtJfX8WI/14H3xCKV2+25eKDayRT4U3B1Fmg
         pCQ5LfIIDPmv/nK/dHi7YRk5K3DlN0d77XKNsEUC9CY5vSsbltCPcUemVmAVnXlHIg6d
         BtyqFpSqM2hQ/qQBiytB1hHK6E/ydTzeCOjdLTksoVCCpSPa6E4+0uWr9P45CumX40ls
         WczptIcuLi9sA2/xwhioBJNaLIGAACDF2gq2h//HUi9v4WTGxVplj+JWlbtG1/0wTaQ5
         Fa9AvuiFdlywXm1BzcghHoiVfKBqWLx5m6VnHua+FhlJijSTYZvueHqtGUf6NKvlFZ/H
         ujxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OzzX4KJv;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k75si866102pfb.5.2019.02.18.23.13.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Feb 2019 23:13:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=OzzX4KJv;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id m10so308820plt.10
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Feb 2019 23:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Tsn99krGtMuBOKNRuldrl/X6THKKw2VccXOj0h+75zU=;
        b=OzzX4KJvCMsL5U0+xdNgJW5QzNN1ODEj/pkD+kE9J1jxx/Cx5Sh7u6Xr6aOOoZFxA3
         XlugIVd5IazhHOPp3/Tm4RKpX0QerXt+SGY8OkXBaH0tmGx3O0GmrtX/r8gotvzeijaw
         gbtb5st9nQSc8t7hpyuqFxY/pkIg708EFHfL9ikF3T0QfaGIAKPi+lHw1qe5KobjbDuP
         yN9jF9xE5l1ofjPgywvUIReuJM3dXgIXoS2bczgL5qCsK9r+X7TLCpNyo83HS00d42+F
         eVHPwfubNDVvyZo2I/C2zC/qxMdDJYHLo+Vmkgk1oLih2dtKrhGptOSzaBpgI+/hcLtP
         RSJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Tsn99krGtMuBOKNRuldrl/X6THKKw2VccXOj0h+75zU=;
        b=gfnaVpR9D7MYfl5gJqzW6aPN8I9zTgO7h43m9zEVkOmAUAnmPepghC43rsHKBeq/Kk
         XZZEwHa2idcxvxoqDuxEAadosuwGQvre6dZeZyp2srTOmxvxxi33yzXwlxxEO98DZety
         3sLkMH+K0VR4Xb/aTlFpzfSfb/xNc/IGr9gkD3LMlVS4xJKYJKfgfFOeh1jW7pveaQfl
         hjdmIYp2tpRm1odLOek2PgHq3hYGM2GGw9Wg9TH+3RTVyEFkZTJDubwPUSFkZGqc3KLJ
         Vpc3Ki6VNmP97/DpJv570qRZku2CBkaOBBdqvVdv+xCUxzyCApI7cjc9XwKMkNYELWBN
         UI9w==
X-Gm-Message-State: AHQUAuZwMWIrBh5WHNOh6MiJQttsEGIjpfjqsg3EldX7FLNBzd6egpq9
	GkBUXNGGeUXl0XvbzAJlS6Y=
X-Received: by 2002:a17:902:822:: with SMTP id 31mr27595425plk.290.1550560403560;
        Mon, 18 Feb 2019 23:13:23 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id 1sm35162490pfy.68.2019.02.18.23.13.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 18 Feb 2019 23:13:23 -0800 (PST)
Date: Tue, 19 Feb 2019 12:43:20 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Outreachy Kernel][PATCH]staging:erofs: match alignment with open
 parenthesis
Message-ID: <20190219071320.GA3265@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patch fixes the checkpatch.pl issue:

CHECK: Alignment should match open parenthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/erofs/dir.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index 833f052f79d0..7a5daf8d8372 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -24,8 +24,8 @@ static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
 };
 
 static int erofs_fill_dentries(struct dir_context *ctx,
-	void *dentry_blk, unsigned int *ofs,
-	unsigned int nameoff, unsigned int maxsize)
+			       void *dentry_blk, unsigned int *ofs,
+		 	       unsigned int nameoff, unsigned int maxsize)
 {
 	struct erofs_dirent *de = dentry_blk;
 	const struct erofs_dirent *end = dentry_blk + nameoff;
@@ -104,9 +104,9 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 		nameoff = le16_to_cpu(de->nameoff);
 
 		if (unlikely(nameoff < sizeof(struct erofs_dirent) ||
-			nameoff >= PAGE_SIZE)) {
+			     nameoff >= PAGE_SIZE)) {
 			errln("%s, invalid de[0].nameoff %u",
-				__func__, nameoff);
+			      __func__, nameoff);
 
 			err = -EIO;
 			goto skip_this;
-- 
2.17.1


