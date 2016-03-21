X-GM-THRID: 6264494642656444416
X-Received: by 10.176.3.117 with SMTP id 108mr1442750uat.7.1458566319941;
        Mon, 21 Mar 2016 06:18:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.135 with SMTP id y7ls68661ota.26.gmail; Mon, 21 Mar
 2016 06:18:39 -0700 (PDT)
X-Received: by 10.182.60.201 with SMTP id j9mr22388070obr.46.1458566319540;
        Mon, 21 Mar 2016 06:18:39 -0700 (PDT)
Return-Path: <lesliebklein@gmail.com>
Received: from mail-qk0-x233.google.com (mail-qk0-x233.google.com. [2607:f8b0:400d:c09::233])
        by gmr-mx.google.com with ESMTPS id b196si839026vkf.1.2016.03.21.06.18.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 06:18:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of lesliebklein@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) client-ip=2607:f8b0:400d:c09::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of lesliebklein@gmail.com designates 2607:f8b0:400d:c09::233 as permitted sender) smtp.mailfrom=lesliebklein@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x233.google.com with SMTP id p130so25071603qke.1
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 06:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NNEh7lhzPsEZtozDb0UJL2kBjcOd0VwePl8XfMG54XM=;
        b=xRdLHNQgU5yuslJUoOw8XOJrkOJn3lpEtHxrpLYdsbso7GNIeBV8Ej3OfWyzHg2LI+
         MyME8hTB/BINDoeQSZCRKOEkW+4ErJBsRYH329yAJXbSp2drGCHzfBgUL9EKhHbifMRi
         bEDupoMEArtoqcZwbx5Eq/4d8vZn21+d4G+69VcbIzWC8R9QQlRg6EQCsAEl9vPMxJJD
         8RDrcWKQpKxW/LQtWXi739KWiDdGLnZtx00i1OFS8qvhNF0on9LxO/Il5Hv/kTZPrS7h
         6sdDJe9rC/1bFFAJ+D68+BZWJD7HddCpMJKHETXZXBeZ4D2j1IkmugwK9v89SfzKvoo+
         TOZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NNEh7lhzPsEZtozDb0UJL2kBjcOd0VwePl8XfMG54XM=;
        b=bO5EK1fpvp+1DoKpSOo+G79Z7xTVOh/TlZAjZSZtyoS17UmZrkJg4EyWPY8xXOPJbt
         tvUlEcrF5qbosCIfu+L3mI52Cf5NNcOTmVwFWrq6JNqMzE0p4lr3uUmtaJwEi43Y9378
         X2yDI6VNzWeFAxANdheCuhlfrLr0OJw2Dc3vzhDFpN4LC5NDJ+fLnyZ3s62SS4muxVcn
         AU/jRdFv99XwSJj6NpeMfbo87NxFEKXlzVjzJZm/lOrgNlnAaLkOav5YKrrLWjIiEx9K
         xdFacgsrdI8KhyWe/sB/beXllwTiRyjOmEcBY3MrC9ojgvxkyPSlNkl+i8P09e7tuWO7
         mUqw==
X-Gm-Message-State: AD7BkJKbTZbtH/gsTICiMwJF589VPLijFpivbTNZAOoCxKuvD0Rf7wP4OOZZ7lnAvukeGg==
X-Received: by 10.55.76.134 with SMTP id z128mr40199007qka.90.1458566319242;
        Mon, 21 Mar 2016 06:18:39 -0700 (PDT)
Return-Path: <lesliebklein@gmail.com>
Received: from lbklein-Lemur (c-24-0-90-100.hsd1.nj.comcast.net. [24.0.90.100])
        by smtp.gmail.com with ESMTPSA id q198sm12121063qhb.16.2016.03.21.06.18.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 06:18:38 -0700 (PDT)
Date: Mon, 21 Mar 2016 09:18:35 -0400
From: Leslie Klein <lesliebklein@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: comedi: comedi_fops: Replace 'unsigned' with
 'unsigned int'
Message-ID: <20160321131835.GA10743@lbklein-Lemur>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch warning:
Prefer 'unsigned int' to bare use of 'unsigned'
in file comedi_fops.c

Signed-off-by: Leslie Klein <lesliebklein@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 48 ++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index 7c7b477..4bdea20 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -186,7 +186,7 @@ static bool comedi_clear_board_dev(struct comedi_device *dev)
 	return cleared;
 }
 
-static struct comedi_device *comedi_clear_board_minor(unsigned minor)
+static struct comedi_device *comedi_clear_board_minor(unsigned int minor)
 {
 	struct comedi_device *dev;
 
@@ -210,7 +210,7 @@ static void comedi_free_board_dev(struct comedi_device *dev)
 }
 
 static struct comedi_subdevice
-*comedi_subdevice_from_minor(const struct comedi_device *dev, unsigned minor)
+*comedi_subdevice_from_minor(const struct comedi_device *dev, unsigned int minor)
 {
 	struct comedi_subdevice *s;
 	unsigned int i = minor - COMEDI_NUM_BOARD_MINORS;
@@ -223,7 +223,7 @@ static struct comedi_subdevice
 	return s;
 }
 
-static struct comedi_device *comedi_dev_get_from_board_minor(unsigned minor)
+static struct comedi_device *comedi_dev_get_from_board_minor(unsigned int minor)
 {
 	struct comedi_device *dev;
 
@@ -233,7 +233,7 @@ static struct comedi_device *comedi_dev_get_from_board_minor(unsigned minor)
 	return dev;
 }
 
-static struct comedi_device *comedi_dev_get_from_subdevice_minor(unsigned minor)
+static struct comedi_device *comedi_dev_get_from_subdevice_minor(unsigned int minor)
 {
 	struct comedi_device *dev;
 	struct comedi_subdevice *s;
@@ -258,7 +258,7 @@ static struct comedi_device *comedi_dev_get_from_subdevice_minor(unsigned minor)
  * reference incremented.  Return NULL if no COMEDI device exists with the
  * specified minor device number.
  */
-struct comedi_device *comedi_dev_get_from_minor(unsigned minor)
+struct comedi_device *comedi_dev_get_from_minor(unsigned int minor)
 {
 	if (minor < COMEDI_NUM_BOARD_MINORS)
 		return comedi_dev_get_from_board_minor(minor);
@@ -342,7 +342,7 @@ static struct comedi_subdevice *comedi_file_write_subdevice(struct file *file)
 }
 
 static int resize_async_buffer(struct comedi_device *dev,
-			       struct comedi_subdevice *s, unsigned new_size)
+			       struct comedi_subdevice *s, unsigned int new_size)
 {
 	struct comedi_async *async = s->async;
 	int retval;
@@ -616,19 +616,19 @@ static struct attribute *comedi_dev_attrs[] = {
 ATTRIBUTE_GROUPS(comedi_dev);
 
 static void __comedi_clear_subdevice_runflags(struct comedi_subdevice *s,
-					      unsigned bits)
+					      unsigned int bits)
 {
 	s->runflags &= ~bits;
 }
 
 static void __comedi_set_subdevice_runflags(struct comedi_subdevice *s,
-					    unsigned bits)
+					    unsigned int bits)
 {
 	s->runflags |= bits;
 }
 
 static void comedi_update_subdevice_runflags(struct comedi_subdevice *s,
-					     unsigned mask, unsigned bits)
+					     unsigned int mask, unsigned int bits)
 {
 	unsigned long flags;
 
@@ -638,15 +638,15 @@ static void comedi_update_subdevice_runflags(struct comedi_subdevice *s,
 	spin_unlock_irqrestore(&s->spin_lock, flags);
 }
 
-static unsigned __comedi_get_subdevice_runflags(struct comedi_subdevice *s)
+static unsigned int __comedi_get_subdevice_runflags(struct comedi_subdevice *s)
 {
 	return s->runflags;
 }
 
-static unsigned comedi_get_subdevice_runflags(struct comedi_subdevice *s)
+static unsigned int comedi_get_subdevice_runflags(struct comedi_subdevice *s)
 {
 	unsigned long flags;
-	unsigned runflags;
+	unsigned int runflags;
 
 	spin_lock_irqsave(&s->spin_lock, flags);
 	runflags = __comedi_get_subdevice_runflags(s);
@@ -654,12 +654,12 @@ static unsigned comedi_get_subdevice_runflags(struct comedi_subdevice *s)
 	return runflags;
 }
 
-static bool comedi_is_runflags_running(unsigned runflags)
+static bool comedi_is_runflags_running(unsigned int runflags)
 {
 	return runflags & COMEDI_SRF_RUNNING;
 }
 
-static bool comedi_is_runflags_in_error(unsigned runflags)
+static bool comedi_is_runflags_in_error(unsigned int runflags)
 {
 	return runflags & COMEDI_SRF_ERROR;
 }
@@ -673,7 +673,7 @@ static bool comedi_is_runflags_in_error(unsigned runflags)
  */
 bool comedi_is_subdevice_running(struct comedi_subdevice *s)
 {
-	unsigned runflags = comedi_get_subdevice_runflags(s);
+	unsigned int runflags = comedi_get_subdevice_runflags(s);
 
 	return comedi_is_runflags_running(runflags);
 }
@@ -681,14 +681,14 @@ EXPORT_SYMBOL_GPL(comedi_is_subdevice_running);
 
 static bool __comedi_is_subdevice_running(struct comedi_subdevice *s)
 {
-	unsigned runflags = __comedi_get_subdevice_runflags(s);
+	unsigned int runflags = __comedi_get_subdevice_runflags(s);
 
 	return comedi_is_runflags_running(runflags);
 }
 
 bool comedi_can_auto_free_spriv(struct comedi_subdevice *s)
 {
-	unsigned runflags = __comedi_get_subdevice_runflags(s);
+	unsigned int runflags = __comedi_get_subdevice_runflags(s);
 
 	return runflags & COMEDI_SRF_FREE_SPRIV;
 }
@@ -2038,7 +2038,7 @@ static int do_setwsubd_ioctl(struct comedi_device *dev, unsigned long arg,
 static long comedi_unlocked_ioctl(struct file *file, unsigned int cmd,
 				  unsigned long arg)
 {
-	unsigned minor = iminor(file_inode(file));
+	unsigned int minor = iminor(file_inode(file));
 	struct comedi_file *cfp = file->private_data;
 	struct comedi_device *dev = cfp->dev;
 	int rc;
@@ -2342,7 +2342,7 @@ static ssize_t comedi_write(struct file *file, const char __user *buf,
 
 	add_wait_queue(&async->wait_head, &wait);
 	while (count == 0 && !retval) {
-		unsigned runflags;
+		unsigned int runflags;
 		unsigned int wp, n1, n2;
 
 		set_current_state(TASK_INTERRUPTIBLE);
@@ -2485,7 +2485,7 @@ static ssize_t comedi_read(struct file *file, char __user *buf, size_t nbytes,
 		n = min_t(size_t, m, nbytes);
 
 		if (n == 0) {
-			unsigned runflags = comedi_get_subdevice_runflags(s);
+			unsigned int runflags = comedi_get_subdevice_runflags(s);
 
 			if (!comedi_is_runflags_running(runflags)) {
 				if (comedi_is_runflags_in_error(runflags))
@@ -2573,7 +2573,7 @@ out:
 
 static int comedi_open(struct inode *inode, struct file *file)
 {
-	const unsigned minor = iminor(inode);
+	const unsigned int minor = iminor(inode);
 	struct comedi_file *cfp;
 	struct comedi_device *dev = comedi_dev_get_from_minor(minor);
 	int rc;
@@ -2733,7 +2733,7 @@ struct comedi_device *comedi_alloc_board_minor(struct device *hardware_device)
 {
 	struct comedi_device *dev;
 	struct device *csdev;
-	unsigned i;
+	unsigned int i;
 
 	dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 	if (!dev)
@@ -2791,7 +2791,7 @@ int comedi_alloc_subdevice_minor(struct comedi_subdevice *s)
 {
 	struct comedi_device *dev = s->device;
 	struct device *csdev;
-	unsigned i;
+	unsigned int i;
 
 	mutex_lock(&comedi_subdevice_minor_table_lock);
 	for (i = 0; i < COMEDI_NUM_SUBDEVICE_MINORS; ++i) {
@@ -2841,7 +2841,7 @@ void comedi_free_subdevice_minor(struct comedi_subdevice *s)
 static void comedi_cleanup_board_minors(void)
 {
 	struct comedi_device *dev;
-	unsigned i;
+	unsigned int i;
 
 	for (i = 0; i < COMEDI_NUM_BOARD_MINORS; i++) {
 		dev = comedi_clear_board_minor(i);
-- 
1.9.1


