X-GM-THRID: 6527693746145853440
X-Received: by 10.129.216.11 with SMTP id d11mr9277028ywj.133.1519847136881;
        Wed, 28 Feb 2018 11:45:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.48.208 with SMTP id w199ls311650yww.19.gmail; Wed, 28 Feb
 2018 11:45:35 -0800 (PST)
X-Google-Smtp-Source: AG47ELuGsmxM8PEZOUe/NkQEcmU60njCZk98tgFDuCLzjyQ8ka6UwX4P7J5qIDW6rgCse5dH1rR+
X-Received: by 10.129.145.86 with SMTP id i83mr9432422ywg.121.1519847135331;
        Wed, 28 Feb 2018 11:45:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519847135; cv=none;
        d=google.com; s=arc-20160816;
        b=yJHZP9IboOMVgBF5yCwRF8GMFAUw345OMKJ3OJ8YTLv1+OqXWvVlIeHmXdIEIOnJbG
         JaO+SYQ+JwGamJXfO0ZAvLDeGzT5iwz50yql52rqDB8gG5Fr23z5Gy7AOVPUxRt5gcIX
         zT/ODWhHkp1LBjkcNYO9xlOCYuZEh/Z7VxmKWZhWwcjoReHvIHyBkrozDTmC1/x8zHQW
         rhTFSk0b279+H39n2obLUURS9YtPWGoBhWxis+cTnYwFJ3s24Xxjz5+1RnI695fm8ZVT
         pyZ6l42Pu2jwlfYiT+e4d/iSRZnOi5Nnsh/Sj71jcsfQ2AWh8TURF2Rt8QmGJ8/mnGFY
         hIfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=wNf8YR8rfmxcQRsWC71do4kN/T9j6CVD+wvUqhR+Fh0=;
        b=JL8mzKHqjmfeQ5LiaNmNk2XNef1tAWAuHxRfX0BepTPsc0w0RlPe+mu2wick12VPQm
         I20WQSl93P819eB9fDpChPUg8l2anA2E0Vl19/z7pYlUcy39sE/PpY+qXANNgxHmL52R
         O8/c+J2oE53hBT7b7Vq2MhOX3Y6cjIlj8OjRG5UrP/JpVy5g1i61VcpsiWAoySOKG1EV
         iI9qMxT+85qdTsQskNP11LmLqiBiWLfJq/O59SQUfEUm0zm87uv3vuf4vcj2L7Y2Z1EW
         ADeda5wtIVESjo3bNbSO+JxILTtSqjsfAo/xmNTVZOwKUBYhEHnGPoCwAvrw12RQ0ql/
         Eljw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o/hM0nop;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <santhameena13@gmail.com>
Received: from mail-pl0-x229.google.com (mail-pl0-x229.google.com. [2607:f8b0:400e:c01::229])
        by gmr-mx.google.com with ESMTPS id d36-v6si135958ybe.0.2018.02.28.11.45.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 11:45:35 -0800 (PST)
Received-SPF: pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) client-ip=2607:f8b0:400e:c01::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=o/hM0nop;
       spf=pass (google.com: domain of santhameena13@gmail.com designates 2607:f8b0:400e:c01::229 as permitted sender) smtp.mailfrom=santhameena13@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x229.google.com with SMTP id bb3-v6so2147186plb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Feb 2018 11:45:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=wNf8YR8rfmxcQRsWC71do4kN/T9j6CVD+wvUqhR+Fh0=;
        b=o/hM0nopqxPZMeWZffQuMYZPFhmXyBJt5vNQo8k+k7AGjmAfz4+t9ffgMiF5Zjsn3A
         65KEzlE7V86SkGdHYjakokMc/knYsZU8yubV+PPBjfO4Iu2AdbTLDQtoQ5vErqti2h9L
         q1hyWT3doFzei96rTAowVF0UcPAPpWTmYXM4ZgnqWj0PLpbWZWfmHUtemxIThmc7ipv/
         7g2zkOpoVNQTGH4wFGwhubuMCBncrrGJKO8KEAhdQ5/CwSKBOS65/z53JQ//YU+dwDSW
         1t8hc4exMO/Q/o5WkmCyz6FRxWSk8MPHzB/bPjIMbpemdX3wcifdHiC6Pj4oO+qjcNEz
         bgqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=wNf8YR8rfmxcQRsWC71do4kN/T9j6CVD+wvUqhR+Fh0=;
        b=fTdj8lkPhLyVExuLBXXm1SPLN2zBxi6t912K7ptgxoQToQ/ve4ekPJd9//VtL4MNa8
         UQF0tERH+idDXhrHNox973cKiVJAIDylnVRfVunx7POB0uiMYG3AGU2U72R5RsTkywqR
         qbnccXhn+BUGAPfilvzZDXS5xSzQ9sFTycoFhVmbuDE59nTyMUdNi+G61/lRngl20qRD
         Yqm3u3zyLszM3jj9zvXsz0s5Nmfn9C7fEvHi4FcLSStc+9fxAFUQjnjVF3qsAlpVdeoO
         7k6Cj4Eodb5IrI8KL0NA10bHJjuuAdz11VXRY86xQMqW9P4jY+WB/qVGW4dSa2SBGHMk
         pbJw==
X-Gm-Message-State: APf1xPCPa9U6sKji9pR+APxXlGVnb/s7tyu3PC/8JyWKM7D97Qr/n+gO
	AyGdme/sOVPkkBW35yD3wgE=
X-Received: by 2002:a17:902:6e8c:: with SMTP id v12-v6mr18997020plk.424.1519847134939;
        Wed, 28 Feb 2018 11:45:34 -0800 (PST)
Return-Path: <santhameena13@gmail.com>
Received: from localhost.localdomain (ResNet-23-249.resnet.ucsb.edu. [169.231.23.249])
        by smtp.gmail.com with ESMTPSA id t87sm4973628pfi.37.2018.02.28.11.45.33
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Feb 2018 11:45:34 -0800 (PST)
From: Santha Meena Ramamoorthy <santhameena13@gmail.com>
To: gregkh@linuxfoundation.org
Cc: oleg.drokin@intel.com,
	andreas.dilger@intel.com,
	jsimmons@infradead.org,
	outreachy-kernel@googlegroups.com,
	Santha Meena Ramamoorthy <santhameena13@gmail.com>
Subject: [PATCH] staging: lustre: fix block comment style
Date: Wed, 28 Feb 2018 11:45:05 -0800
Message-Id: <1519847105-20076-1-git-send-email-santhameena13@gmail.com>
X-Mailer: git-send-email 2.7.4

Add trailing */ on a separate line for block comments to conform to
the Linux kernel coding style. Issue found using checkpatch.

Signed-off-by: Santha Meena Ramamoorthy <santhameena13@gmail.com>
---
 drivers/staging/lustre/lustre/lov/lov_object.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/lustre/lustre/lov/lov_object.c b/drivers/staging/lustre/lustre/lov/lov_object.c
index 86cd4f9..15826b1 100644
--- a/drivers/staging/lustre/lustre/lov/lov_object.c
+++ b/drivers/staging/lustre/lustre/lov/lov_object.c
@@ -1173,7 +1173,8 @@ static int fiemap_for_stripe(const struct lu_env *env, struct cl_object *obj,
 
 	/* If this is a continuation FIEMAP call and we are on
 	 * starting stripe then lun_start needs to be set to
-	 * end_offset */
+	 * end_offset
+	 */
 	if (fs->fs_end_offset != 0 && stripeno == fs->fs_start_stripe)
 		lun_start = fs->fs_end_offset;
 
@@ -1198,7 +1199,8 @@ static int fiemap_for_stripe(const struct lu_env *env, struct cl_object *obj,
 	if (IS_ERR(subobj))
 		return PTR_ERR(subobj);
 	/* If the output buffer is very large and the objects have many
-	 * extents we may need to loop on a single OST repeatedly */
+	 * extents we may need to loop on a single OST repeatedly
+	 */
 	do {
 		if (fiemap->fm_extent_count > 0) {
 			/* Don't get too many extents. */
@@ -1248,7 +1250,8 @@ static int fiemap_for_stripe(const struct lu_env *env, struct cl_object *obj,
 			ost_done = true;
 			fs->fs_device_done = true;
 			/* If last stripe has hold at the end,
-			 * we need to return */
+			 * we need to return
+			 */
 			if (stripeno == fs->fs_last_stripe) {
 				fiemap->fm_mapped_extents = 0;
 				fs->fs_finish = true;
@@ -1282,7 +1285,8 @@ static int fiemap_for_stripe(const struct lu_env *env, struct cl_object *obj,
 		}
 
 		/* Clear the EXTENT_LAST flag which can be present on
-		 * the last extent */
+		 * the last extent
+		 */
 		if (fm_ext[ext_count - 1].fe_flags & FIEMAP_EXTENT_LAST)
 			fm_ext[ext_count - 1].fe_flags &= ~FIEMAP_EXTENT_LAST;
 		if (lov_stripe_size(lsm, fm_ext[ext_count - 1].fe_logical +
-- 
2.7.4


