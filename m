X-GM-THRID: 6392720768587792384
X-Received: by 10.157.39.22 with SMTP id r22mr4720088ota.151.1488451903010;
        Thu, 02 Mar 2017 02:51:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.6 with SMTP id a6ls2075230itd.22.gmail; Thu, 02 Mar
 2017 02:51:42 -0800 (PST)
X-Received: by 10.107.134.214 with SMTP id q83mr4467093ioi.35.1488451901981;
        Thu, 02 Mar 2017 02:51:41 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 2si638629pfz.1.2017.03.02.02.51.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 02:51:41 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 16so503893pga.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 02:51:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=q7jPp0nduxFxiGM36rUIHaZvFgWj0JckOhfz0Hgahn8=;
        b=gPldsGuzchePAVkVkoGW1VzNboBPCGzotdF9zCDO7EiqghKQfYSRiyi7Ug+KdwQin1
         SK38DrNFl7TGdy8RGmzXOm+5VGFIcIxu/tZ/mRqXV0+VW2EPzY5UHTQ9jsPLdxWlmTco
         rHx6PSujsltO3gkXMxrxkPiMLHK975QuI3dZSJK7lSqhwE4jCVEUwdUGXVOTxWo0SxyS
         QGnh/0Ht+wRheF4r/m9+LWLPShh7sm1liYXhj5KtQY5KiueuWVEDZ9Qnc1VxzYcgrHvD
         UXOmECye/3QMHKLLGbPeAX8LLTNgAEBOR55bYggYS7fnUIktTydry912CWTHTh7IELyN
         fqUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=q7jPp0nduxFxiGM36rUIHaZvFgWj0JckOhfz0Hgahn8=;
        b=KLUPBiaoLBbFSlRC5IhWeJkc699rQ59H0NQRrOfIo9BJG8PReBVetPE1AhSiNy04Ic
         ArnPjZ+R2GRSrwR9KH+XDnwLpwxN2ksPNjt60LU5tDt6Sxr/NP/Ca2OATCtSf6cIQGMl
         4D6J2pkGTV3aSxiWBkrEpF03AcJnta3LKYssf2uj6sGsqgTY5RAzlbuEIiAtPErrlMGC
         Hb6xWktHyMYK/tW42Astpa9pNQVz/W5IUys1J3SYOJkvMe2vuXR26g6mli+LqFXMtgxK
         CjDDig775Ixbe1BtJPoh6LEJCtrWjaZEaqoXYq7PFIMpsChr62vMjzbe3OPEgVwwGQGV
         Z4JA==
X-Gm-Message-State: AMke39k1/3PSz3dEXiOOxRcCyhnSwBIMg+74duQYxx7TBxhMpD/7+OgfObkgWWIeUx/WaA==
X-Received: by 10.98.63.24 with SMTP id m24mr14808366pfa.143.1488451901526;
        Thu, 02 Mar 2017 02:51:41 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e13sm16354981pgf.48.2017.03.02.02.51.38
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 02 Mar 2017 02:51:39 -0800 (PST)
Date: Thu, 2 Mar 2017 16:21:36 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Alignment match open parenthesis
Message-ID: <20170302105136.GA6239@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - Aligned the lines which are not aligned in previous patch.

 drivers/staging/speakup/i18n.c     |  2 +-
 drivers/staging/speakup/kobjects.c | 40 +++++++++++++++++++-------------------
 2 files changed, 21 insertions(+), 21 deletions(-)

diff --git a/drivers/staging/speakup/i18n.c b/drivers/staging/speakup/i18n.c
index 11f1418b4006..ac1ebead3c3f 100644
--- a/drivers/staging/speakup/i18n.c
+++ b/drivers/staging/speakup/i18n.c
@@ -607,7 +607,7 @@ void spk_reset_msg_group(struct msg_group_t *group)
 void spk_initialize_msgs(void)
 {
 	memcpy(speakup_msgs, speakup_default_msgs,
-		sizeof(speakup_default_msgs));
+	       sizeof(speakup_default_msgs));
 }
 
 /* Free user-supplied strings when module is unloaded: */
diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 2fef55569bfd..8c93188b832c 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -79,7 +79,7 @@ static ssize_t chars_chartab_show(struct kobject *kobj,
  * character descriptions or chartab entries.
  */
 static void report_char_chartab_status(int reset, int received, int used,
-	int rejected, int do_characters)
+					int rejected, int do_characters)
 {
 	static char const *object_type[] = {
 		"character class entries",
@@ -92,8 +92,8 @@ static void report_char_chartab_status(int reset, int received, int used,
 		pr_info("%s reset to defaults\n", object_type[do_characters]);
 	} else if (received) {
 		len = snprintf(buf, sizeof(buf),
-				" updated %d of %d %s\n",
-				used, received, object_type[do_characters]);
+			       " updated %d of %d %s\n",
+			       used, received, object_type[do_characters]);
 		if (rejected)
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
 				 " with %d reject%s\n",
@@ -213,7 +213,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
 
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 	report_char_chartab_status(reset, received, used, rejected,
-		do_characters);
+				   do_characters);
 	return retval;
 }
 
@@ -221,7 +221,7 @@ static ssize_t chars_chartab_store(struct kobject *kobj,
  * This is called when a user reads the keymap parameter.
  */
 static ssize_t keymap_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+			    char *buf)
 {
 	char *cp = buf;
 	int i;
@@ -257,7 +257,7 @@ static ssize_t keymap_show(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user changes the keymap parameter.
  */
 static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count)
+			     const char *buf, size_t count)
 {
 	int i;
 	ssize_t ret = count;
@@ -291,9 +291,9 @@ static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
 	i *= (int)cp1[-1] + 1;
 	i += 2; /* 0 and last map ver */
 	if (cp1[-3] != KEY_MAP_VER || cp1[-1] > 10 ||
-			i + SHIFT_TBL_SIZE + 4 >= sizeof(spk_key_buf)) {
+	    i + SHIFT_TBL_SIZE + 4 >= sizeof(spk_key_buf)) {
 		pr_warn("i %d %d %d %d\n", i,
-				(int)cp1[-3], (int)cp1[-2], (int)cp1[-1]);
+			(int)cp1[-3], (int)cp1[-2], (int)cp1[-1]);
 		kfree(in_buff);
 		spin_unlock_irqrestore(&speakup_info.spinlock, flags);
 		return -EINVAL;
@@ -307,7 +307,7 @@ static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
 	if (i != 0 || cp1[-1] != KEY_MAP_VER || cp1[-2] != 0) {
 		ret = -EINVAL;
 		pr_warn("end %d %d %d %d\n", i,
-				(int)cp1[-3], (int)cp1[-2], (int)cp1[-1]);
+			(int)cp1[-3], (int)cp1[-2], (int)cp1[-1]);
 	} else {
 		if (spk_set_key_info(in_buff, spk_key_buf)) {
 			spk_set_key_info(spk_key_defaults, spk_key_buf);
@@ -324,7 +324,7 @@ static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user changes the value of the silent parameter.
  */
 static ssize_t silent_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count)
+			     const char *buf, size_t count)
 {
 	int len;
 	struct vc_data *vc = vc_cons[fg_console].d;
@@ -363,7 +363,7 @@ static ssize_t silent_store(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user reads the synth setting.
  */
 static ssize_t synth_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+			   char *buf)
 {
 	int rv;
 
@@ -378,7 +378,7 @@ static ssize_t synth_show(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user requests to change synthesizers.
  */
 static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count)
+			    const char *buf, size_t count)
 {
 	int len;
 	char new_synth_name[10];
@@ -434,7 +434,7 @@ static ssize_t synth_direct_store(struct kobject *kobj,
  * This function is called when a user reads the version.
  */
 static ssize_t version_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+			     char *buf)
 {
 	char *cp;
 
@@ -450,7 +450,7 @@ static ssize_t version_show(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user reads the punctuation settings.
  */
 static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+			  char *buf)
 {
 	int i;
 	char *cp = buf;
@@ -470,7 +470,7 @@ static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
 	var = spk_get_punc_var(p_header->var_id);
 	if (!var) {
 		pr_warn("var is null, p_header->var_id is %i\n",
-				p_header->var_id);
+			p_header->var_id);
 		return -EINVAL;
 	}
 
@@ -490,7 +490,7 @@ static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user changes the punctuation settings.
  */
 static ssize_t punc_store(struct kobject *kobj, struct kobj_attribute *attr,
-			 const char *buf, size_t count)
+			   const char *buf, size_t count)
 {
 	int x;
 	struct st_var_header *p_header;
@@ -512,7 +512,7 @@ static ssize_t punc_store(struct kobject *kobj, struct kobj_attribute *attr,
 	var = spk_get_punc_var(p_header->var_id);
 	if (!var) {
 		pr_warn("var is null, p_header->var_id is %i\n",
-				p_header->var_id);
+			p_header->var_id);
 		return -EINVAL;
 	}
 
@@ -537,7 +537,7 @@ static ssize_t punc_store(struct kobject *kobj, struct kobj_attribute *attr,
  * This function is called when a user reads one of the variable parameters.
  */
 ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+		      char *buf)
 {
 	int rv = 0;
 	struct st_var_header *param;
@@ -581,7 +581,7 @@ ssize_t spk_var_show(struct kobject *kobj, struct kobj_attribute *attr,
 		break;
 	default:
 		rv = sprintf(buf, "Bad parameter  %s, type %i\n",
-			param->name, param->var_type);
+			     param->name, param->var_type);
 		break;
 	}
 	spin_unlock_irqrestore(&speakup_info.spinlock, flags);
@@ -613,7 +613,7 @@ static inline void spk_reset_default_value(char *header_name,
  * variable parameters.
  */
 ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
-			 const char *buf, size_t count)
+		       const char *buf, size_t count)
 {
 	struct st_var_header *param;
 	int ret;
-- 
2.11.0


