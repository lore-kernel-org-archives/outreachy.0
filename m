X-GM-THRID: 6341442141271621632
X-Received: by 10.13.243.198 with SMTP id c189mr3648749ywf.158.1476482419949;
        Fri, 14 Oct 2016 15:00:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls9363434ote.9.gmail; Fri, 14 Oct 2016
 15:00:19 -0700 (PDT)
X-Received: by 10.157.18.211 with SMTP id g77mr3706041otg.43.1476482419583;
        Fri, 14 Oct 2016 15:00:19 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x241.google.com (mail-ua0-x241.google.com. [2607:f8b0:400c:c08::241])
        by gmr-mx.google.com with ESMTPS id p131si3519662vkf.1.2016.10.14.15.00.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 15:00:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) client-ip=2607:f8b0:400c:c08::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::241 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x241.google.com with SMTP id p25so23154uaa.0
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 15:00:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NbR/coE49b9VelD+KpAfrUiOvLveKKVbe3Egcr7Y0rQ=;
        b=rh5Buqf8DOQdP66PPTMih8+FN5I8JRJKZ1lDpgElQeHYQc25dJatonV955RdG3OKdv
         OApgtxOwNft2xlcOYRBFbCQFX9Qq0PTt1VoJXl6r8LJmLY6kwn0/Sx3Jtf4vKshvSCcg
         O3+w9hcCoAWXX/A1iTbB3mNYxISk4LO6hZfy09g0r7QUQsjJWHh1IL2IPuU+8FBszf7/
         tuR85OeQQvtGFiH6mAMfCNvWqZhX/cc9Sjx/c0vi4ZqDYLf6NfZrx8KNaJkvSuB+EqWP
         oQqjDkTiXx6TX29NDnZ4Xra/stByTnfDUsvAz+srIM5oRhSJ7Cs7+ApY+TZ3pkAYkyWP
         Htcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NbR/coE49b9VelD+KpAfrUiOvLveKKVbe3Egcr7Y0rQ=;
        b=PnqEgASWq08AEKCDrRuk41UpTxDlJAO7we73D8UfmQY1VQRbMCzzIYeFJQJRIP3xG7
         H9JxxVvAvBDsKOfyXLxd6NrvUPrYG+76XnDqz9HFICxHR7cYkGlpvCQiaDfWU0tLt9if
         yKRly22YQBFH6JH/k/rupa5pSge2TsYb04veLa3x3aFeZ9xKWfe/Lc8k7+etNNevhEnV
         R29kos0n50BtwEI2KtSeYByBHLX6pGiV50rClcrIBNVldOKKQrKlT8+jBI+lCPe47SSu
         2xvec0M+Kj1Cz5hC+KOYzYZJY5VyFwPXMHhJP/q40CwhtsOCKfnK4IHdRMv9hy7mr548
         2AMQ==
X-Gm-Message-State: AA6/9Rl0WdVgrn3cJvgyPXpEU1YxKcID7yZmghFc5FshMeE9fwlQwkneyUtET+PY5HwxlQ==
X-Received: by 10.176.83.147 with SMTP id k19mr97707uaa.77.1476482419429;
        Fri, 14 Oct 2016 15:00:19 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id p28sm56106uaa.8.2016.10.14.15.00.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 15:00:18 -0700 (PDT)
Date: Fri, 14 Oct 2016 19:00:11 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v4] staging: greybus: audio_manager_sysfs: Replace sscanf
 with kstrto* to single variable conversion.
Message-ID: <20161014220011.GA7040@lennorien.com>
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

 v4: Add version changes to patch.
 v3: Add modified file name to patch subject.
 v2: No changes.

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


