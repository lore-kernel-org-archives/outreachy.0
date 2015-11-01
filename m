X-GM-THRID: 6212059851141414912
X-Received: by 10.112.151.9 with SMTP id um9mr3229844lbb.19.1446357896245;
        Sat, 31 Oct 2015 23:04:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.147.66 with SMTP id v63ls404897wmd.39.gmail; Sat, 31 Oct
 2015 23:04:55 -0700 (PDT)
X-Received: by 10.28.216.206 with SMTP id p197mr1137905wmg.3.1446357895845;
        Sat, 31 Oct 2015 23:04:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id s134si294634wmb.3.2015.10.31.23.04.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 23:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id f134so36731311wmf.1
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 23:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=dj/2Sd5cizew82/w8sf9WnCrfvXvorp7z7FVMScLhZg=;
        b=SuiqbQpXtVh0yiGyjhouB7zZLhwOhSjYW7D8svV2IXAMvOtZIIOwZAVEFgyJdtUfz8
         UmRK1tHF/TSXT4BKYFmXpSy65mebSpv7U6D/ekIXQfMkL+Y04LhaVNTMj0MYJ3sUwcih
         1PfaZgBR7Gl3aZ1J7skWvEbaQPs5K0O/UUj3b6cyj3y6SXgYrfjiRAOCUQqpLlZ1P1Yt
         Wgihmrezho7HKL4CFYfq2TBpbIblWvJp0phjB8YRj4vDwdICLj9grmCM8cnEU1llFd48
         BRSjMxo0hf0VmSw0JD17fCjr0cpCWm3Y4gbebxZIl0IHcdNW2AAN1SLQLLV076+A9htS
         lFjQ==
X-Received: by 10.28.218.83 with SMTP id r80mr7169665wmg.55.1446357895755;
        Sat, 31 Oct 2015 23:04:55 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id p2sm15447468wjb.21.2015.10.31.23.04.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 23:04:55 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] Staging: fwserial: Remove unused fwtty_bind_console from header
Date: Sun,  1 Nov 2015 11:34:40 +0530
Message-Id: <1446357881-2672-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446357881-2672-1-git-send-email-shraddha.6596@gmail.com>
References: <1446357881-2672-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635AB86.006D,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

fwtty_bind_console is defined in header file but not used.
Thus remove the definition.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/fwserial/fwserial.h | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.h b/drivers/staging/fwserial/fwserial.h
index 787aa4f..8d791ae 100644
--- a/drivers/staging/fwserial/fwserial.h
+++ b/drivers/staging/fwserial/fwserial.h
@@ -344,14 +344,6 @@ extern struct tty_driver *fwtty_driver;
 struct fwtty_port *fwtty_port_get(unsigned index);
 void fwtty_port_put(struct fwtty_port *port);
 
-static inline void fwtty_bind_console(struct fwtty_port *port,
-				      struct fwconsole_ops *fwcon_ops,
-				      void *data)
-{
-	port->con_data = data;
-	port->fwcon_ops = fwcon_ops;
-}
-
 /*
  * Returns the max send async payload size in bytes based on the unit device
  * link speed. Self-limiting asynchronous bandwidth (via reducing the payload)
-- 
2.1.4


