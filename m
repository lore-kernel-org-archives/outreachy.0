X-GM-THRID: 6477984554711777280
X-Received: by 10.25.193.214 with SMTP id r205mr397298lff.21.1508273313720;
        Tue, 17 Oct 2017 13:48:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.77.200 with SMTP id c69ls363782ljd.10.gmail; Tue, 17 Oct
 2017 13:48:32 -0700 (PDT)
X-Received: by 10.46.43.4 with SMTP id q4mr121217lje.13.1508273312569;
        Tue, 17 Oct 2017 13:48:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508273312; cv=none;
        d=google.com; s=arc-20160816;
        b=gp+DH5sp1qFnKtQ0bebbk2jWXi3IDeQY154aj7UIKmW9I7xkv6sxK1KUl3qPYQ9WQl
         NyhRBFPWkmopbPrp1DPR2mf2mKtP5gzuDKm7MW02My09ddKghypJISzuiTnN6mfPqZwV
         7XRLrxr/5cxSqnfqUBP8AMoHjydS+N7FUH/8kX1rv95KwuPByh7TmzQLbuqMo8D7kHFA
         eHTS8ZvpMW56ApERpx1HOL+fxbTtX1YnykFwWu2ZOaGK68opmmaW8ZF0lyW4bvfZxLdV
         8ouZVC+IyRln0Jn4ZapP6k5EKOlPhnHpu1wzVgAaehpfG6/A9pkGC+2V641TueVbihKW
         75fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=YZwt6HQ+eqOT4XjEsy4UbLFzHHJpXTQVNc3bci4FgK0=;
        b=qvopM2cZ8U2t6OEY8WqWxRjuwJXnb6Iyek3HE9fUS7L1U6uQDtanrOPVdaN5lXAZbd
         KDNHcfhQts3oNmfJWtmwdkjVDRnVWPBCPkq9CIoCx563v7Y9YOaDwydT+OiNjS0wj0Mj
         HUfeuqsKNagJtPvz2iOZZcOzM3OhdEC/yjJSsfJZKXA4HrKdinAIzbpq3H24PmkwtNkt
         iVGzXoK+qblAyg3kSb+eHlVsN8lQhSQdL12a/gVYEHa8ItUADIMz8ujmebMRd61mMAbN
         SS7DvlNi033Wd+Nw8MdDzNMOjL0yf2aiAuRAU1wjvNlg1E+dl3MuOe5WIqvAvacLcC79
         LAgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZP8ZcCa;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x22c.google.com (mail-wr0-x22c.google.com. [2a00:1450:400c:c0c::22c])
        by gmr-mx.google.com with ESMTPS id 72si291284ljf.5.2017.10.17.13.48.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 13:48:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) client-ip=2a00:1450:400c:c0c::22c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DZP8ZcCa;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::22c as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x22c.google.com with SMTP id l24so3007771wre.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Oct 2017 13:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YZwt6HQ+eqOT4XjEsy4UbLFzHHJpXTQVNc3bci4FgK0=;
        b=DZP8ZcCaDi/sRIKmKRPqZ8HaQDNtVfujCwvPNkLV5t/5wWtf/zHSEOhdQuZ45Ke8lA
         krOgsL91Aoh6+vZTbGHyvnk9xSm2+H9TXsdDRV1dQ/7HpbwAllEZUcuztR6SXbNIgl5/
         uAbAQkj8P3f5QHVWBcfqKqTMhH2SzWoa6oYJFTE5e9hOafl+W8KOLACtWdklg3acNrUl
         x/xIcyISz+Xviqt2mngnOlGdUt73QQ5WVYr/+Hc7FNQru8nY6WsYG5xADbe/+5gDVFxD
         /rpsRYwrtM5dfCqhfKitbZ/FJW+pDpl7tT1OtNwDtgXBsa8uqcjFV8uZwKhQAx7R11uv
         MsJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YZwt6HQ+eqOT4XjEsy4UbLFzHHJpXTQVNc3bci4FgK0=;
        b=VXJppYuEE3C/9cGdSN/MFfZw2rCFAs/5lPwo86rYY5KBfE8+BG7NjdQTaupPUEdHKN
         llO2cV2EnIHBGYBZakevEhWIO4K5NXpbsJvFW9RAom0sJmL5eSlo0mARLR2LGfqEGHeD
         4fx+HxGQOBYxZ9B5Gd1ZXOTem/PtGIEj80gDsa/Uu6GVU2JmDEMboFq7tbGx4IGhgPoA
         sknghJjeR7Pa18SPT2ZPCuewpiihYN0C0on2J+b05GdWgGCwmcrkNevjcxw9fk2aFEot
         aKqHdxvZoUBL8uffjn4qhcYKpK5JDCxVb1AdXamXFSVmLAM0HxtpfWNDcMX0V9SXBQ8+
         URDw==
X-Gm-Message-State: AMCzsaXmx3XxbFuy4M3hysRXlPRcx6Xui7W60u2Z6/4Cxd2De1S8GsYP
	Ktt45uV33t3AB4jnIgH5jyk=
X-Google-Smtp-Source: ABhQp+T+MfD2QJHPXU9/IksydcYo8z7CrFt2gO9B9ja893dnI3VN7jDm/eoMF2r2+zx+Rkl7bqyMMQ==
X-Received: by 10.223.157.30 with SMTP id k30mr4371668wre.159.1508273312334;
        Tue, 17 Oct 2017 13:48:32 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks (5-12-79-238.residential.rdsnet.ro. [5.12.79.238])
        by smtp.gmail.com with ESMTPSA id b16sm16703641wrg.95.2017.10.17.13.48.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 17 Oct 2017 13:48:31 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] Staging: rtl8723bs: Use kstrto<type> instead of single variable sscanf
Date: Tue, 17 Oct 2017 23:48:29 +0300
Message-Id: <20171017204829.11164-1-georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.11.0

Use kstro<type> instead of single variable sscanf to convert a string
to the appropriate integer type. The return value on SUCCESS is 0.

Issue found by checkpatch.pl script:
* Prefer kstrto<type> to single variable sscanf

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---

Changes in v2:
* used the right value to check the return value of kstrto<type>
* adjusted the commit message

 drivers/staging/rtl8723bs/os_dep/rtw_proc.c | 18 +++++++++++-------
 1 file changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
index ce1dd6f9036f..13cddc1dbcc0 100644
--- a/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
+++ b/drivers/staging/rtl8723bs/os_dep/rtw_proc.c
@@ -70,7 +70,11 @@ static ssize_t proc_set_log_level(struct file *file, const char __user *buffer,
 		return -EINVAL;
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
-		sscanf(tmp, "%d ", &log_level);
+		int num = kstrtoint(tmp, 10, &log_level);
+
+		if (num != 0)
+			return count;
+
 		if (log_level >= _drv_always_ && log_level <= _drv_debug_)
 		{
 			GlobalDebugLevel = log_level;
@@ -478,9 +482,9 @@ ssize_t proc_set_odm_dbg_comp(struct file *file, const char __user *buffer, size
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 
-		int num = sscanf(tmp, "%llx", &dbg_comp);
+		int num = kstrtoull(tmp, 16, &dbg_comp);
 
-		if (num != 1)
+		if (num != 0)
 			return count;
 
 		rtw_odm_dbg_comp_set(adapter, dbg_comp);
@@ -512,9 +516,9 @@ ssize_t proc_set_odm_dbg_level(struct file *file, const char __user *buffer, siz
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 
-		int num = sscanf(tmp, "%u", &dbg_level);
+		int num = kstrtouint(tmp, 10, &dbg_level);
 
-		if (num != 1)
+		if (num != 0)
 			return count;
 
 		rtw_odm_dbg_level_set(adapter, dbg_level);
@@ -546,9 +550,9 @@ static ssize_t proc_set_odm_ability(struct file *file, const char __user *buffer
 
 	if (buffer && !copy_from_user(tmp, buffer, sizeof(tmp))) {
 
-		int num = sscanf(tmp, "%x", &ability);
+		int num = kstrtouint(tmp, 16, &ability);
 
-		if (num != 1)
+		if (num != 0)
 			return count;
 
 		rtw_odm_ability_set(adapter, ability);
-- 
2.11.0


