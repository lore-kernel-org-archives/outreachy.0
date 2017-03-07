X-GM-THRID: 6394685280980303872
X-Received: by 10.46.76.17 with SMTP id z17mr242353lja.13.1488904707550;
        Tue, 07 Mar 2017 08:38:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.84.65 with SMTP id y1ls107291ljd.17.gmail; Tue, 07 Mar 2017
 08:38:26 -0800 (PST)
X-Received: by 10.25.234.202 with SMTP id y71mr201012lfi.2.1488904706950;
        Tue, 07 Mar 2017 08:38:26 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from mail-wm0-x242.google.com (mail-wm0-x242.google.com. [2a00:1450:400c:c09::242])
        by gmr-mx.google.com with ESMTPS id e72si405566wma.0.2017.03.07.08.38.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 08:38:26 -0800 (PST)
Received-SPF: pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) client-ip=2a00:1450:400c:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of diaconitatamara@gmail.com designates 2a00:1450:400c:c09::242 as permitted sender) smtp.mailfrom=diaconitatamara@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x242.google.com with SMTP id u132so1903861wmg.1
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 08:38:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=KL9kUlrByeFFG1N7AOvsW0KVBMU8S/W55isf5LLMgP0=;
        b=BaPsWuLgr0KE0looZmZmDBsXh+ipQaV12CnwDJDm7L2Hcqf2bhL5erS7s14W2VXk0f
         lt79lao1DcPuzofh+6NH0+VpSZQCQDGwJWlQNSBrDogrI1P25tIH00ckYy2zzBpqFlQW
         q1U5ocFMvntCBvk1ujuXaFDIIIUd2jMaMRgjDqgy5qrI9XRI7OoFYBvWcLirjpGm+75F
         ky91/8Z0FUUwGDjF7r52LnVFhNvN1EjR+EqZgHThcBQEPxawZW3c2fBVQO2GKzkskK6r
         c8mMXJaB5lfvGGcZHKDKMArzVfms+X35u4Hf0mTCl/mlxjoQzVUr9LHf9ZlVh5bcJQ0U
         cCUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=KL9kUlrByeFFG1N7AOvsW0KVBMU8S/W55isf5LLMgP0=;
        b=RM0uS3PiEcHRy2qIUfslwb6HLfMNaGmn9z5rNj5B/2Wk/DOzqU2mpDJ+0ktLz4SUn/
         /l46ZJsTWe2FAZNdfBnqV7toa6XaCKuaimxZEepXbNiUOwVBXj/qckNGGgy/ybs0yyfT
         2dMQ5ZQzv3NqwvJf427JcbWxsLMhtULZ9YIkjYQCHBZZUOBdV/vNoHWZ42B1xGrjyVYe
         D3E7QI7LDQ7M833lQrfcq9OXtu52pFOkV/pyZ7ZhdV8RQTJ7gVtkBW2zRmEq+QqcPCuw
         GPVdvDgo/O9nDGHZGFXq7Vl06o2rVIrPBv6D/ozYBR7s7kNhbH0PajJ9GYVKl7aGaoAl
         VlDA==
X-Gm-Message-State: AMke39lwtn0y9MmKDhfZVITXqt8Oz7I7ni9qJoKrO3Sd98xPwQHEvR9U2IQ9rMi3CmlVrw==
X-Received: by 10.28.52.137 with SMTP id b131mr1556916wma.30.1488904706534;
        Tue, 07 Mar 2017 08:38:26 -0800 (PST)
Return-Path: <diaconitatamara@gmail.com>
Received: from tamara ([141.85.228.69])
        by smtp.gmail.com with ESMTPSA id o15sm619463wra.61.2017.03.07.08.38.25
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 08:38:25 -0800 (PST)
From: Tamara Diaconita <diaconitatamara@gmail.com>
X-Google-Original-From: Tamara Diaconita <diaconita.tamara@gmail.com>
To: w.d.hubbs@gmail.com,
	chris@the-brannons.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: [PATCH 3/5] staging: speakup: kobjects: Align the code
Date: Tue,  7 Mar 2017 18:38:20 +0200
Message-Id: <20170307163820.9317-1-diaconita.tamara@gmail.com>
X-Mailer: git-send-email 2.9.3

Fixed the checkpath.pl issue:
CHECK: Aligment should match open paranthesis.

Added and deleted spaces and tabs to align the code.

Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 64 +++++++++++++++++++-------------------
 1 file changed, 32 insertions(+), 32 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index 5d8ec05..9aff045 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -26,7 +26,7 @@
  * This is called when a user reads the characters or chartab sys file.
  */
 static ssize_t chars_chartab_show(struct kobject *kobj,
-	struct kobj_attribute *attr, char *buf)
+				  struct kobj_attribute *attr, char *buf)
 {
 	int i;
 	int len = 0;
@@ -79,7 +79,7 @@ static ssize_t chars_chartab_show(struct kobject *kobj,
  * character descriptions or chartab entries.
  */
 static void report_char_chartab_status(int reset, int received, int used,
-	int rejected, int do_characters)
+				       int rejected, int do_characters)
 {
 	static char const *object_type[] = {
 		"character class entries",
@@ -92,7 +92,7 @@ static void report_char_chartab_status(int reset, int received, int used,
 		pr_info("%s reset to defaults\n", object_type[do_characters]);
 	} else if (received) {
 		len = snprintf(buf, sizeof(buf),
-				" updated %d of %d %s\n",
+			       " updated %d of %d %s\n",
 				used, received, object_type[do_characters]);
 		if (rejected)
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
@@ -106,7 +106,7 @@ static void report_char_chartab_status(int reset, int received, int used,
  * This is called when a user changes the characters or chartab parameters.
  */
 static ssize_t chars_chartab_store(struct kobject *kobj,
-	struct kobj_attribute *attr, const char *buf, size_t count)
+				   struct kobj_attribute *attr, const char *buf, size_t count)
 {
 	char *cp = (char *)buf;
 	char *end = cp + count; /* the null at the end of the buffer */
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
+			   char *buf)
 {
 	char *cp = buf;
 	int i;
@@ -257,7 +257,7 @@ static ssize_t keymap_show(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user changes the keymap parameter.
  */
 static ssize_t keymap_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count)
+			    const char *buf, size_t count)
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
+			    const char *buf, size_t count)
 {
 	int len;
 	struct vc_data *vc = vc_cons[fg_console].d;
@@ -363,7 +363,7 @@ static ssize_t silent_store(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user reads the synth setting.
  */
 static ssize_t synth_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+			  char *buf)
 {
 	int rv;
 
@@ -378,7 +378,7 @@ static ssize_t synth_show(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user requests to change synthesizers.
  */
 static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count)
+			   const char *buf, size_t count)
 {
 	int len;
 	char new_synth_name[10];
@@ -404,7 +404,7 @@ static ssize_t synth_store(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when text is sent to the synth via the synth_direct file.
  */
 static ssize_t synth_direct_store(struct kobject *kobj,
-	struct kobj_attribute *attr, const char *buf, size_t count)
+				  struct kobj_attribute *attr, const char *buf, size_t count)
 {
 	u_char tmp[256];
 	int len;
@@ -434,7 +434,7 @@ static ssize_t synth_direct_store(struct kobject *kobj,
  * This function is called when a user reads the version.
  */
 static ssize_t version_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+			    char *buf)
 {
 	char *cp;
 
@@ -450,7 +450,7 @@ static ssize_t version_show(struct kobject *kobj, struct kobj_attribute *attr,
  * This is called when a user reads the punctuation settings.
  */
 static ssize_t punc_show(struct kobject *kobj, struct kobj_attribute *attr,
-	char *buf)
+			 char *buf)
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
+			  const char *buf, size_t count)
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
+		     char *buf)
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
@@ -593,7 +593,7 @@ EXPORT_SYMBOL_GPL(spk_var_show);
  * Used to reset either default_pitch or default_vol.
  */
 static inline void spk_reset_default_value(char *header_name,
-					int *synth_default_value, int idx)
+					   int *synth_default_value, int idx)
 {
 	struct st_var_header *param;
 
@@ -613,7 +613,7 @@ static inline void spk_reset_default_value(char *header_name,
  * variable parameters.
  */
 ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
-			 const char *buf, size_t count)
+		      const char *buf, size_t count)
 {
 	struct st_var_header *param;
 	int ret;
@@ -662,9 +662,9 @@ ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
 			var_data = param->data;
 			value = var_data->u.n.value;
 			spk_reset_default_value("pitch", synth->default_pitch,
-				value);
+						value);
 			spk_reset_default_value("vol", synth->default_vol,
-				value);
+						value);
 		}
 		break;
 	case VAR_STRING:
@@ -679,7 +679,7 @@ ssize_t spk_var_store(struct kobject *kobj, struct kobj_attribute *attr,
 		ret = spk_set_string_var(cp, param, len);
 		if (ret == -E2BIG)
 			pr_warn("value too long for %s\n",
-					param->name);
+				param->name);
 		break;
 	default:
 		pr_warn("%s unknown type %d\n",
@@ -699,7 +699,7 @@ EXPORT_SYMBOL_GPL(spk_var_store);
  */
 
 static ssize_t message_show_helper(char *buf, enum msg_index_t first,
-	enum msg_index_t last)
+				   enum msg_index_t last)
 {
 	size_t bufsize = PAGE_SIZE;
 	char *buf_pointer = buf;
@@ -712,7 +712,7 @@ static ssize_t message_show_helper(char *buf, enum msg_index_t first,
 		if (bufsize <= 1)
 			break;
 		printed = scnprintf(buf_pointer, bufsize, "%d\t%s\n",
-			index, spk_msg_get(cursor));
+				    index, spk_msg_get(cursor));
 		buf_pointer += printed;
 		bufsize -= printed;
 	}
@@ -721,7 +721,7 @@ static ssize_t message_show_helper(char *buf, enum msg_index_t first,
 }
 
 static void report_msg_status(int reset, int received, int used,
-	int rejected, char *groupname)
+			      int rejected, char *groupname)
 {
 	int len;
 	char buf[160];
@@ -742,7 +742,7 @@ static void report_msg_status(int reset, int received, int used,
 }
 
 static ssize_t message_store_helper(const char *buf, size_t count,
-	struct msg_group_t *group)
+				    struct msg_group_t *group)
 {
 	char *cp = (char *)buf;
 	char *end = cp + count;
@@ -826,7 +826,7 @@ static ssize_t message_store_helper(const char *buf, size_t count,
 }
 
 static ssize_t message_show(struct kobject *kobj,
-	struct kobj_attribute *attr, char *buf)
+			    struct kobj_attribute *attr, char *buf)
 {
 	ssize_t retval = 0;
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
@@ -840,7 +840,7 @@ static ssize_t message_show(struct kobject *kobj,
 }
 
 static ssize_t message_store(struct kobject *kobj, struct kobj_attribute *attr,
-	const char *buf, size_t count)
+			     const char *buf, size_t count)
 {
 	struct msg_group_t *group = spk_find_msg_group(attr->attr.name);
 
-- 
2.9.3


