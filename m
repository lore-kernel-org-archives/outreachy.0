X-GM-THRID: 6264236778940530688
X-Received: by 10.140.150.210 with SMTP id 201mr20491034qhw.28.1458506360335;
        Sun, 20 Mar 2016 13:39:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.37.71 with SMTP id q65ls3669555qgq.92.gmail; Sun, 20 Mar
 2016 13:39:19 -0700 (PDT)
X-Received: by 10.129.39.146 with SMTP id n140mr20270291ywn.22.1458506359978;
        Sun, 20 Mar 2016 13:39:19 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id tu5si2761016pab.2.2016.03.20.13.39.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 13:39:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q129so27110974pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 13:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nhF6s0+khZHpAZOkFuD8w2ZXEr1HeERtHJpLarM01tU=;
        b=vViwxeqW7F4mXNI2KozKYJ5BPBJVewrPxUGuyLzdQkycN578j517aGLxkL4dGosJIp
         9c5VUSVOMhkIH83veKWsawryN2TayA9paPeMKfU3IHWMPn6xn/wo0VqMVYJw2V0SIXtT
         VE9a4iMf8ee1+/WB9qOfuoIOm6q5N5rPmhMTnOSDGQbe+jyMhBnpqsc/xj9eyUDk6x6c
         9of0b4vDNQFnW6WMbNnowHCK/tDMjAX0AgzFmSr7Jh9N2tV2iKMZIPeKcH8UDrBXj2iV
         k+b/StADTsgh3BzIqVdiSWTI35xyut6I0CLkrA3BnhEaIJd/IDN/fJu5YIL2ZZj5rGvF
         mGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nhF6s0+khZHpAZOkFuD8w2ZXEr1HeERtHJpLarM01tU=;
        b=Y0/1TGW/pLw9rXFLJ/8I7La+nKEkEJ7naAGioiTZPwWTrwfqoYEwx0jgHtO6ns12xX
         pt6mlHJoUtvsIs6rh9inisAtMJ9XG4ln2X7UjaCXiM0fl0YhejQMigl8GlkRcudKw5r/
         adlFHC9QLt9VP7leihV5f8JMAqjEa14A+enBkwvYKE1ZxXf+8GtJT4UGw4udIpA1vgOf
         fMn8zNLZ9pOShGXZQMj7RNQDAnr9yzbTlxiGfEOsRu6uk4WKk6V5ZEFuFkoOylKRfSpK
         sgRIeiqyIXlYdWRXMUSxbJmzZfCth3tZ/1BGGnrbUgv4o4wS5f/W2kErCLRz3/J04Ber
         EURw==
X-Gm-Message-State: AD7BkJIsv7kX5eIHL1/JCsQ/M8+gunatsDsJlEHGWnesWlAcLlLepv7ehJ321MPFsKXnnw==
X-Received: by 10.67.6.72 with SMTP id cs8mr39826651pad.138.1458506359797;
        Sun, 20 Mar 2016 13:39:19 -0700 (PDT)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k65sm35287812pfb.30.2016.03.20.13.39.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 13:39:19 -0700 (PDT)
Date: Mon, 21 Mar 2016 02:09:17 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: rtl8712: rtl871x_mlme: Clean up tests if NULL
 returned on failure
Message-ID: <25004936d602ad5a76f4edaa2f62b61007e290d8.1458506158.git.bhaktipriya96@gmail.com>
References: <cover.1458506158.git.bhaktipriya96@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458506158.git.bhaktipriya96@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Some functions like kmalloc/kzalloc return NULL on failure.
When NULL represents failure, !x is commonly used.

This was done using Coccinelle:

@@
expression *e;
identifier l1;
@@

e = \(kmalloc\|kzalloc\|kcalloc\|devm_kzalloc\)(...);
...
- e == NULL
+ !e

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_mlme.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 62d4ae8..f8b1c89 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1205,7 +1205,7 @@ sint r8712_set_auth(struct _adapter *adapter,
 		return _FAIL;

 	psetauthparm = kzalloc(sizeof(*psetauthparm), GFP_ATOMIC);
-	if (psetauthparm == NULL) {
+	if (!psetauthparm) {
 		kfree(pcmd);
 		return _FAIL;
 	}
@@ -1234,7 +1234,7 @@ sint r8712_set_key(struct _adapter *adapter,
 	if (!pcmd)
 		return _FAIL;
 	psetkeyparm = kzalloc(sizeof(*psetkeyparm), GFP_ATOMIC);
-	if (psetkeyparm == NULL) {
+	if (!psetkeyparm) {
 		ret = _FAIL;
 		goto err_free_cmd;
 	}
--
2.1.4


