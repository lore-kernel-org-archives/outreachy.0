X-GM-THRID: 6339690897688494080
X-Received: by 10.157.14.207 with SMTP id 73mr8358771otj.32.1476074312427;
        Sun, 09 Oct 2016 21:38:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.40.85 with SMTP id o82ls2858646ioo.50.gmail; Sun, 09 Oct
 2016 21:38:29 -0700 (PDT)
X-Received: by 10.66.17.228 with SMTP id r4mr6521232pad.101.1476074309526;
        Sun, 09 Oct 2016 21:38:29 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x242.google.com (mail-ua0-x242.google.com. [2607:f8b0:400c:c08::242])
        by gmr-mx.google.com with ESMTPS id x14si2352875vkd.3.2016.10.09.21.38.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 21:38:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) client-ip=2607:f8b0:400c:c08::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x242.google.com with SMTP id m26so3640228uaa.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 21:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=AQVf1THWqXeHXb/70AigjCVmSnESurEGLkMfuc0JOv4=;
        b=Z8NUA5h+vkjM0X6DIP7t06zeotAUIqkQP+oiWsZzcgWZXMTeF6evznuWGZuV7QQgFf
         Qle6lEc+R+bE3UDvXqjW2MNpt3FiyLuyT0SZPb7deRHBpotCFbH4iCzrG1GZ4C84GKDD
         7SY6V0u2s92HVnFPRjQ7OGy/l+m81u7ehqOMKsk0tiBz6+/ghbjricDZA4tq0fjA+CIs
         YcCTcZIQ3OHCGDTm9ASqTn9bHBo/lXFGye6KcclGy0ybJA2YiO5hm5ZgDrzb4fVmnADH
         uTKbKZPZtavsc/MN2pPTGhjC9N2+JbjRYIIciiHRM8P48s9BCEEIzZ2wPQM+u5PW7D35
         4WNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=AQVf1THWqXeHXb/70AigjCVmSnESurEGLkMfuc0JOv4=;
        b=A8ESAM44l0PMViBKTxGYNaP7/VjE2A1vWRiNFu8RNXwkdJTQa/d5M0UcvCamVEnwVQ
         3CBJfpAbSNE+nDil0zStQ7B/Lzwmh4+5H8QVksLPCIp2cy6kA2UHHxtDO/Iue5zzkAUo
         zlTghyPyQE7XDp0+t83ftzwM2V2gsnaFi49WL1thzymwAvCpPsKPcO/1nGwqhLIYd17B
         zvMhlBIi1nM61NUiPnTvYfnVIicRzlFyu29Rp/snGQc1abmGCvHVXmQNtIfEoxRqTTc5
         GDxhyATGwXApLrNuUs49t1YdZIc7ujDmXZkOA+QLaAvcojn7MR1N8KlM63+FFYV9mYA6
         jynA==
X-Gm-Message-State: AA6/9Rnw5ptMwIuI9iNo8zROYoOMEQhHnumeiKtTDbc+k9Nw9a70BR657aZILVpoqbhEiA==
X-Received: by 10.176.6.102 with SMTP id f93mr21520211uaf.100.1476074309303;
        Sun, 09 Oct 2016 21:38:29 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id y133sm8992511vkc.1.2016.10.09.21.38.27
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 21:38:28 -0700 (PDT)
Date: Mon, 10 Oct 2016 01:38:25 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: lidza.louina@gmail.com, markh@compro.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: dgnc: replace DGNC_VERIFY_BOARD macro with
 dgnc_verify_board function.
Message-ID: <20161010043825.GA5438@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Macros with flow control statements should be avoided

Macros with flow control statements should be avoided; they break the flow of the calling function and make it harder to test the code.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/dgnc/dgnc_sysfs.c | 74 +++++++++++++++++++++++++++------------
 1 file changed, 51 insertions(+), 23 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_sysfs.c b/drivers/staging/dgnc/dgnc_sysfs.c
index 290bf6e..687d67a 100644
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
+		return 0;
+
+	bd = dev_get_drvdata(p);
+	if (!bd || bd->magic != DGNC_BOARD_MAGIC)
+		return 0;
+	if (bd->state != BOARD_READY)
+		return 0;
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


