X-GM-THRID: 6810925705674620928
X-Received: by 2002:a05:6102:1081:: with SMTP id s1mr675379vsr.24.1585792215469;
        Wed, 01 Apr 2020 18:50:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:320f:: with SMTP id x15ls134988uad.2.gmail; Wed, 01 Apr
 2020 18:50:14 -0700 (PDT)
X-Google-Smtp-Source: APiQypKdHsQc4pKXRmMTrKlZ1ejzi9m37ZdClDa99feoIi028l4ryAp0SX/j8druEYfnCFxKnvmc
X-Received: by 2002:ab0:6657:: with SMTP id b23mr1073563uaq.14.1585792214186;
        Wed, 01 Apr 2020 18:50:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585792214; cv=none;
        d=google.com; s=arc-20160816;
        b=f/0mZAERo41QPx2cSjYNOFLD/dAc16/xO4ZHYzVLMcCp2dTLG7pDpIjCzjfcqx+iOh
         e4iQrPqBO7SjoBWzLiG+XltDOOSzbBZHmL1x1KGv4jA2BTddoBttYu3CCXJlC8k6PfFk
         qTC2rOZtjXxD/o+LRPnFS/Zg8uzz34LT7rDacKWYglQ2BG7enXsemj/nioarsVFAucdn
         DFHW5LUg0i+6fctXnhEfgNP1umtlAhxMwGpYjX/YXr6wIDFdpkZBB5sL8LJpJAaxrBsu
         SBBW5ahfhiVPiSrzRlu3r0ExrSDAaJrNgJGQlcV+c87WMP1SagDn1DKxmVu0K+iyDUim
         fEQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=gaLfGgV7jTf3g3JBcoDJOPcU/nCijkN8vOuU2EJ1RrI=;
        b=ese5kIUQeE5lMO8YIzbSLua2F64SbqJN/Z3YkSoGeggNru2nnPY/vg03x8Z5o2dy9+
         iAeKcajN1H7JwbarLqwj0Lw1H9n352MP+ufNsc+vqeC3uckFjt7Am5YMJlZ3tq4YriWK
         D6eQqQvEwXx5QORPw2+B69/h+9Cy3xXJpIRqczyYRM9mm+OgfSmIVsWetPW/nat3c2E/
         KyrFQBwYxAkpqv9XhfQCpR9S09t3tBVfEyyOzMJOaB8R7hje7RTdmBXiTVR6SD1nrhad
         5bqEEyLo+R4CorD97It7GYeyY8Nn+8zRDPjNqBYCwx4kElGHu8C9x+go2JTeMTQ2bJZj
         PDYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N9Iphtqs;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id 205si295492vkw.2.2020.04.01.18.50.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Apr 2020 18:50:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=N9Iphtqs;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id x1so741667plm.4
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2020 18:50:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gaLfGgV7jTf3g3JBcoDJOPcU/nCijkN8vOuU2EJ1RrI=;
        b=N9IphtqsdIA5qLhDE9JtmU8XZGQHUbVwspMK71ysv4P/niCzPnClmjWo+MSGcZUEWb
         0qGCM2X4veWA5rtGG9amIkg6kuvcHcSDCLnFywIBJZA41B7+wTnu4quZbHZqrO+IGT2p
         rFVBtG9bTfDSyNABHjr/T85eYT64W86wVQL/FRbXxE/kEalGrKREuWVuynBhZ5htS4Di
         a1pYt481IotZW8H8vEETg2EFSCIcG3muR9qPbIdC8nb5GFosfiOfLQiAb7fe1X/yQYvu
         9dorYo4JzTRQX7bYMfpRVxUy2J1LGCx1r+UwbuenkzLf1I1pwy0EQtcQ1RXe6KvSFx6q
         4gAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gaLfGgV7jTf3g3JBcoDJOPcU/nCijkN8vOuU2EJ1RrI=;
        b=aKkbnvn8dj7YniDBbog3TqhzIJAMncM7P6SaF1exHhkXrGTEhel2oLuCDtxGJYOILq
         uGp9I86uMR61bTHeAr3qYk+qHdj0VTVrAjyI9ClGYKucc8pqcgwf7g1yhyZ+0qw/o6Y0
         XgbAIBz47+QSw4ijWnFNGjgua95y8xWUACyt33QtwhfZVsf4YFPqbeXf8QQGlGRJq9A4
         fEr2mmHn/O9qHKZx4HvBPyUozd3/RSDLMbZMSP1blsfMt3VXaA46DvT+U2iO0BqzvX4x
         QLhxNIO6kGarKYnDKfBcX/dhEIDEOlGrG12bpjZYdoh09vDvUpSdsQFTseb1Tdh0xvHI
         4rHQ==
X-Gm-Message-State: AGi0Pua/5fSNkXv+71TPkG4+pDe6S728t7IT1j3+l0AUyn4w4iSepJiD
	t1NGJAc5cmzcoJmWYW1l1k3hIZo5R6c9nQ==
X-Received: by 2002:a17:90b:3615:: with SMTP id ml21mr1070363pjb.145.1585792212909;
        Wed, 01 Apr 2020 18:50:12 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora.fios-router.home ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id y3sm2454280pfy.158.2020.04.01.18.50.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Apr 2020 18:50:12 -0700 (PDT)
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Quentin Deslandes <quentin.deslandes@itdev.co.uk>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>
Subject: [PATCH] staging: axis-fifo: Fix parenthesis alignment
Date: Wed,  1 Apr 2020 18:50:08 -0700
Message-Id: <20200402015008.728612-1-jbwyatt4@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix 2 parenthesis alignment issues.

Reported by checkpatch.

Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
---
 drivers/staging/axis-fifo/axis-fifo.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index 5801067e7c1b..2bb1c2e9cb57 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -383,8 +383,9 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
 		mutex_lock(&fifo->read_lock);
 		ret = wait_event_interruptible_timeout(fifo->read_queue,
 			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
-			(read_timeout >= 0) ? msecs_to_jiffies(read_timeout) :
-				MAX_SCHEDULE_TIMEOUT);
+				 (read_timeout >= 0) ?
+				  msecs_to_jiffies(read_timeout) :
+				  MAX_SCHEDULE_TIMEOUT);
 
 		if (ret <= 0) {
 			if (ret == 0) {
@@ -525,9 +526,10 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 		mutex_lock(&fifo->write_lock);
 		ret = wait_event_interruptible_timeout(fifo->write_queue,
 			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
-				>= words_to_write,
-			(write_timeout >= 0) ? msecs_to_jiffies(write_timeout) :
-				MAX_SCHEDULE_TIMEOUT);
+				 >= words_to_write,
+				 (write_timeout >= 0) ?
+				  msecs_to_jiffies(write_timeout) :
+				  MAX_SCHEDULE_TIMEOUT);
 
 		if (ret <= 0) {
 			if (ret == 0) {
-- 
2.25.1


