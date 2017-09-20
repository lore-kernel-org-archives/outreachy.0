X-GM-THRID: 6467836648401928192
X-Received: by 10.25.18.223 with SMTP id 92mr207175lfs.11.1505910572402;
        Wed, 20 Sep 2017 05:29:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.188.18 with SMTP id s18ls27904wrg.9.gmail; Wed, 20 Sep
 2017 05:29:31 -0700 (PDT)
X-Received: by 10.28.218.143 with SMTP id r137mr417915wmg.15.1505910571871;
        Wed, 20 Sep 2017 05:29:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505910571; cv=none;
        d=google.com; s=arc-20160816;
        b=UdYzeYr1oxgSqDlI/TUZFWffqFsZAc3PuNbKinExwnr8/77oE95jgMncMh9yr+hBwW
         VF7n7CXqUXt4obxVLprDITgBhiAYr0cOsL0VMOaZu6mY/s0q0wB2QrCkcW0L65N7zRE8
         /6t9bYN6/xZYcE5ebcOt02yOsMOpNVsfRBDFVYwA+DIjvNBKqrhwSEjBWQhEzQqnIEyO
         pMNeljnJGgVXRETMxv7el8nJX6twA27KsZMJO56/HekZi8vKu7Tr8aI8GEGr7uPyXyR5
         ai0zp2hbnC/fr4gEe82lVMBa9uNgdYLgMZJ5EC3RxopBPY8nZvk58NbFeiuo5Hr/rWqI
         lM8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=9JDZFUwWdazM58JwKrH/5pZkW0SJkrpQXywuJaluiqU=;
        b=S7wyC9wNKN0CL3x9FSTzD5i3/YYoDBwpGmIySRDFi+vJaZWv5RatmAPZMGciZOouqB
         Ika6/Vu+JkVzPuGP569tTVsV8Cs5P8XlI6g6eU7sq1YzY1lI/SA7o021/MhHezztMQPz
         fRTbHyzVQODZ5cpZdSpJYQBqJcJRCN5FNp+lsR8P/4nmdukiuwCXfdhwG+eSIKnxL67F
         vyvgvXmB8QAoYtXMGOqBrLmOkPn7Q6892D8aoz6Ee0WYPSiDlvN0taVO2sC+EVwDzTNW
         mUqeXSX588xWLUW3dHU7zCdHSMTnNEdUXCWUNaRMW0CiqAAhovgexJR7+AaTXCtTiV16
         eoag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=moZla3Ri;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id t142si163084wmt.2.2017.09.20.05.29.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Sep 2017 05:29:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=moZla3Ri;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id k20so1416938wre.1
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Sep 2017 05:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=9JDZFUwWdazM58JwKrH/5pZkW0SJkrpQXywuJaluiqU=;
        b=moZla3RiYcb4wnrQ8jTuqX41fhr9y2M53BCuU14b93EVLvY8NhWQPPufYvlFmRF/aA
         lZjA8vPY7rRzB7ocpfIm2bYO4vHxn775sfA1K31sdkUsm2irY8vkzvJzHOWPhp5Ux170
         OnDS8B7o4V7vUrhhwIUhgF+NtTt1esldmVMOL0YmcozlocEBPiBGH0dv2Nrg/ELK6z7M
         1vVUG7r3xZJJyud1bOrBazP8uQaCynioZdM6Ao556wSZdkeiWeZyAmGASsiudhq9qmWS
         cgBg4zz0M2OaMyrZN9Qs7YbNtsJqXVAt1KL6m86MI8j9T7qVqISIpJJtNeHojPwXlHV5
         dRog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=9JDZFUwWdazM58JwKrH/5pZkW0SJkrpQXywuJaluiqU=;
        b=kIKTLPm6CoUplgh0B/YQmICsT1ye2Fq1Pfp5490e9KpxBgeRgw74l88TGEbTh80zdT
         NqTpSYOzLv/8lbQfyBm7lrrrtpbTetuBt9lp6tbhvVB2bjWgcfsmFWeQPjhJVr4XVg5a
         dBBjaVN5IORJcDWKrRY2Qp/ymXRd8pKY+5ZNn2om/A2rrlP6WP0AnsXU7tFqczx5aKji
         X8FnsFJDjjUD2T2ImEP4GuHFYwvqMcsvWY8fTKMQLMIsys24VMnuf3Kyz+r9IeeSwHDV
         Ih+5UXmX/Bm87eGPlJ4J3X1acS/dgL/mOSjTuJz9qGdysXyYxOxV+B1B60e79azA//ow
         C6eg==
X-Gm-Message-State: AHPjjUjVi9ZwUpY7VvCkNE/6imxpQiuZzEKDhyiz38gGwJJwAZRJIx2p
	rvfbCT+oC7Uy/gM37Ss1hHk=
X-Google-Smtp-Source: AOwi7QA5Fp9ei37XPxoXc+j4/Hi8c5MpkP+/aXvngQdNSY6qOS5yY89rNehpSE2sWPlrSpFkw73GaQ==
X-Received: by 10.223.147.195 with SMTP id 61mr1903465wrp.119.1505910571563;
        Wed, 20 Sep 2017 05:29:31 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from ubuntu (fw-ext-11.romania.luxoft.com. [195.90.110.113])
        by smtp.gmail.com with ESMTPSA id f13sm1616036wre.66.2017.09.20.05.29.30
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 20 Sep 2017 05:29:31 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/4] Staging: media: atomisp: Add blank line after declarations
Date: Wed, 20 Sep 2017 05:28:47 -0700
Message-Id: <65813f24c8f476c6975626b0e4070c4a3cf97e62.1505909512.git.georgiana.chelu93@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>
In-Reply-To: <cover.1505909511.git.georgiana.chelu93@gmail.com>
References: <cover.1505909511.git.georgiana.chelu93@gmail.com>

This patch adds a blank line after declarations to
improve code readability.

Issue find by checkpatch.pl script.
WARNING: Missing a blank line after declarations

Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
---
 .../staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c  | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
index b7f22b7..5551934 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
@@ -232,9 +232,11 @@ static void __dump_pipe_config(struct atomisp_sub_device *asd,
 			       unsigned int pipe_id)
 {
 	struct atomisp_device *isp = asd->isp;
+
 	if (stream_env->pipes[pipe_id]) {
 		struct ia_css_pipe_config *p_config;
 		struct ia_css_pipe_extra_config *pe_config;
+
 		p_config = &stream_env->pipe_configs[pipe_id];
 		pe_config = &stream_env->pipe_extra_configs[pipe_id];
 		dev_dbg(isp->dev, "dumping pipe[%d] config:\n", pipe_id);
@@ -507,6 +509,7 @@ static int __destroy_stream(struct atomisp_sub_device *asd,
 static int __destroy_streams(struct atomisp_sub_device *asd, bool force)
 {
 	int ret, i;
+
 	for (i = 0; i < ATOMISP_INPUT_STREAM_NUM; i++) {
 		ret = __destroy_stream(asd, &asd->stream_env[i], force);
 		if (ret)
@@ -573,6 +576,7 @@ static int __destroy_stream_pipes(struct atomisp_sub_device *asd,
 	struct atomisp_device *isp = asd->isp;
 	int ret = 0;
 	int i;
+
 	for (i = 0; i < IA_CSS_PIPE_ID_NUM; i++) {
 		if (!stream_env->pipes[i] ||
 		    !(force || stream_env->update_pipe[i]))
@@ -1051,6 +1055,7 @@ int atomisp_css_irq_enable(struct atomisp_device *isp,
 void atomisp_css_init_struct(struct atomisp_sub_device *asd)
 {
 	int i, j;
+
 	for (i = 0; i < ATOMISP_INPUT_STREAM_NUM; i++) {
 		asd->stream_env[i].stream = NULL;
 		for (j = 0; j < IA_CSS_PIPE_MODE_NUM; j++) {
@@ -1189,6 +1194,7 @@ int atomisp_css_start(struct atomisp_sub_device *asd,
 	struct atomisp_device *isp = asd->isp;
 	bool sp_is_started = false;
 	int ret = 0, i = 0;
+
 	if (in_reset) {
 		if (__destroy_streams(asd, true))
 			dev_warn(isp->dev, "destroy stream failed.\n");
@@ -1976,6 +1982,7 @@ void atomisp_css_enable_raw_binning(struct atomisp_sub_device *asd,
 void atomisp_css_enable_dz(struct atomisp_sub_device *asd, bool enable)
 {
 	int i;
+
 	for (i = 0; i < IA_CSS_PIPE_ID_NUM; i++)
 		asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL]
 			.pipe_configs[i].enable_dz = enable;
@@ -2002,6 +2009,7 @@ void atomisp_css_input_set_mode(struct atomisp_sub_device *asd,
 	int i;
 	struct atomisp_device *isp = asd->isp;
 	unsigned int size_mem_words;
+
 	for (i = 0; i < ATOMISP_INPUT_STREAM_NUM; i++)
 		asd->stream_env[i].stream_config.mode = mode;
 
@@ -2275,6 +2283,7 @@ int atomisp_css_stop(struct atomisp_sub_device *asd,
 	if (!in_reset) {
 		struct atomisp_stream_env *stream_env;
 		int i, j;
+
 		for (i = 0; i < ATOMISP_INPUT_STREAM_NUM; i++) {
 			stream_env = &asd->stream_env[i];
 			for (j = 0; j < IA_CSS_PIPE_ID_NUM; j++) {
@@ -2801,6 +2810,7 @@ static void __configure_video_vf_output(struct atomisp_sub_device *asd,
 	struct atomisp_stream_env *stream_env =
 		&asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL];
 	struct ia_css_frame_info *css_output_info;
+
 	stream_env->pipe_configs[pipe_id].mode =
 					__pipe_id_to_pipe_mode(asd, pipe_id);
 	stream_env->update_pipe[pipe_id] = true;
-- 
2.7.4


