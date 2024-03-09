Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D21D3FE1
	for <outreachy@lists.linux.dev>; Sat,  9 Mar 2024 16:39:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710002373; cv=none; b=s4ZHR11UEC3+l/oNla7PkIZ8evt0jUwMct86SotsEVrCErOGR20A9IqQUnVhWAaMlaQcO73Qr8zeLM4OICeuHIYbg/Rj+OdOIxi3oOTaWPElL1a/TGSDLySj1EL+Y/b8GTc2Ff+oNfWiNU586r9oD4kh6NTITWA+teAmo4MblWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710002373; c=relaxed/simple;
	bh=FyNtSq6TdYQYRFemRQNZoOTz3x1W5YJ1xh6w6Xf5oW0=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=D2KLTmO8smrQ5ZDOiu3uJD4aKawSM6hlJvwoFyAklSZ1bO2yxoi37MNqcGZuCnLYHmnaAVC3UnMd6vA3T0mw8h9UEJDg9cCRb3wJj2ZbOspSp9frrr6roSk/zRGgQXzTT9rAZRbbo/+Lt4ktVushqmMOweP0x656Pt+LVQX6ahg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Q9i43oKm; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Q9i43oKm"
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-1dcab44747bso21850625ad.1
        for <outreachy@lists.linux.dev>; Sat, 09 Mar 2024 08:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710002371; x=1710607171; darn=lists.linux.dev;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vks5Y936g0LZpQvm8ZENTEbAyiouA/JbPPU9GWgqWFs=;
        b=Q9i43oKmZNR0eQNOITN/YHu/1R3SzrYoHpO8kFLZukLLtt4HZTfT3zus9Gbt3vJffy
         WurD0z7uoG7UfSxyw1aatv7efQ01rUQZrAPOjiKnZFY/0konyNyi5D+zaQC9+QIcM/Sm
         3DkCG1sUJrS3jjNCNJ7b378aUVVWYYCuGYWcg/BNeQZ8u04EZA1jl4pBDeAjl8PDy+pf
         ZSIdWSpnoeGPf5yqxnqal9m0pu0nmcAsrQZkDmKIC7AapdZVsBAQm28CDeMt4LQKQkG5
         0YKwY/Oc/UwF9bPEPX9ORz2P7pAiL5QdZFG4jWUoOQ+un3YkdPa0in29JdNcQqGwviwO
         6eXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710002371; x=1710607171;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vks5Y936g0LZpQvm8ZENTEbAyiouA/JbPPU9GWgqWFs=;
        b=tiE9CHPByGEhfE1xyQiMJHhs/3NBn88lPmeMvbBSP2A8I2wm6fU+rskpk7o3krjNbl
         0THuceN+ZjyJEmpREg3zmZT4F2gMNYyfppbbqUiOupfycl1ao+0sRewfBxw2hgb8i6r9
         qKttAcrTHvNA8vIrYRxeLoVtL4awccazR56TPsksXv5+vU3n41sETcdY7iRnqS9zacgD
         Pvr48tIlipSvM9lgjUSJoKfOQDsJWaS/vFaO31cksbdV0IEoQujhyb46j+nawxUeEYVh
         vlI7koVH3woL+G6VFVZxuOyQ7y2JCIBmvU2kZa7IgjnarffoF2V6EHyNbQBoouESkv0h
         5dCA==
X-Forwarded-Encrypted: i=1; AJvYcCVKBGj+r+UGnoloLOyXS1nfJCXvFzMmYMfzy73itHGLvpmkLPJNiRRBtbkBmftoQQfIeM/zfVHuhYc8Kx32/YrRB3YGupVLx5NI
X-Gm-Message-State: AOJu0YwQaQO7PSfip7nAaCIkp06O6EparCd13Z4NrPb/5HVHkYRGVzkw
	ZeQKzXb7H4LJMNokuYtEAEvJlIIFQ1b0KYr8m86T2Ia6Nu7wybLlHY67OP82vFs=
X-Google-Smtp-Source: AGHT+IEo4df7ED8n8yGuqA8Zq6fjWrzQk3e015+joNgmb0GgZfirVEsuCumiqD06yJqJpgAJTsRGTw==
X-Received: by 2002:a17:902:f68f:b0:1dd:6675:5cf with SMTP id l15-20020a170902f68f00b001dd667505cfmr2289379plg.60.1710002371084;
        Sat, 09 Mar 2024 08:39:31 -0800 (PST)
Received: from toolbox ([189.6.212.130])
        by smtp.gmail.com with ESMTPSA id d4-20020a170903230400b001dc0d1fb3b1sm1519640plh.58.2024.03.09.08.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 08:39:30 -0800 (PST)
Date: Sat, 9 Mar 2024 13:39:26 -0300
From: Pedro =?iso-8859-1?Q?Guimar=E3es?= <moisespedro15@gmail.com>
To: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: [PATCH v2] staging: axis-fifo: Fixes parenthesis alignment
Message-ID: <ZeyQvrynhv5efsOD@toolbox>
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
index c51818c56dd2..600d81043946 100644
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
+						       ioread32(fifo->base_addr +
+							       XLLF_TDFV_OFFSET) >= words_to_write,
+						       write_timeout);
 
 		if (ret <= 0) {
 			if (ret == 0) {
-- 
2.43.0

