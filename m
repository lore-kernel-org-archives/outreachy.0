X-GM-THRID: 6254088718103085056
X-Received: by 10.129.51.2 with SMTP id z2mr26561106ywz.49.1456143501424;
        Mon, 22 Feb 2016 04:18:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.19.171 with SMTP id 40ls1401035qgh.42.gmail; Mon, 22 Feb
 2016 04:18:20 -0800 (PST)
X-Received: by 10.129.88.135 with SMTP id m129mr26094231ywb.47.1456143500630;
        Mon, 22 Feb 2016 04:18:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id yd9si3072621pab.1.2016.02.22.04.18.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 04:18:20 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fl4so90607167pad.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 04:18:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=0+HJcnjR+gSvPzrrM+ddZDhlt6/pwZiA82b2Nj9mJWE=;
        b=08jZCl3/MeR72/SPMvSBq1iSAOovRyq9u3g38vIpVqlKs4BU19M+8RbImi9qMTQxJ1
         fKawZL5SNZBrPF2lqvMQM/KY1IP3UQtvE8rf7GztMEwEwctVtcc6PS49BwKur0Z7Y46g
         1SjMlZoD7ewK2VqjF1/b/kjn34RCiVCvBHVcjBHbhXffM5e8rS03kZ5sMrZHuMpOmB4o
         6+ntr+MHJpQaoM+qm/xOD0Y+nbWSgm7FK8O+KTlTojt6/whNWG0W1znxB7SSwoFI4ULL
         QhIripzZ+nC5bJ/kls80maqZfqeZZnl8nG2JIDseGQXWXea9xIEe7UVh3UAk/N8gvwom
         qbRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=0+HJcnjR+gSvPzrrM+ddZDhlt6/pwZiA82b2Nj9mJWE=;
        b=OMNzWgDddBZGFwNwWBun5Ln2IY0f2AlUp3FjPrJd6f8oGkJbwrEgj5q9C2qWUHaOef
         +TkdC9PofHcsxGzwQS9jo7v9N6yvWT8+PeDft0lSwYCUwKoPHXL8jjdRTxI1NQPv9Nvi
         omJvsLrEoQHUNnnS7uH5sIAprRnCo4naqxA3s6ZAVNTNwjnMBViwxdAFU1ojSaPJkngJ
         Qj/XHS3e9l6oXEB/UKA1rBBlF+anuzLAcwSSCfY+wG8fe6AoGhVcqzknrtPYjP7NG4Tj
         KlAW6oszSg24PU1lw4UnwP67MClYpRBuAZxof6GCDLJBE703/t0qen5Zed3BjTddRaFC
         yyGw==
X-Gm-Message-State: AG10YORMJp9d//JaWnsaMyajMsVJPBvW7ggqFFWMggwcUfMVksG09NsZy9GfIqOx4EbyGw==
X-Received: by 10.66.62.134 with SMTP id y6mr37516703par.43.1456143500387;
        Mon, 22 Feb 2016 04:18:20 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.106.39])
        by smtp.gmail.com with ESMTPSA id z3sm36809957par.17.2016.02.22.04.18.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 04:18:19 -0800 (PST)
Date: Mon, 22 Feb 2016 17:48:11 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Replace simple_strtoul with kstrtoul
Message-ID: <20160222121811.GA21856@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace obsolete simple_strtoul with kstrtoul.
The Coccinelle semantic patch used to make this change is as follows:

// <smpl>
@@
unsigned long l;
expression e,f,g;
@@
- l = simple_strtoul(e, &f, g)
+ kstrtoul(e, g, &l)
// </smpl>

Additionally, since kstrtoul returns 0 on success and an error code on
failure introduced `err` variable to store and return the error code.
This change was made by hand.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index fdfeb42..f626084 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -125,7 +125,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 	int reset = 0;
 	int do_characters = !strcmp(attr->attr.name, "characters");
 	size_t desc_length = 0;
-	int i;
+	int i, err;
 
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
 	while (cp < end) {
@@ -153,7 +153,9 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		err = kstrtoul(cp, 10, &index);
+		if (err)
+			return err;
 		if (index > 255) {
 			rejected++;
 			cp = linefeed + 1;
@@ -757,6 +759,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 	enum msg_index_t firstmessage = group->start;
 	enum msg_index_t lastmessage = group->end;
 	enum msg_index_t curmessage;
+	int err;
 
 	while (cp < end) {
 
@@ -783,7 +786,9 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 			continue;
 		}
 
-		index = simple_strtoul(cp, &temp, 10);
+		err = kstrtoul(cp, 10, &index);
+		if (err)
+			return err;
 
 		while ((temp < linefeed) && (*temp == ' ' || *temp == '\t'))
 			temp++;
-- 
1.9.1


