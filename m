X-GM-THRID: 6754190139198537728
X-Received: by 2002:a25:f20e:: with SMTP id i14mr7868654ybe.477.1572582437997;
        Thu, 31 Oct 2019 21:27:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:f703:: with SMTP id h3ls764810ywf.2.gmail; Thu, 31 Oct
 2019 21:27:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwJU13QRxauGSkf7eRVebPHkpds/4O5NwwWjOksiy8W7XDcZpF9pMYDZL6PyfM/VK8niGmo
X-Received: by 2002:a81:61c3:: with SMTP id v186mr7205582ywb.151.1572582436696;
        Thu, 31 Oct 2019 21:27:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572582436; cv=none;
        d=google.com; s=arc-20160816;
        b=tpV73HXlaJaY2QWmyz3At3tsH9Z5XyF58SkiusgIzTvrihq/8P9kVdSLmWiGjWaG8v
         Eb+97KGYMZDo7BGYgeHbBwJkAvsfigoMmITGe4uBww9Ve0aALKgFnY1sR/966/lv/LeH
         kYPKYrsHM9XUoB+qWh5r65A2v3Q+iq59aIl6Mb4L/AY7b6Hzs+PgZ1YTSwRPEs2s2lt5
         tr4nKdRBzRH23DUyFVtdHBRLgfkCgB6PCt8glP+8qciHZpOni1zKm5aEvgUjCGPAKvmQ
         HntYX9QTwIHp7xriwTP8zKi9aMJMPsAUkKEprR/dLq2hnCI7wiAKrf5xu3G5+N9hNzwF
         Xmcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=HpS7M3wugMxRqvwJlP7zk8Xh32CVSZbs51QsUAEIzfw=;
        b=G7gJGM80Gju9l6QR1FqtKBen0wSJpxcIpHFOrIC7fdwPtPUmbODiqB35bYR6EkAiCz
         vpmU4TLhQaj4mNsVOe9qYC7wmgVjDHzlTFhgNYWLPgrxVMVca27DwG4w/H1XSGyQ7ENr
         tMtGkssFw8yMWdLLUJra3q3lBG/9mXL7jU/GhaYsIn4Dnn87sUPjPBfn/boEB0zJfexX
         k2msJMn+ULGDCdWbFJ6ZoVAIZFmLd6PxfQpA49itC2/wH4fj0x9WKQUkmGGGZpXygUG/
         c741VQDoCfU92s5Zx2xTQ8himM0jH1g/i5/YJN9xs8nNHoFiQVRNOov+Ju6bIJc+hoVY
         vkrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eYOl9Xry;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id a1si495135ywh.3.2019.10.31.21.27.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 21:27:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eYOl9Xry;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id c26so11495792qtj.10
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 21:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HpS7M3wugMxRqvwJlP7zk8Xh32CVSZbs51QsUAEIzfw=;
        b=eYOl9Xry51JB4XOdcoO0HKnLb5V3OO+fyyZXo3Gyk4O17pxoDfoSvQUCR7XNoasLmn
         1JpmLWlUEimCevap83AXVIUpMM4tmRf7BrH/H9HZPBHebQwP4EUXbC7Mpu/iAUjg9bx4
         K/Gnk0D2Xoe4iTxrsIsps+Z1VX4K2XAEJQe1EY4qUmWUkm2MDrHWhRSkW90OsfNKH+at
         djFMIo9+Ypc0/PLBXNAydL8HRDa6ovC53rdB2Yv+9dgU30Jc9nGMQ7WSDhRJ/YdLkB8p
         3j//UCXEPr/yf2jxd3nXQKS5QarHMHlwIztXZJv9pIM9MK5iHpry0oPwBnaUJMvVUwNU
         kw+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HpS7M3wugMxRqvwJlP7zk8Xh32CVSZbs51QsUAEIzfw=;
        b=PgZTufb6HZQK7zsAHC2siM34gr3GQcsambuAzhkEVU1JvXZj0PuQ+sK61CsyhpCtkN
         xv/fzKRWK4YOQpAvtDlveQCUd9YMgc05EmUFXuHCtB5D1Hwgz+P0Gyao6fcNuA9QrOcl
         8nF9Mc8YTiFD6N3Xz81qlStn5BUiYpAuZZdgkDddOIZ2P72ARPaqX8js0oWIrWwtjRdp
         Y5IaEkNbSNCgVcZQ+XaAN8OaRDbThSQXltp+HYzvDck8U3CkzW6BS8p8Dw4b0ipeEb91
         TKeB69HeWjHh+k5kThaAjib/tbyhlZ2hi2pERrIXMC66CdnPP5r3aIktDeykQpo/OCbB
         3xpQ==
X-Gm-Message-State: APjAAAW19SNfh+DBiqew55Bf2hG31XE8XI8YVKB2uZVGLIR3qmqFt01j
	+w3ZZa2JO9ln2kVsagmpxHlBl0IcNJI=
X-Received: by 2002:aed:24af:: with SMTP id t44mr1230263qtc.135.1572582435878;
        Thu, 31 Oct 2019 21:27:15 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([187.106.44.83])
        by smtp.gmail.com with ESMTPSA id w24sm3719838qta.44.2019.10.31.21.27.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 21:27:15 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	sean@poorly.run,
	airlied@linux.ie,
	daniel@ffwll.ch,
	corbet@lwn.net,
	dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH] drm/doc: Adding VKMS module description and use to "Testing and Validation"
Date: Fri,  1 Nov 2019 01:27:06 -0300
Message-Id: <20191101042706.2602-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a description on VKMS module and the cases in which it should be used.
There's a brief explanation on how to set it and use it in a VM, along with
an example of running an igt-test.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Hi DRM-community,
this is my first (of many, I hope)  patch in this subsystem. I hope to have
a lot of learning (and fun :)) working with you guys.
I'm starting by documenting the VKMS driver in "Userland interfaces", if I
have been inaccurate in my description or if I misunderstood some concept,
please let me know.
---
 Documentation/gpu/drm-uapi.rst | 38 ++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/Documentation/gpu/drm-uapi.rst b/Documentation/gpu/drm-uapi.rst
index 94f90521f58c..7d6c86b7af76 100644
--- a/Documentation/gpu/drm-uapi.rst
+++ b/Documentation/gpu/drm-uapi.rst
@@ -285,6 +285,44 @@ run-tests.sh is a wrapper around piglit that will execute the tests matching
 the -t options. A report in HTML format will be available in
 ./results/html/index.html. Results can be compared with piglit.
 
+Using VKMS to test DRM API
+--------------------------
+
+VKMS is a software-only model of a KMS driver that is useful for testing
+and for running compositors. VKMS aims to enable a virtual display without
+the need for a hardware display capability. These characteristics made VKMS
+a perfect tool for validating the DRM core behavior and also support the
+compositor developer. VKMS helps us to test DRM core function in a virtual
+machine, which makes it easy to test some of the core changes.
+
+To Validate changes in DRM API with VKMS, start setting the kernel. The
+VKMS module is not enabled by defaut, so enable it in the menuconfig::
+
+	$ make menuconfig
+
+Compile the kernel with the VKMS enabled and install it in the target
+machine. VKMS can be run in a Virtual Machine (QEMU, virtme or similar).
+It's recommended the use of KVM with the minimum of 1GB of RAM and four
+cores.
+
+It's possible to run the IGT-tests in a VM in two ways:
+1. Use IGT inside a VM
+2. Use IGT from the host machine and write the results in a shared directory.
+
+As follow, there is an example of using a VM with a shared directory with
+the host machine to run igt-tests. As example it's used virtme::
+
+	$ virtme-run --rwdir /path/for/shared_dir --kdir=path/for/kernel/directory --mods=auto
+
+Run the igt-tests, as example it's ran the 'kms_flip' tests::
+
+	$ /path/for/igt-gpu-tools/scripts/run-tests.sh -p -s -t "kms_flip.*" -v
+
+In this example instead of build the igt_runner it's used Piglit
+(-p option); it's created html summary of the tests results and it's saved
+in the folder "igt-gpu-tools/results"; it's executed only the igt-tests
+matching the -t option.
+
 Display CRC Support
 -------------------
 
-- 
2.20.1


