X-GM-THRID: 6525083396428791808
X-Received: by 10.159.56.109 with SMTP id q42mr4168790uad.120.1519323322554;
        Thu, 22 Feb 2018 10:15:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.196.71 with SMTP id u68ls2044982vkf.5.gmail; Thu, 22 Feb
 2018 10:15:21 -0800 (PST)
X-Google-Smtp-Source: AH8x227nDI3J5mCWslAhisMUf4+yY488dowjc4uRMTq5x1PPxMjWVbfWs7zhVElzhBOpLSNiD4GU
X-Received: by 10.31.14.144 with SMTP id 138mr3830297vko.46.1519323321246;
        Thu, 22 Feb 2018 10:15:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519323321; cv=none;
        d=google.com; s=arc-20160816;
        b=Egs6FhvGRUhiKuRlJw+NesgFK4d3Q1aLZDdqDhfUqmdTLAKYYwR/uFCppde3slluky
         xK7JOKdJL5o894dnG6icH8NhX55RHrp/7NSOVk4CFuzjnJT4jCMK/heKykn0JTiBafQf
         MfDTwKtzgk3LMv+9m+FrHVOPgWW63PBbbvrXqdCt5RA/gAQRg67rlAfxRBJCkvgY8Vq7
         qhL+JQ20uCh0SOQ49WGjtzd27lIlWZvlpPc9flAZENt+KZtWvz4tCf16o8ve8Sl9zezy
         inJMwwa5c5iJYAxJUiJT7weU/TkfvHQC2iS5/XsSha6RlXlhxiM5GKs9xuj/fnnTAe/4
         V73Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=p32ycuTiXrmv08kkE3en3mS+uo6olHkewfGUiVzkqL4=;
        b=D6fH10vWgaCq7KeMrRMEdj6+Tg++sCm6dC0fQIHuPe/4BMOcPX8YsT9Dpx+AY33kpZ
         u4gc3uJE15UXYyNlBO6M8+LhRonlHttIG7RXGee4nDt/lpKQ/nApTkBgdqm90YjVPgJZ
         nvxCc31fd8Tf7x5ahLqB7NJE6h09XfchjvyWKMeXqTyTTYQDvzqkt8AElh8lRn9WYZgP
         G/gwrLBVXWj4tcJa/kbw9CdPFQAD6Itn07MQMZ45H3cqZOxjTvaUnWBRV1KQoi4X7heK
         IfH48bInW5b2oZPLJHnnKWcbwUHBsclakvZCLI2froOs87EG2osLVxICDiOHgVMAbduV
         5vrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sB/7wD3z;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id 34si55189uav.3.2018.02.22.10.15.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Feb 2018 10:15:21 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sB/7wD3z;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id f6so2305683pgs.10
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Feb 2018 10:15:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=p32ycuTiXrmv08kkE3en3mS+uo6olHkewfGUiVzkqL4=;
        b=sB/7wD3zeQGkRd2cjxGazyIkrkSdR/nYQSVmwbGkamH96pPpJfvvypzXki4vn5Yr8E
         OWgTC4xD9K37v4OyTxWXAnsEB9VOoiwjztx0PjY5kXwmqFdqERgbKEt4ZmQ851MU0p5O
         ZUyfz0LBivacfD9DVzIaX5bOq3qtpno7mBShcXiDDZxvrr388EqcyvFUsn8C7HxlxsHh
         LJLEGa7iho8EckQBAGQzVLquLooeBU18y7qkzo2tQyWUpjbEeJerMldKD269X8pIEiWF
         YQ1JXfYgofbAMZzo+nFQY6bAk1jg0VNeMG+fJMss8SFvwCcAdqJXaxd6MkdRXGeMOiyY
         xIvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=p32ycuTiXrmv08kkE3en3mS+uo6olHkewfGUiVzkqL4=;
        b=K+gjWpm0xjJvnyYBsHhh+O75nPHXyjICDH7pfOtKqF45QlhJK+edaPLCogzPHGd3CJ
         dW+LrFsmQSKRikVXlIqUIPS3wbYOKj7fr9nEAoeAPWBCpmBmZcMFAa2ka/rUelUprUh7
         i6XQTKL6/dwjxA94mlQwl329T+1trvtfW8LqxIUmXNWIGsChJ9BIAD8iN51GA/Du9FLp
         MCpUdyf3XN0MYX5WZy7zTyTxnhFxu+UPLAeE4YJTTXtEmfhwHUsUf7J0XB7+X3mIT9hG
         PPYg9fH9TYYpj+uK77EoU1iu8YOsNXcxUGeUHAyOLP5QDFXmGZhLrFwljlYId/OSFZzc
         K6eQ==
X-Gm-Message-State: APf1xPAY2T+UJWo155sah2aVhkjqIK21aM4m8kssHXGmLJV7zHRcngiR
	wjHte7ZPNqh/hHvfT2+SWc40Hg7q
X-Received: by 10.101.68.141 with SMTP id l13mr6254108pgq.65.1519323320343;
        Thu, 22 Feb 2018 10:15:20 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-0.resnet.ucsb.edu. [169.231.23.0])
        by smtp.gmail.com with ESMTPSA id i1sm1506314pfi.116.2018.02.22.10.15.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 22 Feb 2018 10:15:19 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH v4 2/3] staging: speakup: match alignment with open parenthesis
Date: Thu, 22 Feb 2018 10:15:10 -0800
Message-Id: <1519323311-24338-3-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1519323311-24338-1-git-send-email-santhameena13@gmail.com>
References: <1519323311-24338-1-git-send-email-santhameena13@gmail.com>

Match alignment with open parenthesis to conform to Linux kernel coding
style. Problem found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
Changes:
 - Change commit message and subject line to remove typo in v4.
 - Make the change description more clear since v3.
 - No code modification since v1.

 drivers/staging/speakup/speakup_dtlk.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/speakup/speakup_dtlk.c b/drivers/staging/speakup/speakup_dtlk.c
index df31f8b..f109b51 100644
--- a/drivers/staging/speakup/speakup_dtlk.c
+++ b/drivers/staging/speakup/speakup_dtlk.c
@@ -323,11 +323,11 @@ static int synth_probe(struct spk_synth *synth)
 	if (port_forced) {
 		speakup_info.port_tts = port_forced;
 		pr_info("probe forced to %x by kernel command line\n",
-				speakup_info.port_tts);
+			speakup_info.port_tts);
 		if ((port_forced & 0xf) != 0xf)
 			pr_info("warning: port base should probably end with f\n");
 		if (synth_request_region(speakup_info.port_tts - 1,
-					SYNTH_IO_EXTENT)) {
+					 SYNTH_IO_EXTENT)) {
 			pr_warn("sorry, port already reserved\n");
 			return -EBUSY;
 		}
@@ -336,7 +336,7 @@ static int synth_probe(struct spk_synth *synth)
 	} else {
 		for (i = 0; synth_portlist[i]; i++) {
 			if (synth_request_region(synth_portlist[i],
-						SYNTH_IO_EXTENT))
+						 SYNTH_IO_EXTENT))
 				continue;
 			port_val = inw(synth_portlist[i]) & 0xfbff;
 			if (port_val == 0x107f) {
@@ -345,7 +345,7 @@ static int synth_probe(struct spk_synth *synth)
 				break;
 			}
 			synth_release_region(synth_portlist[i],
-					SYNTH_IO_EXTENT);
+					     SYNTH_IO_EXTENT);
 		}
 	}
 	port_val &= 0xfbff;
-- 
2.7.4


