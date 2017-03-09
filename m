X-GM-THRID: 6394971085965623296
X-Received: by 10.99.111.6 with SMTP id k6mr6087955pgc.131.1489074609180;
        Thu, 09 Mar 2017 07:50:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.232 with SMTP id k37ls337819ote.15.gmail; Thu, 09 Mar
 2017 07:50:08 -0800 (PST)
X-Received: by 10.237.43.36 with SMTP id p33mr2593898qtd.46.1489074608793;
        Thu, 09 Mar 2017 07:50:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id u12si1265858pfd.3.2017.03.09.07.50.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 07:50:08 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g2so2732333pge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 07:50:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=MCBLYM+LQWmo7Hfchl+HQrc/B3tkKfgnSsC/aft4s9M=;
        b=EnVG4H3HfhIPRwiKgmoeyFpq8pGijGq3uRXlV/SSqh8c2H3kuX2BoZ6i1q3j3RwQJk
         eSNknn8JmpdLx+3lx6KC7aRe4ErY3imSiMsUF9/X8fzuR/jmm5J9G9T0VxFwO4sKWMrG
         woWETloqObaVxm6zT/SJHymd2MlqdBFrSRpPbkZfpKyFxFE8KvXzpuAHv9b1ot1+6SVb
         13Q0O66Qmiikv2BsN4hqHHlAozLXtlKhOthwom9w1b5JDGLuwK34fgiOkL92hgVzcb+9
         4XGJh1bcsf5CqeY5KOQswV7XZShS0wnnEUNcUhKDUNRoTxcqVU1sRpipHL/UqLHOL41h
         ZrDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=MCBLYM+LQWmo7Hfchl+HQrc/B3tkKfgnSsC/aft4s9M=;
        b=TcEqXydh94kJT/3YOUDx/xNzIbGgGPeJU+xmSY7s8dZES63DdrcWYkz3NKZNwd9dUr
         8g9oxKQrN64keWAjfHuuaHO1YylmZxMPw9jM8gJGUwiNQJZbtOsu7i4OfOpH1OnrQLMS
         VbMogVZ5HBmDVv4rnhZDb6G8aJxqOHYjsrzpOFzkbDd2/fBcdkHd0e9mKHO80JhbaAoz
         wR+GxLY6gQBWZ191zeHd0DOZv+QSomlYHhYJxy9r9JkgNFHxOUrNHeHv+wu/iurTXjQ+
         2407YU7BpeStltbu1XHO5KkY8UHFG6Ek3wYNL6hxQeSJ4X7LcnhliLzE/zk9y7Np7nyb
         pUfg==
X-Gm-Message-State: AMke39nKIgKaWW0x6tqCfb6AkDbF58L72XUoYvBb+TwV9UrnI0yQZ1jKO7lxjdZAj2EPxw==
X-Received: by 10.98.16.136 with SMTP id 8mr15048084pfq.104.1489074608385;
        Thu, 09 Mar 2017 07:50:08 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([45.125.141.33])
        by smtp.gmail.com with ESMTPSA id o26sm13439395pgd.25.2017.03.09.07.50.06
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 07:50:07 -0800 (PST)
Message-ID: <58c179af.1a92630a.cf3ac.e1a3@mx.google.com>
X-Google-Original-Message-ID: <20170309155004.GA16075@<rvarsha016@gmail.com>>
Date: Thu, 9 Mar 2017 21:20:04 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/2] staging: media: atomisp: Remove useless cast.
References: <cover.1489074107.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1489074107.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Explicit type casting of variable, with same type as that of variable,
is not required. The following coccinelle script is used to remove it.

@@
type T;
T *ptr;
T p;
@@
(
- (T *)(&p)
+ &p
|
- (T *)ptr
+ ptr
|
- (T *)(ptr)
+ ptr
|
- (T)(p)
+ p
)

This patch also removes unnecessary parentheses.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v2:
- Removed unnecessary parentheses.
- Modified commit message.

 drivers/staging/media/atomisp/i2c/gc2235.c               | 16 ++++++++--------
 drivers/staging/media/atomisp/i2c/mt9m114.c              |  4 ++--
 drivers/staging/media/atomisp/i2c/ov2722.c               |  6 +++---
 .../atomisp2/css2400/runtime/isys/src/isys_dma_rmgr.c    |  2 +-
 .../media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c |  8 ++++----
 drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c     |  2 +-
 6 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/media/atomisp/i2c/gc2235.c b/drivers/staging/media/atomisp/i2c/gc2235.c
index 37a83c7..38f6de1 100644
--- a/drivers/staging/media/atomisp/i2c/gc2235.c
+++ b/drivers/staging/media/atomisp/i2c/gc2235.c
@@ -278,7 +278,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 	if (ret)
 		return ret;
 
-	buf->crop_horizontal_start = ((u16)reg_val_h << 8) | (u16)reg_val;
+	buf->crop_horizontal_start = (reg_val_h << 8) | reg_val;
 
 	ret =  gc2235_read_reg(client, GC2235_8BIT,
 					GC2235_V_CROP_START_H, &reg_val_h);
@@ -287,7 +287,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 	if (ret)
 		return ret;
 
-	buf->crop_vertical_start = ((u16)reg_val_h << 8) | (u16)reg_val;
+	buf->crop_vertical_start = (reg_val_h << 8) | reg_val;
 
 	ret = gc2235_read_reg(client, GC2235_8BIT,
 					GC2235_H_OUTSIZE_H, &reg_val_h);
@@ -295,7 +295,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 					GC2235_H_OUTSIZE_L, &reg_val);
 	if (ret)
 		return ret;
-	buf->output_width = ((u16)reg_val_h << 8) | (u16)reg_val;
+	buf->output_width = (reg_val_h << 8) | reg_val;
 
 	ret = gc2235_read_reg(client, GC2235_8BIT,
 					GC2235_V_OUTSIZE_H, &reg_val_h);
@@ -303,7 +303,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 					GC2235_V_OUTSIZE_L, &reg_val);
 	if (ret)
 		return ret;
-	buf->output_height = ((u16)reg_val_h << 8) | (u16)reg_val;
+	buf->output_height = (reg_val_h << 8) | reg_val;
 
 	buf->crop_horizontal_end = buf->crop_horizontal_start +
 						buf->output_width - 1;
@@ -317,7 +317,7 @@ static int gc2235_get_intg_factor(struct i2c_client *client,
 	if (ret)
 		return ret;
 
-	dummy = ((u16)reg_val_h << 8) | (u16)reg_val;
+	dummy = (reg_val_h << 8) | reg_val;
 
 	ret = gc2235_read_reg(client, GC2235_8BIT,
 					GC2235_SH_DELAY_H, &reg_val_h);
@@ -702,9 +702,9 @@ static int distance(struct gc2235_resolution *res, u32 w, u32 h)
 	h_ratio = (res->height << 13) / h;
 	if (h_ratio == 0)
 		return -1;
-	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
+	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < (int)8192) || (h_ratio < (int)8192)  ||
+	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
 		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
@@ -873,7 +873,7 @@ static int gc2235_detect(struct i2c_client *client)
 	}
 	ret = gc2235_read_reg(client, GC2235_8BIT,
 					GC2235_SENSOR_ID_L, &low);
-	id = ((((u16) high) << 8) | (u16) low);
+	id = ((high << 8) | low);
 
 	if (id != GC2235_ID) {
 		dev_err(&client->dev, "sensor ID error, 0x%x\n", id);
diff --git a/drivers/staging/media/atomisp/i2c/mt9m114.c b/drivers/staging/media/atomisp/i2c/mt9m114.c
index 8762124..9742293 100644
--- a/drivers/staging/media/atomisp/i2c/mt9m114.c
+++ b/drivers/staging/media/atomisp/i2c/mt9m114.c
@@ -618,9 +618,9 @@ static int distance(struct mt9m114_res_struct const *res, u32 w, u32 h)
 	h_ratio = (res->height << 13) / h;
 	if (h_ratio == 0)
 		return -1;
-	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
+	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < (int)8192) || (h_ratio < (int)8192)  ||
+	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
 		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
diff --git a/drivers/staging/media/atomisp/i2c/ov2722.c b/drivers/staging/media/atomisp/i2c/ov2722.c
index 43e872a..adf9766 100644
--- a/drivers/staging/media/atomisp/i2c/ov2722.c
+++ b/drivers/staging/media/atomisp/i2c/ov2722.c
@@ -807,9 +807,9 @@ static int distance(struct ov2722_resolution *res, u32 w, u32 h)
 	h_ratio = (res->height << 13) / h;
 	if (h_ratio == 0)
 		return -1;
-	match   = abs(((w_ratio << 13) / h_ratio) - ((int)8192));
+	match   = abs(((w_ratio << 13) / h_ratio) - 8192);
 
-	if ((w_ratio < (int)8192) || (h_ratio < (int)8192)  ||
+	if ((w_ratio < 8192) || (h_ratio < 8192)  ||
 		(match > LARGEST_ALLOWED_RATIO_MISMATCH))
 		return -1;
 
@@ -998,7 +998,7 @@ static int ov2722_detect(struct i2c_client *client)
 	}
 	ret = ov2722_read_reg(client, OV2722_8BIT,
 					OV2722_SC_CMMN_CHIP_ID_L, &low);
-	id = ((((u16) high) << 8) | (u16) low);
+	id = (high << 8) | low;
 
 	if ((id != OV2722_ID) && (id != OV2720_ID)) {
 		dev_err(&client->dev, "sensor ID error\n");
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_dma_rmgr.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_dma_rmgr.c
index d99150a..5032627 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_dma_rmgr.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/runtime/isys/src/isys_dma_rmgr.c
@@ -69,7 +69,7 @@ bool ia_css_isys_dma_channel_rmgr_acquire(
 		for (i = ISYS2401_DMA_CHANNEL_0; i < N_ISYS2401_DMA_CHANNEL; i++) {
 			if (bitop_getbit(cur_rsrc->active_table, i) == 0) {
 				bitop_setbit(cur_rsrc->active_table, i);
-				*channel = (isys2401_dma_channel)i;
+				*channel = i;
 				cur_rsrc->num_active++;
 				retval = true;
 				break;
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
index eba96cc..b294e6d 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/sh_css_firmware.c
@@ -122,7 +122,7 @@ sh_css_load_blob_info(const char *fw, const struct ia_css_fw_info *bi, struct ia
 	/* Special case: only one binary in fw */
 	if (bi == NULL) bi = (const struct ia_css_fw_info *)fw;
 
-	name = (const char *)fw + bi->blob.prog_name_offset;
+	name = fw + bi->blob.prog_name_offset;
 	blob = (const unsigned char *)fw + bi->blob.offset;
 
 	/* sanity check */
@@ -201,7 +201,7 @@ sh_css_check_firmware_version(const char *fw_data)
 	struct sh_css_fw_bi_file_h *file_header;
 
 	firmware_header = (struct firmware_header *)fw_data;
-	file_header = (struct sh_css_fw_bi_file_h *)&firmware_header->file_header;
+	file_header = &firmware_header->file_header;
 
 	if (strcmp(file_header->version, release_version) != 0) {
 		return false;
@@ -221,8 +221,8 @@ sh_css_load_firmware(const char *fw_data,
 	bool valid_firmware = false;
 
 	firmware_header = (struct firmware_header *)fw_data;
-	file_header = (struct sh_css_fw_bi_file_h *)&firmware_header->file_header;
-	binaries = (struct ia_css_fw_info *)&firmware_header->binary_header;
+	file_header = &firmware_header->file_header;
+	binaries = &firmware_header->binary_header;
 	strncpy(FW_rel_ver_name, file_header->version, min(sizeof(FW_rel_ver_name), sizeof(file_header->version)) - 1);
 	valid_firmware = sh_css_check_firmware_version(fw_data);
 	if (!valid_firmware) {
diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
index 358d340..a32c981 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm.c
@@ -553,7 +553,7 @@ int hmm_set(ia_css_ptr virt, int c, unsigned int bytes)
 		vptr = hmm_bo_vmap(bo, true);
 		if (vptr) {
 			vptr = vptr + (virt - bo->start);
-			memset((void *)vptr, c, bytes);
+			memset(vptr, c, bytes);
 			clflush_cache_range(vptr, bytes);
 			hmm_bo_vunmap(bo);
 			return 0;
-- 
2.9.3


