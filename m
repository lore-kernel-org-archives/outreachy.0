X-GM-THRID: 6476443340841680896
X-Received: by 10.99.111.7 with SMTP id k7mr466717pgc.109.1507914471026;
        Fri, 13 Oct 2017 10:07:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.246.4 with SMTP id x4ls183322pfh.13.gmail; Fri, 13 Oct 2017
 10:07:49 -0700 (PDT)
X-Received: by 10.98.65.8 with SMTP id o8mr456311pfa.27.1507914469167;
        Fri, 13 Oct 2017 10:07:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507914469; cv=none;
        d=google.com; s=arc-20160816;
        b=P/qLP5CzgKoemu828Xi5yIuuw+01dyRRtGSKtWIplrHs7Nje1xTuugHraym+p7K3dJ
         QOJ/nA+itNKNKtzfnwPhXV5kuP0B4LXWP4oXsToU9wZ2Fm2vXNr31jgkzCyGem83YcHY
         x0zgdYg00eMknB06ZS8GA6F3N/c4udXB0h1x1Pl4oTUvhOcXqPFpjJ8ZQtYwq5Ctz2Wk
         Ql04uS3CuhmPL8M8YGih8OQySQKAyLJNhYGyt83yFzODu/ooiCSq4zY0erDvH4kpTQ4M
         URq9fenSzwz178TIcrZL6aDNMfQDPQM3gKmT54V0s/59AyXTe2r+sbKf6FdKRa4HTHhB
         o1jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=nAgd4AakMAm/lSZcdVImfAbyfjO98Hqdcj0oZv2Hhdg=;
        b=lOmCEU64SXGXQ4B5CmLphwOsGSiL8GetOWULXG7KsKepcb86VCq1Ui3k1qrOPoU1/2
         uUFw1Re3mbp6SwdzHdZMXwO/tav0eRVh+hEPeXaRz/had07KtRU+eFsSGIBTe0bMNj/z
         VHh1CbrTqaaWvDWqhmY0KfXZwRDCBvtPMudB0ATHjO4DFGWC6vKL5P5yeLVYWOyFdUBa
         8V4lkWal3cLpp/bFOAMAcwZ6DZxdNG+u4cqP0gXrlQR2+nNTxt7aENJP0fIN7C5PRPhX
         Rn58/sRjOjufxcUDgSHq5ZZlJV3/VOHb4FZg80SOSVbYPunIz3QbiWRl7gb8DwQkLlZT
         2YVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eMk7a8Nm;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <harshasharmaiitr@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z2si70718plk.4.2017.10.13.10.07.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 10:07:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=eMk7a8Nm;
       spf=pass (google.com: domain of harshasharmaiitr@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=harshasharmaiitr@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n14so10875319pfh.8
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Oct 2017 10:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nAgd4AakMAm/lSZcdVImfAbyfjO98Hqdcj0oZv2Hhdg=;
        b=eMk7a8Nmt4hfuZs17CtpuHPLzf+DUt4n2nXl6nBQiT0MNMhWxGTgjbfO+GvnhIBU6u
         Nr4Kv8upEKb0E/9r2Z0w+dG8WPkwIA4crF0XgTWFJG/eszCmkqQLI2MB+CHB3ZNAtwrZ
         GK1rNAHTwfMEzENHRcJoNhyjXn2DxcLKwgO+hNV5jOOfjEJ816qfxPnR+56KC0BHBSzd
         pyXxxNBWcOJ7Dvd3Dy44JxFYQMVLl0Yr/SJPGQ2gTli+OExiObd8fH4Udg978cPMmYlu
         DwHHkNLb281KbZYxB82uov3QIEPaX8noDTRutBqzSE1NmgayfpekVwPQTHDQelvDYJOn
         r9iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nAgd4AakMAm/lSZcdVImfAbyfjO98Hqdcj0oZv2Hhdg=;
        b=Ldo4MnOsCm6lqO3s44q8BwQntw043FHl46CxzTy28tNSPivk1vWQInQeNAYVo4YrsS
         LTI4QqJ26L1LXNI5eegpTUkmvRWQ3a3S+lasruk4vx7YDMlwJGPSVBZHJcEVqTp2O+/n
         L7bJpvs/WO3cf/EIKFWMPAaaPdLwk5WMSynkNkFIjorpgQ6yZbeHyj4s2fO6uc0YAHS8
         fJbthq0pz75ef+B2hlCBqj5uAeQ8ZlI5Cpd1vD+qAoJOFgVpiChNZuwBy05mL8/wfoyW
         zXUpFWgOZyMyEkOLzU+w8IQmevdHAGLQryPcLll3uK2JhsPLdReA5TN5rYeWA9j01glG
         rhUg==
X-Gm-Message-State: AMCzsaWTzw1YzjzPE4ZQZOvOvtP9hLJ+cy6gJp4GG1Z+vihp6UHs7Jt8
	1R3BoH3ly1LJERfOo0mSzhI=
X-Google-Smtp-Source: AOwi7QDWoFFqkOXLuYfKRN6SM5AXNlWCYQ9qVYiqTVmO6j2tP2yQ2uS7nRjnGOWwtKiAHYdcntz/IQ==
X-Received: by 10.84.234.194 with SMTP id i2mr1919811plt.420.1507914468951;
        Fri, 13 Oct 2017 10:07:48 -0700 (PDT)
Return-Path: <harshasharmaiitr@gmail.com>
Received: from localhost.localdomain ([103.37.201.27])
        by smtp.gmail.com with ESMTPSA id 70sm3112795pfv.97.2017.10.13.10.07.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 10:07:48 -0700 (PDT)
From: Harsha Sharma <harshasharmaiitr@gmail.com>
To: pablo@netfilter.org
Cc: netfilter-devel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Harsha Sharma <harshasharmaiitr@gmail.com>
Subject: [PATCH] Update .gitignore
Date: Fri, 13 Oct 2017 22:35:24 +0530
Message-Id: <20171013170524.8104-1-harshasharmaiitr@gmail.com>
X-Mailer: git-send-email 2.11.0

Added comments and files generated by libtools

Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
---
 .gitignore | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/.gitignore b/.gitignore
index fa86c482..3d1fc79d 100644
--- a/.gitignore
+++ b/.gitignore
@@ -1,17 +1,17 @@
+# Dependency and object files
 *.a
 *.la
 *.lo
 *.so
 *.o
+
+# Generated by autoconf/configure/automake
 .deps/
 .dirstamp
-.libs/
 Makefile
 Makefile.in
-
 /include/xtables-version.h
 /include/iptables/internal.h
-
 /aclocal.m4
 /autom4te.cache/
 /build-aux/
@@ -19,3 +19,9 @@ Makefile.in
 /configure
 /libtool
 /stamp-h1
+/iptables/iptables-apply.8
+
+# Generated by libtool
+/iptables/xtables-multi
+/iptables/xtables-compat-multi
+.libs/
-- 
2.11.0


