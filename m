Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B6415BE
	for <outreachy@lists.linux.dev>; Sat,  9 Mar 2024 16:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710002448; cv=none; b=Et6lNUKG/+a0TASiZz7RDaH1tfnSJQr3EcDKFKAwpOJ84PdD0q9+DDn+Ugx4fRGNM0s4LrT+FuwEBibHSJqDE0+ltABROA0o6Wrtisr/MUbISiPoCpfWglXD+NDTELNQUesj+crt+CMQPYifR8c2RxDtcVvCzIK2InNQI+oKkBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710002448; c=relaxed/simple;
	bh=FyNtSq6TdYQYRFemRQNZoOTz3x1W5YJ1xh6w6Xf5oW0=;
	h=Date:From:To:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=I4rbDO1irHAcKxxnIIvc7bzPiThn6BuNuSiEdQVK8te26qgU8W3cCmlRJeZLx9OPbsk/jOCbVaFGqDQ4HsowIQhQzTwKoEaQNfiphAe0U3K3UMPa7j7Jls2yOcoX18KC6ep+IpC86+mTiXfP/lwZDFY3vor6+sAfWwQbRUnU0wQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QYj+H9Ln; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QYj+H9Ln"
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6e617b39877so2519519b3a.3
        for <outreachy@lists.linux.dev>; Sat, 09 Mar 2024 08:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710002446; x=1710607246; darn=lists.linux.dev;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Vks5Y936g0LZpQvm8ZENTEbAyiouA/JbPPU9GWgqWFs=;
        b=QYj+H9LnVoXi5u9INMZy7nibzxcbuytdLA4mYO0qpWnzXwsuBw2T04NTw/FOHv2wrM
         Z00JcuvnJVtlaJ6bCdS0scTvcY3BaP8VR9zYrJQlBoLy7eb8OV2GhKRgmPMx8wZwTTbP
         A7xKzQoHv/F1QTRGevCjQTxmHTTC05IVqPsMW4vt+WoqH5/M/ZhywQoY68tR+mMjv0lB
         Hx1DsGEi9bzw/oVZ/LJKLMmtrb8aRsWSzzOBB9Ro4bbAChJQEOg2kjVFdjTVrxJQlvut
         E0JRdAkEbyN5yKSGIos6YfuvbtzGnJj9uDjrRJP6kH0TLabfkB7PIg2LX8MUhxSlWNVw
         fKvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710002446; x=1710607246;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Vks5Y936g0LZpQvm8ZENTEbAyiouA/JbPPU9GWgqWFs=;
        b=PXjGxpsUPfGnajp6WU/fZEwvk3zQ+fagbKWA+Bu1jibgdaHVS4UgZjRZgtrHKryirA
         nDjwMEQcS65pui5hxNZYtfLzVxxnTyd2jUJWTA8RO3vfF+ReYqlNrGhalrCxg57F+7hX
         EZ2ohZ4bjXMbwupG9o4gx3tmM13GLHzwfpuwO8fxdr/0dJPrMJLkR1xBei6rWLkCmcsl
         VhpxcsrsRyUsOq2ZIdpqfciPHubZdIhATAqtVXEUfMGQ7TzJUF5tIt5lySL/AnNg8rw7
         WELIszE3BSkSGGQEeqWo5aJw6uw83LWm/dXweUyrmXIxy89Da857rSjPwtmkqIypHzJb
         OYlg==
X-Forwarded-Encrypted: i=1; AJvYcCXCstUlWqp2aBLuG3Vt0dagaNXxp6WyIjOEonPVOT/LC9eYWHTwkP86uXWWtLZ/wGdWfP9WhNzbOoTs8eyDHJqG2MPCAcsjYKDj
X-Gm-Message-State: AOJu0YzIwsL5lQQ5RRZiEHuCN9CngxlMA3l+oHP+zOZG+1tn4vCrNxDr
	wXiVJmh53FFZxqd7uC2gOkh0Kr9TvAiAOCCHIb8K/l7lbl5HvSli5hZYSXousTo=
X-Google-Smtp-Source: AGHT+IHYepB772/+aFis6cED7ixZSaUbQwPrMMfz/S/o/nlVjzHkS4i6PsMe/cd6Ab+ySmLniOWoZA==
X-Received: by 2002:a05:6a00:938a:b0:6e6:57a8:fb09 with SMTP id ka10-20020a056a00938a00b006e657a8fb09mr2251279pfb.15.1710002446196;
        Sat, 09 Mar 2024 08:40:46 -0800 (PST)
Received: from toolbox ([189.6.212.130])
        by smtp.gmail.com with ESMTPSA id x6-20020a626306000000b006e680b21af5sm645181pfb.122.2024.03.09.08.40.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Mar 2024 08:40:45 -0800 (PST)
Date: Sat, 9 Mar 2024 13:40:41 -0300
From: Pedro =?iso-8859-1?Q?Guimar=E3es?= <moisespedro15@gmail.com>
To: gregkh@linuxfoundation.org, outreachy@lists.linux.dev
Subject: [PATCH v2] staging: axis-fifo: Fixes parenthesis alignment
Message-ID: <ZeyRCcO8JFHI90lK@toolbox>
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

