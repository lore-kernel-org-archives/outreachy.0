X-GM-THRID: 6397271096211537920
X-Received: by 10.25.18.219 with SMTP id 88mr5191230lfs.29.1489480746539;
        Tue, 14 Mar 2017 01:39:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.19.10 with SMTP id 10ls1671269ljt.24.gmail; Tue, 14 Mar
 2017 01:39:06 -0700 (PDT)
X-Received: by 10.46.83.76 with SMTP id t12mr6467296ljd.26.1489480746105;
        Tue, 14 Mar 2017 01:39:06 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id t131si757148wmf.1.2017.03.14.01.39.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 01:39:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id u132so13588915wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 01:39:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Xekh1gWYPsrbLjgOwBUb5xzjDO9qpHA+a6ubcTVFj7Q=;
        b=fYPHxkMZCgN18qpkDZX0508X+wb3lOYMm3CDmOv4Y1qbgVFOgSBpqRbqHVr4d0pfyN
         Dsizo948D0VMEI4pNTLcw+m8R40cMPcjfAis1Z95DfpDSbBfwlzvWxE9rV+iK46uE6uQ
         vGRiVuK2UJcW++0djpzs73hydFyP5bIPAjVvGiKrST7f+rx7kyR8iwOI/WrZQnxWRjgy
         krURzOe09vks3RFeY5sP2sHriuQpSfKyh5QWUQC0F8yLMGLnx9rM4gn216DyXpbmPWaS
         l1+/4AO+UV4C8TXYIEpamjW/kg/mqxzQ4gflx09i5lXHLTJyjjeEKTGUdTAeuhv0gr+2
         zQdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Xekh1gWYPsrbLjgOwBUb5xzjDO9qpHA+a6ubcTVFj7Q=;
        b=bNs7ntUMCp2+x4i+58mVfwVllWitmHXSG/+NX8HpI4upXhOVEv8xGwy2k6Hd5c/9j3
         adaePNWPx78ti8oTZrdbeuzq3HoEH6V7tZ7dPKjUVcynN7MCyBEYMxOUfgCXGXhmw/Z2
         9y/fkba0XaPOnM4vwbyCTo/gl8xnJidm4ULF/O5JjnflyDg5+WpflKliw9bGjW3t6F9t
         PUdalk26V//ErAPrUr6HSOLAjgVByGmt785IjFnAjxZvsHEh28DCCKisFNQlgGrVUfSv
         ZQlReq9bS6WsjGNfOgeFZ7KyVlRBVttQs6+EOzCMfzOyt/nTJkmxSCw3obf4wFB8my0H
         8aiw==
X-Gm-Message-State: AFeK/H2BPGxaIDyQwJQYKCQeAGvzjuJK6JNdRD2qpLMCMyEONVo0/DrrZ2dBB6Ni/CxhYw==
X-Received: by 10.28.234.147 with SMTP id g19mr13512510wmi.102.1489480745921;
        Tue, 14 Mar 2017 01:39:05 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:2816:d9d2:5dd8:da73])
        by smtp.gmail.com with ESMTPSA id g5sm28226871wrb.48.2017.03.14.01.39.04
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 01:39:04 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: linux-doc@vger.kernel.org,
	corbet@lwn.net,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Documentation: x86: Fix typos
Date: Tue, 14 Mar 2017 10:39:02 +0200
Message-Id: <20170314083902.4491-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix typos in x86 directory.
Make documentation clear and grammatically correct.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 Documentation/x86/boot.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/x86/boot.txt b/Documentation/x86/boot.txt
index 5e9b826..694979a 100644
--- a/Documentation/x86/boot.txt
+++ b/Documentation/x86/boot.txt
@@ -336,7 +336,7 @@ Type:		read
 Offset/size:	0x20e/2
 Protocol:	2.00+
 
-  If set to a nonzero value, contains a pointer to a NUL-terminated
+  If set to a nonzero value, contains a pointer to a NULL-terminated
   human-readable kernel version number string, less 0x200.  This can
   be used to display the kernel version to the user.  This value
   should be less than (0x200*setup_sects).
@@ -1105,7 +1105,7 @@ address of the struct boot_params.
 
 **** EFI HANDOVER PROTOCOL
 
-This protocol allows boot loaders to defer initialisation to the EFI
+This protocol allows boot loaders to defer initialization to the EFI
 boot stub. The boot loader is required to load the kernel/initrd(s)
 from the boot media and jump to the EFI handover protocol entry point
 which is hdr->handover_offset bytes from the beginning of
-- 
2.9.3


