X-GM-THRID: 6395412283312308224
X-Received: by 10.25.212.76 with SMTP id l73mr2043737lfg.13.1489089211282;
        Thu, 09 Mar 2017 11:53:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.80.22 with SMTP id e22ls841784ljb.12.gmail; Thu, 09 Mar
 2017 11:53:30 -0800 (PST)
X-Received: by 10.25.40.17 with SMTP id o17mr2040506lfo.25.1489089210814;
        Thu, 09 Mar 2017 11:53:30 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id 82si880131wmg.3.2017.03.09.11.53.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 11:53:30 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so12583469wmg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 11:53:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lgKFIrD4KJJKoF3PDDVkkDp+SFtTKRCUotlM/1kgq7k=;
        b=t+MUMHcpA8PpH8NaLDmuuHUMVi6OYHp/d5gRRXtqhJ31hKQHSI7/Oi5wHjLjLFoZa8
         XFuxz4djcTF3q+Kh4sjPb2yNH794RrgAT2ICJRmqaYjJYThD7/mpxdcE+9oya43zGKaa
         iUCaArbepzXyuf5t+7oE2kQKZjQwWxeKmrrZfjz4eWj71PDiwDr23lljJRsg8Es9H/RG
         N8nFX6X0deVR3TmO0hhfe5Q+Gk94oVxIoZgtmDr0i9WYdCHTOYIRJx4haqv+ggTv2p0N
         k5kVFuDnX3sdD+cK66mtVvYZaqbZaSqAbQdVhXehSraVhzwAU4jh3+mhyiTJToYqhOGw
         UNxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lgKFIrD4KJJKoF3PDDVkkDp+SFtTKRCUotlM/1kgq7k=;
        b=CRNidyMsjWNVjVtxLX6cOE3u21ds5vYjQReOJviWFJy9B/TLrC6mF0U2jXJYJicTkw
         O6ZxVhT71Yi7wmrBnH3qRWM3hCTTDjF1wQjtGgmcOmSDjZhuOY79E2tRkZMnORAcKYq2
         C7GHKIch5Vi87Q0VKUC7VYTo8wYQVgr3HxYdVyKKTrTOiiT86XTCaA2hRRFVErLtx2LT
         mUBuFtRJ2oxPrWAj7rHVXtpq5ONFvGb7UnbWBmyv8kPE3DujY0k8sxhgkFZtCgXaHOw6
         tzxYw5AnFt07FEfeVuiUfLWbieHN7/7hpUjZvQHnlTKYX2pbvBohddZM4FgPIWx3KCqH
         F0Cw==
X-Gm-Message-State: AMke39lT0JVuOG72rMtLMSHRlKHRj+nxO6iY1Ybc+9JG0OO+rQubDoixauDKuEIwQxUaOQ==
X-Received: by 10.28.57.84 with SMTP id g81mr28431372wma.41.1489089210565;
        Thu, 09 Mar 2017 11:53:30 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id y6sm9422765wrc.40.2017.03.09.11.53.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 11:53:29 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH v2 1/2] staging: speakup: i18n: Change return type from int to bool
Date: Thu,  9 Mar 2017 21:53:24 +0200
Message-Id: <02ddf8f1b64cf7b893b462042c5c4a78116a645b.1489088501.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489088501.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com> <cover.1489088501.git.narcisaanamaria12@gmail.com>

The possible return values (0 or 1) for compare_specifiers
and fmt_validate represent whether a condition holds or not, so
conceptually, they are booleans.

Update documentation for these two functions.

Change type of variable 'still_comparing' from int to bool too,
inside fmt_validate, because it is intended to hold truth values
of logic as well.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/speakup/i18n.c | 23 ++++++++++++-----------
 1 file changed, 12 insertions(+), 11 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index ac1ebea..522d719 100644
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
+	bool valid = 1;
+	bool still_comparing = 1;
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


