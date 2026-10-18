Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF51A36B907
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 16:16:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792340163; cv=none; b=OXnEEqR2Hgsij6JphLeIJvbURFfflqg2j06UzfKi2lc1052D97p+NCPIK8qmPNbkeicxJyJljRzJFkFtlS838L5q+QbrnBjF8PqWKj11yngUqArN1ndTfOGUsP+KiRyfoKD2m0daDD/HkA0mJ4BhevKr7m+T6JgXqvEEzLUdRKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792340163; c=relaxed/simple;
	bh=0zSEScgElYG6Ej4031sP2IGXmyXTS1mtqMFTeVvqiKM=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=fHLdGkiYujxSJlaACKN/HjIs6Y6HNADcN0/4/x8ne5hYyl3pck7eiNJZQpa+8r/b0IS1rLSjlp0P/otng8NaEjEsrohTeobwDqaHNB6tSpxruqOHzmMrayP7qN6TvfiMyuH1b6wV+yBYA0C0RCz0dRHcrx85zMhs92AfE33Clp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mKuBfYyC; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mKuBfYyC"
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4a1635f7c89so13616855e9.2
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 09:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792340160; x=1792944960; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=5d/4GsmGwc1lptab2ajjZP2dxsrwSvwHN90lvfF0164=;
        b=mKuBfYyCYSlQhk4nTYwEth1+bU/Pdgx/fEOh+eUj9i9hxPYb5eMVUj0WimxwXxLw/o
         W/seYoDJ+6/1IqrpsXzy8/clJdoqxpcspm7rfxmxzXj1K8TMzUHaF8ix81FsuIXeuwVg
         v8BdU2uP8bXovfeshsVLzlpLe146w3907LjaX0KbUuuUIPyv9SoCNSf63G5HnnPGAdXk
         3GKBqYPcCUeeTJypsFHSjfzfswNm8sQVcN8RAmLqkS/m29MUQXsaBAqYtrK6yQ1fd9fX
         LKIYb1A3qFj2r+1+AtjxXtlvskPD9C8/VgrpUNjXVG3zZ6xuYvDljryG85vk4ajeStDk
         C1kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792340160; x=1792944960;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5d/4GsmGwc1lptab2ajjZP2dxsrwSvwHN90lvfF0164=;
        b=E8R6MREPyq++GiVv+2+M5KKTYp4xxqXm07OAbT4gkw9A9TFJdYLr2EpT7AJkxbkFWx
         hmBBLWXXuOGCZ7l9DnFz0TeOpRQMjFU/1EEKDZlP7fQvodAtRE1K00e4WfJtPg5iLYVL
         yYwBk6NICR3gt55u7nNXXh7sA/BWoTMjvdoIRuBmwXB9hoUfgTEwIkbNoGtW3fEjVpKu
         XaHlPyapcM85WmCrQ7uWNvQvG3LU94vG7pAiRVdJUbj/ST69uT6xI9bdG2hulrBvvcZp
         V1wiuo3iSe7siykQqBYDL4EAUkuvNFI9fI5VgV4CaGrHEg0rC2GopcbuxAAVZbR0Aym8
         qvUg==
X-Forwarded-Encrypted: i=1; AKwUvBzHZH5P1h0xWh0AAv7lJcJFCp6UpxD2JYLAwT7ozFVmKkAIYM+FyGi0lQYZBcrEzL58A3tZkf6RwTM=@lists.linux.dev
X-Gm-Message-State: AFq9FYLsqIsw3rPvqicHK4CQStMYeuxfcssobsnLyt0c1bctDf7w0w+U
	/ETNyDXOt+d1RzuXrXE6ChnQY2M98xrjDWG1KB6KMH8cQov/iJVqguCQyJjBNT2LzsqiqFIE
X-Gm-Gg: AYBFou1GuUF+j6bapunJXWKbWhWMxAChxtXpB7esD9oDdRD8G0bI5/bzanhrXDox9vp
	Xxw7u4/F5wig5r2YhBHh7QgvCoQ93RmY5cv3xNUuKYAywHoVMAWfTzuycGnw8sakPC2KYRcNPJY
	acyn2PP0ctbpUPc2/+Ukw+4cu/WKuHOnrhTwFaH2f6sHRDAw9kQ9wAwLR/53rpyFmxsvhJq6T8d
	UXmIhxUWd9nXCZvnnoh21BIzlZ3vnqrdabbCCpJf61Nx3XgVpfxUY1X07bQJc7o6HyWZXN4+5BD
	pYkdC45KJFQXT1JHTUvZ4hCqBDO3/Ol//ckFSUgnKzyciDufk5tflRhyGih3GmWKeqAUjOi0mQi
	qYvDs1ek3X4PfNIg3F/qGNFJ9TxVHYyoiAPUkIsVxk3zf4+U0uFpjpfLuX7qze/f/ViKSCTYAR8
	b5VrOnE5oldwPEbCFi9C3lTOV4mebvMEX5G5movMPiB2tXn8t5DRb6IVWyq4nQ7YKoJA==
X-Received: by 2002:a05:600c:848d:b0:4a1:e722:a0a7 with SMTP id 5b1f17b1804b1-4a1e722a360mr15227195e9.30.1792340159562;
        Sun, 18 Oct 2026 09:15:59 -0700 (PDT)
Received: from ubuntu ([2c0f:f5c0:570:10ef:ebdb:1ad:9af2:42a7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1ce3302b5sm140121375e9.4.2026.10.18.09.15.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 09:15:59 -0700 (PDT)
Date: Sun, 18 Oct 2026 17:15:51 +0100
From: Comfort Oyewole <coyewole7@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Subject: [PATCH v2] comedi: comedi_fops: fix alignment to match open
 parenthesis
Message-ID: <atTwtyiqQbRVAC1v@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Fix the alignment issue in order to adhere to kernel coding style

Signed-off-by: Comfort Oyewole <coyewole7@gmail.com>
---
Changes in v2:
- Remove staging from the subject line

 drivers/comedi/comedi_fops.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/comedi/comedi_fops.c b/drivers/comedi/comedi_fops.c
index c09bbe04be6c..efa6dc6d40a6 100644
--- a/drivers/comedi/comedi_fops.c
+++ b/drivers/comedi/comedi_fops.c
@@ -2648,7 +2648,9 @@ static __poll_t comedi_poll(struct file *file, poll_table *wait)
 }
 
 static unsigned int comedi_buf_copy_to_user(struct comedi_subdevice *s,
-	void __user *dest, unsigned int src_offset, unsigned int n)
+					    void __user *dest,
+					    unsigned int src_offset,
+					    unsigned int n)
 {
 	struct comedi_buf_map *bm = s->async->buf_map;
 	struct comedi_buf_page *buf_page_list = bm->page_list;
-- 
2.53.0

