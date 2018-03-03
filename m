X-GM-THRID: 6528466201738215424
X-Received: by 10.99.125.66 with SMTP id m2mr1523366pgn.85.1520055239779;
        Fri, 02 Mar 2018 21:33:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.174.15 with SMTP id q15ls1183992pff.8.gmail; Fri, 02 Mar
 2018 21:33:58 -0800 (PST)
X-Google-Smtp-Source: AG47ELs3v87/vTxVaj4m5cy6ZTRn7PoWEIs3CP200rPIEr923+N66obAA2ha+muoTRWhm2bVSmVZ
X-Received: by 10.99.8.130 with SMTP id 124mr1588488pgi.32.1520055238474;
        Fri, 02 Mar 2018 21:33:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520055238; cv=none;
        d=google.com; s=arc-20160816;
        b=qMRNiyl+JZGDjHPjfCL/0mjmm3SnFduzMb1oGx6+BxwxmJy7jGBpANU3Jv3u4KBIbJ
         NGwabj0KnhE5K1xZFKtXg8pXQnKimvguJtBOvUnLc5xZR6Lcx1tAg9fbj5pXikAmcwTp
         VUTXNwc4v9NKOOCp4FnSHgRI4CPZUO8v8laKVlEGeoqVto3m2q7cRz25ItvtDGrPHmWW
         EX9gEzotaS/UZ31y/h0lqdNqMh9EBlrUmIRCSxuTmcl4iuMqe/JWRvi+83fc4kaQUZr1
         RPxSluQ/9/tjJTyUq75SfZgatHk5Hqruum2WzCYNrfBwuBAzEEy3QIZAaww+VJxpIYGM
         mtSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=xgZuF8qSLf4egCp0Bh6o2RvGkNlkoImt3oUSPvl73Ts=;
        b=JHursOG6/nbhlOXl2p6N5TsRXFTzkNnFgpvR2llukmGa/xTJ4oy78cgHl1NKkrWQL7
         0S3cehTqgo+Eg6LXauuUYTLK9a9tb50blwu7gp8m9GpMlnz+olwwdGx+72hubV1rFMEO
         4lle5gyqo/usLepSkUB8mgzJ4WZPAkeOHFh2IIVCAcnxvNDXpbbjm6EvbIGGnfoRIxLQ
         wKTo4taUR9MSxhQDsHpj8uzoev22rDzkBkvu4bgqxwCaUBXK5fFFxYSk2FMqI64WTrkz
         wSuiSovLMQbkvHQehvfjjJnsxPGJACtNs3F6hddcTXoYWb+d5BhXlpgvCyG8RRcl40Zc
         XbfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NnrEf6qP;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id w4-v6si543702plp.4.2018.03.02.21.33.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Mar 2018 21:33:58 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NnrEf6qP;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x1so3011225pfh.7
        for <outreachy-kernel@googlegroups.com>; Fri, 02 Mar 2018 21:33:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=xgZuF8qSLf4egCp0Bh6o2RvGkNlkoImt3oUSPvl73Ts=;
        b=NnrEf6qPPghL8MgwDskP0/J1Vyz3jd7hNhOLwglrLfUxucSH6WbTbT32pO2yVBzlxd
         46QiphiBADQwBcylpnXQWbSzX+s4iwWX6jhLJDDlAJakgtETHjVMFOl/6HCLU9XM64bn
         2HOCR+fLJkDyhoO8cTEhr83KLus5KWJU2yLURPj60JrGwbdkShOTxRO4dicQwoZsHJgO
         CWkQFJljBy9ornc/DhGOQEkMQY8Hgsyx7ijUxZIEGh4Aq6p1t+njVpB5C9gRqOyrO7GK
         8odqsZwGioz9g3ZnbDg41EALkNSr1cGiRXgCPPqdKjwMlmT9X9kk7rDFEgco6aMVnAoa
         1sIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=xgZuF8qSLf4egCp0Bh6o2RvGkNlkoImt3oUSPvl73Ts=;
        b=Ymzl9oduCDuUwakmiIJdnJFl9QkKVryq2H6lu/3b38mvPeJqVZHwtGVvHMp72bV4Yq
         ADIlVv6wpCaFzVV1kx4pumL5VqnC53ZKKGdJ2QAR1Za3vaUwpmWFfSKxwY6yZsVX8yCY
         hPayQwgbl8XJSzPJMMouJsCZvNh+XBYElFzSS+Dp9R7QQS9/WylPomyQEEvvGk009o6U
         jaVTkBhSM9BzrJIz5ZV5+dxFwQOTwMuhZx/Bhyl7enIWqpnBCn8hBVLCzACrlQZJoSFM
         2C9aQCF8gBuQX0bMjgL8mHRYkjiP23+F5xKgjXJyBXWJkFm6P2XAzOjcyd18n+N/L1gG
         bDxA==
X-Gm-Message-State: APf1xPBiI0UTCCeRMUgvEQPXD9psEBtMMxXcu/t4h80Urt8TjkXdvyYJ
	jVPyaM9yu/TLkAKjZsK0vTyVIQ==
X-Received: by 10.99.116.16 with SMTP id p16mr6141220pgc.194.1520055237752;
        Fri, 02 Mar 2018 21:33:57 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id m22sm16008604pfg.188.2018.03.02.21.33.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 02 Mar 2018 21:33:56 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH v2 4/6] staging: rtl8712: Added spaces around '+'
Date: Sat,  3 Mar 2018 11:02:34 +0530
Message-Id: <1520055156-8388-5-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520055156-8388-1-git-send-email-arushisinghal19971997@gmail.com>

Add spaces around arithmetic operator '+',  to conform to the Linux
kernel coding style. Issue found using checkpatch.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_cmd.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_cmd.h b/drivers/staging/rtl8712/rtl8712_cmd.h
index 67e9e91..9181bb6 100644
--- a/drivers/staging/rtl8712/rtl8712_cmd.h
+++ b/drivers/staging/rtl8712/rtl8712_cmd.h
@@ -145,8 +145,8 @@ enum rtl8712_h2c_cmd {
 #define _SetBBReg_CMD_		_Write_BBREG_CMD_
 #define _GetRFReg_CMD_		_Read_RFREG_CMD_
 #define _SetRFReg_CMD_		_Write_RFREG_CMD_
-#define _DRV_INT_CMD_		(MAX_H2CCMD+1)
-#define _SetRFIntFs_CMD_	(MAX_H2CCMD+2)
+#define _DRV_INT_CMD_		(MAX_H2CCMD + 1)
+#define _SetRFIntFs_CMD_	(MAX_H2CCMD + 2)
 
 #ifdef _RTL8712_CMD_C_
 static struct _cmd_callback	cmd_callback[] = {
-- 
2.7.4


