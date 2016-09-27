X-GM-THRID: 6334938695247855616
X-Received: by 10.129.34.87 with SMTP id i84mr6977623ywi.166.1474967853502;
        Tue, 27 Sep 2016 02:17:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.68 with SMTP id y65ls9532499ioi.28.gmail; Tue, 27 Sep
 2016 02:17:31 -0700 (PDT)
X-Received: by 10.107.180.17 with SMTP id d17mr6694389iof.53.1474967851939;
        Tue, 27 Sep 2016 02:17:31 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id si10si402093pab.1.2016.09.27.02.17.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 02:17:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id j3so465843paj.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 02:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=BipwVaa6T5e/agjMREjIoTmQrSJi1vvx61WFTPPtRUE=;
        b=CLUaiYrOmjIEBVmFCVBe8tJZVSRgsAtLbXu7h5qeXoq+rCtOkx11dyd1kKfDXGgTKr
         7j4+di3lFTEVESUmIatBYeUt5MariYXIE88UaHM2xk6P089aYCWJu4/fpQqbpDHdzDGK
         Bhgpln0hpctb8try7YGJuXUhLdBZJf1VZHa09zASY+otwwfU4kKhUfeNTxxCYN2aCYUr
         iek3v3tghYanqJLIJX/x7m96kfHLbBFTiEr7iRCqQDCQt2AhDtnjNos7Lq17Ys6QrhnL
         +Whvg7NohGZKTKHeT8CQQ0dgpBDmr2o0xW5tGdR9v4gOAVloNlxtZ7+dYC289YHxYev4
         E5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=BipwVaa6T5e/agjMREjIoTmQrSJi1vvx61WFTPPtRUE=;
        b=AsAtMrvzK0gi8qmKLlaGwSuZFra+QCQBEh7XCAfd0K1CnWFUZ10djl2Q5KpJ+1umT3
         KQPFE5KlomCyQmWnsV42XP1fX9wyK+bn68ae08CoVLPTnUhJ0ts5SBodVTK3mt/6yMPH
         +7tKchyH6SXb8nQjiKkFh+Inc+z+0oFrnS+FQS9yrdVeUx9MPJ4mRg3BKul0+dtbXvB5
         vM4cipQwqV64KLCyiq0yp9S1a36c3rwwzOkj+N+OENuotyKiAbniE79UI/A+9lDWB5++
         72FkPQR+n+pV0D0J0DSGvFWLzYoHNphdI54oELNIuOvZKwSOJovg3Y6j9ufUr9k0nUdO
         0y9A==
X-Gm-Message-State: AA6/9Rkt/+Q2IV3JMmy4LI0hEz/8kR3k1ZGacJrb6cwwmjhBqgHZKg6Fyx1q92cUv0usUA==
X-Received: by 10.66.163.132 with SMTP id yi4mr24846833pab.162.1474967851373;
        Tue, 27 Sep 2016 02:17:31 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([106.215.148.42])
        by smtp.gmail.com with ESMTPSA id d9sm3125223pan.7.2016.09.27.02.17.23
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 02:17:29 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Tue, 27 Sep 2016 14:47:14 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: most: aim-v4l2: constify v4l2_file_operations structures
Date: Tue, 27 Sep 2016 14:47:12 +0530
Message-Id: <1474967832-12058-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Check for v4l2_file_operations structures that are only stored in the
fops field of video_device structures. As this field is constant, so
v4l2_file_operations structures having this property can also be
declared constant.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct v4l2_file_operations i@p = {...};

@ok1@
identifier r1.i;
position p;
struct video_device x;
@@
x.fops=&i@p;

@bad@
position p!={r1.p,ok1.p};
identifier r1.i;
@@
i@p

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
static
+const
struct v4l2_file_operations i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct v4l2_file_operations i;

File size before:
   text	   data	    bss	    dec	    hex	filename
   5608	    160	      4	   5772	   168c
drivers/staging/most/aim-v4l2/video.o

File size after:
   text	   data	    bss	    dec	    hex	filename
   5696	     96	      4	   5796	   16a4
drivers/staging/most/aim-v4l2/video.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/most/aim-v4l2/video.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/aim-v4l2/video.c b/drivers/staging/most/aim-v4l2/video.c
index 400f727..e074841 100644
--- a/drivers/staging/most/aim-v4l2/video.c
+++ b/drivers/staging/most/aim-v4l2/video.c
@@ -369,7 +369,7 @@ static int vidioc_s_input(struct file *file, void *priv, unsigned int index)
 	return 0;
 }
 
-static struct v4l2_file_operations aim_fops = {
+static const struct v4l2_file_operations aim_fops = {
 	.owner      = THIS_MODULE,
 	.open       = aim_vdev_open,
 	.release    = aim_vdev_close,
-- 
1.9.1


