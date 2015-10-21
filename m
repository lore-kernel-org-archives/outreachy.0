X-GM-THRID: 6208227682236235776
X-Received: by 10.50.17.106 with SMTP id n10mr17360246igd.6.1445465647153;
        Wed, 21 Oct 2015 15:14:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.155 with SMTP id g27ls675575ioi.40.gmail; Wed, 21 Oct
 2015 15:14:06 -0700 (PDT)
X-Received: by 10.107.26.84 with SMTP id a81mr10279537ioa.6.1445465646699;
        Wed, 21 Oct 2015 15:14:06 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id vy6si1325045pbc.1.2015.10.21.15.14.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2015 15:14:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of deepa.kernel@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=deepa.kernel@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x229.google.com with SMTP id z6so66320336pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Oct 2015 15:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TcVtDXMQUxDfIX5/g0CRkx8OlkeLJQiNXgf2C3/lFLk=;
        b=h71hJ8bDUwLigh/Y4xOlU2ZBvtmyTfTTpRirnrisEe7beEkdDsIhuwHKqGMutZJBwQ
         knnyqGmR0iOiszP1uTe+zT/+eT0hT4t7tnPC/+uv6j+XZMcysnnFPlA42mGjatUis99T
         +K9/c99FBaTpBRSfyVWoFL3al/i4uJzgfmKeR+t+04GHjcYu87NWCQeAsLWmAp7G0SkE
         +ORj6n0HGbiqwygRJvo3nBu7yBGRXY7O0UhH/CeaODb8xK8sKJauK/sFmhUh2Ewxc5Ja
         /oqoA8AH4DrCq1VrpCoJAjvUnsetPN2HAnEVXcee6BcNSD1ptHj70RrlenqdmMedyJNM
         XgWg==
X-Received: by 10.66.120.237 with SMTP id lf13mr13012886pab.25.1445465646507;
        Wed, 21 Oct 2015 15:14:06 -0700 (PDT)
Return-Path: <deepa.kernel@gmail.com>
Received: from deepa-ubuntu.hsd1.ca.comcast.net (c-73-162-232-39.hsd1.ca.comcast.net. [73.162.232.39])
        by smtp.gmail.com with ESMTPSA id l16sm10897867pbq.22.2015.10.21.15.14.05
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 21 Oct 2015 15:14:06 -0700 (PDT)
From: Deepa Dinamani <deepa.kernel@gmail.com>
To: y2038@list.linaro.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] usb: usbtest: Add new ioctl interface
Date: Wed, 21 Oct 2015 15:13:50 -0700
Message-Id: <1445465630-24286-1-git-send-email-deepa.kernel@gmail.com>
X-Mailer: git-send-email 1.9.1

The new USBTEST_REQUEST ioctl is intended to eventually replace
the old timeval exposing interface.  struct timeval can have different
sizes based on whether the kernel/ userspace are compiled in 32 bit/
64 bit mode.  The new ioctl exposes the duration the tests run as a
scalar nanosecond value.

Rename old ioctl and data types to COMPAT_USBTEST_REQUEST and
usbtest_param_compat, respectively.

The change also uses monotonic time instead of real time for both ioctls.
This ensures that the time duration is always positive.  Also use ktime
api's for time routines accomodating moving all of kernel to use 64 bit
time eventually.

Refactor usbtest_ioctl for readability to clarify that the only
difference is in how delta time is returned.

Signed-off-by: Deepa Dinamani <deepa.kernel@gmail.com>
---
This patch is intended for the next branch of the usb tree:
git://git.kernel.org/pub/scm/linux/kernel/git/balbi/usb.git

 drivers/usb/misc/usbtest.c | 208 +++++++++++++++++++++++++++++----------------
 1 file changed, 134 insertions(+), 74 deletions(-)

diff --git a/drivers/usb/misc/usbtest.c b/drivers/usb/misc/usbtest.c
index 637f3f7..00daff3 100644
--- a/drivers/usb/misc/usbtest.c
+++ b/drivers/usb/misc/usbtest.c
@@ -22,7 +22,11 @@ static void complicated_callback(struct urb *urb);
 /*-------------------------------------------------------------------------*/
 
 /* FIXME make these public somewhere; usbdevfs.h? */
-struct usbtest_param {
+
+/* Compat parameter for the compat interface.
+ * This is deprecated due to the timeval output parameter.
+ */
+struct usbtest_param_compat {
 	/* inputs */
 	unsigned		test_num;	/* 0..(TEST_CASES-1) */
 	unsigned		iterations;
@@ -33,7 +37,27 @@ struct usbtest_param {
 	/* outputs */
 	struct timeval		duration;
 };
-#define USBTEST_REQUEST	_IOWR('U', 100, struct usbtest_param)
+
+/* Parameters to the usbtest driver */
+struct usbtest_param {
+	/* inputs */
+	unsigned		test_num;	/* 0..(TEST_CASES-1) */
+	unsigned		iterations;
+	unsigned		length;
+	unsigned		vary;
+	unsigned		sglen;
+
+	/* outputs */
+	s64			duration_ns;
+};
+
+/*
+ * COMPAT IOCTL interface to the driver.
+ * The interface is deprecated and should not be used by new code.
+ */
+#define USBTEST_REQUEST_COMPAT    _IOWR('U', 100, struct usbtest_param_compat)
+/* IOCTL interface to the driver. */
+#define USBTEST_REQUEST           _IOWR('U', 101, struct usbtest_param)
 
 /*-------------------------------------------------------------------------*/
 
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
+usbtest_do_ioctl(struct usb_interface *intf, struct usbtest_param *param)
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
@@ -2548,17 +2510,116 @@ usbtest_ioctl(struct usb_interface *intf, unsigned int code, void *buf)
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
+	struct usbtest_param_compat *param_compat = buf;
+	struct usbtest_param temp;
+	struct usbtest_param *param = buf;
+	ktime_t start;
+	ktime_t end;
+	ktime_t duration;
+	int	retval = -EOPNOTSUPP;
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
+	case USBTEST_REQUEST_COMPAT:
+		temp.test_num = param_compat->test_num;
+		temp.iterations = param_compat->iterations;
+		temp.length = param_compat->length;
+		temp.sglen = param_compat->sglen;
+		temp.vary = param_compat->vary;
+		param = &temp;
+		break;
+
+	case USBTEST_REQUEST:
+		break;
+
+	default:
+		retval = -EOPNOTSUPP;
+		goto free_mutex;
+	}
+
+	start = ktime_get();
+
+	retval = usbtest_do_ioctl(intf, param);
+	if (retval)
+		goto free_mutex;
+
+	end = ktime_get();
+
+	duration = ktime_sub(end, start);
+
+	switch (code) {
+	case USBTEST_REQUEST_COMPAT:
+		param_compat->duration = ktime_to_timeval(duration);
+		break;
+
+	case USBTEST_REQUEST:
+		param->duration_ns = ktime_to_ns(duration);
+		break;
 	}
+
+free_mutex:
 	mutex_unlock(&dev->lock);
 	return retval;
 }
 
+
 /*-------------------------------------------------------------------------*/
 
 static unsigned force_interrupt;
@@ -2891,4 +2952,3 @@ module_exit(usbtest_exit);
 
 MODULE_DESCRIPTION("USB Core/HCD Testing Driver");
 MODULE_LICENSE("GPL");
-
-- 
1.9.1


