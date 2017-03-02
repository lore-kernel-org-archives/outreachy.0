X-GM-THRID: 6392720768587792384
X-Received: by 10.99.9.133 with SMTP id 127mr4127062pgj.120.1488421291694;
        Wed, 01 Mar 2017 18:21:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.59.194 with SMTP id k60ls3833711otc.22.gmail; Wed, 01 Mar
 2017 18:21:31 -0800 (PST)
X-Received: by 10.129.153.201 with SMTP id q192mr3968916ywg.118.1488421291258;
        Wed, 01 Mar 2017 18:21:31 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id u12si1200693pfd.3.2017.03.01.18.21.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Mar 2017 18:21:31 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so7611918pgy.3
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Mar 2017 18:21:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ckJ01s+EUM9W/OPNj5Otx3bxQB1oetBZhB485GdUYNM=;
        b=a+2HzNrKKUkvYJXYn3Ta3AGQHQFodor46UtWIiKtzeT4enuhsRPcCqlwAmcWm/vkvA
         W8ZQbBcn62JGB6g9JOkxltR1FbvODtihp7n9E5PfO6nhhMRHfNSbW6mIr6ig1VF058/t
         0rW+U95NALJRbIcOqgUh5bxrpXtIyRiuUL85cHfdV+9eJLpWoi01mV5Scz4XWxV/mcjZ
         oFE+t1MYZhBWyms3dwMrfkDKw37KfWNR5hmxzVuu1CMIeJu1ANm7lADBwW7hN4G8VICr
         rWk0HEaTG4xmPsl8AaE17FE73XV6DMVJePPjXKllcco9LKRSXs57+w7RXOtb+7m9aKXa
         IhEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ckJ01s+EUM9W/OPNj5Otx3bxQB1oetBZhB485GdUYNM=;
        b=Hjiynw6Vgc1du3742ZoPfvvrlhbr6Vxm28+0D6368OvssZBLqZOzDMqq1DRSwn7gpZ
         ABnJOuY3xzJiHt5QNSSIQKQx17u5dnpi7UIpm2giUZjXxNR8k1Ka03Fvgfk6yHvkfASr
         R6/FL+H8MRQsbA/+XjKRIB9VwStvaH4X2sghv54w3qifNsbhNp9aagQw8y+9xoPEOXC2
         AdDSdsgLhJfz31eo1Y5ON1XOvb+GNjrArR/o9U9Qu5CnhejDNw4Pe/M+j3x2jpXt7Gzh
         bS/eVpLqZ/oPY/776NIoo6m6BXgkgIcMG/M7oI/e8odvw0P9eGkqkT6acFXrvFx8C/Pw
         kPMg==
X-Gm-Message-State: AMke39kQB/kEJvzCiJd94e5MLoxUNj3C+x8/JC5Gh0w7Xe/1kaLv9L19bpt0/1euNMqfYQ==
X-Received: by 10.84.209.167 with SMTP id y36mr421055plh.11.1488421290879;
        Wed, 01 Mar 2017 18:21:30 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w131sm11804507pfd.34.2017.03.01.18.21.28
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 01 Mar 2017 18:21:29 -0800 (PST)
Date: Thu, 2 Mar 2017 07:48:41 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: w.d.hubbs@gmail.com
Cc: Chris Brannon <chris@the-brannons.com>, Kirk Reiser <kirk@reisers.ca>,
	Samuel Thibault <samuel.thibault@ens-lyon.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	speakup@linux-speakup.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: speakup: Alignment match open parenthesis
Message-ID: <20170302021841.GA1812@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fix checkpatch issues: "CHECK: Alignment should match open parenthesis"

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/speakup/i18n.c     |  2 +-
 drivers/staging/speakup/kobjects.c | 38 +++++++++++++++++++-------------------
 2 files changed, 20 insertions(+), 20 deletions(-)

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
index fdd6e4b33951..61656c7c2dc9 100644
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
@@ -92,7 +92,7 @@ static void report_char_chartab_status(int reset, int received, int used,
 		pr_info("%s reset to defaults\n", object_type[do_characters]);
 	} else if (received) {
 		len = snprintf(buf, sizeof(buf),
-				" updated %d of %d %s\n",
+			       " updated %d of %d %s\n",
 				used, received, object_type[do_characters]);
 		if (rejected)
 			snprintf(buf + (len - 1), sizeof(buf) - (len - 1),
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


