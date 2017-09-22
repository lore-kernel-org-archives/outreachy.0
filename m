X-GM-THRID: 6468481887595659264
X-Received: by 10.99.96.15 with SMTP id u15mr5057157pgb.138.1506060801315;
        Thu, 21 Sep 2017 23:13:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.104.5 with SMTP id d5ls764429ywc.12.gmail; Thu, 21 Sep
 2017 23:13:20 -0700 (PDT)
X-Received: by 10.129.53.199 with SMTP id c190mr6599807ywa.34.1506060800596;
        Thu, 21 Sep 2017 23:13:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506060800; cv=none;
        d=google.com; s=arc-20160816;
        b=DCekOM+O6z55BtpYIwnNVlfkSLHeZhqn52DmE0dhvw4aCNVbvNVF0H5hrp9yvZUS+t
         g4o6Zya2s5NqUDkOw1BX39vWnkRir5m8Ki6Mb92PFcvKhz6R2Yg7i77MZHOiHTBRVQm8
         Z+QrFW65DJTjUw/MEtsVaRO2kBW9RGl7MSSG92WNzhuUCYkCWySKWEEJSHLAO9cNOOug
         vaTitdLq9llr0xV1vWxyd/tkrNZqZY5HFjdzeK4LbOrs5Z2cFOfSndv3/RBx2AMZy6j9
         fuBXCeir7tqYHsk5dQWXUlKLAhmandVV4w1WhhoWr/W6+29RZQ3ca5FIwRojKRgX/PJA
         mbjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=mtZ+DzuNxkFgRDk3Ci5uxkxRrLgWqVYiuEWI7ibT0n4=;
        b=Li+MOJpKpWR1NUlh46kU/UT2Vf5wzCdBEIPTq3q2P/BvAUvKqnjcaUYnnDhKGT2RNL
         4cMPpU6dsFE7XP5lMsseUTmYWBdbIzpgM4RrP7RQ7Sa98IJWxM62OrC/cGI97UsgxHPX
         mjAJMgcii/28chgqN8UT0gt1Q5C3H4D5sn84yCTPisVMD3ptYHWdUehjNpCGi+7/v1Z0
         hbSi0WNni5cA//pm2ECi83dY53xOYbsJqhm7O5FdiU91mYE8daMwwtDgZ2s0Z5FEhsH5
         PKCRaUlrWuZ5fbqBIKWp6ajScmUfMgDOv6r5PqpvusPm+epATYCwf0vNQAmE1rRTrjUu
         qgfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bnonllwm;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id k76si313558pfa.10.2017.09.21.23.13.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 23:13:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bnonllwm;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id h4so92478pfk.0
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Sep 2017 23:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=mtZ+DzuNxkFgRDk3Ci5uxkxRrLgWqVYiuEWI7ibT0n4=;
        b=BnonllwmsHDKQyfYkJ8EnZ9RiGLrvC46SRn+CPlfDhJcjSKeQG8y/bhG09DV39I9av
         0MxcVdwvETSd66mxkoOVL7MwoBI2caqrl4+bFAtwm6m34vaoQ11q9zMnBRIfQAZTei9j
         TudG3nX1nZvgZewQMw2LVM3TFHNiAUCvP3hsx1mh5j3hfE3pAASqCHFCZP7Mfy4H2hAt
         bbqGoRv5iFnfb8Gdu7TD6vuCit0S8kAdwunj0foWhmiqjaTRnj+0pLWk1/EK3/my5eCp
         ELHY8c3PZu9G/bsXabzM845Ni4noVqU/3LX4knBr0dwGWCI0YuBWqz7J102OAZzb77JD
         YeEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=mtZ+DzuNxkFgRDk3Ci5uxkxRrLgWqVYiuEWI7ibT0n4=;
        b=ZOZo9lTOvyP4e80Y4abP7MXz8rolB2nQo+5GqwvGoCpUYT5fmmr2x/3A93WNjnzp61
         k78vVIHeSoWPjYZ0oKxP4L/mjNz86f6TRASw3SaPv7zmKOxYx8HQlg60PJYQ06TeYzCh
         PvkwIjgrNcn8QyeZF7Hr/Zni2bB/Uo69y1yVkBvj8uvBd/BuqtNzgJVxf4SbAdbaihtb
         WipYPDX72N4um83qQd1ziTh7O3omRQFnSKd+HdGKS8jE4wmXZo05Rbdoqv08/KLdSQuZ
         3Dwtuo4l9Of8ccmquGRKye22RYRNrDYCtx+DdTDnrC4ohm/Hx/TOUUJc6uTb7mpYyLkr
         vpqw==
X-Gm-Message-State: AHPjjUj/IRCs4vy1ud6fGCCbsUelT5Ng9kn7ALlHxV4SJU5OoLXGeVtR
	cqnukRHWLS2PD0wSY2Aew7M=
X-Google-Smtp-Source: AOwi7QAvIFqfGZ743NOi6lbB0TW+sAzHzIoiKD4wuYHiStvCLXz8idNOhXMt5tLBEnKxDyoNmtMT6g==
X-Received: by 10.99.177.74 with SMTP id g10mr8314389pgp.326.1506060800194;
        Thu, 21 Sep 2017 23:13:20 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id g68sm5036841pfc.64.2017.09.21.23.13.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Sep 2017 23:13:19 -0700 (PDT)
Date: Fri, 22 Sep 2017 11:43:13 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-media@vger.kernel.org, devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] [media] atomisp2: remove cast from memory allocation
Message-ID: <20170922061313.GA10665@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Patch removes the following warning issued was coccicheck:
WARNING: casting value returned by memory allocation function to (char *) is
useless.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
index 6358216..53a7891 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
@@ -145,8 +145,8 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi, struct ia
 		size_t configstruct_size = sizeof(struct ia_css_config_memory_offsets);
 		size_t statestruct_size = sizeof(struct ia_css_state_memory_offsets);
 
-		char *parambuf = (char *)kmalloc(paramstruct_size + configstruct_size + statestruct_size,
-							GFP_KERNEL);
+		char *parambuf = kmalloc(paramstruct_size + configstruct_size + statestruct_size,
+					 GFP_KERNEL);
 		if (parambuf == NULL)
 			return IA_CSS_ERR_CANNOT_ALLOCATE_MEMORY;
 
-- 
2.7.4


