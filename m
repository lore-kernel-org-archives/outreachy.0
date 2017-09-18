X-GM-THRID: 6467212349549838336
X-Received: by 10.46.18.149 with SMTP id 21mr2568439ljs.28.1505765213167;
        Mon, 18 Sep 2017 13:06:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.76.9 with SMTP id z9ls887163lja.24.gmail; Mon, 18 Sep 2017
 13:06:51 -0700 (PDT)
X-Received: by 10.25.190.75 with SMTP id o72mr965961lff.18.1505765211437;
        Mon, 18 Sep 2017 13:06:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505765211; cv=none;
        d=google.com; s=arc-20160816;
        b=AJ97WLLB90RjKOYpTfmDa7HI6vWFXxOLQLsY+xQQf6GqFqoNNscXGW1eyOIBuSk2YA
         a9HchLsm/TC3xpzzgnkAUR5+D9rdYLkmbvq0x7/92YMxXFrwEWKQhNxWjA9YODVZkQfF
         qQ9FNsCw13AZrJ3GFY+Eq/ov1GNXvwFhmel8FLOwlNTjuhS7WdeHB0ltmF+8gVSDbmL1
         QgvY1M62aN/9E+2v6+3twIGa/YbW2Eo06ntlz41Wt2F5IvPw3P2IqGQCCOxhj/RBrvWo
         0UFwWFXcGgVDyR0BWfqYnd24IhvUxBb5pBjjmSs+5eW/rd5K3XbHvEtciB/ITJLNzS1z
         pUjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:date:from:dkim-signature:arc-authentication-results;
        bh=XJ2+059tCc7Wwlbig2/LGyeOckUTnWPFWZgH64Ss7yk=;
        b=hpMgA6txy07JAqG0bfi0cJutqp3nfF37OPtUI4cVfaBUelNw16LPFu2jIaD1WyKcFG
         BnDkohKmzWTAlviKhjnq0hAPLPzKYnSXNBhoY91yN1SyKzll39NAKm7xzt42wPTm7FRM
         GbO4CZPqdzPwDgU7oCzkzTHahh4ONuyMFp0silzDkWaGc0bR2Im2cqwQNTNM6kKm11eu
         4QIXhMP3NEOJYteJ25WvI8twyn+cs1E+iQyoIFMj6B5di6ksyEB2LpUl4l/j6nSWhQ9q
         8ISDPgnu5zLlRIsKhEmK0WcilxI5K6ELZLj+ay/SW1CABhA9qTn4qaDB/y9TjRC4BH8z
         aJIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pZ9yjt4V;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wr0-x242.google.com (mail-wr0-x242.google.com. [2a00:1450:400c:c0c::242])
        by gmr-mx.google.com with ESMTPS id t142si128633wmt.2.2017.09.18.13.06.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 13:06:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) client-ip=2a00:1450:400c:c0c::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pZ9yjt4V;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c0c::242 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x242.google.com with SMTP id g50so1015915wra.3
        for <outreachy-kernel@googlegroups.com>; Mon, 18 Sep 2017 13:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:date:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=XJ2+059tCc7Wwlbig2/LGyeOckUTnWPFWZgH64Ss7yk=;
        b=pZ9yjt4VEJB+hIxhT8oHTB5QHAkYCKAi1YYiDsBOpC/DmnRIgRkmDKbrN6q3Ac6mwj
         4oDMPvVy29fPoCm25V95oorEB+wwIhVBTKK9Z72N0leec9KRzu7EEKjH1ckaRZdQ933Z
         ev8P+rhkAZcmKdWWEu24vZE74GTRDYCcPUwu1n4cVx//3kGTyc7CJtVs92uU9r3XPXWP
         OyV+xpt9axYenJin2qcwNi8nF52lKdN/ZKJrgI9qnGtsdhnW2iT6yX7ODPRZUeIp1bY7
         gAA9RhWqxrIKQtTQ/W+3spdCgL58QmKb81cQdmfOM9a2R4VtMpo4r+iU+KuI80CMuH3z
         sayg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=XJ2+059tCc7Wwlbig2/LGyeOckUTnWPFWZgH64Ss7yk=;
        b=O04vjRZYRW2GMRxMU9N7+yGoYbBw48ruzu58WewBdgIQ+FyU6cWC/YZnLiJMVeYRjV
         JquvkOPLOPDHgKxy2j4T8q2DhnJeYZhxVUnMbpT9HSbI2NAlnfmrOdJ3Uuv7F9RZriVV
         ArHp5dddT3Aa2IM43CSHd7dMeSetLmfVs4rzw/6HcF5GBR9JEOEoLxf2lmyiIMStvT4W
         eepF0yX6AcXLCNHArx+zohAwlgFzGcxcftBNDiD62jBqUpQQp2QqFx/KeONk7KxKjtq5
         80Ri5tuDTW/lK0yeAzSTBtNOyG0RPdIbGKiwsuFQv1TvXleA0ykT3byKXz6gDGpK2OMp
         2Qog==
X-Gm-Message-State: AHPjjUiCbVv9shrKlBr3j+XnaKJVp8ljsYBzK/qSX63G/HNs8OxFYi/0
	5e/6Lo5rLzOYbw==
X-Google-Smtp-Source: ADKCNb4XrizEUWsIP+R3+EHmMNyA1jqSwU81AHHP2zUrS/UxgyqdlN/fdEXdsgU4kAm5gbezMGHe6w==
X-Received: by 10.223.172.66 with SMTP id v60mr29244672wrc.143.1505765210927;
        Mon, 18 Sep 2017 13:06:50 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([86.124.247.82])
        by smtp.gmail.com with ESMTPSA id g25sm3692744wmc.16.2017.09.18.13.06.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 18 Sep 2017 13:06:50 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
X-Google-Original-From: Georgiana Chelu <georgiana.chelu93@example.com>
Date: Mon, 18 Sep 2017 23:06:49 +0300
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, mchehab@kernel.org
Subject: [PATCH] Staging: media: atomisp: pci: Fix style issues
Message-ID: <20170918200649.vpfscgyeuibkvifi@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Improve the coding style by fixing the following warnings/errors:
	* Space prohibited before that ','
	* Missing a blank line after declarations
	* Prefer 'unsigned int' to bare use of 'unsigned'
	* Open brace '{' following function definitions
	  go on the next line
	* Comparisons should place the constant on the
	  right side of the test

Issues found by checkpatch.pl.

Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
---
 .../atomisp/pci/atomisp2/atomisp_compat_css20.c    | 30 +++++++++++++++-------
 1 file changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
index 05897b747349..f0d7edb91721 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/atomisp_compat_css20.c
@@ -155,20 +155,20 @@ static void atomisp_css2_hw_store(hrt_address addr,
 				  const void *from, uint32_t n)
 {
 	unsigned long flags;
-	unsigned i;
+	unsigned int i;
 	unsigned int _to = (unsigned int)addr;
 	const char *_from = (const char *)from;
 
 	spin_lock_irqsave(&mmio_lock, flags);
 	for (i = 0; i < n; i++, _to++, _from++)
-		_hrt_master_port_store_8(_to , *_from);
+		_hrt_master_port_store_8(_to, *_from);
 	spin_unlock_irqrestore(&mmio_lock, flags);
 }
 
 static void atomisp_css2_hw_load(hrt_address addr, void *to, uint32_t n)
 {
 	unsigned long flags;
-	unsigned i;
+	unsigned int i;
 	char *_to = (char *)to;
 	unsigned int _from = (unsigned int)addr;
 
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
@@ -892,12 +896,12 @@ static inline int __set_css_print_env(struct atomisp_device *isp, int opt)
 {
 	int ret = 0;
 
-	if (0 == opt)
+	if (opt == 0)
 		isp->css_env.isp_css_env.print_env.debug_print = NULL;
-	else if (1 == opt)
+	else if (opt == 1)
 		isp->css_env.isp_css_env.print_env.debug_print =
 			atomisp_css2_dbg_ftrace_print;
-	else if (2 == opt)
+	else if (opt == 1)
 		isp->css_env.isp_css_env.print_env.debug_print =
 			atomisp_css2_dbg_print;
 	else
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
@@ -2777,6 +2786,7 @@ static void __configure_vf_output(struct atomisp_sub_device *asd,
 	struct atomisp_device *isp = asd->isp;
 	struct atomisp_stream_env *stream_env =
 		&asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL];
+
 	stream_env->pipe_configs[pipe_id].mode =
 		__pipe_id_to_pipe_mode(asd, pipe_id);
 	stream_env->update_pipe[pipe_id] = true;
@@ -2801,6 +2811,7 @@ static void __configure_video_vf_output(struct atomisp_sub_device *asd,
 	struct atomisp_stream_env *stream_env =
 		&asd->stream_env[ATOMISP_INPUT_STREAM_GENERAL];
 	struct ia_css_frame_info *css_output_info;
+
 	stream_env->pipe_configs[pipe_id].mode =
 					__pipe_id_to_pipe_mode(asd, pipe_id);
 	stream_env->update_pipe[pipe_id] = true;
@@ -4464,7 +4475,8 @@ int atomisp_css_load_acc_binary(struct atomisp_sub_device *asd,
 static struct atomisp_sub_device *__get_atomisp_subdev(
 					struct ia_css_pipe *css_pipe,
 					struct atomisp_device *isp,
-					enum atomisp_input_stream_id *stream_id) {
+					enum atomisp_input_stream_id *stream_id)
+{
 	int i, j, k;
 	struct atomisp_sub_device *asd;
 	struct atomisp_stream_env *stream_env;
@@ -4659,7 +4671,7 @@ int atomisp_css_dump_sp_raw_copy_linecount(bool reduced)
 int atomisp_css_dump_blob_infor(void)
 {
 	struct ia_css_blob_descr *bd = sh_css_blob_info;
-	unsigned i, nm = sh_css_num_binaries;
+	unsigned int i, nm = sh_css_num_binaries;
 
 	if (nm == 0)
 		return -EPERM;
@@ -4695,7 +4707,7 @@ int atomisp_set_css_dbgfunc(struct atomisp_device *isp, int opt)
 	int ret;
 
 	ret = __set_css_print_env(isp, opt);
-	if (0 == ret)
+	if (ret == 0)
 		dbg_func = opt;
 
 	return ret;
-- 
2.11.0


