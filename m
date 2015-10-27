X-GM-THRID: 6210130290572001280
X-Received: by 10.13.215.214 with SMTP id z205mr31789721ywd.23.1445908632311;
        Mon, 26 Oct 2015 18:17:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.108.169 with SMTP id hl9ls2039577obb.70.gmail; Mon, 26 Oct
 2015 18:17:11 -0700 (PDT)
X-Received: by 10.182.233.229 with SMTP id tz5mr5258951obc.26.1445908631771;
        Mon, 26 Oct 2015 18:17:11 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id vy6si3797567pbc.1.2015.10.26.18.17.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 18:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so204178607pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 18:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=HlFTEyBeKWYZenh0HaGDU5gvoFE62PczNvhQhLLpbb4=;
        b=hnho2bImqIeRLRQVlRa2UsSsqU/3L2h/hHC0Mu1MKzU3/7QV/w7fZiQeZ289TthIMS
         7IHrGoiGDZBx0jumlGnZ+PdG6Xu1MtKyDHi448/IrP7ai2afQhA7C/WOAZQW63fblb1H
         RrSNObWtFKxfTBfgM/HtwKMuz62VJ4BwIaj/5/FhCUJ2aGQd/h6W+la0LVwfq50qpAGh
         opcmo6nRzGyqAtFVTYMI0SKg8h7RfZibTwg83mPW/ier+COTaf/RkvwGMf1Nxl5Eb5GR
         gH4fFR24U/f1lk6bYFIv7+IonY6bvA4nUUJ5UiTe8Eh9v76I8EKDDHiadh4tnAiWDFGZ
         VZ9Q==
X-Received: by 10.67.13.107 with SMTP id ex11mr24987447pad.126.1445908631609;
        Mon, 26 Oct 2015 18:17:11 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu.hsd1.ca.comcast.net (c-73-162-232-39.hsd1.ca.comcast.net. [73.162.232.39])
        by smtp.gmail.com with ESMTPSA id yq2sm36142548pbb.39.2015.10.26.18.17.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 26 Oct 2015 18:17:11 -0700 (PDT)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: y2038@lists.linaro.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] usb: misc: usbtest: Remove timeval usage
Date: Mon, 26 Oct 2015 18:16:54 -0700
Message-Id: <1445908614-20560-1-git-send-email-deepa.kernel@gmail.com>
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
Changes since v1:
* Removed new ioctl interface
* Support both sizes of timeval using same ioctl code
* Use timespec64 instead of ktime_t
* Use __u32 for unsigned fields

 drivers/usb/misc/usbtest.c | 229 +++++++++++++++++++++++++++++----------------
 1 file changed, 147 insertions(+), 82 deletions(-)

diff --git a/drivers/usb/misc/usbtest.c b/drivers/usb/misc/usbtest.c
index 637f3f7..d1ce881 100644
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
+	getrawmonotonic64(&start);
+
+	retval = usbtest_do_ioctl(intf, param_32);
+	if (retval)
+		goto free_mutex;
+
+	getrawmonotonic64(&end);
+
+	duration = timespec64_sub(end, start);
+
+	temp.duration_sec = duration.tv_sec;
+	temp.duration_usec = duration.tv_nsec/1000;
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


