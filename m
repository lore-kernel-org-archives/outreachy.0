X-GM-THRID: 6389954613563359232
X-Received: by 10.157.12.36 with SMTP id 33mr11350077otr.68.1487777245764;
        Wed, 22 Feb 2017 07:27:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.57.9 with SMTP id l9ls422031ita.1.gmail; Wed, 22 Feb 2017
 07:27:25 -0800 (PST)
X-Received: by 10.107.47.168 with SMTP id v40mr9429723iov.97.1487777245027;
        Wed, 22 Feb 2017 07:27:25 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si320186pfd.3.2017.02.22.07.27.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 07:27:24 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so853170pgz.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 07:27:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AG2p5GY6Ytm8d8wm/OzosLikB+u2OYugQxyNmEkl5VA=;
        b=RrVVBOkZRbxA6igUlx43LpDQLS4UL7QZLOxX/q56HrJSISEK+7/hs5bXqkC978fsXL
         s1NvQIOBsYZCxLJa8hPy5qnE8ihc4SdjMOEQrihuUeiMOzMx0RZ/dVXNQiwii1YTbDpJ
         hT/ZxCkmWMP9YNrOpsoZl2RR3LaZHZGp2+Vj5sAThuBNyUBRkx7Kjo9hF64x77SL1aep
         s08fVEx+YCCGp5nCaOu8siJISt2WFDVIvZlRf7mv3Cwb6q/rv+wzpnko1MA/RbQ6NFJ4
         nzkJpKnJScsnyo8tl3mO5L3duxAOIOLkyRddQMz060yPiifZEOIWQ+os+PTnswJzGrN+
         /6Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AG2p5GY6Ytm8d8wm/OzosLikB+u2OYugQxyNmEkl5VA=;
        b=UKhRrDT1DI3i8B0Twm8o5N1aITmGbBNwJKbg2AEgIdGxObXtmIwzs2o0kIF8XjMpVS
         UQTl11rtNl+VOt9UDi/Hdwiq7Yxr9o39cCba312CyYEMyOtjHwLywa1wXcIEqnk3s2su
         yZbTYW2GN3KsgS3nf1utjtt/u76N5We2fNuH2Gas/2srk7HIKl8F4/4y5rj3SCYHAM10
         1UrfIj4rhyn5rcKmQ1ipRHVVDTNIt76ARvkMbKoxu34ILA1UZx/gZBozUqlGMZThraTr
         6YJ4uCLGn+NiqZfCWCqI1Pc34jsAcsBuKW8H7kCtzoABgoKvMmxXqKs44Gx8Cu9oLupb
         s3aA==
X-Gm-Message-State: AMke39nyyWw5lZJA4Xz5ueJ1NOMFxBcDnKOcEjkEo3LrI4KNa1F7FJvcCkVazI+uHYb9vg==
X-Received: by 10.99.126.27 with SMTP id z27mr42259580pgc.177.1487777244814;
        Wed, 22 Feb 2017 07:27:24 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id m6sm4421124pgn.58.2017.02.22.07.27.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 07:27:24 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	johan@kernel.org,
	elder@kernel.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v3] staging: greybus: loopback_test: fix device-name lea
Date: Wed, 22 Feb 2017 20:55:11 +0530
Message-Id: <1487777111-7267-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

All the device names were being always leaked. Also,
illegal free was being called upon namelist[n] which
was coincidentally NULL. The pointer to dirent structures
must be individually freed before freeing the pointer array.

Coccinelle Script:
@@
expression arr,ex1,ex2;
@@

for(ex1 = 0; ex1 < ex2; ex1++) { <...
  arr[
- ex2
+ ex1
  ]
  ...> }

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
Changes in v3:
	-Edited the commit message.
Changes in v2:
	-Made the commit message clearer.
---
 drivers/staging/greybus/tools/loopback_test.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index 18d7a3d..1c01833 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -636,7 +636,7 @@ int find_loopback_devices(struct loopback_test *t)
 	ret = 0;
 done:
 	for (i = 0; i < n; i++)
-		free(namelist[n]);
+		free(namelist[i]);
 	free(namelist);
 baddir:
 	return ret;
-- 
2.7.4


