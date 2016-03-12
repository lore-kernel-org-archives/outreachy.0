X-GM-THRID: 6261315047016890368
X-Received: by 10.140.89.10 with SMTP id u10mr12764447qgd.24.1457826012337;
        Sat, 12 Mar 2016 15:40:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.15.78 with SMTP id x75ls1609646ioi.93.gmail; Sat, 12 Mar
 2016 15:40:11 -0800 (PST)
X-Received: by 10.66.224.38 with SMTP id qz6mr11027677pac.43.1457826011931;
        Sat, 12 Mar 2016 15:40:11 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id i133si854588ywe.7.2016.03.12.15.40.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 15:40:11 -0800 (PST)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id y89so127029636qge.2
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 15:40:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=HgSt7L4bMBWCiEspu5/zDyvcUbEmkDAUgTyqBMTu6Yg=;
        b=SStn8eUjdj5EB0RLr7LQCh2UaWHVtKOunjCsbm8tz7Wgf19RUSkCGuoK1yd73gqbjQ
         JJFthn7SpDk4J4/7z83hBsnyULhMvGVpRQjf+cBB37Mn9Hq4B14/cKE2kir6yNuDt0VO
         GjIwPLAP42yatSi9sZb4Efe/ueTnbTco1y4Yhxm7aU6M/4Wbco/Mbcpkd7Nq0Zw1k+Ip
         PM5uSvvLVGM6dU18gRFx5DzTVHxw225kls/2UcBJ6mBQSj7mkKWLNlVxPmiZz4i7juEe
         f5aWm3o+hGVKM1bWreJkqzEZFWFMg45ypzPl5ZYct0aKMeoQSWs/1O2PmB3DLNJFm8h4
         yW5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=HgSt7L4bMBWCiEspu5/zDyvcUbEmkDAUgTyqBMTu6Yg=;
        b=iGecNtpLx8CC/tGDonA3RAn4C7jy6kJbvIe3t4LCWwdOIJ86GkmqKtaxorGP0o9C5M
         JEn+7p8phNx4MhEdF8eYW3XLXP+2j8gEVoFVmBwcUxKoSSoF4iRqKsn98huu4GoZK+xd
         falPBxFK5f98R2lvfe3zAn/M3RqIZgle1N81tQMxIq4qvGhpCbyQx23VMGs2bfFHrHi8
         G3K4pgjxi9EXDxBfHwJAqZTQ0Uy+TWQDU9uz+e7vffSjvVpAEqIezQnx1fD5gIX1iejs
         dTE4Mj5TDAuW1ALAI0QbX9HUYSwdAnb49xab21PN8G3DVHlCfCT3u1ivA+YXmdTvJPd9
         q3JQ==
X-Gm-Message-State: AD7BkJJLGFMccGy47lL4ARpjIAxfk24Z8wuasnSFLIqN7e8hbxmgkpXmLqCj+dpVHYD9pw==
X-Received: by 10.140.20.197 with SMTP id 63mr10534704qgj.18.1457826011587;
        Sat, 12 Mar 2016 15:40:11 -0800 (PST)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([191.191.241.196])
        by smtp.gmail.com with ESMTPSA id 139sm7013104qho.2.2016.03.12.15.40.10
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 15:40:10 -0800 (PST)
Date: Sat, 12 Mar 2016 20:40:07 -0300
From: Juliana Rodrigues <juliana.orod@gmail.com>
To: outreachy-kernel@googlegroups.com
Bcc: juliana.orod@gmail.com
Subject: [PATCH] staging: android: binder: fixed line over 80 caracters
Message-ID: <20160312234007.GA8939@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the following warning caused by checkpatch.pl:

WARNING: line over 80 characters
+                                       if (thread->looper & (BINDER_LOOPER_STATE_REGISTERED | BINDER_LOOPER_STATE_ENTERED)) {

Signed-off-by: Juliana Rodrigues <juliana.orod@gmail.com>
---
 drivers/android/binder.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/android/binder.c b/drivers/android/binder.c
index 7d00b7a..94190fc 100644
--- a/drivers/android/binder.c
+++ b/drivers/android/binder.c
@@ -2054,7 +2054,9 @@ static int binder_thread_write(struct binder_proc *proc,
 				ref->death = NULL;
 				if (list_empty(&death->work.entry)) {
 					death->work.type = BINDER_WORK_CLEAR_DEATH_NOTIFICATION;
-					if (thread->looper & (BINDER_LOOPER_STATE_REGISTERED | BINDER_LOOPER_STATE_ENTERED)) {
+					if (thread->looper & (
+						BINDER_LOOPER_STATE_REGISTERED |
+						BINDER_LOOPER_STATE_ENTERED)) {
 						list_add_tail(&death->work.entry, &thread->todo);
 					} else {
 						list_add_tail(&death->work.entry, &proc->todo);
-- 
2.7.2


