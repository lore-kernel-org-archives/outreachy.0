X-GM-THRID: 6395412283312308224
X-Received: by 10.25.150.2 with SMTP id y2mr2184905lfd.21.1489100012576;
        Thu, 09 Mar 2017 14:53:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.221 with SMTP id e90ls835072lji.30.gmail; Thu, 09 Mar
 2017 14:53:32 -0800 (PST)
X-Received: by 10.46.88.9 with SMTP id m9mr2669597ljb.25.1489100012164;
        Thu, 09 Mar 2017 14:53:32 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id t131si28906wmf.1.2017.03.09.14.53.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 14:53:32 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id v190so13156969wme.3
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 14:53:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oR4HFJKD4J/IPI+/oC8oyCsw0uGhPrFTleTKqMNOHNo=;
        b=oULCQfOF0yHvxrBlgvmN7NDylUOSB3KIboXEIZQdQRE+5EzdLIBcxzrHYMZyiQD1Mm
         XnfjZmOtAycuIVglHEyBU7IS9QJ0dOU/TX+6A3B0tcrt1CKxe84uqY/tjf44X3HaR7/g
         gDGt0auLPOueqV8hMQO8vt4TrZ/SFrdZgFn3+e6C2YoUJzDlgi5WdU03/g+fVqoPtnwm
         kNt8+vn4KRS9qFSyW8VAWK4Cr2tZzXpdPYKEht6GvuSiB7FSHxdtpQaOSYMjZCxov+fg
         nKnX4GRbs4t/0VNaR2RD4VRyVQoBh37yF4QbncVDvOzNz26a4Ps6tCWqy40dVwjisgk4
         5GeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oR4HFJKD4J/IPI+/oC8oyCsw0uGhPrFTleTKqMNOHNo=;
        b=jGiwjSwyDebjcSxcUT9sB9mw4MvVkwbrVbx/LbxXGw74bkDDL5aiA1qaq78sw3vMzZ
         sIjCu3RbeGrmt8RUkUu5TWBXUVtmOvchTE+RnaI9yu1bVJ9hYGjHSJBQ72x+l8wS3D6x
         seToGzkwnXwKvVD1ZF2yofHtsArTeeTJOuluLk5iBneJ/gvQPI0z29K4YVIOVhS2QDBD
         jNjsiQiAYcrvvEuBSgJ7MxMMqThbOvWXwxwgCsZCpnLbFj9CV+JIgGM9I1jsOssSydy1
         AQ7WrfkLAVFxclmsLV9OBNdxg4tjyjDb0nqjVez+wHZ5g6/1FLJ1N06oNuwFbiK/v6CM
         emDg==
X-Gm-Message-State: AMke39ltma+JoruaJSZAek3Js+VrF2Rgf/JuOPlTiZyDMHueo5hgcuv1kHP9thVhYVjBuw==
X-Received: by 10.28.238.66 with SMTP id m63mr12679695wmh.121.1489100011913;
        Thu, 09 Mar 2017 14:53:31 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id 191sm457749wmo.21.2017.03.09.14.53.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 14:53:31 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v3 1/2] staging: speakup: i18n.c: Change return type from int to bool
Date: Fri, 10 Mar 2017 00:53:23 +0200
Message-Id: <11f0d5b09d3ac4ab4541862cad6f6c9ad05ba3d7.1489099212.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489099212.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <cover.1489099212.git.narcisaanamaria12@gmail.com>

The possible return values (0 or 1) for compare_specifiers
and fmt_validate represent whether a condition holds or not, so
conceptually, they are booleans.

Update documentation for these two functions.

Change type of variable 'still_comparing' from int to bool too,
inside fmt_validate, because it is intended to hold truth values
as well.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/speakup/i18n.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ac1ebea..a8326db 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -476,19 +476,20 @@ static char *find_specifier_end(char *input)
 /*
  * Function: compare_specifiers
  * Compare the format specifiers pointed to by *input1 and *input2.
- * Return 1 if they are the same, 0 otherwise.  Advance *input1 and *input2
- * so that they point to the character following the end of the specifier.
+ * Return true if they are the same, false otherwise.
+ * Advance *input1 and *input2 so that they point to the character following
+ * the end of the specifier.
  */
-static int compare_specifiers(char **input1, char **input2)
+static bool compare_specifiers(char **input1, char **input2)
 {
-	int same = 0;
+	bool same = false;
 	char *end1 = find_specifier_end(*input1);
 	char *end2 = find_specifier_end(*input2);
 	size_t length1 = end1 - *input1;
 	size_t length2 = end2 - *input2;
 
 	if ((length1 == length2) && !memcmp(*input1, *input2, length1))
-		same = 1;
+		same = true;
 
 	*input1 = end1;
 	*input2 = end2;
@@ -499,12 +500,12 @@ static int compare_specifiers(char **input1, char **input2)
  * Function: fmt_validate
  * Check that two format strings contain the same number of format specifiers,
  * and that the order of specifiers is the same in both strings.
- * Return 1 if the condition holds, 0 if it doesn't.
+ * Return true if the condition holds, false if it doesn't.
  */
-static int fmt_validate(char *template, char *user)
+static bool fmt_validate(char *template, char *user)
 {
-	int valid = 1;
-	int still_comparing = 1;
+	bool valid = true;
+	bool still_comparing = true;
 	char *template_ptr = template;
 	char *user_ptr = user;
 
@@ -516,10 +517,10 @@ static int fmt_validate(char *template, char *user)
 			valid = compare_specifiers(&template_ptr, &user_ptr);
 		} else {
 			/* No more format specifiers in one or both strings. */
-			still_comparing = 0;
+			still_comparing = false;
 			/* See if one has more specifiers than the other. */
 			if (template_ptr || user_ptr)
-				valid = 0;
+				valid = false;
 		}
 	}
 	return valid;
-- 
1.9.1


