X-GM-THRID: 6397494465443921920
X-Received: by 10.46.9.141 with SMTP id 135mr10242ljj.19.1489532754086;
        Tue, 14 Mar 2017 16:05:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.227.79 with SMTP id c15ls13714lfk.49.gmail; Tue, 14 Mar
 2017 16:05:52 -0700 (PDT)
X-Received: by 10.46.84.13 with SMTP id i13mr13217ljb.2.1489532752669;
        Tue, 14 Mar 2017 16:05:52 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x241.google.com (mail-wm0-x241.google.com. [2a00:1450:400c:c09::241])
        by gmr-mx.google.com with ESMTPS id y19si461221wmd.0.2017.03.14.16.05.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 16:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) client-ip=2a00:1450:400c:c09::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::241 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x241.google.com with SMTP id z63so2122208wmg.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 16:05:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Y4GrRBGKiKrLSOJkf2OHaavlC7NEjgEXtuH7K8i9xSU=;
        b=jSshpDhl6578vw9XFaEVjRUKVAu+GsEWWAYq+ESxXIXOmbdO0wrkurVbbqCGUhcjfF
         VqdMlzJsyb53Hu9w8V8U46thPAuIC35HrQ5vCQawXBaqXZuuU2WE4BbdVv+qIXQtkTbt
         +19zELzy6Yi+XsglK5TXjGd6KU+fg7+5+jzSsp3lfHBSL7cqbNhqCDjr3MZdhdt9o564
         82Rs/GaK1eLdT81CXemkmhY9SGx1XiSX6RNEXyp0YwNWO63MDzzlOOTSdQQqUXnonZPy
         dKegrd/2dexVv/zFGeVcKsbSppcalCUpkP+fNOr+VqowrrnhoT1DFxwzZVNS2Yi5qcIt
         uxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Y4GrRBGKiKrLSOJkf2OHaavlC7NEjgEXtuH7K8i9xSU=;
        b=sDaVnagyF2Yd6/xp6b6Lo4Rlj5khwHFCaNX3H8tf+SedPR/SWb4v1CMqlvPypMB5ca
         LPG0ZnEQVEUOv3xG+fvub5PPDd7iV85B8Ut5c3UWMJs4UO7Gf37Q5FOAnyS0JjMRW1sz
         5HoIUcrlIu55w0dvhFn7A0D/GN633mZ/cYg7xolTAz6EFpiTrZI+X3aO6JqpHz1k3GTE
         7092Kw3f0cEWAhsahUdGK5bZuOoel+Ib7pIE3pqSFHgK8aD4HUyoDgMSdBi2kmkihoJ9
         eg3YcXRrxIoJXckQ45KWCwA1LdFm2Q5COvw8QJwuBArZ3PXweTVQNFBJ3bLVK2mD536R
         MPBw==
X-Gm-Message-State: AFeK/H1Djzq9hVfxYA21oxdoqpJ4MwhCRg3pShUqhj6o+iSmVzhBVtHrf5N1BZn1si67lg==
X-Received: by 10.28.11.69 with SMTP id 66mr18437403wml.38.1489532752053;
        Tue, 14 Mar 2017 16:05:52 -0700 (PDT)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([2a02:2f0b:8130:11ea:f0a2:ac73:fee:c4f3])
        by smtp.gmail.com with ESMTPSA id z198sm1502915wmz.24.2017.03.14.16.05.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 16:05:50 -0700 (PDT)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: corbet@lwn.net,
	linux-doc@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH] Documentation: acpi: Fix typos
Date: Wed, 15 Mar 2017 01:05:43 +0200
Message-Id: <20170314230543.11129-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fix typos in acpi directory to make documentation grammatically correct.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 Documentation/acpi/aml-debugger.txt     | 2 +-
 Documentation/acpi/enumeration.txt      | 6 +++---
 Documentation/acpi/linuxized-acpica.txt | 6 +++---
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/acpi/aml-debugger.txt b/Documentation/acpi/aml-debugger.txt
index 5f62aa4..e851cc5 100644
--- a/Documentation/acpi/aml-debugger.txt
+++ b/Documentation/acpi/aml-debugger.txt
@@ -15,7 +15,7 @@ kernel.
    CONFIG_ACPI_DEBUGGER=y
    CONFIG_ACPI_DEBUGGER_USER=m
 
-   The userspace utlities can be built from the kernel source tree using
+   The userspace utilities can be built from the kernel source tree using
    the following commands:
 
    $ cd tools
diff --git a/Documentation/acpi/enumeration.txt b/Documentation/acpi/enumeration.txt
index 209a5eb..7bcf9c3 100644
--- a/Documentation/acpi/enumeration.txt
+++ b/Documentation/acpi/enumeration.txt
@@ -367,10 +367,10 @@ resulting child platform device.
 
 Device Tree namespace link device ID
 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-The Device Tree protocol uses device indentification based on the "compatible"
+The Device Tree protocol uses device identification based on the "compatible"
 property whose value is a string or an array of strings recognized as device
 identifiers by drivers and the driver core.  The set of all those strings may be
-regarded as a device indentification namespace analogous to the ACPI/PNP device
+regarded as a device identification namespace analogous to the ACPI/PNP device
 ID namespace.  Consequently, in principle it should not be necessary to allocate
 a new (and arguably redundant) ACPI/PNP device ID for a devices with an existing
 identification string in the Device Tree (DT) namespace, especially if that ID
@@ -381,7 +381,7 @@ In ACPI, the device identification object called _CID (Compatible ID) is used to
 list the IDs of devices the given one is compatible with, but those IDs must
 belong to one of the namespaces prescribed by the ACPI specification (see
 Section 6.1.2 of ACPI 6.0 for details) and the DT namespace is not one of them.
-Moreover, the specification mandates that either a _HID or an _ADR identificaion
+Moreover, the specification mandates that either a _HID or an _ADR identification
 object be present for all ACPI objects representing devices (Section 6.1 of ACPI
 6.0).  For non-enumerable bus types that object must be _HID and its value must
 be a device ID from one of the namespaces prescribed by the specification too.
diff --git a/Documentation/acpi/linuxized-acpica.txt b/Documentation/acpi/linuxized-acpica.txt
index defe2ee..02ebade 100644
--- a/Documentation/acpi/linuxized-acpica.txt
+++ b/Documentation/acpi/linuxized-acpica.txt
@@ -110,7 +110,7 @@ upstream.
    Linux patches.  The patches generated by this process are referred to as
    "linuxized ACPICA patches".  The release process is carried out on a local
    copy the ACPICA git repository.  Each commit in the monthly release is
-   converted into a linuxized ACPICA patch.  Together, they form the montly
+   converted into a linuxized ACPICA patch.  Together, they form the monthly
    ACPICA release patchset for the Linux ACPI community.  This process is
    illustrated in the following figure:
 
@@ -195,12 +195,12 @@ upstream.
       release utilities (please refer to Section 4 below for the details).
    3. Linux specific features - Sometimes it's impossible to use the
       current ACPICA APIs to implement features required by the Linux kernel,
-      so Linux developers occasionaly have to change ACPICA code directly.
+      so Linux developers occasionally have to change ACPICA code directly.
       Those changes may not be acceptable by ACPICA upstream and in such cases
       they are left as committed ACPICA divergences unless the ACPICA side can
       implement new mechanisms as replacements for them.
    4. ACPICA release fixups - ACPICA only tests commits using a set of the
-      user space simulation utilies, thus the linuxized ACPICA patches may
+      user space simulation utilities, thus the linuxized ACPICA patches may
       break the Linux kernel, leaving us build/boot failures.  In order to
       avoid breaking Linux bisection, fixes are applied directly to the
       linuxized ACPICA patches during the release process.  When the release
-- 
2.9.3


