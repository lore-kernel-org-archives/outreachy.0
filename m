Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319AA22325
	for <outreachy@lists.linux.dev>; Sat,  9 Mar 2024 17:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710006470; cv=none; b=fSTawVhPfitzoBPkC2LeXEm970jGmP4idj9ws6N+paJkt5rgJhOtrCK27mW0wSRd8N1Kek3u8/NQKr6Iei1w47t2CQ0JTmFbcUNFAEkfVnMgffBrePFBCu85sW9OPWY0U3t7y9P7iUXVAa5xPhv5NYklssm7BjpYhTEV0zDvIXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710006470; c=relaxed/simple;
	bh=3q6Ci847b/cHeln5UhTiHXBohl9WaLD/WlEMLZvYoDI=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=f4devjBqhCDhL7n212Fmr4lYIyahwRvfkdBSEaaZQS6ieTVXZ/QGHriBzKfqjrGW/vbGlGKeSgTnUz+crdcgqnH/BwVlktlf0IEDGsBRRfZwejHijK5CC76FQKxUAnwtRma8SGArTgvyvKksuHe0tSsDrmXeytBy0XezvLTZq+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=l29zBPsW; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="l29zBPsW"
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1dd6198c4e2so19601695ad.2
        for <outreachy@lists.linux.dev>; Sat, 09 Mar 2024 09:47:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710006468; x=1710611268; darn=lists.linux.dev;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OZfh6K2lsNPe8gKiNXtBDahsggLLgpqNw0B2MnscZVc=;
        b=l29zBPsWYhVmFHUJU2Br5lVk4JNlY5bo8ZiRj2ct1Don4eKoIrouzA7IOS6RbuXre+
         Tr6xCYdIhaxERts3MBf08HmuroMBwkhK4bQautYTRPhgBHB74Hh6flWUVlQT72/xDIj/
         QoS+qiSeKg15nfPEsJF4jLn7DqRJe1W/cc8+3BvhZLQthlxfFqoW9x5q0Q1hzUdAqcya
         /EPd7R4VT7zqaBSgTbXRLL3TVw0DI78QbU/BooBa1vSICQtrAKqQHzKrSZNObvUBl0nc
         gmDu6HetfHATEe79UClsOypFr7trbGGPKd4MRT5VDo9YE8TRrs3ZPF/ST/7ZLFzgpV8/
         J4WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710006468; x=1710611268;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OZfh6K2lsNPe8gKiNXtBDahsggLLgpqNw0B2MnscZVc=;
        b=fn4+zLttHcDUb5uJJp8TSeJa8o71O2p52fq7uL3BXtHSJ2GVXJ/9RvYSKm4xWdkV/g
         26HZIZMmwpaa7RZOkrBqlWbtY+pN06fclQi5nbSs3uBm1ukny/8kHvuFwlqckDqzm3MJ
         1nyb0jjZf3pNUh09oZyPqjrl+3/Ar2d/eP/WUMTbk5vcw2617OLL9uewwsxf49oH/8uW
         c/d4Vf4Q2/m4S9vbQ0iJZxI/J+g1LgONdtA0q8MIBXMn72oYIrV9Uqi188FLH+qkLFIh
         V/AHvk4oMdNBdlwXRPem+OhI6L7I6LudpI96SPHGgylpf6nHxcGR5f1T9N4rektdhPgz
         nGbw==
X-Forwarded-Encrypted: i=1; AJvYcCUI8BDGRMvtEO2QdRA5Q8EjgBJ+WIeXD2KsK+8Q7w4kqrPa7w4IlbEw0qOnmuFAFy8JF+CKD9VH0LkQZhGYbvJNnHoeZlagtcKa
X-Gm-Message-State: AOJu0YxnAWg1JQUtu8cDba5PaRIHq+3kq5qt1tHycTqG4CghjJrcpZM0
	iTMVyBUfo0D/aPDwrq2L9x5YdWT/bXRWQOCuewEx9/R5IDfmgq8u
X-Google-Smtp-Source: AGHT+IHEh3Q7EgCwtZxlbpvm89ERFn6pcAltlM/IlTUcFFUm2wbNiXaSVffX3vcV1xlmkELKXZHCLg==
X-Received: by 2002:a17:903:1206:b0:1dc:ce55:e6da with SMTP id l6-20020a170903120600b001dcce55e6damr2773654plh.62.1710006468373;
        Sat, 09 Mar 2024 09:47:48 -0800 (PST)
Received: from toolbox ([189.6.212.130])
        by smtp.gmail.com with ESMTPSA id q10-20020a170902a3ca00b001dd2bacf30asm1624112plb.162.2024.03.09.09.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 09:47:48 -0800 (PST)
Date: Sat, 9 Mar 2024 14:47:42 -0300
From: Pedro =?iso-8859-1?Q?Guimar=E3es?= <moisespedro15@gmail.com>
To: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: [PATCH v3] staging: axis-fifo: Fixes parenthesis alignment
Message-ID: <Zeygvtuf82OLsNcs@toolbox>
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
 drivers/staging/axis-fifo/axis-fifo.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/axis-fifo/axis-fifo.c b/drivers/staging/axis-fifo/axis-fifo.c
index c51818c56dd2..77a3f831fc65 100644
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
@@ -517,8 +517,7 @@ static ssize_t axis_fifo_write(struct file *f, const char __user *buf,
 		 */
 		mutex_lock(&fifo->write_lock);
 		ret = wait_event_interruptible_timeout(fifo->write_queue,
-			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET)
-				 >= words_to_write,
+			ioread32(fifo->base_addr + XLLF_TDFV_OFFSET) >= words_to_write,
 			write_timeout);
 
 		if (ret <= 0) {
-- 
2.43.0

