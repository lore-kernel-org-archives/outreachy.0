Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F9A4A35
	for <outreachy@lists.linux.dev>; Fri,  8 Mar 2024 03:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709868900; cv=none; b=P3uToiaSR2kzlqHy3HKeboSfYBcoaWuFRODMoyVnm8i3FxmfM+aYhekpMBdmaO0vI0xRv8uuec+gTj/YKFPrkqc2Cg1LR/YiV7P8U3REJnDQt6oc1gk6vZoeFmPPK3ejTN8wZBxnJiQuoE/aAgdqrpLvGFet4OEXeJsN36Lzz6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709868900; c=relaxed/simple;
	bh=2rNEKWtByvREHolpPK7H4PBTGqYAr4T7wKko2YIrjOc=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=AaT8WXYaRSKR2d6JmPZc5/qrOb/xqVEFTjHK5j4wLxy1/ZiL43Hx690TRhfs1A/36+ZZmWu9wetIdAMawASQxCDRG1yZIpo7jIEO9Am26H2aS4VOTNGkUINud+aD2XoWxo0+4FUZihlxKjJN+iWR61SHU+3HxGzO+Qx5OhNRR/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WanKt/m4; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WanKt/m4"
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1dc13fb0133so2952985ad.3
        for <outreachy@lists.linux.dev>; Thu, 07 Mar 2024 19:34:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709868899; x=1710473699; darn=lists.linux.dev;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gdpz57PmibBVpvzVpskMtAPMTdGFH+xQvrX79zWrRhs=;
        b=WanKt/m4w3s5OKlfUuoPMl8AW71xc4K0FGn96JNYQrNbyP/Ufxa3vB/tkhDG9emHY7
         Bgi73suwTtQt2uAYbfto1W3bamloTqxZdaWWwqY9K0lgmaTR16A/8Xs2oaCNLwim9fre
         WerzQV45OmfDdqc4jxnd8TLw8i1pfaSsYI2sIkcBOF9Wr4G/cLKTI495iKQnBfKUpnOp
         OAJugRpp3u0J9g7FO16XKlo55kGK+aDGJwByWc1iZigeSuoEZEOHcTIOOHJRg1ZdPQ+P
         pwQso1zLTVwejcaP7DJ4ucOBTb92AbfFyz5+I/+wCgcET9u/LpVCM7SPTNsCq8Eu9sQ+
         /pMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709868899; x=1710473699;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gdpz57PmibBVpvzVpskMtAPMTdGFH+xQvrX79zWrRhs=;
        b=clQzqlpctTV8aQfz02Y/KYqWTjHYLNf5K5GIbvIVDTpYXvaUAuaU1l6RabnmkKMBlP
         zQxJTGpDGxfI11RIm5Tlq5d8sEYor5Hm1EuQe0Xyasz4q7Z1MuDkpSRvAgjWwU7mAz6B
         vSmUkR2dt7u2vWtx0qvjDowXQjt/S62s20e/pv3rqUC+MdJSAcM0lN7BPtuFNpt1wQxH
         FhmPKZK4qmN/wWlCmjNIbbfBEnKa5yHkW1jdclW/DUoA2sokzMZHn0Q0pB4EsOqmSiJX
         LH5pyp6VMB+Qa1bpd/iPnTu6dMMkokuHdHVXro/O5f3uMGB+dcmiOk8AhleiEUaFOu0B
         z5xQ==
X-Forwarded-Encrypted: i=1; AJvYcCVip6hDOG9G1NM0jO2VjX8KGkxrQxo9WZzgjVgSqiyyCwBsHeJvrhvXOZqPIHlA4aERQkYAKfag9mZJeGA6S72/ym5VkI2D8JhR
X-Gm-Message-State: AOJu0YzEkEhUAmQhCat7qHydTFfv1ZsH3q2SAzvHQZwX0jgZ65kel1yT
	vEkulsKdljqaXrpgb5pzAEdSRc43PJnYxykXlUsJL77EBGo+s1Ysc2OrQ94EhSk=
X-Google-Smtp-Source: AGHT+IHJ4vZ0uigmYn4pBn5dDe7CBqG0e9yEfj2SYk7k6rtrgj1Dxxu5pVbQuOXHx44eAHbcSX3pRg==
X-Received: by 2002:a17:902:e78c:b0:1dc:6c33:df8b with SMTP id cp12-20020a170902e78c00b001dc6c33df8bmr10039427plb.13.1709868898533;
        Thu, 07 Mar 2024 19:34:58 -0800 (PST)
Received: from toolbox ([189.6.212.130])
        by smtp.gmail.com with ESMTPSA id im15-20020a170902bb0f00b001dcd7a0b5f1sm15749080plb.158.2024.03.07.19.34.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 19:34:58 -0800 (PST)
Date: Fri, 8 Mar 2024 00:34:50 -0300
From: Pedro =?iso-8859-1?Q?Guimar=E3es?= <moisespedro15@gmail.com>
To: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: [PATCH] staging: axis-fifo: Fixes parenthesis alignment
Message-ID: <ZeqHWuerM_aPsd1U@toolbox>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

This patch fixes the checks reported by checkpatch
for alignment should match open parenthesis

Signed-off-by: Pedro Guimarães <moisespedro15@gmail.com>
---
 drivers/staging/axis-fifo/axis-fifo.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index c51818c56dd2..a70af76be7fb 100644
--- a/drivers/staging/axis-fifo/axis-fifo.c
+++ b/drivers/staging/axis-fifo/axis-fifo.c
@@ -376,8 +376,8 @@ static ssize_t axis_fifo_read(struct file *f, char __user *buf,
 		 */
 		mutex_lock(&fifo->read_lock);
 		ret = wait_event_interruptible_timeout(fifo->read_queue,
-			ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
-			read_timeout);
+						       ioread32(fifo->base_addr + XLLF_RDFO_OFFSET),
+						       read_timeout);
 
 		if (ret <= 0) {
 			if (ret == 0) {
@@ -517,9 +517,9 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 		 */
 		mutex_lock(&fifo->write_lock);
 		ret = wait_event_interruptible_timeout(fifo->write_queue,
-			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
-				 >= words_to_write,
-			write_timeout);
+						       ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
+						       >= words_to_write,
+						       write_timeout);
 
 		if (ret <= 0) {
 			if (ret == 0) {
-- 
2.44.0

