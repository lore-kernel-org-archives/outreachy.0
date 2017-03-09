X-GM-THRID: 6395412283312308224
X-Received: by 10.46.80.1 with SMTP id e1mr1894508ljb.10.1489047968567;
        Thu, 09 Mar 2017 00:26:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.8.73 with SMTP id g9ls594348ljd.33.gmail; Thu, 09 Mar 2017
 00:26:08 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr1665391lfa.4.1489047968146;
        Thu, 09 Mar 2017 00:26:08 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id b186si1994930wme.1.2017.03.09.00.26.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 00:26:08 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id u48so6972275wrc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 00:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=XYxRdtAtch9TqUYLrl6sSVs7SSm/+lQ2/8A7q/Q6ckI=;
        b=C6N40xX4M7uK7vD4BrSkfhpSyY+sk86h5jBltY10AbFH4QwIQXOP4KLLImTLIeHB6l
         u0IhWCld+XsWvN7a/9T2ScCX1RYv98fYEWwXWDkitK5TF+sZiqZzvvjna9wWwNTc62j/
         4sErDV7D8AwjYoDS1ShYrfXxryKMn552gqI2M7lKmIT///OmV0lxDqDcVCsY5KejZtKE
         UzrebSD3T4StPSmsSsLHO95QTKFf3WpCISuqlfc4DGlbVk2yFzTzZ369Ln62dt2DLCZm
         diR4nlwgc0Qeu9Gt5KfVmzMUV0RkYpvb9u8ifjxljGxPrTcVdUP97ijEWo50vnucZRiC
         GmMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=XYxRdtAtch9TqUYLrl6sSVs7SSm/+lQ2/8A7q/Q6ckI=;
        b=i6F44bMZKAX89ryM8gRW8uNgcxXzHt6BjQgGYnMPKhazoJjf50je8P1fI1p0pVq0V5
         D8EfKiUSIMOQlMvuaZVfoFUSLsJCGrq/LSyzL1OFZHpWQaZ+qD3mvhcCi2rK8wjPLZql
         v5djOvtO3URudfbXbGqj3TkiEboFiZzBcMNSIbO013P//850PmhC1QtnxXk2Eb2WEPiP
         PK6OUKG/OR0bOtHtA9bmFkjSv4sJX39lVKKMtfMh67CxDp+yXgjwYpBkF7jEibAGcYBL
         qTkiLpGVoVqQsb66h1vJotRc4XwULcdhxNllqYEcf6eG3I5LrJ+t/wpg7TTxtmREtqLO
         ofrQ==
X-Gm-Message-State: AMke39k+Pbfic9ETmcgfg2sMSkulN0XS99IlvXaflm2eLz/OIKBM2GOI6GxiWRZIUp5VmQ==
X-Received: by 10.223.166.5 with SMTP id k5mr8944184wrc.134.1489047967933;
        Thu, 09 Mar 2017 00:26:07 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK.precis.pub.ro ([141.85.233.103])
        by smtp.gmail.com with ESMTPSA id m80sm7803774wmi.34.2017.03.09.00.26.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 00:26:07 -0800 (PST)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 1/2] staging: speakup: i18n: Change return value
Date: Thu,  9 Mar 2017 10:26:03 +0200
Message-Id: <9214e6265b0f7d95ac905107fa1b69b3645f78b1.1489047172.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1489047172.git.narcisaanamaria12@gmail.com>
References: <cover.1489047172.git.narcisaanamaria12@gmail.com>

Change return value from int to bool in compare_specifiers
and fmt_validate functions. The possible return values (0 or 1)
for these functions represent whether a condition holds or not, so
conceptually, they are booleans.

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/speakup/i18n.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 1a3e348..00ffa4e 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -479,16 +479,16 @@ static char *find_specifier_end(char *input)
  * Return 1 if they are the same, 0 otherwise.  Advance *input1 and *input2
  * so that they point to the character following the end of the specifier.
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
@@ -501,10 +501,10 @@ static int compare_specifiers(char **input1, char **input2)
  * and that the order of specifiers is the same in both strings.
  * Return 1 if the condition holds, 0 if it doesn't.
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

@@ -516,10 +516,10 @@ static int fmt_validate(char *template, char *user)
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


