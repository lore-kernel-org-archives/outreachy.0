X-GM-THRID: 6205602990220378112
X-Received: by 10.112.136.99 with SMTP id pz3mr1242785lbb.11.1444854538937;
        Wed, 14 Oct 2015 13:28:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.135 with SMTP id g129ls77654lfe.84.gmail; Wed, 14 Oct
 2015 13:28:58 -0700 (PDT)
X-Received: by 10.112.209.73 with SMTP id mk9mr1218994lbc.14.1444854538369;
        Wed, 14 Oct 2015 13:28:58 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x236.google.com (mail-wi0-x236.google.com. [2a00:1450:400c:c05::236])
        by gmr-mx.google.com with ESMTPS id c7si970016wiy.3.2015.10.14.13.28.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 13:28:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) client-ip=2a00:1450:400c:c05::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::236 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x236.google.com with SMTP id gb1so417309wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 13:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=aYLT3F5C3x3c+fYeVqvhIZiSVfxQmREkb0dsItc4Nwc=;
        b=VjHhtxE/+pQBZJo6rHPMzcUWBAqZKSEKVjCkcP+c3lDjga0l7sK19epP8nKZcYhTiU
         7nC2JvfpGGhDv/nCwO5PY/WWhkxT41vuQG08tM2dDhBy0R6sI7WCY7vSfmjcKkuwpaQ5
         q1mD0P45wf5sG9JSCjuIQiizLO4Gke7UYknUf5rskq25qcZKIEQ4XsaKcgZ0kKvK/EwF
         VJN/2Tz+CrmsULukNB00p3jVPzyQ91DYA8xLmSW0k4P/UGUuIIxtsQdnT07niLesAz11
         s5cBSRNacwQ+qtxa0sNG63b6eYVRtut5xbuPEXjZ0lRrJtXkwJnrtP2kLfSmH6YEf7zn
         u5Og==
X-Received: by 10.194.108.103 with SMTP id hj7mr6213296wjb.46.1444854538233;
        Wed, 14 Oct 2015 13:28:58 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.115])
        by smtp.gmail.com with ESMTPSA id lv4sm12101767wjb.43.2015.10.14.13.28.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 13:28:57 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: speakup: Fix multi-line comment style
Date: Wed, 14 Oct 2015 23:28:29 +0300
Message-Id: <1444854509-22980-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Thus using the preferred style for multi-line coments as
mentioned in Documentation/CodingStyle.

It also silences 'Block comments use * on subsequent lines'
and 'Block comments use a trailing */ on a separate line'
checkpatch.pl warnings.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/speakup/speakup_soft.c     |  3 +-
 drivers/staging/speakup/spk_priv.h         | 42 ++++++++++++++--------------
 drivers/staging/speakup/spk_priv_keyinfo.h | 44 +++++++++++++++---------------
 3 files changed, 45 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/speakup/speakup_soft.c b/drivers/staging/speakup/speakup_soft.c
index 366358b..b2eb5b1 100644
--- a/drivers/staging/speakup/speakup_soft.c
+++ b/drivers/staging/speakup/speakup_soft.c
@@ -19,7 +19,8 @@
  * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
  *
  * this code is specificly written as a driver for the speakup screenreview
- * package and is not a general device driver.  */
+ * package and is not a general device driver.
+ */
 
 #include <linux/unistd.h>
 #include <linux/miscdevice.h> /* for misc_register, and SYNTH_MINOR */
diff --git a/drivers/staging/speakup/spk_priv.h b/drivers/staging/speakup/spk_priv.h
index 1ef3795..9bb281d 100644
--- a/drivers/staging/speakup/spk_priv.h
+++ b/drivers/staging/speakup/spk_priv.h
@@ -1,26 +1,26 @@
 /* spk_priv.h
-   review functions for the speakup screen review package.
-   originally written by: Kirk Reiser and Andy Berdan.
+ * review functions for the speakup screen review package.
+ * originally written by: Kirk Reiser and Andy Berdan.
+ *
+ * extensively modified by David Borowski.
+ *
+ * Copyright (C) 1998  Kirk Reiser.
+ * Copyright (C) 2003  David Borowski.
 
-  extensively modified by David Borowski.
-
-    Copyright (C) 1998  Kirk Reiser.
-    Copyright (C) 2003  David Borowski.
-
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; either version 2 of the License, or
-    (at your option) any later version.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
 #ifndef _SPEAKUP_PRIVATE_H
 #define _SPEAKUP_PRIVATE_H
 
diff --git a/drivers/staging/speakup/spk_priv_keyinfo.h b/drivers/staging/speakup/spk_priv_keyinfo.h
index 95c473a..3116ef7 100644
--- a/drivers/staging/speakup/spk_priv_keyinfo.h
+++ b/drivers/staging/speakup/spk_priv_keyinfo.h
@@ -1,26 +1,26 @@
 /* spk_priv.h
-   review functions for the speakup screen review package.
-   originally written by: Kirk Reiser and Andy Berdan.
-
-  extensively modified by David Borowski.
-
-    Copyright (C) 1998  Kirk Reiser.
-    Copyright (C) 2003  David Borowski.
-
-    This program is free software; you can redistribute it and/or modify
-    it under the terms of the GNU General Public License as published by
-    the Free Software Foundation; either version 2 of the License, or
-    (at your option) any later version.
-
-    This program is distributed in the hope that it will be useful,
-    but WITHOUT ANY WARRANTY; without even the implied warranty of
-    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-    GNU General Public License for more details.
-
-    You should have received a copy of the GNU General Public License
-    along with this program; if not, write to the Free Software
-    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
-*/
+ * review functions for the speakup screen review package.
+ * originally written by: Kirk Reiser and Andy Berdan.
+ *
+ * extensively modified by David Borowski.
+ *
+ * Copyright (C) 1998  Kirk Reiser.
+ * Copyright (C) 2003  David Borowski.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
+ */
 
 #ifndef _SPEAKUP_KEYINFO_H
 #define _SPEAKUP_KEYINFO_H
-- 
1.9.1


