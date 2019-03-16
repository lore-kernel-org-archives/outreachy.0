X-GM-THRID: 6669024286787764224
X-Received: by 2002:aa7:8ad7:: with SMTP id b23mr3738198pfd.142.1552753217800;
        Sat, 16 Mar 2019 09:20:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:1548:: with SMTP id 69ls5262291pfv.7.gmail; Sat, 16 Mar
 2019 09:20:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxuEHuj9P19yJfYeaEptIsLSFtFFudtjstttNMZ/gWyg3hCPG/cQP7zQqgBF6vLxc54xanJ
X-Received: by 2002:a62:148e:: with SMTP id 136mr3700959pfu.70.1552753216962;
        Sat, 16 Mar 2019 09:20:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552753216; cv=none;
        d=google.com; s=arc-20160816;
        b=hocsE3RsNkjCINcakachveu6BMhH9k+4H1kFe8BCQbsHFjUOFWGPKq13m8fYYwzod5
         ekfiyeCFU4ElcCW+zGr8CU5iZCNY8NEKvJTPJmjIDt6mPycT7QAFgrCDCvsUZCMh4O9/
         uvkblr1O0kao+utxIff0FoaZD2VokVuWtWkgZkvJ7Q81BHToUsMWdLq8PLprcOCX7ekB
         1WQtqordlasYz1Cm11UfyxUPLjcRq30KcmzQNEgUQVTC640LcjIsqHqMD9qw2S01AgYJ
         42Gk+Bwcz0/6PgcJI1Ih3dnArdT/6/6lsyCQYiAAIZHZTUIjXp+MTmo8iiga1SFc0gvo
         pLhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Y2SHVR9TPiKUtA2t47CDvMfot/27dRtAMw7Vf1dWbV8=;
        b=YvecKWZyc/09mZOjtGeHydjvB/931eg8GXgiMP0zNJvSkvDH8pKXSA/4koIPjcEOim
         8BagfArGMnDCW6t+WHFnootMzNQdezQKdTZCh0dDRnwyYOFNR6VnyPj8Jl6Rb0d0hAKz
         mFQoPMKsexPi4kXPosj/P5z4OXVkDxNgU+GzuW6A2ay4uwQM0Vxzf181rSe0gDbZGmBO
         YLOfz4J/Ry64fByimakRBk7I6URkxq1i1yQpI+fellUkrUYdrBIoDZYaayZ1C/8u9o2y
         O0jq7r9qBIpJY9hnWBjsFORCP+MCEzryIgzRVKsmOFxEHvYiBMMoMM/eNly6DRjPIEUv
         P0KQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTYwM4cb;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <anushkacharu9@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q140si399100pgq.2.2019.03.16.09.20.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:20:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ZTYwM4cb;
       spf=pass (google.com: domain of anushkacharu9@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=anushkacharu9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id b2so8481849pgl.9
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 09:20:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Y2SHVR9TPiKUtA2t47CDvMfot/27dRtAMw7Vf1dWbV8=;
        b=ZTYwM4cbHJSXd+X9Yzq8KAhlCPzb189xLqd3GC1T1t+JDNTN+ls8gbvsDBV25qpdVm
         tk/MXLMZ6EWnZrmlbuR+FF6zDb2KK31AZSGjTgfWc5fea966H9q408DxWT48hr14xdLs
         pQ34EYaLIF8JXA6DTJSBNdLbTWAQEomDKli5G2/83ZDzFiCdZTRbaN3ZXmlahn611o8O
         tphxe8JXU3k0NY8RrIzGT4omhegtrvnq4LCTsJM5Yd8PTP43SFaFkVEQpHMJHsfBTgsY
         jcKNMy/O6rPGtbu3fuc+USD59khB4XruKiVpxNk45vQ6Dj2jrAZpKRiubA7YS/dUb2KW
         bwVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Y2SHVR9TPiKUtA2t47CDvMfot/27dRtAMw7Vf1dWbV8=;
        b=fQhS8HCKQag8OMQwkJT/5vxboBEWPMEV+8VlL2gA02iAsgoLV3AJrqo/VCbtdzMkUX
         SWMXqoOm0MWnu0jZ/cIe4RW9nE5nqBbKhPQrtnfIVwSIweM3FoFIchpsEDJQrYTQ7kww
         fZFkl+QbcRh15m4qqP7vW08oU/IIqOa7IBDn46sD8ckfXLR6/+jGqX8OfAvRTTJ3v11r
         +pvCtoczUDZqCOXqOfakhKkmj/gDmiq/RQ35Axa4WhTuBDmsAU6Yuq3mbTOIc9g8toWp
         BCfOeiCvk9pGBbr/x8mS5+AXLRQJqkwa8XTiCJiqcc3yR/Ye/5YUdJume/SUGy4VE4l+
         OQkA==
X-Gm-Message-State: APjAAAViZgDc1/zgai4GKzV3nWQpvygDuwY6eGl33+fek2kMw/12DUCM
	Z8cYakRk9U5c93AdHr1Rrd4=
X-Received: by 2002:a63:2c8b:: with SMTP id s133mr9099461pgs.448.1552753216619;
        Sat, 16 Mar 2019 09:20:16 -0700 (PDT)
Return-Path: <anushkacharu9@gmail.com>
Received: from anushka-MacBookAir.iitkgp.ac.in ([42.110.255.141])
        by smtp.gmail.com with ESMTPSA id j6sm4778284pgq.72.2019.03.16.09.20.13
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 09:20:15 -0700 (PDT)
From: anushkacharu9@gmail.com
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Anushka Shukla <anushkacharu9@gmail.com>
Subject: [Outreachy kerel][PATCH] staging:gasket:apex_driver.c:fix the parenthesis
Date: Sat, 16 Mar 2019 21:49:59 +0530
Message-Id: <20190316161959.8901-1-anushkacharu9@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <anushkacharu9@gmail.com>
References: <anushkacharu9@gmail.com>

From: Anushka Shukla <anushkacharu9@gmail.com>

Fix the checkpatch.pl WARNING in apex_driver.c by changing the position of parenthesis

WARNING: Line should end with '('

Signed-off-by: Anushka Shukla <anushkacharu9@gmail.com>
---
 drivers/staging/gasket/apex_driver.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/gasket/apex_driver.c b/drivers/staging/gasket/apex_driver.c
index 0578bf1ba1e9..7c2ffa467557 100644
--- a/drivers/staging/gasket/apex_driver.c
+++ b/drivers/staging/gasket/apex_driver.c
@@ -529,18 +529,18 @@ static ssize_t sysfs_show(struct device *device, struct device_attribute *attr,
 	switch (type) {
 	case ATTR_KERNEL_HIB_PAGE_TABLE_SIZE:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_entries(
-					gasket_dev->page_table[0]));
+				gasket_page_table_num_entries
+				       (gasket_dev->page_table[0]));
 		break;
 	case ATTR_KERNEL_HIB_SIMPLE_PAGE_TABLE_SIZE:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_entries(
-					gasket_dev->page_table[0]));
+				gasket_page_table_num_entries
+				       (gasket_dev->page_table[0]));
 		break;
 	case ATTR_KERNEL_HIB_NUM_ACTIVE_PAGES:
 		ret = scnprintf(buf, PAGE_SIZE, "%u\n",
-				gasket_page_table_num_active_pages(
-					gasket_dev->page_table[0]));
+				gasket_page_table_num_active_pages
+				       (gasket_dev->page_table[0]));
 		break;
 	default:
 		dev_dbg(gasket_dev->dev, "Unknown attribute: %s\n",
-- 
2.17.1


