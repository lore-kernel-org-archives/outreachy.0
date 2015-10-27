X-GM-THRID: 6210404372409483264
X-Received: by 10.182.87.167 with SMTP id az7mr2877401obb.18.1445972447240;
        Tue, 27 Oct 2015 12:00:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.135 with SMTP id j7ls1388376igx.17.gmail; Tue, 27 Oct
 2015 12:00:46 -0700 (PDT)
X-Received: by 10.107.137.223 with SMTP id t92mr16739949ioi.22.1445972446764;
        Tue, 27 Oct 2015 12:00:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id pe1si4422319pac.2.2015.10.27.12.00.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 12:00:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id z6so230242499pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 12:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=GFbDp0LNA62X37regAszhOcZlCv5seAVUsupsiDwe9A=;
        b=OxWKPSF2zXXPqUgUNeMyNqjXG9N6bJ5EToaHFo7X11TJmLrKQMIx1wW4KNCSu7zMh5
         xNNGbRNCx1hjxBqvfBzUur97FPz4Mh9JF5Zrsaq53c4Y7qNpsO0i7gdBskuBVZvUPfb/
         EKpvqgU4Ede8M0gn6cH7Bk09XeMBPEWYcGBpFOBpS4WsZzhypNSVo7V9+Uq5l3ry+wSx
         bESF1C3gKthGf9RxpiC8jhL+deNBceTCnolg19dT72HmWGk31OuJUdjg/YJYp0RdfIzV
         FllqGHatGDzDTcJQCxJVHWYzro0K0mslY1tCKuFhlUF6ck/yzBQTsq18ICQRmgjiRbuN
         9LLg==
X-Received: by 10.66.164.201 with SMTP id ys9mr29780651pab.50.1445972446601;
        Tue, 27 Oct 2015 12:00:46 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.134.91])
        by smtp.gmail.com with ESMTPSA id tn2sm41126216pac.0.2015.10.27.12.00.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 12:00:46 -0700 (PDT)
Date: Wed, 28 Oct 2015 00:30:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] scsi: bfa: bfa_port: Remove struct timeval
Message-ID: <20151027190041.GA12697@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using 'struct timeval' will break in the year 2038, so 
we modify the code appropriately. 

This patch replaces the use of struct timeval and do_gettimeofday() 
with 64 bit ktime_get_real_seconds().

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/scsi/bfa/bfa_port.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/scsi/bfa/bfa_port.c b/drivers/scsi/bfa/bfa_port.c
index 8ea7697..b30718d 100644
--- a/drivers/scsi/bfa/bfa_port.c
+++ b/drivers/scsi/bfa/bfa_port.c
@@ -15,6 +15,7 @@
  * General Public License for more details.
  */
 
+#include <linux/ktime.h>
 #include "bfad_drv.h"
 #include "bfa_defs_svc.h"
 #include "bfa_port.h"
@@ -95,14 +96,12 @@ bfa_port_get_stats_isr(struct bfa_port_s *port, bfa_status_t status)
 	port->stats_busy = BFA_FALSE;
 
 	if (status == BFA_STATUS_OK) {
-		struct timeval tv;
-
 		memcpy(port->stats, port->stats_dma.kva,
 		       sizeof(union bfa_port_stats_u));
 		bfa_port_stats_swap(port, port->stats);
 
-		do_gettimeofday(&tv);
-		port->stats->fc.secs_reset = tv.tv_sec - port->stats_reset_time;
+		port->stats->fc.secs_reset = ktime_get_real_seconds() -
+							port->stats_reset_time;
 	}
 
 	if (port->stats_cbfn) {
@@ -123,16 +122,13 @@ bfa_port_get_stats_isr(struct bfa_port_s *port, bfa_status_t status)
 static void
 bfa_port_clear_stats_isr(struct bfa_port_s *port, bfa_status_t status)
 {
-	struct timeval tv;
-
 	port->stats_status = status;
 	port->stats_busy   = BFA_FALSE;
 
 	/*
 	* re-initialize time stamp for stats reset
 	*/
-	do_gettimeofday(&tv);
-	port->stats_reset_time = tv.tv_sec;
+	port->stats_reset_time = ktime_get_real_seconds();
 
 	if (port->stats_cbfn) {
 		port->stats_cbfn(port->stats_cbarg, status);
@@ -470,8 +466,6 @@ void
 bfa_port_attach(struct bfa_port_s *port, struct bfa_ioc_s *ioc,
 		 void *dev, struct bfa_trc_mod_s *trcmod)
 {
-	struct timeval tv;
-
 	WARN_ON(!port);
 
 	port->dev    = dev;
@@ -493,8 +487,7 @@ bfa_port_attach(struct bfa_port_s *port, struct bfa_ioc_s *ioc,
 	/*
 	 * initialize time stamp for stats reset
 	 */
-	do_gettimeofday(&tv);
-	port->stats_reset_time = tv.tv_sec;
+	port->stats_reset_time = ktime_get_real_seconds();
 
 	bfa_trc(port, 0);
 }
-- 
1.9.1


