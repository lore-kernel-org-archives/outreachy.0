X-GM-THRID: 6212059851141414912
X-Received: by 10.28.7.78 with SMTP id 75mr1139215wmh.6.1446357900591;
        Sat, 31 Oct 2015 23:05:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.216.138 with SMTP id p132ls392180wmg.3.canary; Sat, 31 Oct
 2015 23:05:00 -0700 (PDT)
X-Received: by 10.28.145.213 with SMTP id t204mr1896785wmd.0.1446357900186;
        Sat, 31 Oct 2015 23:05:00 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id s134si294658wmb.3.2015.10.31.23.05.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2015 23:05:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ll6so32323775wic.0
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2015 23:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=2IwBFgqM8mEYd3/7X7aGzmYoVrKuhlYLfTVtC8wyhYg=;
        b=lAKkwPNSmvxG0XrO6WCDLL3zx51ghJ8mT01WSbanZFEeVetM9n0Ygk6d8NBWkEIBro
         QlvPmcmafdCH93baLzLZcZcF6eIV21E6vegWa6xisfgX7yZ7vCOrKDdx4po2a6ER2kLj
         RfQMX8lqenE1ZWy8GjeQEkgBhAg69acJL6jTISJDyTWKdbx64dLz0U4ycRelPldmOfC4
         NtE8ML1q0sX2upuJ6ZfR/yHydmZ6pztDQ0HQJNqxoCglYYo46xMgSbcNve6pnQrMdQis
         OtjlHHnR9cdMl67zFEavMJ5q0f9ctj3ASbxIkI/jDh/uLWrPXvsTVswWhtelgNwJ1Cib
         qq0A==
X-Received: by 10.194.47.244 with SMTP id g20mr19363370wjn.124.1446357900101;
        Sat, 31 Oct 2015 23:05:00 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id p2sm15447468wjb.21.2015.10.31.23.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sat, 31 Oct 2015 23:04:59 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] Staging: fwserial: Remove wrapper function fwtty_port_put
Date: Sun,  1 Nov 2015 11:34:41 +0530
Message-Id: <1446357881-2672-3-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446357881-2672-1-git-send-email-shraddha.6596@gmail.com>
References: <1446357881-2672-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150202.5635AB8A.003B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Function fwtty_port_put can be replaced with direct calls to
kref_put. Thus drop the wrapper function.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/fwserial/fwserial.c | 16 +++++-----------
 drivers/staging/fwserial/fwserial.h |  1 -
 2 files changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
index b3ea4bb..8f4c3c0 100644
--- a/drivers/staging/fwserial/fwserial.c
+++ b/drivers/staging/fwserial/fwserial.c
@@ -893,12 +893,6 @@ static void fwserial_destroy(struct kref *kref)
 	kfree(serial);
 }
 
-void fwtty_port_put(struct fwtty_port *port)
-{
-	kref_put(&port->serial->kref, fwserial_destroy);
-}
-EXPORT_SYMBOL(fwtty_port_put);
-
 static void fwtty_port_dtr_rts(struct tty_port *tty_port, int on)
 {
 	struct fwtty_port *port = to_port(tty_port, port);
@@ -1075,7 +1069,7 @@ static void fwtty_cleanup(struct tty_struct *tty)
 	struct fwtty_port *port = tty->driver_data;
 
 	tty->driver_data = NULL;
-	fwtty_port_put(port);
+	kref_put(&port->serial->kref, fwserial_destroy);
 }
 
 static int fwtty_install(struct tty_driver *driver, struct tty_struct *tty)
@@ -1087,7 +1081,7 @@ static int fwtty_install(struct tty_driver *driver, struct tty_struct *tty)
 	if (!err)
 		tty->driver_data = port;
 	else
-		fwtty_port_put(port);
+		kref_put(&port->serial->kref, fwserial_destroy);
 	return err;
 }
 
@@ -1100,7 +1094,7 @@ static int fwloop_install(struct tty_driver *driver, struct tty_struct *tty)
 	if (!err)
 		tty->driver_data = port;
 	else
-		fwtty_port_put(port);
+		kref_put(&port->serial->kref, fwserial_destroy);
 	return err;
 }
 
@@ -1482,7 +1476,7 @@ static int fwtty_proc_show(struct seq_file *m, void *v)
 		seq_printf(m, "%2d:", i);
 		if (capable(CAP_SYS_ADMIN))
 			fwtty_proc_show_port(m, port);
-		fwtty_port_put(port);
+		kref_put(&port->serial->kref, fwserial_destroy);
 		seq_puts(m, "\n");
 	}
 	return 0;
@@ -1500,7 +1494,7 @@ static int fwtty_debugfs_stats_show(struct seq_file *m, void *v)
 			seq_printf(m, "%2d:", port->index);
 			fwtty_proc_show_port(m, port);
 			fwtty_debugfs_show_port(m, port);
-			fwtty_port_put(port);
+			kref_put(&port->serial->kref, fwserial_destroy);
 			seq_puts(m, "\n");
 		}
 	}
diff --git a/drivers/staging/fwserial/fwserial.h b/drivers/staging/fwserial/fwserial.h
index 8d791ae..64b2559 100644
--- a/drivers/staging/fwserial/fwserial.h
+++ b/drivers/staging/fwserial/fwserial.h
@@ -342,7 +342,6 @@ static const char loop_dev_name[] = "fwloop";
 extern struct tty_driver *fwtty_driver;
 
 struct fwtty_port *fwtty_port_get(unsigned index);
-void fwtty_port_put(struct fwtty_port *port);
 
 /*
  * Returns the max send async payload size in bytes based on the unit device
-- 
2.1.4


