X-GM-THRID: 6524019409148706816
X-Received: by 10.129.212.73 with SMTP id g9mr9021910ywl.240.1518991638303;
        Sun, 18 Feb 2018 14:07:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.70.196 with SMTP id t187ls324034ywa.6.gmail; Sun, 18 Feb
 2018 14:07:17 -0800 (PST)
X-Google-Smtp-Source: AH8x224mKDmnfjCRhYJMO+w86WNhbzayZATvDYMyasAzRiwjaGUJKgekffuVicwrNkJgeMuxNx6e
X-Received: by 10.13.232.145 with SMTP id r139mr95830ywe.14.1518991637097;
        Sun, 18 Feb 2018 14:07:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518991637; cv=none;
        d=google.com; s=arc-20160816;
        b=EsQOCwgwMzaNhzVhot7qPtSTO0GWFvu8wcrn5fq8oyDJlqK2Sf4aBCLrZvjxp6e1YU
         H/dldLCLdKm6qftAOlYOPMo3R3b4NI8z+135+Y/l7se85IandgjwoZSQIz5mMOIEp/DV
         rQB0foNAZ+1ngoTAnOPkPMMG2BMvsN9rNtLSW2NSt2PFeuVx1vfVDUmKIDpMTHid5/k7
         671ip86hD7FQHRidZj5HgIJJxwayctdW3LHNuIGamaNa4rJynwNL+q0ck/jkezJ4jx8Q
         /yPpZ5W/0dcnNBuaqZLFHh35vQQ4FpQw1d42w8TbH5CEvHuYN7P343E0aEi3f7DQ8ZmF
         DGgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=D+4yRpqYBl5zk25zW8s+mcoUcHZJg+6yZMGbE+c2KhY=;
        b=iX/mWddCkX+5o3zEyoUo3bR30+6jX8jzHVCLgvjt4l7gUgEPpGF2gtuM1VbJNyAiKc
         A0x4gP0nrgDo3zHYoetW8t2JnkHU91yi6glqKmMpVlEmrWsnT0M9MsKUH+fovwuJYghU
         iUUg4Duv1QdpuawWbqPO31rR+6WjTLO3911rsMwZd24qG73bbcB5I8Tc25/xBCQr1rSQ
         aDbV1jOTTPCA8juMBbhaAZLQPtGBWYhBSB+MJWddBDp4TWYqV+uh7rVKXqtc8fCn7RjT
         YyWSqzvgue6tFiZbtp7d0En5W8CnJUzfMSrPdwhCC/nNtacHUpSMLzzgN+CmVS87PDaU
         Bqdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DqaEHtjS;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id t4si680025ybl.3.2018.02.18.14.07.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 14:07:17 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DqaEHtjS;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id w17so5170202pgv.6
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Feb 2018 14:07:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=D+4yRpqYBl5zk25zW8s+mcoUcHZJg+6yZMGbE+c2KhY=;
        b=DqaEHtjStzKoDdPCSCbk8niKenxp753mapkWqwwdS/yMfY4uAKYyR/ANU7jh7KvJPb
         WqTrZRG2On1gKVg3vMlpduafLeRtR6kO2NslZYkO2JFOOP0BL7n5vKohV1KSkL6DIjat
         YoZ1Km0YLyuMKfM1lzppUPt2Ckl6fzdBw2N6KHloeEQodgIYKZA8TAUpYTUOz94UP8GQ
         QwoASRbov0uWNwelKYQ0nN3tKtMuqN1OPuoZzGVLZ0BH0eXxsg04t/AcEgKD9OW6llFP
         lGw/yDF0IYZjBi3d3iJcBTNaF7diR8TYJXPNSX/NsXtUaFwoNL08c7pFX6nTaDdYHheS
         xU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=D+4yRpqYBl5zk25zW8s+mcoUcHZJg+6yZMGbE+c2KhY=;
        b=JWWfDwcbIjkkjkgWL1PH3yY6JzyqAt2QGVB98LmetiL5QwxsEH0rxgetjIMOY1Kbw/
         ghQv2j5kqEzY/0DdbVUiVQOnC0W3UyMZINfTuuho7UpWKeaFnqDawh0F+QNRdl/bBJ1M
         VbpR/mzl4kQD3f7o4E0kZdMxMxb6Ubjik//QdbZyfBEMc/xmct+ue34hhaK+mbsrU7KB
         Q+xDBBnDtoMuZunoIx7+EF0o5CEYpEmPJfegRKWvA+sy4KZwAwOFIvz0okioXkjlZtyA
         RhMC1U3eHcXAviTIgsL7M8S2hZydzz5HBDleuLzWlK2C6Dtqc6J32wd/wo34zo2g0VPS
         Lx9g==
X-Gm-Message-State: APf1xPD0qtelu08wqk8YQc0rwwen6CzCsM6J0n8KFhtTwRLvqnSSLFLp
	Vbo0aqFLH4db8TiTwLdfQwo=
X-Received: by 10.98.209.8 with SMTP id z8mr12651629pfg.240.1518991636354;
        Sun, 18 Feb 2018 14:07:16 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id l84sm59036177pfb.153.2018.02.18.14.07.14
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 18 Feb 2018 14:07:15 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: aditya.shankar@microchip.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v2] staging: wilc1000: remove unnecessary braces
Date: Sun, 18 Feb 2018 14:07:00 -0800
Message-Id: <1518991620-3340-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Remove braces around a single statement block to conform to the Linux
kernel coding style.

Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Changes in v2:
  - Make the subject line more clearer.
  - Remove file name from subject line.
  - Make the commit message more clearer.

 drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
index 621810d..df04bf80 100644
--- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
+++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
@@ -287,9 +287,8 @@ static void remove_network_from_shadow(struct timer_list *unused)
 		}
 	}
 
-	if (last_scanned_cnt != 0) {
+	if (last_scanned_cnt != 0)
 		mod_timer(&hAgingTimer, jiffies + msecs_to_jiffies(AGING_TIME));
-	}
 }
 
 static void clear_duringIP(struct timer_list *unused)
-- 
2.7.4


