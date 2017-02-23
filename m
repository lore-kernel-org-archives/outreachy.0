X-GM-THRID: 6390274261051768832
X-Received: by 10.176.85.135 with SMTP id v7mr9811335uaa.8.1487851669714;
        Thu, 23 Feb 2017 04:07:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.240 with SMTP id g103ls3639446otg.39.gmail; Thu, 23 Feb
 2017 04:07:49 -0800 (PST)
X-Received: by 10.13.250.197 with SMTP id k188mr10541852ywf.167.1487851669346;
        Thu, 23 Feb 2017 04:07:49 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si894977pfd.3.2017.02.23.04.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 04:07:49 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so4380307pgz.2
        for <outreachy-kernel@googlegroups.com>; Thu, 23 Feb 2017 04:07:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZV1Wi5L/IsQF27FiylGE0Vpkk312rULOSq14b9aKkd4=;
        b=qgr3uEHEuTSMFKpsk0RMBegNOngaVvB85j/ty2GhVwWmcX663s2xhUCW9xYdAihxho
         lcJbqoMZMIcNj4km7HhceCWENyrf/gFAhTYdaSYgjlR5SIsao9jjkUp5L0EzMpFpIABP
         YzMj47d5DIYpi5r/JZlxZW9jVd2l5E1NTQzM32ZZoL+XXlyyX/lkc08yA0CPSlDsx7rQ
         i6s7/9+fxR4XxPoIqWbORm5Uo/zosH615ZW2lLX9HMqQtcWNYk3ZBhGnH4o/r+DeyU4g
         kjhK1e0DKlLhARxtGon//uUz8lor6oxv9bVe8kJUVXoqo87Vz9NZt3SSKqTFIaCZ3sr/
         Ug0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZV1Wi5L/IsQF27FiylGE0Vpkk312rULOSq14b9aKkd4=;
        b=pY9/u2QDghk4zvOIJv7zd9uAZzvMO+aDROQoCi1xMljQ7XP2DJr1jkY3+eEPS5XAaH
         PTqUe5kc+R23aKyJRghbk/qvX7xWqtwgvGFYoKGMyGAFZt/HRum6dK979yy4iUJmbhSF
         7NUky9459k8CNFsqeiY64fqCLqEgwSEFiJYWnr6J1t6pNsUz7z6vBsfXvsi9rf0aWgiC
         FuWtuJ6CHbgHTjbn3on7LHCYN80SeZ9K+CTA94AONdNwke1G4vCL/t6EP9p97T3O1D+g
         wPNkrO6J52NrHsRmxiViItW7J3o3Rb8DNMzsM0v5V+WRjxi8hDtcc5R+0yLCtmY6kfCo
         j5bQ==
X-Gm-Message-State: AMke39k3c+jc7H5J8NYbugkulS+elRkNfYCM8cWsf0ZHcCx+vfEUOwC8oj30JUSRl6yTzg==
X-Received: by 10.98.207.193 with SMTP id b184mr46237911pfg.12.1487851668913;
        Thu, 23 Feb 2017 04:07:48 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.161.153])
        by smtp.gmail.com with ESMTPSA id g85sm4225277pfd.89.2017.02.23.04.07.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 04:07:48 -0800 (PST)
Date: Thu, 23 Feb 2017 17:37:31 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: William Hubbs <w.d.hubbs@gmail.com>,
	Chris Brannon <chris@the-brannons.com>,
	Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: speakup: i18n: Add spaces around operators
Message-ID: <20170223120730.GA9607@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch adds spaces around binary operators as suggested by
checkpatch.pl

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 4e7ebc3..bf28d3d 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -292,7 +292,7 @@ static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
 	i *= (int)cp1[-1] + 1;
 	i += 2; /* 0 and last map ver */
 	if (cp1[-3] != KEY_MAP_VER || cp1[-1] > 10 ||
-			i+SHIFT_TBL_SIZE+4 >= sizeof(spk_key_buf)) {
+			i + SHIFT_TBL_SIZE + 4 >= sizeof(spk_key_buf)) {
 		pr_warn("i %d %d %d %d\n", i,
 				(int)cp1[-3], (int)cp1[-2], (int)cp1[-1]);
 		kfree(in_buff);
@@ -344,7 +344,7 @@ static ssize_t silent_store(struct kobject *kobj, struct kobj_attribute *attr,
 		return -EINVAL;
 	}
 	spin_lock_irqsave(&speakup_info.spinlock, flags);
-	if (ch&2) {
+	if (ch & 2) {
 		shut = 1;
 		spk_do_flush();
 	} else {
@@ -479,12 +479,12 @@ static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
 	pb = (struct st_bits_data *) &spk_punc_info[var->value];
 	mask = pb->mask;
 	for (i = 33; i < 128; i++) {
-		if (!(spk_chartab[i]&mask))
+		if (!(spk_chartab[i] & mask))
 			continue;
 		*cp++ = (char)i;
 	}
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
-	return cp-buf;
+	return cp - buf;
 }
 
 /*
@@ -575,7 +575,7 @@ ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
 			*cp1++ = '"';
 			*cp1++ = '\n';
 			*cp1 = '\0';
-			rv = cp1-buf;
+			rv = cp1 - buf;
 		} else {
 			rv = sprintf(buf, "\"\"\n");
 		}
-- 
2.7.4


