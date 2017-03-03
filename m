X-GM-THRID: 6393400648864366592
X-Received: by 10.46.82.157 with SMTP id n29mr918800lje.29.1488579588900;
        Fri, 03 Mar 2017 14:19:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.137 with SMTP id f9ls130286lji.7.gmail; Fri, 03 Mar 2017
 14:19:48 -0800 (PST)
X-Received: by 10.46.15.2 with SMTP id 2mr872006ljp.31.1488579588228;
        Fri, 03 Mar 2017 14:19:48 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id v201si276446wmv.3.2017.03.03.14.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 14:19:48 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id v190so5093906wme.3
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 14:19:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=/z6beFT0z9FkuDj+g+Fm/K34Tv0eCdjFthkKLHt/vRI=;
        b=kTQuHxKzuYbzJQND0jeBMzDMwqAHdFp6079DwiLNxIB5sVIZKtrYWAsMzZdIoRVLhl
         xpHehLdZgCFDNQ/YD23m2FsZJRXa+KBX8v1137qxLgayEcfbQIf4Un5fPsQOzsbDt8IP
         naCehn4XMbZQ/hiYuP5fdi7OHtl6ekMw49jCVgiE0o1o1Zy1y2JDst2Ov6xoQUg2nsLt
         00D+TX5MOQJLFeqhilKsiO2cfvTbOxyRZE+bEj9MDwijiwRCZjnz3cm+GzCBz6SDBYU0
         hjqgciRcNtYjqe2dXw902DtNpHDNyX5+rQKhDQe2RlwAzv+zxjczpQbACc8VFPhCe81q
         rK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=/z6beFT0z9FkuDj+g+Fm/K34Tv0eCdjFthkKLHt/vRI=;
        b=HSjTuPTXuWgYuxT8y4gBhjy3YXal14bQr1z55S2BcZe5preCWworo0X+qB9hojjPS+
         mAtD04PKssESSOGx0/e5k4urMAxXe2iy85iUxbPPiPdvJl1bXArDUGjHUhGSt/s00I4M
         0KskBghzl06N39+B0MMexU1TgsKI5YPyFQ3sOEa2j1wPsPrEKGzPzrFRWDZV7zr1ZaAy
         Q0occ60D3FyD0iBjF9K/j/QZTC9yN4AvT6ry8nzaidA3U1VcDudYhlleUWAfqybnMxl1
         sO3h+WcIRhRrFd8kibPWL59M5oeN6YRSdbLg6AONq6jKNM69LplHnOZVp5MiZVUQCsTu
         Ek5g==
X-Gm-Message-State: AMke39lrlqrjkRAsViB9DBiztaq09lptzfcH8dRJvovV1/EbFufRssJOQ3hN1vR3CZDHyg==
X-Received: by 10.28.61.11 with SMTP id k11mr5129439wma.119.1488579588053;
        Fri, 03 Mar 2017 14:19:48 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8170:1398:ed0e:d7f7:5879:7539])
        by smtp.gmail.com with ESMTPSA id x16sm4649891wma.0.2017.03.03.14.19.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 14:19:47 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] staging:speakup:i18n.c: Delete tab to indent
Date: Sat,  4 Mar 2017 00:19:44 +0200
Message-Id: <20170303221944.10488-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed the issue by using tabs over spaces to indent the code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/i18n.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e348..3e5f012 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -552,7 +552,7 @@ ssize_t spk_msg_set(enum msg_index_t index, char *text, size_t length)
 			if (index >= MSG_FORMATTED_START &&
 			    index <= MSG_FORMATTED_END &&
 			    !fmt_validate(speakup_default_msgs[index],
-			                  newstr)) {
+				    newstr)) {
 				kfree(newstr);
 				return -EINVAL;
 			}
-- 
2.9.3


