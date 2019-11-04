X-GM-THRID: 6755488962810216448
X-Received: by 2002:a1f:1ece:: with SMTP id e197mr11671990vke.89.1572884843579;
        Mon, 04 Nov 2019 08:27:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:3117:: with SMTP id m23ls391604uab.0.gmail; Mon, 04 Nov
 2019 08:27:22 -0800 (PST)
X-Google-Smtp-Source: APXvYqymCdn1SPyPsJRwZeGv5tvIy/phdkaadSJ5ZAeZN6gq32fg7/rRLTkpmB2PZPdOcnzpQjIu
X-Received: by 2002:a9f:2382:: with SMTP id 2mr12503446uao.95.1572884842586;
        Mon, 04 Nov 2019 08:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572884842; cv=none;
        d=google.com; s=arc-20160816;
        b=jx3qZ9ZqJkiclOVy5k3FKVVbZHOI594hJsaB8sGD5gCLXzNu1LMC4oktlmjlQNL9bG
         qW2udNwvt7kRXjwFj8LbY6zt2GUZnYQVHJjGv+2QG3zTFDpq1N8G9RxhHhrSmZ2NxQD8
         25tPWBalNzG+dVwlBbbjOWgncA438XsFGIn2XeJ666SJE+MapIxhE3JwmXRmSyAokVez
         BiNBL9lvIyz+KFFnV83WmZjSnwWsyCe4Qo3UOUl+taDXvWVtLMrLfurwvVJlxGi6H5RA
         TQ+Zu8H0FMF6IupaSt6CJOrtReDb0a54uiswrr8ly6eIkk1Bx5Ohu6X+oowv6t5AZO+3
         Kmzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=i66A6pPwTuTMjG+BVvr5dEhi3nTPOcjA9Wo5ZsbJLGM=;
        b=ST80VvHbU4fP9s4167FHIwQ+kN0Cn8/DDsYO8sZs6Ywg6n7ZW2VEW905cDhbj0ekNO
         BemC71/SoSz6+2NbOSq+9JaFlblF9EHQYfcgPmaWC80X+Eq7mDS9nK9PLoIPWCyzO6f1
         kuS0VD35TZ+yCkNdSe00mfg9PPO8HHoEF4P6msvX+oCGPisWOhPyOqnLCJxYalxhKUkp
         aNVvCMW33aRwHfF3Xyu5Y0/7vMpD5/kAe3U2PceR4O4iXh3J2KeZAoUAZvyUu9rdF47i
         1lZRw0RX9K5a3R8tFSd21+YepB5YlkDaDsK52EH3CAmg/fIV1zXUA3X/P+10HOxwmWKs
         qs4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=edyirGAk;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com. [2607:f8b0:4864:20::742])
        by gmr-mx.google.com with ESMTPS id y17si343622vke.2.2019.11.04.08.27.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2019 08:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) client-ip=2607:f8b0:4864:20::742;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=edyirGAk;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::742 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x742.google.com with SMTP id m125so18148163qkd.8
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Nov 2019 08:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i66A6pPwTuTMjG+BVvr5dEhi3nTPOcjA9Wo5ZsbJLGM=;
        b=edyirGAknSCqx5G4/iS96ij1SqLsJ0hUWva5SoYDegi94n9vAlQGl6WeDQsMsqLmdR
         Hdyv9IHi3ioK/LAziTLpIkEUEdNLNkFJ+JDUyKuDELyaneQ0mZYSIPOe2agJTXhYHXpr
         49CVNgvsHr6kVqrlSMzvm6Fevr2YrSDwx3zemhUAKWDTbkB4+D2YFlBBr+pAv+6BZzAN
         njyOJpnDKFKP9yWSU9MHsO3xa9fvadxcp0wYDvF+vigu8oRuxRhiwKXhS7ZdkoaVxMHo
         kz3wUH372tIDoWR4c3EnywJXVFhzWydTwCz6mHvhyuKNpudVws+R5x04xfujAbaf5tHa
         2LFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=i66A6pPwTuTMjG+BVvr5dEhi3nTPOcjA9Wo5ZsbJLGM=;
        b=o6azgRw07hrEQVvpltJZVw09prceYjTr/ZvdBlXYEsqypj4FjejOqn/CVj3RMZqi6F
         ec6RZDuTZmcbrOYSJ6a3TDoG8qfBLeqo1I9oZ0Cxd31LPHpkgxtRAsIypWMHDL3rX6Pg
         bDBjqWMOiEtML4dq91IcqiW8/e3YYf+WHsGXKBOO8u2y8SyxS9HyYp2EyrkYYTTHJWf/
         d0wej5is9zrzCg2X6BiwYjHwwAR4Df5JXN01Hq94cnUOe0NtFwo59drIKrxHzZ+xW7Q4
         iA4NfOqK95qzo81poUWZLIgN4G3c74Gid4EmT/n/WiMQKCWQGSmcCXxnXLNhujWq3nK5
         hPPg==
X-Gm-Message-State: APjAAAWN1ViZwYH6QwdxL/uXNHUyQKrPjlWGmrUh5Es44heqX+S9Hv94
	iJFQA6Bho7XMSOkypxH32VcK8HaPrl4=
X-Received: by 2002:a37:9c52:: with SMTP id f79mr5479121qke.163.1572884841910;
        Mon, 04 Nov 2019 08:27:21 -0800 (PST)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([187.106.44.83])
        by smtp.gmail.com with ESMTPSA id i14sm8876562qke.102.2019.11.04.08.27.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Nov 2019 08:27:21 -0800 (PST)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	manasi.d.navare@intel.com,
	rodrigosiqueiramelo@gmail.com,
	hamohammed.sa@gmail.com,
	daniel@ffwll.ch,
	airlied@linux.ie,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	sean@poorly.run,
	corbet@lwn.net,
	dri-devel@lists.freedesktop.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH VKMS v3] drm/doc: Add VKMS module description and use to "Testing and Validation"
Date: Mon,  4 Nov 2019 13:27:05 -0300
Message-Id: <20191104162705.19735-1-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a description on VKMS module and the cases in which it should be used.
There's a brief explanation on how to set it and use it in a VM, along with
an example of running an igt-test.

Changes since V3:
 Rodrigo:
 - Change the log message to imperative
 - Fix some bad spelling/writing
 - Add a blank line before enumeration

Changes since V2:
 Andre:
 - Avoid repetition of words in the same sentence;
 - Make the explanation on 'setting the kernel' shorter, eliminate the
   'make menuconfig' command;
 - Add tab on enumeration to have one line per item;
 - Clarify from each machine igt-tests commands should be ran on.

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---

Tested the patch using 'make htmldocs' to make sure the output .html is
correct.

Hi DRM-community,
this is my first (of many, I hope)  patch in this subsystem. I hope to have
a lot of learning (and fun :)) working with you guys.
I'm starting by documenting the VKMS driver in "Userland interfaces", if I
have been inaccurate in my description or if I misunderstood some concept,
please let me know.
---
 Documentation/gpu/drm-uapi.rst | 37 ++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/gpu/drm-uapi.rst b/Documentation/gpu/drm-uapi.rst
index 94f90521f58c..8271c1e240b7 100644
--- a/Documentation/gpu/drm-uapi.rst
+++ b/Documentation/gpu/drm-uapi.rst
@@ -285,6 +285,43 @@ run-tests.sh is a wrapper around piglit that will execute the tests matching
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
+virtual machine without display, simplifying the validation of some of the
+core changes.
+
+To Validate changes in DRM API with VKMS, start setting the kernel: make
+sure to enable VKMS module; compile the kernel with the VKMS enabled and
+install it in the target machine. VKMS can be run in a Virtual Machine
+(QEMU, virtme or similar). It's recommended the use of KVM with the minimum
+of 1GB of RAM and four cores.
+
+It's possible to run the IGT-tests in a VM in two ways:
+
+	1. Use IGT inside a VM
+	2. Use IGT from the host machine and write the results in a shared directory.
+
+As follow, there is an example of using a VM with a shared directory with
+the host machine to run igt-tests. As an example it's used virtme::
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


