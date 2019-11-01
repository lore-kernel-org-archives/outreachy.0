X-GM-THRID: 6754190139198537728
X-Received: by 2002:a5b:4c5:: with SMTP id u5mr9229584ybp.25.1572623005731;
        Fri, 01 Nov 2019 08:43:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:e403:: with SMTP id n3ls996679ywe.16.gmail; Fri, 01 Nov
 2019 08:43:24 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzIOIcjIFrAra6kNAHANVaEis7rdpy3LQltiWZQZkH2kti/U1uX/M7+89QROuwGyKtwSmu2
X-Received: by 2002:a81:8203:: with SMTP id s3mr9454289ywf.396.1572623004159;
        Fri, 01 Nov 2019 08:43:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572623004; cv=none;
        d=google.com; s=arc-20160816;
        b=alFhEcH0a8rxZyHOaQNW4f3SiPv1WQN6j2tOrDJZkWeZxPpsgUbhMEOCKFZGDFIF/p
         KPIav3QfsbN+wWs7EDmwDGLqY6bnINZ4OgVinlHFMYh/oXBgSGPv+WQb7EI89W23IJVj
         YK5YffolFHIi0m4AFrgYpbhqR6QLOcI51PBWZCtYCNqdgApKBuexQJrS3FmBY//Y4aHv
         2o/MKQB+k8YYnHmP+a5FEQiG+xuVQOhREvd6lZAnzgdUdSGJKyKsTMPnHRocWg/iS/7T
         cLLkFdZ/lsOeR8xDxS4GL5aW0JJbTI8rPl59JW5zHYbL/+Q3NVTkuFCXzqsc7hfwDknU
         lmjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=wKb52YVkC3NELqTeZJC/gLeC/MBsFUU9iPpUF2C2Ctk=;
        b=LXPQW/6qpqPGmb7NK+70fzzC6z0Uq/VYRCaUys01I1nB7Q2tAD9ho3OE82Bs8a05gi
         7PtC0PIjMe6iUPy7VXaeW9y0YpSJTJefeqVvGtOMUX5+DrRBOnGV1ztwCABgsUzP37js
         maRTMypIX0cvXXMzordl4ON8aH8XKEITmuhr4Mw590KBVTP5yQ8OBjAiF1LADrw1Z0Sj
         wb+He1t2Ivfh2Q4yAqE33V/nIDAKA2nYiYl4WLhg18fS4xnT1QEdl/4E6SPpsVE8NBLt
         911P+6+V3YHxuY14I9NvuYjO4Ubq9r2XKFpKtvI0yV44WpwhZyMn2oeCiqbFEOt9iFcm
         BBMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qlT/KZar";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x830.google.com (mail-qt1-x830.google.com. [2607:f8b0:4864:20::830])
        by gmr-mx.google.com with ESMTPS id r185si709531ywe.2.2019.11.01.08.43.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 08:43:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) client-ip=2607:f8b0:4864:20::830;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="qlT/KZar";
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::830 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x830.google.com with SMTP id t8so13421409qtc.6
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Nov 2019 08:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wKb52YVkC3NELqTeZJC/gLeC/MBsFUU9iPpUF2C2Ctk=;
        b=qlT/KZarrFEp/Vnhmhph+guCGCHV7SshaXo3+RJO9shLG9iR94hGhXTWTGw7+42HGo
         je3+Jxw/mgd7h1ChfIIKu8tgIcUZT3dgUf5Fyy66Z8LBQLP0/x6YskKOfYZRbNLIh9oA
         EfLKI+YZHWcL7UAugyujZmjZSFaTWH3bzDSJM5cqgDwFnju7LTd3nRUdptKcd9Teti3G
         uv67e9d1dRoVYjkAA9wCmyVW2toDPAZBajo0fbX1drYJkbuTqYePZEpZhCRGsmj+LDlo
         7H49tQUuxFpcOX4Uo+YG/En9fD1rhSceVpQ1IdxIhbpid+4aKYs5MOEmySkTKYB73mNh
         FCGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=wKb52YVkC3NELqTeZJC/gLeC/MBsFUU9iPpUF2C2Ctk=;
        b=smsmaQR7rI3rp187kNr0uLet5bCHPx/lWvsZE9IPo0d/2HZn6ztEFg3l6sTj7Yggle
         Bnzh9MiguxydGjmThW0edfKsofkHaUZ521wn/sjymfKXNzHErMN9NQGqY8Dr1Nhdc2U5
         Z5LYgrF6wX2/BzgDxPtn/VyIiGvsn5Hi782mRvRchggcUSxtcjtmUKI5V754QA6iZSnN
         gdkjVO8WGTVawIuK+Xjyh0SxfjTXKhC5KxhtERvlnyIogZkm5m8o16DrKTjXgElv8kuS
         +tAI/WJdc/ZSmktOTuaTqIuPVbyXq9tBl3WdwqIzY87Ac7Xqh5rbzphRhuxdhmrMfkqk
         PIcQ==
X-Gm-Message-State: APjAAAUdV0vKpKExF0BUICnsjciCWHjPV1vY7yDRLpiuAXwcbUD5PQr6
	ELUsNSYV6je43G/Ry6Ix2fKUE5SLaDo=
X-Received: by 2002:ad4:58a9:: with SMTP id ea9mr10756512qvb.179.1572623003347;
        Fri, 01 Nov 2019 08:43:23 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from GBdebian.ic.unicamp.br (wifi-177-220-84-14.wifi.ic.unicamp.br. [177.220.84.14])
        by smtp.gmail.com with ESMTPSA id x38sm4879243qtc.64.2019.11.01.08.43.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2019 08:43:22 -0700 (PDT)
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
Subject: [PATCH v2] drm/doc: Adding VKMS module description and use to "Testing and Validation"
Date: Fri,  1 Nov 2019 12:43:14 -0300
Message-Id: <20191101154314.25435-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a description on VKMS module and the cases in which it should be used.
There's a brief explanation on how to set it and use it in a VM, along with
an example of running an igt-test.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

---

Changes in v2:
- Avoid repetition of words in the same sentence;
- Make the explanation on 'setting the kernel' shorter, eliminate the
'make menuconfig' command;
- Add tab on enumeration to have one line per item;
- Clarify from each machine igt-tests commands should be ran on.

Tested the patch using 'make htmldocs' to make sure the output .html is
correct.

Hi DRM-community,
this is my first (of many, I hope)  patch in this subsystem. I hope to have
a lot of learning (and fun :)) working with you guys.
I'm starting by documenting the VKMS driver in "Userland interfaces", if I
have been inaccurate in my description or if I misunderstood some concept,
please let me know.
---
 Documentation/gpu/drm-uapi.rst | 36 ++++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/gpu/drm-uapi.rst b/Documentation/gpu/drm-uapi.rst
index 94f90521f58c..1586cbba05d0 100644
--- a/Documentation/gpu/drm-uapi.rst
+++ b/Documentation/gpu/drm-uapi.rst
@@ -285,6 +285,42 @@ run-tests.sh is a wrapper around piglit that will execute the tests matching
 the -t options. A report in HTML format will be available in
 ./results/html/index.html. Results can be compared with piglit.
 
+Using VKMS to test DRM API
+--------------------------
+
+VKMS is a software-only model of a KMS driver that is useful for testing
+and for running compositors. VKMS aims to enable a virtual display without
+the need for a hardware display capability. These characteristics made VKMS
+a perfect tool for validating the DRM core behavior and also support the
+compositor developer. VKMS makes it possible to test DRM functions in a
+virtual machine without display, simplifing the validation of some of the
+core changes.
+
+To Validate changes in DRM API with VKMS, start setting the kernel: make
+sure to enable VKMS module; compile the kernel with the VKMS enabled and
+install it in the target machine. VKMS can be run in a Virtual Machine
+(QEMU, virtme or similar). It's recommended the use of KVM with the minimum
+of 1GB of RAM and four cores.
+
+It's possible to run the IGT-tests in a VM in two ways:
+	1. Use IGT inside a VM
+	2. Use IGT from the host machine and write the results in a shared directory.
+
+As follow, there is an example of using a VM with a shared directory with
+the host machine to run igt-tests. As example it's used virtme::
+
+	$ virtme-run --rwdir /path/for/shared_dir --kdir=path/for/kernel/directory --mods=auto
+
+Run the igt-tests in the guest machine, as example it's ran the 'kms_flip'
+tests::
+
+	$ /path/for/igt-gpu-tools/scripts/run-tests.sh -p -s -t "kms_flip.*" -v
+
+In this example, instead of build the igt_runner, Piglit is used
+(-p option); it's created html summary of the tests results and it's saved
+in the folder "igt-gpu-tools/results"; it's executed only the igt-tests
+matching the -t option.
+
 Display CRC Support
 -------------------
 
-- 
2.20.1


