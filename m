X-GM-THRID: 6196813277998088192
X-Received: by 10.68.246.163 with SMTP id xx3mr15416615pbc.4.1442808024836;
        Sun, 20 Sep 2015 21:00:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.71 with SMTP id g7ls729279igq.21.canary; Sun, 20 Sep
 2015 21:00:24 -0700 (PDT)
X-Received: by 10.66.229.69 with SMTP id so5mr15743498pac.26.1442808024379;
        Sun, 20 Sep 2015 21:00:24 -0700 (PDT)
Return-Path: <amber@amberadams.co>
Received: from imap1-1.ox.privateemail.com (imap1-1.ox.privateemail.com. [198.187.29.239])
        by gmr-mx.google.com with ESMTPS id z7si885996igw.0.2015.09.20.21.00.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Sep 2015 21:00:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amber@amberadams.co designates 198.187.29.239 as permitted sender) client-ip=198.187.29.239;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amber@amberadams.co designates 198.187.29.239 as permitted sender) smtp.mailfrom=amber@amberadams.co
Received: from localhost (localhost [127.0.0.1])
	by imap1.ox.privateemail.com (Postfix) with ESMTP id 6D6B2B00093;
	Mon, 21 Sep 2015 00:00:23 -0400 (EDT)
X-Virus-Scanned: Debian amavisd-new at imap1.ox.privateemail.com
Received: from imap1.ox.privateemail.com ([127.0.0.1])
	by localhost (imap1.ox.privateemail.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id wWawUvuOS1oo; Mon, 21 Sep 2015 00:00:23 -0400 (EDT)
Received: from parthenosis.attlocal.net (108-67-72-131.lightspeed.nsvltn.sbcglobal.net [108.67.72.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by imap1.ox.privateemail.com (Postfix) with ESMTPSA id 12AB4B00060;
	Mon, 21 Sep 2015 00:00:23 -0400 (EDT)
From: "Amber N. Adams" <amber@amberadams.co>
To: outreachy-kernel@googlegroups.com
Cc: "Amber N. Adams" <amber@amberadams.co>
Subject: [PATCH] staging: skein: Add * on subsequent lines in block comment
Date: Sat, 19 Sep 2015 23:01:49 -0500
Message-Id: <1442721709-20701-1-git-send-email-amber@amberadams.co>
X-Mailer: git-send-email 1.9.1

This patch fixes the checkpatch.pl warning:

WARNING: Block comments use * on subsequent lines
+/*
+Copyright (c) 2010 Werner Dittmann

Signed-off-by: Amber N. Adams <amber@amberadams.co>
---
 drivers/staging/skein/skein_api.h | 48 +++++++++++++++++++--------------------
 1 file changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/skein/skein_api.h b/drivers/staging/skein/skein_api.h
index 7da8b38..4cf7003 100644
--- a/drivers/staging/skein/skein_api.h
+++ b/drivers/staging/skein/skein_api.h
@@ -1,28 +1,28 @@
-/*
-Copyright (c) 2010 Werner Dittmann
-
-Permission is hereby granted, free of charge, to any person
-obtaining a copy of this software and associated documentation
-files (the "Software"), to deal in the Software without
-restriction, including without limitation the rights to use,
-copy, modify, merge, publish, distribute, sublicense, and/or sell
-copies of the Software, and to permit persons to whom the
-Software is furnished to do so, subject to the following
-conditions:
-
-The above copyright notice and this permission notice shall be
-included in all copies or substantial portions of the Software.
-
-THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
-EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
-OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
-NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
-WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
-FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
-OTHER DEALINGS IN THE SOFTWARE.
+/**
+ * Copyright (c) 2010 Werner Dittmann
+ *
+ * Permission is hereby granted, free of charge, to any person
+ * obtaining a copy of this software and associated documentation
+ * files (the "Software"), to deal in the Software without
+ * restriction, including without limitation the rights to use,
+ * copy, modify, merge, publish, distribute, sublicense, and/or sell
+ * copies of the Software, and to permit persons to whom the
+ * Software is furnished to do so, subject to the following
+ * conditions:
+ * 
+ * The above copyright notice and this permission notice shall be
+ * included in all copies or substantial portions of the Software.
+ * 
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
+ * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
+ * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
+ * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
+ * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
+ * OTHER DEALINGS IN THE SOFTWARE.
 
-*/
+ */
 
 #ifndef SKEINAPI_H
 #define SKEINAPI_H
-- 
1.9.1


