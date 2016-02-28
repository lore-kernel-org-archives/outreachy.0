X-GM-THRID: 6256304454696435712
X-Received: by 10.129.58.16 with SMTP id h16mr8417542ywa.56.1456659393494;
        Sun, 28 Feb 2016 03:36:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.27.174 with SMTP id 43ls1955519qgx.73.gmail; Sun, 28 Feb
 2016 03:36:32 -0800 (PST)
X-Received: by 10.140.246.3 with SMTP id r3mr8597263qhc.2.1456659392880;
        Sun, 28 Feb 2016 03:36:32 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x229.google.com (mail-pf0-x229.google.com. [2607:f8b0:400e:c00::229])
        by gmr-mx.google.com with ESMTPS id 12si3018374pfb.1.2016.02.28.03.36.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 03:36:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) client-ip=2607:f8b0:400e:c00::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::229 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x229.google.com with SMTP id 124so14261744pfg.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 03:36:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hXgTVgv7Q6Ja4j9nSwh7H8zWzN2yKeepCvqJddXWB2I=;
        b=V1PdQJRNnWMFFpcQhZC9tt9ZTKD6bM5OspFj6wMavLDDnflxWPwT7YeC0hJu/Z/DhZ
         iun02oxWBF7r8Zq07qGI9tTdzcIw4dTC4LPcCpO+2Bida/5/gpFxe+iu/1HJFXLm6bJb
         UFVqKaktHk7AvmfQS8QybxS+oXjV5RTypivW5YSTVy28MEJuknrKqHvxhWt/4c6as+JX
         K3AryDbkFqp5qKEKYm9jmdRYxmyXYdUZ01cAVT2G+oyBAtP0hnDEUOMgj5Tlj+DWFhNY
         /PSR6zyG0yUIB0KhrsoaFARk+FBTp4zOKXWBFapxI5UToZZDB8WOyCb9JEn2Hih6jalV
         lNUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hXgTVgv7Q6Ja4j9nSwh7H8zWzN2yKeepCvqJddXWB2I=;
        b=dGuRyTvTF3h5ZHMCIGp5LWP/hWEabdLgnFRJaLjQgOghGhnw3Oxj6rU8wlHTBLZpl9
         dK0tYYtrhMgSjiTvTPHGAouhifhuV34KW4Y+rAXJFyJJ5HI9PSznJVZ4wRxt5XL5uths
         hzgf23yImdY9V/FsO4CII/tyB03dXcgI+vFKT5mKKevldowF2J5oHkwXk11tijDWB6RS
         JMPpLKK/WfcmDiH/Mi+89IkDDLyL1FT42ZxXT7yxBJb445c3GQP2NgldOfhdVOcxSgD5
         PctlbIt67itt7GuFAcmrjd0HrKMCEcj6aTgY7/FOAItd0NEckyve0CTR71XVgae9KtQ5
         zqZw==
X-Gm-Message-State: AD7BkJKaVYgfYWCQabQP+hZvUEZpJ8YYoKTvnisz8N9vt73+i7sdrLiZa6dqLQ7z3kiG6Q==
X-Received: by 10.98.86.139 with SMTP id h11mr14826535pfj.105.1456659392680;
        Sun, 28 Feb 2016 03:36:32 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.134])
        by smtp.gmail.com with ESMTPSA id u64sm30950334pfa.86.2016.02.28.03.36.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 03:36:32 -0800 (PST)
Date: Sun, 28 Feb 2016 09:06:29 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: wlan-ng: Handle error condition.
Message-ID: <20160228033629.GA7898@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Handle error condition.
Below semantic patch found,their is double assignment to 'result' variable.so instead of deleting double assignment,handling error condition for "result = mkimage(..)".
@@
expression e1,e2,e3;
@@

(
 (<+...e1++...+>)=e2;
|
 (<+...e1--...+>)=e2;
|
 (<+...++e1...+>)=e2;
|
 (<+...--e1...+>)=e2;
|
e1=e2;
e1 = <+...e1...+>;
|
*e1=e2;
*e1=e3;

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/prism2fw.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 8fc80df..35fd5fb 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -333,6 +333,10 @@ static int prism2_fwapply(const struct ihex_binrec *rfptr,
 
 	/* Make the image chunks */
 	result = mkimage(fchunk, &nfchunks);
+	if (result) {
+		netdev_err(wlandev->netdev, "Failed to make image chunk.\n");
+		return 1;
+	}
 
 	/* Do any plugging */
 	result = plugimage(fchunk, nfchunks, s3plug, ns3plug, &pda);
-- 
1.8.3.4


