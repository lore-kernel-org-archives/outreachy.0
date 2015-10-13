X-GM-THRID: 6205152433025318912
X-Received: by 10.107.167.13 with SMTP id q13mr16177010ioe.12.1444749634532;
        Tue, 13 Oct 2015 08:20:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.33 with SMTP id r33ls784592ioe.88.gmail; Tue, 13 Oct
 2015 08:20:33 -0700 (PDT)
X-Received: by 10.66.197.136 with SMTP id iu8mr29545643pac.47.1444749633861;
        Tue, 13 Oct 2015 08:20:33 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id uv4si419803pac.0.2015.10.13.08.20.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:20:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id ve7so24409728pab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 08:20:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=a2xBL44Qv8Nk08iWsa8EAMQeor3F9NRP83lM/eYEZjk=;
        b=CJtUrRomMMiDL/kpeHuzkgZTN6RHMUM1D/QdC6KTZaNJ1XpV7njib6nGkjHvaE1kr/
         3mXycfIFCjYpo3qNfITQ881YahHQ2uIP4ElopXMJIebV4xY8AO1DvTFQr+plzeyJgPPl
         AVXVZkFfJzDeaCooIcb/cis1e8wss9WCSfF3e/NssePg9RcDWa900poq4NdAjb6CnItA
         9jQKDAV+z7W2U2JzQzUpGk6TdFTNV1B6N6mKVtVenqyLVDTinvtKfsaa9AeAbs2qM88C
         +nYQW2y6E3Ij/igvpkM83ToTaar7l0vDz4MI3ooAA4QbyXpxpfWDUgSkk7SNfYAFJr/A
         wTVA==
X-Received: by 10.69.26.161 with SMTP id iz1mr41563616pbd.17.1444749633742;
        Tue, 13 Oct 2015 08:20:33 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id d2sm4516638pat.24.2015.10.13.08.20.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 08:20:32 -0700 (PDT)
Date: Tue, 13 Oct 2015 20:50:23 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: unisys: visorinput: Remove unused code
Message-ID: <20151013152023.GA22780@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove the code which is not used anywhere in the program.
Semantic patch used:

@@
type T;
identifier i;
constant C;
position p != e.p;
@@

- T i@p;
  <+... when != i
- i = C;
  ...+>

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/unisys/visorinput/visorinput.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/unisys/visorinput/visorinput.c b/drivers/staging/unisys/visorinput/visorinput.c
index 3a1b24f..058ee91c 100644
--- a/drivers/staging/unisys/visorinput/visorinput.c
+++ b/drivers/staging/unisys/visorinput/visorinput.c
@@ -461,20 +461,16 @@ handle_locking_key(struct input_dev *visorinput_dev,
 		   int keycode, int desired_state)
 {
 	int led;
-	char *sled;
 
 	switch (keycode) {
 	case KEY_CAPSLOCK:
 		led = LED_CAPSL;
-		sled = "CAP";
 		break;
 	case KEY_SCROLLLOCK:
 		led = LED_SCROLLL;
-		sled = "SCR";
 		break;
 	case KEY_NUMLOCK:
 		led = LED_NUML;
-		sled = "NUM";
 		break;
 	default:
 		led = -1;
-- 
2.1.0


