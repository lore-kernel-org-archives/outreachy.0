X-GM-THRID: 6660892236702547968
X-Received: by 2002:a6b:f717:: with SMTP id k23mr3622729iog.28.1550859826257;
        Fri, 22 Feb 2019 10:23:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls535597jaf.3.gmail; Fri, 22 Feb
 2019 10:23:45 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZdeiyRkGyvWRd9+GHzvg2GY2qAhFuNCot0zWcG99oxd9NKrAxm41/QOqC/x429PpamblY1
X-Received: by 2002:a02:18c9:: with SMTP id 70mr3327438jar.20.1550859825325;
        Fri, 22 Feb 2019 10:23:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550859825; cv=none;
        d=google.com; s=arc-20160816;
        b=OYqb/CwGi9/4DtRmOUtGKsMTGpRyuDUtuwM2LDRYTGWrdu/Kr2VeOU0zEX5BzHbUs0
         NZhgvOeMwAeN+G3vasUWYkcLxshzr5o7E3WmtQD5Ou7nvSjIcF6boRbw9mrDGAySX1fZ
         aY4KYqY398CJORlGbcSGlbOqRsd0o9S5I88rPI5UCCJf54NseMQJwMN7HoWUbT9a9BL5
         XYn50hfCdMlNyRfYY45sdLGcP2WdN3JoDcGW4KFz7uMbpaN+DwOJUVkdCJTvsyfTAgW6
         5VUDG2NlvxH0yq1gXb+3ewO2jSXJ0WjD367fNRuxhubORp3AEgP18zETgvddxzZQR3wG
         EDPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=wSwppmQUZ3fnZneBPTx7aK98uf/BwkmmKFDzYQ2ND/s=;
        b=sbFefcldQNPvpMSWEuMsEbzRflz4ULBG1To/xedaMRce/bZCSqM9CjQ3vbR1eZMdR1
         3C6fx5Fbj0J7EJKJRkG1KCbpyM1UdEFPrfXGTPHee/hSPuq1fsTAHtNUD2OZvs5YC0cX
         BdflcM4A6rCEdDNATa6GaEuHaZLppKP9OEnBnlSTxNNQxLmVOn0Vnm1a1WaiArZz7UP6
         zpgNXsh5W3LLAASiZVA74eI+6GNtcxSy/QknqLZDgw0/8ZJmoo7wyMg5d/J62rQjpA6Q
         XLdB9cUPn46IngXAqJi/GGxU14gMkZmG6Ta6XzhbIWbBr6Q73CAq1J0FiGgWvi6TEx6+
         x/pA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3k1GuFg;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id v63si180248iof.0.2019.02.22.10.23.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 10:23:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T3k1GuFg;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id q3so1459038pll.4
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 10:23:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wSwppmQUZ3fnZneBPTx7aK98uf/BwkmmKFDzYQ2ND/s=;
        b=T3k1GuFgcIJEgcAEPPEtdvsLQ7fk2wpSHwSebciBMLDveWIhAIBLfBl7zLa9u3bzVC
         fAiFNHuWb48jZ1u6MqaFxpBz/yEVbGQS4IQaI28R2zveTuLcUiN9gk7dvZ11hNzyNSmj
         4yXdgjXieXrCP4Vkdp8y4DiTS76381D9WdrJAGLK9L92tV6fONC5oZZiGqMBl9gbb1Di
         dE8C7wA4K6nfErKl9b/OAJ8kx71UW4ZmM+xH1L2iqnfJHYnbXY6UBOVbG79Uekd1Be39
         cFCPVsIVYErUDNvWYDOYqtB9XE9vUjEDjyMq9+m2mc5ThLCtzwmUinPuRayVWV+V0iyK
         W1ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wSwppmQUZ3fnZneBPTx7aK98uf/BwkmmKFDzYQ2ND/s=;
        b=WzkncKEMd8TIWe+uU0+8Ow3Q2gA2VQ6iG6JX+nzrirIemblEg1J6IpHqlYczs9+YQ/
         MVge7ata2dPowLeaK3NREuSWRyTcpxn9J1JBQSquf7+TXZ/Q3cET74rTUnxbhdYW6Gos
         l6pagtw5AntGW544+ytzqptMmJ6TZ3kGWa8S8pIPymF9NJfTStJUAZecqvSjAACnYJNr
         6c8wea4hUJHvzRCTIeh5DIFFx9fM30rMrhOQTzrKK/gf+8R0CSWBHItvl4W+olnPa+Gl
         l+yi/Mix8+TdMGe/dxx1E+GoSiCfZNW6qPmVObfy0SKNUhZrKrILLzQQBjZsJdFT1brw
         l/bw==
X-Gm-Message-State: AHQUAuYODc0qwitmaJFdHbb6G11am5lQNJk01tJ93WUDg1EPDudPI/43
	9JM4a09HK7+Bxvvw/q1uQJB0WLDYPZQ=
X-Received: by 2002:a17:902:29aa:: with SMTP id h39mr5315839plb.6.1550859824172;
        Fri, 22 Feb 2019 10:23:44 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id m68sm7352347pfj.89.2019.02.22.10.23.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 10:23:43 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bhanusree Pola <bhanusreemahesh@gmail.com>
Subject: [PATCH] Staging: fwserial: Add blank line after declarations
Date: Fri, 22 Feb 2019 23:53:23 +0530
Message-Id: <20190222182323.11559-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Adds a blank line after the declarations.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index 3e416f5bbcba..a1b90ea7fcb8 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -1213,6 +1213,7 @@ static int get_serial_info(struct tty_struct *tty,
 			   struct serial_struct *ss)
 {
 	struct fwtty_port *port = tty->driver_data;
+
 	mutex_lock(&port->port.mutex);
 	ss->type =  PORT_UNKNOWN;
 	ss->line =  port->port.tty->index;
-- 
2.17.1


