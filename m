X-GM-THRID: 6210130290572001280
X-Received: by 10.182.196.34 with SMTP id ij2mr3917018obc.24.1446679757163;
        Wed, 04 Nov 2015 15:29:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.28.9 with SMTP id x9ls570683obg.71.gmail; Wed, 04 Nov 2015
 15:29:16 -0800 (PST)
X-Received: by 10.182.52.132 with SMTP id t4mr3692495obo.16.1446679756645;
        Wed, 04 Nov 2015 15:29:16 -0800 (PST)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id sm2si391647pab.0.2015.11.04.15.29.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Nov 2015 15:29:16 -0800 (PST)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fh17so66635282pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Nov 2015 15:29:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=JurOZAYGGxOw7SaloppRyqESfedv3qZUCdzKxnQdTF8=;
        b=CQlkpVL/jUaeOYCqQUXLEvSXk2zCAxXg6VzzoWhKKgLH7QUJgm/IXTXBZ0WP1Fll3Y
         5LGZt2g+fLGA4tZzRKmSkeJbk7coxvJllxD5xQXheQMaHoicVfvziXQgMPu9p7psPmSc
         bYPjCiaFe/gg4n/oo5bn6xbIKo+vQty9oSyJ6n4xzHbZ0kTy5/vLybCcp7UXuJt2fj0Y
         If2ow+MZFG37bGfbb+37pgEffVjlCvtGxGc71hrZKjSUxbNsN1tOOTersRUlB1nq+Bm0
         Es/xd2206NF6Pqm0GIKmMh4j46gkOEcVU1hUVjdYzkHmQE0b4jE4w9sVE16GMEbZ50r7
         A9rg==
X-Received: by 10.68.111.101 with SMTP id ih5mr5460799pbb.84.1446679756472;
        Wed, 04 Nov 2015 15:29:16 -0800 (PST)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu.hsd1.ca.comcast.net (c-73-162-232-39.hsd1.ca.comcast.net. [73.162.232.39])
        by smtp.gmail.com with ESMTPSA id qd2sm4053339pbb.68.2015.11.04.15.29.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Nov 2015 15:29:15 -0800 (PST)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: gregkh@linuxfoundation.org,
	linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	y2038@lists.linaro.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] usb: misc: usbtest: Remove timeval usage
Date: Wed,  4 Nov 2015 15:29:11 -0800
Message-Id: <1446679751-20876-1-git-send-email-deepa.kernel@gmail.com>
X-Mailer: git-send-email 1.9.1

timeval is deprecated and not y2038 safe.  Its size also changes according
to 32 bit/ 64 bit compilation.  Replace it with 32 and 64 bit versions of
its individual fields, giving two ioctls with different code values.
The two ioctls are necessary to maintain the 32 bit and 64 bit userspace
compatibility with a 64/32 bit kernel.

Change unsigned to __u32 types for a definitive userspace interface.
This is in accordance with the psABI that the unsigned type is always
32 bits.

Also use motonic timer instead of real time to ensure positive delta
values.

Refactor usbtest_ioctl for readability to isolate the handling of the
testing timing measurement.

The official testusb userspace tool can be changed in a separate patch
to reflect the __u32 changes as well. It can use the usbtest_param_32
struct, since 32 bit seconds is long enough for test durations.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
 drivers/usb/misc/usbtest.c | 229 +++++++++++++++++++++++++++++----------------
 1 file changed, 147 insertions(+), 82 deletions(-)

diff --git a/drivers/usb/misc/usbtest.c b/drivers/usb/misc/usbtest.c
index 637f3f7..31f5f49 100644
--- a/drivers/usb/misc/usbtest.c
+++ b/drivers/usb/misc/usbtest.c
@@ -22,18 +22,42 @@ static void complicated_callback(struct urb *urb);
 /*-------------------------------------------------------------------------*/
 
 /* FIXME make these public somewhere; usbdevfs.h? */
-struct usbtest_param {
+
+/* Parameter for usbtest driver. */
+struct usbtest_param_32 {
 	/* inputs */
-	unsigned		test_num;	/* 0..(TEST_CASES-1) */
-	unsigned		iterations;
-	unsigned		length;
-	unsigned		vary;
-	unsigned		sglen;
+	__u32		test_num;	/* 0..(TEST_CASES-1) */
+	__u32		iterations;
+	__u32		length;
+	__u32		vary;
+	__u32		sglen;
 
 	/* outputs */
-	struct timeval		duration;
+	__s32		duration_sec;
+	__s32		duration_usec;
 };
-#define USBTEST_REQUEST	_IOWR('U', 100, struct usbtest_param)
+
+/*
+ * Compat parameter to the usbtest driver.
+ * This supports older user space binaries compiled with 64 bit compiler.
+ */
+struct usbtest_param_64 {
+	/* inputs */
+	__u32		test_num;	/* 0..(TEST_CASES-1) */
+	__u32		iterations;
+	__u32		length;
+	__u32		vary;
+	__u32		sglen;
+
+	/* outputs */
+	__s64		duration_sec;
+	__s64		duration_usec;
+};
+
+/* IOCTL interface to the driver. */
+#define USBTEST_REQUEST_32    _IOWR('U', 100, struct usbtest_param_32)
+/* COMPAT IOCTL interface to the driver. */
+#define USBTEST_REQUEST_64    _IOWR('U', 100, struct usbtest_param_64)
 
 /*-------------------------------------------------------------------------*/
 
@@ -1030,7 +1054,7 @@ struct ctrl_ctx {
 	unsigned		pending;
 	int			status;
 	struct urb		**urb;
-	struct usbtest_param	*param;
+	struct usbtest_param_32	*param;
 	int			last;
 };
 
@@ -1155,7 +1179,7 @@ error:
 }
 
 static int
-test_ctrl_queue(struct usbtest_dev *dev, struct usbtest_param *param)
+test_ctrl_queue(struct usbtest_dev *dev, struct usbtest_param_32 *param)
 {
 	struct usb_device	*udev = testdev_to_usbdev(dev);
 	struct urb		**urb;
@@ -1930,7 +1954,7 @@ static struct urb *iso_alloc_urb(
 }
 
 static int
-test_queue(struct usbtest_dev *dev, struct usbtest_param *param,
+test_queue(struct usbtest_dev *dev, struct usbtest_param_32 *param,
 		int pipe, struct usb_endpoint_descriptor *desc, unsigned offset)
 {
 	struct transfer_context	context;
@@ -2049,81 +2073,20 @@ static int test_unaligned_bulk(
 	return retval;
 }
 
-/*-------------------------------------------------------------------------*/
-
-/* We only have this one interface to user space, through usbfs.
- * User mode code can scan usbfs to find N different devices (maybe on
- * different busses) to use when testing, and allocate one thread per
- * test.  So discovery is simplified, and we have no device naming issues.
- *
- * Don't use these only as stress/load tests.  Use them along with with
- * other USB bus activity:  plugging, unplugging, mousing, mp3 playback,
- * video capture, and so on.  Run different tests at different times, in
- * different sequences.  Nothing here should interact with other devices,
- * except indirectly by consuming USB bandwidth and CPU resources for test
- * threads and request completion.  But the only way to know that for sure
- * is to test when HC queues are in use by many devices.
- *
- * WARNING:  Because usbfs grabs udev->dev.sem before calling this ioctl(),
- * it locks out usbcore in certain code paths.  Notably, if you disconnect
- * the device-under-test, hub_wq will wait block forever waiting for the
- * ioctl to complete ... so that usb_disconnect() can abort the pending
- * urbs and then call usbtest_disconnect().  To abort a test, you're best
- * off just killing the userspace task and waiting for it to exit.
- */
-
+/* Run tests. */
 static int
-usbtest_ioctl(struct usb_interface *intf, unsigned int code, void *buf)
+usbtest_do_ioctl(struct usb_interface *intf, struct usbtest_param_32 *param)
 {
 	struct usbtest_dev	*dev = usb_get_intfdata(intf);
 	struct usb_device	*udev = testdev_to_usbdev(dev);
-	struct usbtest_param	*param = buf;
-	int			retval = -EOPNOTSUPP;
 	struct urb		*urb;
 	struct scatterlist	*sg;
 	struct usb_sg_request	req;
-	struct timeval		start;
 	unsigned		i;
-
-	/* FIXME USBDEVFS_CONNECTINFO doesn't say how fast the device is. */
-
-	pattern = mod_pattern;
-
-	if (code != USBTEST_REQUEST)
-		return -EOPNOTSUPP;
+	int	retval = -EOPNOTSUPP;
 
 	if (param->iterations <= 0)
 		return -EINVAL;
-
-	if (param->sglen > MAX_SGLEN)
-		return -EINVAL;
-
-	if (mutex_lock_interruptible(&dev->lock))
-		return -ERESTARTSYS;
-
-	/* FIXME: What if a system sleep starts while a test is running? */
-
-	/* some devices, like ez-usb default devices, need a non-default
-	 * altsetting to have any active endpoints.  some tests change
-	 * altsettings; force a default so most tests don't need to check.
-	 */
-	if (dev->info->alt >= 0) {
-		int	res;
-
-		if (intf->altsetting->desc.bInterfaceNumber) {
-			mutex_unlock(&dev->lock);
-			return -ENODEV;
-		}
-		res = set_altsetting(dev, dev->info->alt);
-		if (res) {
-			dev_err(&intf->dev,
-					"set altsetting to %d failed, %d\n",
-					dev->info->alt, res);
-			mutex_unlock(&dev->lock);
-			return res;
-		}
-	}
-
 	/*
 	 * Just a bunch of test cases that every HCD is expected to handle.
 	 *
@@ -2133,7 +2096,6 @@ usbtest_ioctl(struct usb_interface *intf, unsigned int code, void *buf)
 	 * FIXME add more tests!  cancel requests, verify the data, control
 	 * queueing, concurrent read+write threads, and so on.
 	 */
-	do_gettimeofday(&start);
 	switch (param->test_num) {
 
 	case 0:
@@ -2548,13 +2510,116 @@ usbtest_ioctl(struct usb_interface *intf, unsigned int code, void *buf)
 				dev->in_pipe, NULL, 0);
 		break;
 	}
-	do_gettimeofday(&param->duration);
-	param->duration.tv_sec -= start.tv_sec;
-	param->duration.tv_usec -= start.tv_usec;
-	if (param->duration.tv_usec < 0) {
-		param->duration.tv_usec += 1000 * 1000;
-		param->duration.tv_sec -= 1;
+	return retval;
+}
+
+/*-------------------------------------------------------------------------*/
+
+/* We only have this one interface to user space, through usbfs.
+ * User mode code can scan usbfs to find N different devices (maybe on
+ * different busses) to use when testing, and allocate one thread per
+ * test.  So discovery is simplified, and we have no device naming issues.
+ *
+ * Don't use these only as stress/load tests.  Use them along with with
+ * other USB bus activity:  plugging, unplugging, mousing, mp3 playback,
+ * video capture, and so on.  Run different tests at different times, in
+ * different sequences.  Nothing here should interact with other devices,
+ * except indirectly by consuming USB bandwidth and CPU resources for test
+ * threads and request completion.  But the only way to know that for sure
+ * is to test when HC queues are in use by many devices.
+ *
+ * WARNING:  Because usbfs grabs udev->dev.sem before calling this ioctl(),
+ * it locks out usbcore in certain code paths.  Notably, if you disconnect
+ * the device-under-test, hub_wq will wait block forever waiting for the
+ * ioctl to complete ... so that usb_disconnect() can abort the pending
+ * urbs and then call usbtest_disconnect().  To abort a test, you're best
+ * off just killing the userspace task and waiting for it to exit.
+ */
+
+static int
+usbtest_ioctl(struct usb_interface *intf, unsigned int code, void *buf)
+{
+
+	struct usbtest_dev	*dev = usb_get_intfdata(intf);
+	struct usbtest_param_64 *param_64 = buf;
+	struct usbtest_param_32 temp;
+	struct usbtest_param_32 *param_32 = buf;
+	struct timespec64 start;
+	struct timespec64 end;
+	struct timespec64 duration;
+	int retval = -EOPNOTSUPP;
+
+	/* FIXME USBDEVFS_CONNECTINFO doesn't say how fast the device is. */
+
+	pattern = mod_pattern;
+
+	if (mutex_lock_interruptible(&dev->lock))
+		return -ERESTARTSYS;
+
+	/* FIXME: What if a system sleep starts while a test is running? */
+
+	/* some devices, like ez-usb default devices, need a non-default
+	 * altsetting to have any active endpoints.  some tests change
+	 * altsettings; force a default so most tests don't need to check.
+	 */
+	if (dev->info->alt >= 0) {
+		if (intf->altsetting->desc.bInterfaceNumber) {
+			retval = -ENODEV;
+			goto free_mutex;
+		}
+		retval = set_altsetting(dev, dev->info->alt);
+		if (retval) {
+			dev_err(&intf->dev,
+					"set altsetting to %d failed, %d\n",
+					dev->info->alt, retval);
+			goto free_mutex;
+		}
+	}
+
+	switch (code) {
+	case USBTEST_REQUEST_64:
+		temp.test_num = param_64->test_num;
+		temp.iterations = param_64->iterations;
+		temp.length = param_64->length;
+		temp.sglen = param_64->sglen;
+		temp.vary = param_64->vary;
+		param_32 = &temp;
+		break;
+
+	case USBTEST_REQUEST_32:
+		break;
+
+	default:
+		retval = -EOPNOTSUPP;
+		goto free_mutex;
+	}
+
+	ktime_get_ts64(&start);
+
+	retval = usbtest_do_ioctl(intf, param_32);
+	if (retval)
+		goto free_mutex;
+
+	ktime_get_ts64(&end);
+
+	duration = timespec64_sub(end, start);
+
+	temp.duration_sec = duration.tv_sec;
+	temp.duration_usec = duration.tv_nsec/NSEC_PER_USEC;
+
+	switch (code) {
+	case USBTEST_REQUEST_32:
+		param_32->duration_sec = temp.duration_sec;
+		param_32->duration_usec = temp.duration_usec;
+		break;
+
+	case USBTEST_REQUEST_64:
+		param_64->duration_sec = temp.duration_sec;
+		param_64->duration_usec = temp.duration_usec;
+		break;
 	}
+
+free_mutex:
 	mutex_unlock(&dev->lock);
 	return retval;
 }
-- 
1.9.1


