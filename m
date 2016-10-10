X-GM-THRID: 6339690897688494080
X-Received: by 10.31.63.203 with SMTP id m194mr4751607vka.22.1476108026399;
        Mon, 10 Oct 2016 07:00:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.105 with SMTP id l102ls2634146iod.52.gmail; Mon, 10
 Oct 2016 07:00:21 -0700 (PDT)
X-Received: by 10.66.123.101 with SMTP id lz5mr7140811pab.108.1476108021576;
        Mon, 10 Oct 2016 07:00:21 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id t8si77217vkb.2.2016.10.10.07.00.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 07:00:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 2so4019092vkb.1
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 07:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uJ0sXfztz+xVXxCIXkduNVFovqTbZ4i+/iqWehmyTbo=;
        b=letQNTM2yJMDTh2lA2YroRdHEnlmffFsSFTfTpGkp//3CvYF7B5e1b+xDhBxjRHfBI
         mWoofGQYr/IOpTjUeSspWOTLK280OZoWpsuBN5slOeEPXosEq3YXC9WdAqK9LQ12udeN
         JOZUxjtCamVof7PVmilpBg6zyxrRf0neOQ/rt05J2tQxbimXv4vlkPKuyvjJQGPBXQG6
         s/aJhy2+pEVP7RUGhSH9+th0gbjMD1oVkzyIoNWnQhq15bD5jFytoaX5fxb8fb4b10df
         tj2yL4I4ocKbAy2cbzJbFiSKFBRZyy1nZMCnp433OR7wWakwL2ts3Ak7IbNSzNp8kF7Q
         mylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uJ0sXfztz+xVXxCIXkduNVFovqTbZ4i+/iqWehmyTbo=;
        b=ACn2RXT/dyTD96vvn2iGSP27FjCPo6kffsKWWX6k2lEGqo/NNhWBofQsED9Ue3yEtq
         tqItWPvGmgccoG/Jag6hj75lzbpgKCkgZ3Oor95lwOoEDZ1Ja6rqXkZlbtWuAneXT4m+
         nc2NELoQSn1HooXbHU7lkxRR45PEEwTWmEu9gvkIYzGU/3/CO+yD0GjIH7ZjdjNBMU6t
         iS3bvLYWNU3U5JpJ4zX3rkb9zLilFkl6hhyOOSqqE1UvwfWfkxHe2t4Trp6qDiQdLyYb
         onVb1TM6TvNBLKMQLKma+nQl47Vq30AhMRVQSDPjuXWb4kEiZNv9lasxhyJWXfBgyJmu
         /ZIg==
X-Gm-Message-State: AA6/9RkVdyactw4BHNQHWkqa1ZlADbyTSoFCjLK1c9NOLQzEkxQkwAijQwwC+tcxiMrstQ==
X-Received: by 10.31.188.6 with SMTP id m6mr20048372vkf.28.1476108021282;
        Mon, 10 Oct 2016 07:00:21 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id 100sm5720792uaf.20.2016.10.10.07.00.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 07:00:20 -0700 (PDT)
Date: Mon, 10 Oct 2016 11:00:16 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: dgnc: replace DGNC_VERIFY_BOARD macro with
 dgnc_verify_board function.
Message-ID: <20161010140016.GA18255@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Macros with flow control statements should be avoided

Macros with flow control statements should be avoided. They break
the flow of the calling function and make it harder to test the code.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

v2: Fixed the return values of dgnc_verify_board. 
    Reworked to return NULL instead of 0, as suggested 
    by Julia Lawall <julia.lawall@lip6.fr>.

 drivers/staging/dgnc/dgnc_sysfs.c | 74 +++++++++++++++++++++++++++------------
 1 file changed, 51 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index 290bf6e..cdec40a 100644
--- a/drivers/staging/dgnc/dgnc_sysfs.c
+++ b/drivers/staging/dgnc/dgnc_sysfs.c
@@ -90,17 +90,21 @@ void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver)
 	driver_remove_file(driverfs, &driver_attr_pollrate);
 }
 
-#define DGNC_VERIFY_BOARD(p, bd)				\
-	do {							\
-		if (!p)						\
-			return 0;				\
-								\
-		bd = dev_get_drvdata(p);			\
-		if (!bd || bd->magic != DGNC_BOARD_MAGIC)	\
-			return 0;				\
-		if (bd->state != BOARD_READY)			\
-			return 0;				\
-	} while (0)
+static struct dgnc_board *dgnc_verify_board(struct device *p)
+{
+	struct dgnc_board *bd;
+
+	if (!p)
+		return NULL;
+
+	bd = dev_get_drvdata(p);
+	if (!bd || bd->magic != DGNC_BOARD_MAGIC)
+		return NULL;
+	if (bd->state != BOARD_READY)
+		return NULL;
+
+	return bd;
+}
 
 static ssize_t vpd_show(struct device *p, struct device_attribute *attr,
 			char *buf)
@@ -109,7 +113,9 @@ static ssize_t vpd_show(struct device *p, struct device_attribute *attr,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	count += sprintf(buf + count,
 		"\n      0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F");
@@ -130,7 +136,9 @@ static ssize_t serial_number_show(struct device *p,
 	struct dgnc_board *bd;
 	int count = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	if (bd->serial_num[0] == '\0')
 		count += sprintf(buf + count, "<UNKNOWN>\n");
@@ -148,7 +156,9 @@ static ssize_t ports_state_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count,
@@ -166,7 +176,9 @@ static ssize_t ports_baud_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count +=  snprintf(buf + count, PAGE_SIZE - count,
@@ -184,7 +196,9 @@ static ssize_t ports_msignals_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		struct channel_t *ch = bd->channels[i];
@@ -215,7 +229,9 @@ static ssize_t ports_iflag_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
@@ -233,7 +249,9 @@ static ssize_t ports_cflag_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
@@ -251,7 +269,9 @@ static ssize_t ports_oflag_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
@@ -269,7 +289,9 @@ static ssize_t ports_lflag_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
@@ -287,7 +309,9 @@ static ssize_t ports_digi_flag_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count, "%d %x\n",
@@ -305,7 +329,9 @@ static ssize_t ports_rxcount_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
@@ -323,7 +349,9 @@ static ssize_t ports_txcount_show(struct device *p,
 	int count = 0;
 	int i = 0;
 
-	DGNC_VERIFY_BOARD(p, bd);
+	bd = dgnc_verify_board(p);
+	if (!bd)
+		return 0;
 
 	for (i = 0; i < bd->nasync; i++) {
 		count += snprintf(buf + count, PAGE_SIZE - count, "%d %ld\n",
-- 
2.7.4


