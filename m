X-GM-THRID: 2073319964672
X-Received: by 10.194.11.70 with SMTP id o6mr426300wjb.6.1424548771851;
        Sat, 21 Feb 2015 11:59:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.72 with SMTP id k8ls307952wif.35.canary; Sat, 21 Feb
 2015 11:59:31 -0800 (PST)
X-Received: by 10.180.105.129 with SMTP id gm1mr388132wib.3.1424548771624;
        Sat, 21 Feb 2015 11:59:31 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x231.google.com (mail-wi0-x231.google.com. [2a00:1450:400c:c05::231])
        by gmr-mx.google.com with ESMTPS id ew5si370597wid.1.2015.02.21.11.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 11:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) client-ip=2a00:1450:400c:c05::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::231 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f177.google.com with SMTP id bs8so9272031wib.4
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 11:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references:mime-version:content-type
         :content-transfer-encoding;
        bh=Lw7rgHLqKwtJgSPugat+TrWde5OFSHlER8LOU3wSlFU=;
        b=X2R/ImR0mwyIvmak03Ri+CscPTAlpyUbY14UepaMeOUj65D4m7gpr9b93UXfVFu614
         KgBr/9+TgkXm+Ssk1/MB1VJ76iXAFtTAISiCOeWd3URqNQTvF3VlecCcIMR6gvequWba
         M90z5WCUOt9R248KQSbj6kCDwMv2MyT1c99GJLjUGJFsDyTts50O6Rb4uU+LeuWFi1ap
         pwTJR03dickc1rUd53eei1m5BLdU6WM/TYrExhb9CuEkXUWnVnbSDdV8iiMXFoRttGkY
         k9Xvgqtc5s0Jp1RkeZ1BTaS2pklBFr6xftL0+bqIlIweDWgc+jCYfnFN7JPfFwA558gw
         xoKg==
X-Received: by 10.194.62.167 with SMTP id z7mr7514150wjr.106.1424548771557;
        Sat, 21 Feb 2015 11:59:31 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id fm10sm8283015wib.7.2015.02.21.11.59.30
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 11:59:30 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 2/2] staging: arch: alpha: boot: tools: Added missing spaces after brackets.
Date: Sat, 21 Feb 2015 21:59:11 +0200
Message-Id: <2aaef73425fb27846d4eb42bf449bc84cc61d97e.1424548101.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424548101.git.gulsah.1004@gmail.com>
References: <cover.1424548101.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424548101.git.gulsah.1004@gmail.com>
References: <cover.1424548101.git.gulsah.1004@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch fixes "space required before the open parenthesis '('" checkpatch.pl errors in mkbb.c

Signed-off-by: Gülşah Köse <gulsah.1004@gmail.com>
---
 arch/alpha/boot/tools/mkbb.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/alpha/boot/tools/mkbb.c b/arch/alpha/boot/tools/mkbb.c
index 05a9d24..44ba020 100644
--- a/arch/alpha/boot/tools/mkbb.c
+++ b/arch/alpha/boot/tools/mkbb.c
@@ -91,21 +91,21 @@ int main(int argc, char **argv)
     int			nread;
 
     /* Make sure of the arg count */
-    if(argc != 3) {
+    if (argc != 3) {
 	fprintf(stderr, "Usage: %s device lxboot\n", argv[0]);
 	exit(0);
     }
 
     /* First, open the device and make sure it's accessible */
     dev = open(argv[1], O_RDWR);
-    if(dev < 0) {
+    if (dev < 0) {
 	perror(argv[1]);
 	exit(0);
     }
 
     /* Now open the lxboot and make sure it's reasonable */
     fd = open(argv[2], O_RDONLY);
-    if(fd < 0) {
+    if (fd < 0) {
 	perror(argv[2]);
 	close(dev);
 	exit(0);
@@ -113,7 +113,7 @@ int main(int argc, char **argv)
 
     /* Read in the lxboot */
     nread = read(fd, &bootloader_image, sizeof(bootblock));
-    if(nread != sizeof(bootblock)) {
+    if (nread != sizeof(bootblock)) {
 	perror("lxboot read");
 	fprintf(stderr, "expected %zd, got %d\n", sizeof(bootblock), nread);
 	exit(0);
@@ -121,7 +121,7 @@ int main(int argc, char **argv)
 
     /* Read in the bootblock from disk. */
     nread = read(dev, &bootblock_from_disk, sizeof(bootblock));
-    if(nread != sizeof(bootblock)) {
+    if (nread != sizeof(bootblock)) {
 	perror("bootblock read");
 	fprintf(stderr, "expected %zd, got %d\n", sizeof(bootblock), nread);
 	exit(0);
@@ -132,14 +132,14 @@ int main(int argc, char **argv)
 
     /* Calculate the bootblock checksum */
     bootloader_image.bootblock_checksum = 0;
-    for(i = 0; i < 63; i++) {
+    for (i = 0; i < 63; i++) {
 	bootloader_image.bootblock_checksum += 
 			bootloader_image.bootblock_quadwords[i];
     }
 
     /* Write the whole thing out! */
     lseek(dev, 0L, SEEK_SET);
-    if(write(dev, &bootloader_image, sizeof(bootblock)) != sizeof(bootblock)) {
+    if (write(dev, &bootloader_image, sizeof(bootblock)) != sizeof(bootblock)) {
 	perror("bootblock write");
 	exit(0);
     }
-- 
1.9.1


