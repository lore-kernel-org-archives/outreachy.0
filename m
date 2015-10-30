X-GM-THRID: 6211362438184435712
X-Received: by 10.68.195.197 with SMTP id ig5mr5249647pbc.4.1446195514281;
        Fri, 30 Oct 2015 01:58:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.19 with SMTP id b19ls869125qga.42.gmail; Fri, 30 Oct
 2015 01:58:33 -0700 (PDT)
X-Received: by 10.31.174.146 with SMTP id x140mr5239657vke.3.1446195513519;
        Fri, 30 Oct 2015 01:58:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si613357pac.2.2015.10.30.01.58.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 01:58:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy1so62614780pad.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 01:58:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ut40iSkmyEsBK0Dry9wl4kHAf1NhxLlNKQP4cmpxkjY=;
        b=vBQJJq6/x5h88jCjXX8AsVgcakXm20vvRqR3fyjlir7kuvw+PeXaTx/9rx2bdhJvcp
         5Me20LH5hFU05H5IQhu5LUWqUYe9tbS8q+1a4n126im7ZHSOKAm9zJSmhOmYUrRsT6Fz
         SmJlLguLKQvbz5UdSNKeiPfMT5/zCsnPyjzYzVbxMSXQOgUB/Aet4f4qAm8pcHFwksmK
         rfvpJ0do8idgaDNFys5gWm6mfSraprA2Z17+uZpLGhmNsviu8r8cqEp4yCrlnY+pCxVj
         A24VzVjZpY2jrL4gcVbcoBwVYmnf7BfEzjrnIe6nTycpUoIRaT80iyzg5ilHy3H9JoPR
         Xn+g==
X-Received: by 10.68.178.1 with SMTP id cu1mr7285381pbc.99.1446195513052;
        Fri, 30 Oct 2015 01:58:33 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.173.100.45])
        by smtp.gmail.com with ESMTPSA id wy8sm6871309pab.8.2015.10.30.01.58.31
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 01:58:32 -0700 (PDT)
Date: Fri, 30 Oct 2015 14:28:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org
Subject: [PATCH] char: mmtimer: Replace timespec with timespec64
Message-ID: <20151030085827.GA21224@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

32 bit systems using struct timespec will overflow in y2038, so as
part of y2038 cleanup replace struct timespec with struct timespec64.

This patch replaces struct itimerspec with struct itimerspec64.

This patch also replaces getnstimeofday() and timespec_to_ns() with 
ktime_get_real_ns() to return the current time in nanoseconds.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/char/mmtimer.c | 34 +++++++++++++++-------------------
 1 file changed, 15 insertions(+), 19 deletions(-)

diff --git a/drivers/char/mmtimer.c b/drivers/char/mmtimer.c
index 3d6c067..42a64e5 100644
--- a/drivers/char/mmtimer.c
+++ b/drivers/char/mmtimer.c
@@ -30,7 +30,8 @@
 #include <linux/miscdevice.h>
 #include <linux/posix-timers.h>
 #include <linux/interrupt.h>
-#include <linux/time.h>
+#include <linux/ktime.h>
+#include <linux/time64.h>
 #include <linux/math64.h>
 #include <linux/mutex.h>
 #include <linux/slab.h>
@@ -468,28 +469,25 @@ static struct miscdevice mmtimer_miscdev = {
 	&mmtimer_fops
 };
 
-static struct timespec sgi_clock_offset;
-static int sgi_clock_period;
-
 /*
  * Posix Timer Interface
  */
 
-static struct timespec sgi_clock_offset;
+static struct timespec64 sgi_clock_offset;
 static int sgi_clock_period;
 
-static int sgi_clock_get(clockid_t clockid, struct timespec *tp)
+static int sgi_clock_get(clockid_t clockid, struct timespec64 *tp)
 {
 	u64 nsec;
 
 	nsec = rtc_time() * sgi_clock_period
 			+ sgi_clock_offset.tv_nsec;
-	*tp = ns_to_timespec(nsec);
+	*tp = ns_to_timespec64(nsec);
 	tp->tv_sec += sgi_clock_offset.tv_sec;
 	return 0;
 };
 
-static int sgi_clock_set(const clockid_t clockid, const struct timespec *tp)
+static int sgi_clock_set(const clockid_t clockid, const struct timespec64 *tp)
 {
 
 	u64 nsec;
@@ -657,7 +655,7 @@ static int sgi_timer_del(struct k_itimer *timr)
 }
 
 /* Assumption: it_lock is already held with irq's disabled */
-static void sgi_timer_get(struct k_itimer *timr, struct itimerspec *cur_setting)
+static void sgi_timer_get(struct k_itimer *timr, struct itimerspec64 *cur_setting)
 {
 
 	if (timr->it.mmtimer.clock == TIMER_OFF) {
@@ -668,14 +666,14 @@ static void sgi_timer_get(struct k_itimer *timr, struct itimerspec *cur_setting)
 		return;
 	}
 
-	cur_setting->it_interval = ns_to_timespec(timr->it.mmtimer.incr * sgi_clock_period);
-	cur_setting->it_value = ns_to_timespec((timr->it.mmtimer.expires - rtc_time()) * sgi_clock_period);
+	cur_setting->it_interval = ns_to_timespec64(timr->it.mmtimer.incr * sgi_clock_period);
+	cur_setting->it_value = ns_to_timespec64((timr->it.mmtimer.expires - rtc_time()) * sgi_clock_period);
 }
 
 
 static int sgi_timer_set(struct k_itimer *timr, int flags,
-	struct itimerspec * new_setting,
-	struct itimerspec * old_setting)
+	struct itimerspec64 * new_setting,
+	struct itimerspec64 * old_setting)
 {
 	unsigned long when, period, irqflags;
 	int err = 0;
@@ -687,8 +685,8 @@ static int sgi_timer_set(struct k_itimer *timr, int flags,
 		sgi_timer_get(timr, old_setting);
 
 	sgi_timer_del(timr);
-	when = timespec_to_ns(&new_setting->it_value);
-	period = timespec_to_ns(&new_setting->it_interval);
+	when = timespec64_to_ns(&new_setting->it_value);
+	period = timespec64_to_ns(&new_setting->it_interval);
 
 	if (when == 0)
 		/* Clear timer */
@@ -699,11 +697,9 @@ static int sgi_timer_set(struct k_itimer *timr, int flags,
 		return -ENOMEM;
 
 	if (flags & TIMER_ABSTIME) {
-		struct timespec n;
 		unsigned long now;
 
-		getnstimeofday(&n);
-		now = timespec_to_ns(&n);
+		now = ktime_get_real_ns();
 		if (when > now)
 			when -= now;
 		else
@@ -765,7 +761,7 @@ static int sgi_timer_set(struct k_itimer *timr, int flags,
 	return err;
 }
 
-static int sgi_clock_getres(const clockid_t which_clock, struct timespec *tp)
+static int sgi_clock_getres(const clockid_t which_clock, struct timespec64 *tp)
 {
 	tp->tv_sec = 0;
 	tp->tv_nsec = sgi_clock_period;
-- 
1.9.1


