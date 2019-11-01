X-GM-THRID: 6754458583373447168
X-Received: by 2002:ad4:510a:: with SMTP id g10mr12499479qvp.90.1572644943174;
        Fri, 01 Nov 2019 14:49:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:166a:: with SMTP id d10ls2604732qko.16.gmail; Fri,
 01 Nov 2019 14:49:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2w2Oc74WGrGORkHlsL//DVHQbMI6K5LnLcfc/+9TT43Vvbd3OOa3U3QP2X2eIkGa8FORb
X-Received: by 2002:a05:620a:999:: with SMTP id x25mr5360716qkx.189.1572644942046;
        Fri, 01 Nov 2019 14:49:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572644942; cv=none;
        d=google.com; s=arc-20160816;
        b=y4ayVgmO6/BbV8l1Ltm0pYLrGBqE3T8kF4iCeIdEOoVjNpGE2oLcdt43dh3dyt8fNN
         IIXoIHLgQLpI337wr//8TcjTxcdGY7mrsikaqtfRnZNpqJdjh3nUg1RG80x45NpH8yr2
         ZlKAMq3ygaBFZtdP3pohw4MD80rW08GUR4Ca5qANFGh1PX4mWhLQ5rOWKYE1dxw4UqQk
         bRA8zHDw6DYH4R/K5Mi+0sQZe5IYuLs9JFs67Zanq1eFdpUKFchqfRKh4+Ut7AhMZ1Gu
         +ILNyqjF4GwlT2ujpdBsH2kY0NpI00udAo4qv/N95ZOuKc67IAKdt8vX1NDh/aNSMnEE
         xckw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=teI1DLghbkzO5wLL0GxrdEtPxcMPjOo+NKTZqVKi+SE=;
        b=Y9JJTzz/bEuBA1wGwZHTebor59NxDqO45O4U/aggVjzQ/yRIF/FfRrNLl7Xnz3UrVJ
         692UGueYf0EMPaMxMaWjISo+pexjQTncw3mx6pRo/pdKjfkGlSCXyyFCM0oGDOAHyuyp
         pwODLCLFujjhMc3788VSQDctTIvUAP5NijM3CBwvansnSIlDdd+5HEBQW5NzLNY1E0LT
         L37u6TyrBH5boBKD2ZhxPRVXEKIe9YoVoJW8V9XxKQSPmbHUtAE9aDi04agRyia6SJlq
         CkpeFJgHuPwyHHs8acn5PY4I4Ti/APN/BNt01m2iX/vsSMrE+R7Thb3i7WbD+ZrUHjX+
         JSWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gVxuR3zJ;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id u200si513486qka.2.2019.11.01.14.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 14:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gVxuR3zJ;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id o3so14899617qtj.8
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 14:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=teI1DLghbkzO5wLL0GxrdEtPxcMPjOo+NKTZqVKi+SE=;
        b=gVxuR3zJe7/on/OD92OUcrkCSlejDtRr92hn2Dsdd4c/1Bh4pmhEr/n2988Emyt7Vq
         ZN5xaEPUenefaszAE2d11Li1/MDzl8yzFDrRc+/AoeuRbs951t/ZELIfMflUiR7dfurn
         ZZlw22wpXYFQfv+5DGNVYi8TP+WbKlnlvVSLReO/Sk9Lx3zyrnwmJfX81J42y/o45Yoz
         PqPbgg+NLRcpGtSbne1AIw+zC5+72NNAbF00+lrWE3ypqxM9EzyzG6S1rudd0gBnOSbH
         rN0ZJNrAcPyuoQnIBwN0sQcOe1kyoQtU+xdmCJ2OnXxyW22ZFqDlJPCOMJNkR8W8g5er
         yLbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=teI1DLghbkzO5wLL0GxrdEtPxcMPjOo+NKTZqVKi+SE=;
        b=cumVaHzGUeVvd+D+lJ2++aeCVvsEK6afAqjE51M5a8HI7ZXRTF7jtSn2LdZTYxIAYR
         Tal4PblA7MTH+c8w2yXwB9KiP7+4V3szDBG/2RtPTILMzWqSsc9mKxAfUc6pzA2vYoou
         kf2IGSQ1ax3tl6qO5Ake3nTqCcnCit+FL34nN1TqHCr2vYww3dDhkxoVqeoAiwti+/Pa
         l4DD1fQqMO7pcGH4LMg6aHSe5N3sPnsm+El93Bc+aZ10Iwji3cBeW7Sou5Bxl8Y2R6Ln
         UpnTcIkwkn8arXWaMoJiCU/Oplj3CjDtI6mOdIFOr+PpIL6+iJpFu0VlnFOhEzCzO08/
         otCw==
X-Gm-Message-State: APjAAAXQLTWJpD2Ff+XUOxDvvHqq2wwuKUYkNFFy6PjUIQhMJ02wq2l9
	7uf4eZFuoHORP+4ne1ElKKLyvUFrl30=
X-Received: by 2002:aed:24c1:: with SMTP id u1mr1711622qtc.29.1572644941501;
        Fri, 01 Nov 2019 14:49:01 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-84-14.wifi.ic.unicamp.br. [177.220.84.14])
        by smtp.gmail.com with ESMTPSA id w24sm5482300qta.44.2019.11.01.14.48.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 14:49:00 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com,
	daniel@ffwll.ch,
	airlied@linux.ie,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org,
	trivial@kernel.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH v2 VKMS 1/2] drm/vkms: Fix typo and preposion in function documentation
Date: Fri,  1 Nov 2019 18:48:47 -0300
Message-Id: <20191101214848.7574-2-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191101214848.7574-1-gabrielabittencourt00@gmail.com>
References: <20191101214848.7574-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix typo in word 'blend' and in the word 'destination' and change
preposition 'at' to 'of' in function 'blend' documentation.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes in v2:
- Add fixing typo in word 'destination'
- Add change of the preposition
- In v1 the name of the function was wrong, fix it in this version
---
 drivers/gpu/drm/vkms/vkms_composer.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
index d5585695c64d..88890ddfc4bd 100644
--- a/drivers/gpu/drm/vkms/vkms_composer.c
+++ b/drivers/gpu/drm/vkms/vkms_composer.c
@@ -43,16 +43,16 @@ static uint32_t compute_crc(void *vaddr_out, struct vkms_composer *composer)
 }
 
 /**
- * blend - belnd value at vaddr_src with value at vaddr_dst
+ * blend - blend value at vaddr_src with value at vaddr_dst
  * @vaddr_dst: destination address
  * @vaddr_src: source address
  * @dest_composer: destination framebuffer's metadata
  * @src_composer: source framebuffer's metadata
  *
  * Blend value at vaddr_src with value at vaddr_dst.
- * Currently, this function write value at vaddr_src on value
+ * Currently, this function write value of vaddr_src on value
  * at vaddr_dst using buffer's metadata to locate the new values
- * from vaddr_src and their distenation at vaddr_dst.
+ * from vaddr_src and their destination at vaddr_dst.
  *
  * Todo: Use the alpha value to blend vaddr_src with vaddr_dst
  *	 instead of overwriting it.
-- 
2.20.1


