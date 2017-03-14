X-GM-THRID: 6397270990644051968
X-Received: by 10.46.22.16 with SMTP id w16mr1935006ljd.18.1489480722704;
        Tue, 14 Mar 2017 01:38:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.143 with SMTP id m137ls333283lfm.51.gmail; Tue, 14 Mar
 2017 01:38:41 -0700 (PDT)
X-Received: by 10.46.20.16 with SMTP id u16mr5147318ljd.23.1489480721584;
        Tue, 14 Mar 2017 01:38:41 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id f7si896142wmg.3.2017.03.14.01.38.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 01:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z63so13597586wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 01:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nTmjDrJzgwzJr5ly2ef6kggjI7YAkp8MfQdQXhrFH0w=;
        b=fE68k1jDhQ2fh39/IJNJ7omx2wkZe3t/zYOrfR6SkfjuyxkEyTY/rPMPB1FVrFcd6V
         EEhCmcIShEHOTMD1TxWYKwkntv39L7Gwv43+h1Kc/U7lwLhFVO6FmeCfiHhuHeKC0b7q
         /Qh2TLALtnCH4MvexLGuh2Ce69Ln0/tuKLKwhUZRlR1/Rhuqz0MfPvNke3Z2zIpx/yfQ
         RWuiz4LB6tKxEB3jvcnI0qBR8TpN/T5P36nADDABiwwoW193f+lYZZ3xzTeLfxREq3Tn
         ykWEi6x4eVFk+Put9H1+VjbbDJ6p/sUCHdNQ3libBKmQ+SyLfmJHk5q+FiVjxhMCluNw
         KEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nTmjDrJzgwzJr5ly2ef6kggjI7YAkp8MfQdQXhrFH0w=;
        b=HZexjQLpTr1EbN27J+aDZMmuJk2bKNPv0dg13a/6EUjwT+SJtMkCSu8b+eHENYC4MM
         BzNeDCM+YE53kXOgYnac687T5Qb1WElZRcgo11LNvEgj9r6GGCc+OcBMJ9vADKUIikkQ
         fbRHwXMfwxWfiWlbKzN/ANC5bBOne8pGx75AIWhfZ5HXMJ66qJzvT/Q7w307uMAkTFSk
         WfSKhVgTMJoMLR+42tM/O8K9B7UCpf13fnUVu7wcf22bQVPg6WQgLC7fG4xiNniRu3V4
         ojNxvI89bUC9w+CrYm0wQH2mQc9fq+5flakKasVZDpaqcqLYi2ymgo6Pij4Z+MDLoQNc
         1xtg==
X-Gm-Message-State: AFeK/H0pZem/C30+UZ30xzWEippqQ3XZ2SEGRhBmiewJI8bJbk7Eu/XC0J0yAX+WkywJIg==
X-Received: by 10.28.135.21 with SMTP id j21mr12535857wmd.70.1489480721260;
        Tue, 14 Mar 2017 01:38:41 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:2816:d9d2:5dd8:da73])
        by smtp.gmail.com with ESMTPSA id f48sm28063406wrf.17.2017.03.14.01.38.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 01:38:40 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: linux-doc@vger.kernel.org,
	corbet@lwn.net,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH v2] Documentation: admin-guide: Fix typos
Date: Tue, 14 Mar 2017 10:38:35 +0200
Message-Id: <20170314083835.4317-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fix typos in admin-guide directory.
Make documentation clear and grammatically correct.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
Changes since v1:
*Remove the changes in tainted-kernels.rst file.

 Documentation/admin-guide/kernel-parameters.rst |  2 +-
 Documentation/admin-guide/ras.rst               | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.rst b/Documentation/admin-guide/kernel-parameters.rst
index b516164..c5eae20 100644
--- a/Documentation/admin-guide/kernel-parameters.rst
+++ b/Documentation/admin-guide/kernel-parameters.rst
@@ -197,7 +197,7 @@ and is between 256 and 4096 characters. It is defined in the file
 
 Finally, the [KMG] suffix is commonly described after a number of kernel
 parameter values. These 'K', 'M', and 'G' letters represent the _binary_
-multipliers 'Kilo', 'Mega', and 'Giga', equalling 2^10, 2^20, and 2^30
+multipliers 'Kilo', 'Mega', and 'Giga', equaling 2^10, 2^20, and 2^30
 bytes respectively. Such letter suffixes can also be entirely omitted:
 
 .. include:: kernel-parameters.txt
diff --git a/Documentation/admin-guide/ras.rst b/Documentation/admin-guide/ras.rst
index 1b90c6f..8c7bbf2 100644
--- a/Documentation/admin-guide/ras.rst
+++ b/Documentation/admin-guide/ras.rst
@@ -8,7 +8,7 @@ RAS concepts
 ************
 
 Reliability, Availability and Serviceability (RAS) is a concept used on
-servers meant to measure their robusteness.
+servers meant to measure their robustness.
 
 Reliability
   is the probability that a system will produce correct outputs.
@@ -42,13 +42,13 @@ Among the monitoring measures, the most usual ones include:
 
 * CPU – detect errors at instruction execution and at L1/L2/L3 caches;
 * Memory – add error correction logic (ECC) to detect and correct errors;
-* I/O – add CRC checksums for tranfered data;
+* I/O – add CRC checksums for transferred data;
 * Storage – RAID, journal file systems, checksums,
   Self-Monitoring, Analysis and Reporting Technology (SMART).
 
 By monitoring the number of occurrences of error detections, it is possible
 to identify if the probability of hardware errors is increasing, and, on such
-case, do a preventive maintainance to replace a degrated component while
+case, do a preventive maintenance to replace a degraded component while
 those errors are correctable.
 
 Types of errors
@@ -121,7 +121,7 @@ using the ``dmidecode`` tool. For example, on a desktop machine, it shows::
 On the above example, a DDR4 SO-DIMM memory module is located at the
 system's memory labeled as "BANK 0", as given by the *bank locator* field.
 Please notice that, on such system, the *total width* is equal to the
-*data witdh*. It means that such memory module doesn't have error
+*data width*. It means that such memory module doesn't have error
 detection/correction mechanisms.
 
 Unfortunately, not all systems use the same field to specify the memory
@@ -145,7 +145,7 @@ bank. On this example, from an older server, ``dmidecode`` shows::
 
 There, the DDR3 RDIMM memory module is located at the system's memory labeled
 as "DIMM_A1", as given by the *locator* field. Please notice that this
-memory module has 64 bits of *data witdh* and 72 bits of *total width*. So,
+memory module has 64 bits of *data width* and 72 bits of *total width*. So,
 it has 8 extra bits to be used by error detection and correction mechanisms.
 Such kind of memory is called Error-correcting code memory (ECC memory).
 
@@ -186,7 +186,7 @@ Architecture (MCA)\ [#f3]_.
 .. [#f1] Please notice that several memory controllers allow operation on a
   mode called "Lock-Step", where it groups two memory modules together,
   doing 128-bit reads/writes. That gives 16 bits for error correction, with
-  significatively improves the error correction mechanism, at the expense
+  significantly improves the error correction mechanism, at the expense
   that, when an error happens, there's no way to know what memory module is
   to blame. So, it has to blame both memory modules.
 
-- 
2.9.3


