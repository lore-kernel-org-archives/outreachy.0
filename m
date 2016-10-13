X-GM-THRID: 6340041071062417408
X-Received: by 10.107.26.130 with SMTP id a124mr2667886ioa.42.1476398766710;
        Thu, 13 Oct 2016 15:46:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.2.67 with SMTP id 61ls7378089otb.4.gmail; Thu, 13 Oct 2016
 15:46:06 -0700 (PDT)
X-Received: by 10.200.51.97 with SMTP id u30mr2431177qta.16.1476398766023;
        Thu, 13 Oct 2016 15:46:06 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id x14si2129255vkd.3.2016.10.13.15.46.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:46:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 130so1817528vkg.2
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 15:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zj4DHkjAYDG1zq4XoOANN9sZ5ugtEhTV6FO9OxapxxU=;
        b=owaNz2Neh1rbMtvfA7QD3NcSNwAlpENj3q3S2V8zG6KvC+LzH8/AUGWhosqeSVyBnO
         f5FE0TM2IsUFiuyPmJJw5Z9C/m4jOkESiSOQz/PrYDYAMbKQnnATb5c+CS81f5Hmzpq0
         /0w/8+zSnEeaanfRKDF6/ZTHn3MMFovcWkwUJGIN4LYV2u6oHCjZ8BkLRoZcZ+oE3gR/
         jVJJ1vrK5ZMt/EKVg4nqEx+odM31qwgJvku/IvQC0/r5+5Ltv/TEgDGcfi9uOiW3f/Ud
         1JL22oEP+4etLHZSFl7s73PWYXTikvbw21FJBtzFRXuOjz+5YBZutl4GwUPgo1w9S9HS
         wEiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zj4DHkjAYDG1zq4XoOANN9sZ5ugtEhTV6FO9OxapxxU=;
        b=B+VoLIkVNa3STjXVtEGs5mSaGMRLTgTo2u+5HzIN7F5DKshdro9YhKrGhSYLhZQWB4
         knzUe3moNpUQIvcnQ2GWgM9K9O4bpoDC4ez7xGL+6BB4k8fc8GcQWxXb9rOJSfnO2RRl
         j8RxzGxkjvECmd5UbkyoxZsE/i/Qd7AGqIOYdnzB/96a+yGKQte7cGA52nTMF8K102x0
         T16Z3Dr3Cxjfg+r+UkYfYc4M7izWntdgDw12SsCkF2kT/sAdvzRWoaWQ+SdSkgMGRW1k
         +4F2nevkTDdpUkwy26ETRNRmDVbQLXrtNGD3Sq0RP7vKFjbOBSHUucsaERap+2hSUJWR
         +7eg==
X-Gm-Message-State: AA6/9RkYZmDeBJlXZySeZAPZqHz0hrC+uoZlkKXKNOPWRPXI4seyAc7nehTxlrF2bUyntA==
X-Received: by 10.31.13.133 with SMTP id 127mr3095883vkn.132.1476398765868;
        Thu, 13 Oct 2016 15:46:05 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id n71sm6138106vke.23.2016.10.13.15.46.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 15:46:05 -0700 (PDT)
Date: Thu, 13 Oct 2016 19:45:59 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/2] staging: greybus: Replace sscanf with kstrto* to
 single variable conversion.
Message-ID: <20161013224559.GA13383@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer kstrto<type> to single variable sscanf

kstrto* is designed to convert string to numerical value and makes
it easier to understand what the code does.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: No change since v1 in this file.

 drivers/staging/greybus/audio_manager_sysfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
index 376e17c..e74fdcf 100644
--- a/drivers/staging/greybus/audio_manager_sysfs.c
+++ b/drivers/staging/greybus/audio_manager_sysfs.c
@@ -44,7 +44,7 @@ static ssize_t manager_sysfs_remove_store(
 {
 	int id;
 
-	int num = sscanf(buf, "%d", &id);
+	int num = kstrtoint(buf, 10, &id);
 
 	if (num != 1)
 		return -EINVAL;
@@ -65,7 +65,7 @@ static ssize_t manager_sysfs_dump_store(
 {
 	int id;
 
-	int num = sscanf(buf, "%d", &id);
+	int num = kstrtoint(buf, 10, &id);
 
 	if (num == 1) {
 		num = gb_audio_manager_dump_module(id);
-- 
2.7.4


