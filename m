X-GM-THRID: 6671347269722177536
X-Received: by 2002:a0d:fe84:: with SMTP id o126mr20656138ywf.203.1553525979156;
        Mon, 25 Mar 2019 07:59:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:4cc6:: with SMTP id z189ls6565714ywa.7.gmail; Mon, 25
 Mar 2019 07:59:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz0SYbEwCw2uaTSG9zn+4C11xBDiprlLbQWsr2danEvUBSBm+UUcyIrTvmNyf3PkxFIBYK9
X-Received: by 2002:a81:128e:: with SMTP id 136mr21320863yws.88.1553525978114;
        Mon, 25 Mar 2019 07:59:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553525978; cv=none;
        d=google.com; s=arc-20160816;
        b=k8ta5FskWOa8LU+BqqeR7UvOMRE1M1tvbvz/AjQCAgUf/aW4MJCNx55Dbh/KNkTzA9
         YE4CNnXSDNiglMirlzrlhOdavE/iow4kRbO7aig97pDS5L9Z/1E+02O52GXzj/7psWEh
         +CnIpnEFW3v2Vrb6451QUUMjYncRpJDslyVJB7i98hMb5sVLcULvJtK4ESWpDNsV8OVY
         Dd9sEnHjwYRhepVZ6XGHy+yNxKy513nmy0cl6AY7pfg8sTY0i1kEgh/5tFLCFK29gxEn
         BzbBWMpHunCDhslCOnXdcqoFFohuFm+so9a8PtmVqULXDr3Nv+QLBV0at5URTz7SjiKN
         fuKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=fXAbZS3752620u1ahf5WBXcnYnOmMyuXgqIINPo03Bs=;
        b=PnjcrbC+zTJiBwqFrq0f9EodIugxXP7db5/I/rRraxBBulU+mjGy3/CR7E5krWLdmi
         TsCGa7UDbym2VmY/XqKAJi3ARLre+MiayRewQwKVdJsd1QHLFLf3vQYZZaQ7PPF5uUZo
         MRrDcfO9yUw+N2FPt3mDnSmnUJOOHBKeYD2XfM+7qjKAyAMXWfFFXe0E8Xx9CvA+Y5aN
         grcLpYpVX6XJ2owFOF36+T9Dj7ONF3hK9v5sb3hlOkigLxHB+pWn/iTcWFGX9g8zcp9k
         6aRXyOlx9BjSVH6yBI0mBd3vzzyTC56y7JZb+9OywvNI6iIuezfYaapbJO4miSov0Oc7
         tI9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LWLnv97m;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com. [2607:f8b0:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id e23si1238957ybb.1.2019.03.25.07.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Mar 2019 07:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) client-ip=2607:f8b0:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LWLnv97m;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::32f as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32f.google.com with SMTP id d24so8253768otl.11
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Mar 2019 07:59:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fXAbZS3752620u1ahf5WBXcnYnOmMyuXgqIINPo03Bs=;
        b=LWLnv97mlEyN4pqvjwZgX52sOwK4xQ9p9lnTeFWRZpt6mWkWgeyHFt0CK3VdqKAEMJ
         y8OY5hBOE/aNeK+FWHnzCoQbDUpDgyYhHPTYjo3LUtF0x7uvWyWPBSg5H/PlMuK5+WQO
         K70z/B6IK1IpukpYKl6Zh6avrqmIFQEQ8N50ZlzCIW39rulZ1lnDqC+AS3nhfqthpW47
         abuUq52nK1YMzj0lIiHvDXDrhEDxp6m7Tr8vqQFC2D0jMnZZFRTktse8/yAMZCfymiWR
         Zc3/t04bP9RzCxUVlL8Cw9LtNqWO8iP5mZg07+lwb/w5qqEc07TKPbXGWKaFuDo5sIjO
         9aNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fXAbZS3752620u1ahf5WBXcnYnOmMyuXgqIINPo03Bs=;
        b=nT3bfr8/NOLk1DM9DFWzxK0mRNJ2beKj1ZJZ47F3cqXwfuJbGUvqRygX/SKi/t1+US
         HSSxUx9vn4qQbzTGSLUCHIEfdJF+KuwFSITiBF7gtXwiRox4U+cO7aRoCLvIlViaqbLH
         w5H5MkvhTUnivvTXeaqxhlxYEi12eHFvUgerjE8mt9y4qUuqDi6RdH0U1/uJZtruaSNU
         82WPGQk4gZDxWRBNe99YjZjifRGj/R8+ozwp0HUXJw3P+21+3zY+cOmF4kLnuhP2UggO
         +5L9OchODXs42tfpmN9ooNs293arKeQxWhT1KO5W2X5ybyTgF/3uKeI4Zjf2HZ71ivgv
         1fMQ==
X-Gm-Message-State: APjAAAUio4o/DvafymMSFbI3NYurT5ya/qUiVzFaZKChwM5bUfqrQJdZ
	VcduidMuq6P9xtrHOQ5sP5Ilu7fHY3g=
X-Received: by 2002:a05:6830:2009:: with SMTP id e9mr19093007otp.142.1553525977498;
        Mon, 25 Mar 2019 07:59:37 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:832:78e3:a24f:c6c7])
        by smtp.gmail.com with ESMTPSA id 88sm7434856otj.3.2019.03.25.07.59.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 25 Mar 2019 07:59:36 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2] Staging: media: davinci_vpfe: Fix preferred form of passing a size
Date: Mon, 25 Mar 2019 09:59:34 -0500
Message-Id: <20190325145934.8467-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix perferred form of passing a size of a struct to improve readability
and eradicate an opportunity for a bug when the pointer variable type is
changed but the corresponding sizeof that is passed to a memory
allocator is not.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 3d910b85905c..30e2edc0cec5 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1264,8 +1264,7 @@ static int ipipe_s_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		module_if = &ipipe_modules[i];
 		from = *(void **)((void *)cfg + module_if->config_offset);
 
-		params = kmalloc(sizeof(struct ipipe_module_params),
-				 GFP_KERNEL);
+		params = kmalloc(sizeof(*params), GFP_KERNEL);
 		to = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
 
@@ -1306,8 +1305,7 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		module_if = &ipipe_modules[i];
 		to = *(void **)((void *)cfg + module_if->config_offset);
 
-		params = kmalloc(sizeof(struct ipipe_module_params),
-				 GFP_KERNEL);
+		params = kmalloc(sizeof(*params), GFP_KERNEL);
 		from = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
 
-- 
2.17.1


