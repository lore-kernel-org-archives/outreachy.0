X-GM-THRID: 6254206698701979648
X-Received: by 10.112.54.202 with SMTP id l10mr3678375lbp.14.1456170971958;
        Mon, 22 Feb 2016 11:56:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.4.214 with SMTP id 205ls423562lfe.32.gmail; Mon, 22 Feb
 2016 11:56:10 -0800 (PST)
X-Received: by 10.112.157.164 with SMTP id wn4mr3680882lbb.5.1456170970931;
        Mon, 22 Feb 2016 11:56:10 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wm0-x232.google.com (mail-wm0-x232.google.com. [2a00:1450:400c:c09::232])
        by gmr-mx.google.com with ESMTPS id s141si1255619wmd.1.2016.02.22.11.56.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 11:56:10 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) client-ip=2a00:1450:400c:c09::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c09::232 as permitted sender) smtp.mailfrom=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x232.google.com with SMTP id g62so179877443wme.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 11:56:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=PJ+tVIEcEy5NJKFB4QuuvfyBmtYPMGGjFnSh5jJI5bY=;
        b=LHHW9MqELXIyStZofQGpaOSg8kAHduwg94mASKOCs6ijd5Glx1rN5LO8DiaErA9FqU
         uEX1rLqgOWiqaF3gXChehIJ4tHLLsI+oOwzrFkQgx/pt80kUQ4U7KTL6PDoschzIvtFD
         XfLkulse+NvgsPesFq17jpRDrGlZgpWhhWjt7pcwCRAHPBYY89nkP0yPflBOROwM7pSl
         ICLP/0x51Pk1oFsjL0fna5u98/bfg++g3vgJgIfCY8kfrNKzWLZxQlNmyZsCobir+dvN
         OH3fwyNF+C2hfE2xcBOyaGWhinxSveq8hClYjSe/+TDR965MUSshchFO+18/dYbA+jUx
         EC5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PJ+tVIEcEy5NJKFB4QuuvfyBmtYPMGGjFnSh5jJI5bY=;
        b=HeHi262/tEVnaL8xxFi9hJzoy3wD45kzBvqRsLszz5XFjJeNmH1cgkdNVKDuRygJuA
         AWN4ujJ7xgzUstnDXfLTr/9lQu4awFRr7vbThlcENKC1AGjeL8eIE+ogTdvUM+AsnZiC
         ycLo9M9nIQPxYvT748QLykkE1YLjQBRS2nkl9cH+C4KUZqtrKnI3/13HsxucUJGZrGc1
         ug9AV50U8l3oGSLfDO68UrTLmvDMnvfztdrSWQSqHVDu2zWJieTkwFT7rXo7eIniTht9
         ri6uP0u/dZjimQWFnrGQU0X86NWDIfoqusJgB8welH/aNi8+wXASUoEDFHpxGA8xVcgJ
         PL3Q==
X-Gm-Message-State: AG10YORhGmxiEVGyD547zvBBoe9wc5aoS+V6sSzDQ4pOVuzwXWypVe2UkwPGyUrBLUpr2Q==
X-Received: by 10.194.84.171 with SMTP id a11mr16151014wjz.91.1456170970761;
        Mon, 22 Feb 2016 11:56:10 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.228.232])
        by smtp.gmail.com with ESMTPSA id hm9sm26108518wjb.34.2016.02.22.11.56.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 22 Feb 2016 11:56:09 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: speakup: Add space around '|'
Date: Mon, 22 Feb 2016 21:56:01 +0200
Message-Id: <1456170961-4833-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Add space around operator '|'. Problem found using checkpatch.pl
CHECK: spaces preferred around that '|' (ctx:VxV)

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/speakup/kobjects.c | 54 +++++++++++++++++++-------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/staging/speakup/kobjects.c b/drivers/staging/speakup/kobjects.c
index fdfeb42..528cbdc 100644
--- a/drivers/staging/speakup/kobjects.c
+++ b/drivers/staging/speakup/kobjects.c
@@ -862,66 +862,66 @@ static struct kobj_attribute version_attribute =
 	__ATTR_RO(version);
 
 static struct kobj_attribute delimiters_attribute =
-	__ATTR(delimiters, S_IWUSR|S_IRUGO, punc_show, punc_store);
+	__ATTR(delimiters, S_IWUSR | S_IRUGO, punc_show, punc_store);
 static struct kobj_attribute ex_num_attribute =
-	__ATTR(ex_num, S_IWUSR|S_IRUGO, punc_show, punc_store);
+	__ATTR(ex_num, S_IWUSR | S_IRUGO, punc_show, punc_store);
 static struct kobj_attribute punc_all_attribute =
-	__ATTR(punc_all, S_IWUSR|S_IRUGO, punc_show, punc_store);
+	__ATTR(punc_all, S_IWUSR | S_IRUGO, punc_show, punc_store);
 static struct kobj_attribute punc_most_attribute =
-	__ATTR(punc_most, S_IWUSR|S_IRUGO, punc_show, punc_store);
+	__ATTR(punc_most, S_IWUSR | S_IRUGO, punc_show, punc_store);
 static struct kobj_attribute punc_some_attribute =
-	__ATTR(punc_some, S_IWUSR|S_IRUGO, punc_show, punc_store);
+	__ATTR(punc_some, S_IWUSR | S_IRUGO, punc_show, punc_store);
 static struct kobj_attribute repeats_attribute =
-	__ATTR(repeats, S_IWUSR|S_IRUGO, punc_show, punc_store);
+	__ATTR(repeats, S_IWUSR | S_IRUGO, punc_show, punc_store);
 
 static struct kobj_attribute attrib_bleep_attribute =
-	__ATTR(attrib_bleep, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(attrib_bleep, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute bell_pos_attribute =
-	__ATTR(bell_pos, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(bell_pos, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute bleep_time_attribute =
-	__ATTR(bleep_time, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(bleep_time, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute bleeps_attribute =
-	__ATTR(bleeps, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(bleeps, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute cursor_time_attribute =
-	__ATTR(cursor_time, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(cursor_time, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute key_echo_attribute =
-	__ATTR(key_echo, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(key_echo, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute no_interrupt_attribute =
-	__ATTR(no_interrupt, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(no_interrupt, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute punc_level_attribute =
-	__ATTR(punc_level, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(punc_level, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute reading_punc_attribute =
-	__ATTR(reading_punc, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(reading_punc, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute say_control_attribute =
-	__ATTR(say_control, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(say_control, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute say_word_ctl_attribute =
-	__ATTR(say_word_ctl, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(say_word_ctl, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 static struct kobj_attribute spell_delay_attribute =
-	__ATTR(spell_delay, S_IWUSR|S_IRUGO, spk_var_show, spk_var_store);
+	__ATTR(spell_delay, S_IWUSR | S_IRUGO, spk_var_show, spk_var_store);
 
 /*
  * These attributes are i18n related.
  */
 static struct kobj_attribute announcements_attribute =
-	__ATTR(announcements, S_IWUSR|S_IRUGO, message_show, message_store);
+	__ATTR(announcements, S_IWUSR | S_IRUGO, message_show, message_store);
 static struct kobj_attribute characters_attribute =
-	__ATTR(characters, S_IWUSR|S_IRUGO, chars_chartab_show,
+	__ATTR(characters, S_IWUSR | S_IRUGO, chars_chartab_show,
 	       chars_chartab_store);
 static struct kobj_attribute chartab_attribute =
-	__ATTR(chartab, S_IWUSR|S_IRUGO, chars_chartab_show,
+	__ATTR(chartab, S_IWUSR | S_IRUGO, chars_chartab_show,
 	       chars_chartab_store);
 static struct kobj_attribute ctl_keys_attribute =
-	__ATTR(ctl_keys, S_IWUSR|S_IRUGO, message_show, message_store);
+	__ATTR(ctl_keys, S_IWUSR | S_IRUGO, message_show, message_store);
 static struct kobj_attribute colors_attribute =
-	__ATTR(colors, S_IWUSR|S_IRUGO, message_show, message_store);
+	__ATTR(colors, S_IWUSR | S_IRUGO, message_show, message_store);
 static struct kobj_attribute formatted_attribute =
-	__ATTR(formatted, S_IWUSR|S_IRUGO, message_show, message_store);
+	__ATTR(formatted, S_IWUSR | S_IRUGO, message_show, message_store);
 static struct kobj_attribute function_names_attribute =
-	__ATTR(function_names, S_IWUSR|S_IRUGO, message_show, message_store);
+	__ATTR(function_names, S_IWUSR | S_IRUGO, message_show, message_store);
 static struct kobj_attribute key_names_attribute =
-	__ATTR(key_names, S_IWUSR|S_IRUGO, message_show, message_store);
+	__ATTR(key_names, S_IWUSR | S_IRUGO, message_show, message_store);
 static struct kobj_attribute states_attribute =
-	__ATTR(states, S_IWUSR|S_IRUGO, message_show, message_store);
+	__ATTR(states, S_IWUSR | S_IRUGO, message_show, message_store);
 
 /*
  * Create groups of attributes so that we can create and destroy them all
-- 
1.9.1


