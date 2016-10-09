X-GM-THRID: 6339411924355121152
X-Received: by 10.36.245.2 with SMTP id k2mr1933921ith.14.1476009358510;
        Sun, 09 Oct 2016 03:35:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.34.81 with SMTP id o78ls2665810ito.6.gmail; Sun, 09 Oct
 2016 03:35:54 -0700 (PDT)
X-Received: by 10.98.154.1 with SMTP id o1mr6094346pfe.9.1476009354578;
        Sun, 09 Oct 2016 03:35:54 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 80si3608962pfw.0.2016.10.09.03.35.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 03:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id t25so5611014pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 09 Oct 2016 03:35:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=tO/jh01/H8Qzu3+N1/2qVyDX86onWXAcJ9mhnv3N5dw=;
        b=mVy+9hu+RtsasucXBzVaHouvD9o0KTHWQn4aOx2zMxEi2V/OlDzuXH1N+ROLFy/tbh
         rVzYJnIN4eilTtYFjvzVuDEAYm7GJg8kkz0lUXF1G0B+wnn+5wbxUCOOfkLO5ptwuKVh
         40vJK8MfyFrFeO5UxBhuOBaVe2FdKi7Cx15TumQptb5iVL56Y43TE711U8Figz1y+Tf9
         tARrS8M17HFvt4iSC2gIvGU2CSYtkIxXjbfL+HoiaGBuokDp2H5hxnBcgNCHwulN4x+Y
         cvEjpn7H1AEPn5ku+pOS6DyqlU48SsxO4kKIJuaM71HB7SXMogjAH7BAPFfgyp7143Oz
         2V7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=tO/jh01/H8Qzu3+N1/2qVyDX86onWXAcJ9mhnv3N5dw=;
        b=CLsVklG9opBTvhn+b9nErB7Wexbc4IZsiLrqQpHZpcz2qYCbB7m65Vx7K2wwXgdV9l
         NdtSzrCoPgQS2rFEVxLNoKax7vtf+g8tQOVQGVSXYjXz5h+K5+sFk6i43+mn2wRrNpwC
         6tdGCOEysW2papSlbEWl7DXqdFw86fXzabtmWt35DLUI9eK6rMYs30a5LucVdCIpLKT+
         Dffv3dtgx56MEzIpf6C6W8BPjCL2/lyRPU9uSRGzyZk1t9BjAtaAH7Z4IXefTz/D97Ft
         PJuHtfbrHKYFZqCN9KN7HDWsXWhmtNGrtBOG3HIxCP4BufODfDUnQbvzN2M9fEcWUjAr
         4b0w==
X-Gm-Message-State: AA6/9Rn/8vAP5pXsIOoZGDfOfPhXrtVYawWP20LMCzkRzc8fqEB8L9bDZaZW7UeduZP9HQ==
X-Received: by 10.98.28.69 with SMTP id c66mr45543757pfc.161.1476009354403;
        Sun, 09 Oct 2016 03:35:54 -0700 (PDT)
Return-Path: <bhumirks@gmail.com>
Received: from gmail.com ([223.176.142.105])
        by smtp.gmail.com with ESMTPSA id e1sm43475823pap.11.2016.10.09.03.35.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 09 Oct 2016 03:35:52 -0700 (PDT)
Received: by gmail.com (sSMTP sendmail emulation); Sun, 09 Oct 2016 16:05:33 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	mchehab@kernel.org
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: media: radio-bcm2048: constify v4l2_ioctl_ops structure
Date: Sun,  9 Oct 2016 16:05:23 +0530
Message-Id: <1476009323-19232-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

Declare the structure v4l2_ioctl_ops as const as it is only stored in
the ioctl_ops field of video_device structure. As this field is of type
const struct v4l2_ioctl_ops *, so v4l2_ioctl_ops structures having this
property can also be made const.
Done using coccinelle:

@r1 disable optional_qualifier @
identifier i;
position p;
@@
static struct v4l2_ioctl_ops i@p = {...};

@ok1@
identifier r1.i;
position p;
struct video_device s;
@@
s.ioctl_ops=&i@p;

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
struct v4l2_ioctl_ops i={...};

@depends on !bad disable optional_qualifier@
identifier r1.i;
@@
+const
struct v4l2_ioctl_ops i;

File size before:
   text	   data	    bss	    dec	    hex	filename
  20465	   3220	     32	  23717	   5ca5
drivers/staging/media/bcm2048/radio-bcm2048.o

File size after:
   text	   data	    bss	    dec	    hex	filename
  21425	   2260	     32	  23717	   5ca5
drivers/staging/media/bcm2048/radio-bcm2048.o

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/media/bcm2048/radio-bcm2048.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/bcm2048/radio-bcm2048.c b/drivers/staging/media/bcm2048/radio-bcm2048.c
index ea15cc6..fe637ce 100644
--- a/drivers/staging/media/bcm2048/radio-bcm2048.c
+++ b/drivers/staging/media/bcm2048/radio-bcm2048.c
@@ -2540,7 +2540,7 @@ static int bcm2048_vidioc_s_hw_freq_seek(struct file *file, void *priv,
 	return err;
 }
 
-static struct v4l2_ioctl_ops bcm2048_ioctl_ops = {
+static const struct v4l2_ioctl_ops bcm2048_ioctl_ops = {
 	.vidioc_querycap	= bcm2048_vidioc_querycap,
 	.vidioc_g_input		= bcm2048_vidioc_g_input,
 	.vidioc_s_input		= bcm2048_vidioc_s_input,
-- 
1.9.1


