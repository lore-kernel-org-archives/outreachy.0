X-GM-THRID: 6395538220161957888
X-Received: by 10.107.131.35 with SMTP id f35mr4047390iod.68.1489077296150;
        Thu, 09 Mar 2017 08:34:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.36.169 with SMTP id z38ls415232ota.27.gmail; Thu, 09 Mar
 2017 08:34:55 -0800 (PST)
X-Received: by 10.200.37.168 with SMTP id e37mr2788606qte.18.1489077295803;
        Thu, 09 Mar 2017 08:34:55 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si1253992pfz.1.2017.03.09.08.34.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 08:34:55 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id o126so7815713pfb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 08:34:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3wQ5D9lPKchk21cOlaVFCyaOibxosaKBFzzw13MlDSk=;
        b=R3qLdqt0XVsEVhQSpAw2lDPdTHQGWlOmTMGlf4XEC+jvw+ySnTe2t/sIonSFRtVzTm
         eU5aXifTbVYaSo+praUGXq3tKR0Fw7Xn/2H3/MJ7s7VsMFXS1RATJClz4B2LaaQ+htVw
         3aIW3E3/w/6eM9rBHNdoacgcumjmrDXH+cO2sTA76qUT1Zzw1q3aW+r8PtLnIlgpszic
         zQr7o16gDB1MUXZLEzGWWX5h7cvol+bZC2VSfNzkRRSRErE1orF05USouh8XisOh4Vzt
         Y21LZPSQyHKEYdDULGJclqV1yBT2NzlJMvqxYePbTul7x59LFIKNbBTqwXF/goGrtarn
         qnlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=3wQ5D9lPKchk21cOlaVFCyaOibxosaKBFzzw13MlDSk=;
        b=SVncCIO7CR65cpMtQNSctqTvhelZ3rUFiNTpJj7n61eX8LyDoZRzn5A8NbEX67J6Wc
         JU4EgGYYJcyZrh4uDVJZJF17YQVTlX8zy8TDWkwyrBwbXFgg8I9CCdUEM2DiIiWVCiug
         VM2/h62NifLf+qkrJ622+9v/aLhS1hq7Y8eeVFTOto70LmuZ0CPuvkBYpmDcIrEhdEki
         acooB1mb2GMHqO0VzvNUxxASmFCj2VdXqptn9G+sCcGF8OEmSHRUeFozigHmWwNhcph+
         cA+KSZ0PTp8/RdNgg2Ece4EC/mSqNm6tKDlEgM6U7ciZSQrWrRF2kU7BMQk11rZzGP9b
         Kk8g==
X-Gm-Message-State: AMke39mER5XdUFjR/62+/n9osnrZL6riFBRHbjbls9+DaTe7XVtiFbBYK3Eu6EOpyWIwfA==
X-Received: by 10.99.123.75 with SMTP id k11mr14707315pgn.17.1489077295374;
        Thu, 09 Mar 2017 08:34:55 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id x21sm13491499pfa.71.2017.03.09.08.34.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 08:34:53 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: chris@the-brannons.com,
	outreachy-kernel@googlegroups.com,
	kirk@reisers.ca,
	samuel.thibault@ens-lyon.org,
	gregkh@linuxfoundation.org,
	speakup@linux-speakup.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 3/4] staging: speakup: Alignment match open parenthesis
Date: Thu,  9 Mar 2017 22:04:32 +0530
Message-Id: <20170309163433.19462-4-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170309163433.19462-1-arushisinghal19971997@gmail.com>
References: <20170309163433.19462-1-arushisinghal19971997@gmail.com>

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 changes in v2
 - Aligned the lines which are not aligned in previous patch.
---
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


