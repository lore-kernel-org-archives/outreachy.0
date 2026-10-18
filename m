Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DFD04B3C95
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 13:12:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792329180; cv=none; b=liba6VctAn0BoylJ7vaJSif4DKCvnTaYdXjRnvEqczaxSsYW5K1m0Jj0U5Du10OEO9aZLl9DzlYE7/IMetX97bzc0fb/D65lN6orGw6JaHzXV7OK1H5PDfuV4UYwBAgLWa++C4b83FEpWpgWh/RynlH08KrPlLAJgaTy1wUB8PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792329180; c=relaxed/simple;
	bh=N2JeCWLFfoU+fSPfPomIYnFMAghodOlr4AC/9OfNW88=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=NDDIQIPzvHygjj/kGKyyRwPb/FGSjTrZm+Oc1StN3tjbixPLnGKjV7RbJqfkYSO4xVlp4unzpYrj6RDOg4N5THSIXVgkrtAKQbXTm8DKI5SVyhabnsB7vbO3nYOcJZm24zWB+Eebg/ZNDpamELqbjRbJ2ZMK8XaCMc1ptjCmaq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ImVhzLSL; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ImVhzLSL"
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4a1d293b293so6987065e9.2
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 06:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792329178; x=1792933978; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uEOyoCt2AD7D1bry5/d2H2T1Ku2G2ZXxRyhNNZRqt9A=;
        b=ImVhzLSLRMfxgcJKPROfW0l2sJ8YE0N0wIDbMjAtL0/xVRi7n7Y8U2SwVVXNikJB2z
         CXJOf4QLMWv0MxiKhw1JG7twJU9+14RnS/qc7ENQwqv6m9C8+CW9yutYQwTTVoULOG43
         nEei+sXvgBa799LNwZW7Wy3hCuBwNFji6WIW8FtpOpq0eAZDd7XknXia0jMX73HiWkA9
         m5EaXjZfwqoAWTVSu+VMgWqK42AzEwlTjYNb2EV46g4/ln+e8MiDdHlqWYu7lanNvRKn
         DSQeu20bjvTo7559D945SvGbAab5WY4VKWWcSxir+sKpq8PaTk9S2JuEUO8KiWLEY3Aw
         gOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792329178; x=1792933978;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uEOyoCt2AD7D1bry5/d2H2T1Ku2G2ZXxRyhNNZRqt9A=;
        b=I6AishnX+htcORcXfzqf1OQgzmm4knhCuaePa/hVS1UcOv8ZFl7bYS0l1F8astCoug
         8nfhLA344lBiXeBPmvQAP+VeFS96B7hYK76P0Isl6Q8M0/Vs3XJWEEC9Rn4JgW4irwyd
         MyDpdF7vt1bunza2pkYiA1WTLt9oZ5zXxH7cjHGSxZXy108LsFR+UeJm4TwX61GIS8JE
         0n6HTwma3KerfRfUBFuF17WYLRQCu7gvqaJ7ZXcvuhzEWaLeLLQvCiT08RlSVR9LzoFM
         yg1rwcUSxO1o3LMapJuplmtj93sSIeKQGKxkddTbzBtu39BKwezKr4GqD+2orRl1zR2r
         injQ==
X-Forwarded-Encrypted: i=1; AKwUvByEBAfvkllIQFhF5BrweAaPrxTYvyi2h4gohYzZSLmjwYAaT70FUwnofbMQ9L29BsKYNO3ngh5b5PU=@lists.linux.dev
X-Gm-Message-State: AFq9FYLGtebFDHPMW+Y1y+6kkQV1t4Eu0idClSc53uk48XYnSH6OP5hp
	keRB/m8ex+xuK3Isywqybf95E/5dHjsUTxB4sbV4+0iyBDiniLJvVrBg
X-Gm-Gg: AYBFou3gaXJAB4vcocvDEPxRT9wsGuSi2jPHv5SEV8BAdY0+bF71LNh2IqtFOH/fy/7
	MFVbF2knHcF/CCpSXL8+4H5CyYvvbYIRRyXKNOoLvry9WzH6gyAfYW1x87oKCavSThGSRUzviY1
	TG7uvViAOGIplyMUn6ivbFWPLnLJgJuqV8oZUeazuSLy1vHc/Em4J9kLGS05KbAN/65M9cxAE5t
	SqJFj+5lkKm050Tsy0KcfofqXAiP4VIRAowdWuPDopA2v/dOV9M/CUovMuk7RzGjJhHEvQSoN+7
	V5dEk0HdL0EhNXJDnfCUW1iBUb/4ErbamfIsuBtt3V+VcZJ2KySdZVojmOGWgchUZ6IhZm5t1JV
	qEtReEtMOuAhxMcO1kwP9khbmFocQnjyKLs5zqn9fD8rIffCtCAiB5A95fJfoymKw37/iGKH/5e
	OAetlBHae2UMjclCNrKxdjzpoRUvPbo/5eSLqsflfMXBEXruY2Bo+QdHKbzERZ
X-Received: by 2002:a05:600c:3b2a:b0:4a1:d1f7:bf4 with SMTP id 5b1f17b1804b1-4a1d75fcdc6mr113855015e9.12.1792329177346;
        Sun, 18 Oct 2026 06:12:57 -0700 (PDT)
Received: from ubuntu ([102.91.81.230])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1bd9b8b5fsm323603155e9.9.2026.10.18.06.12.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 06:12:56 -0700 (PDT)
Date: Sun, 18 Oct 2026 14:10:39 +0100
From: Comfort Oyewole <coyewole7@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visiongravers.com,
	gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy@lists.linux.dev,
	linux-staging@lists.linux.dev
Subject: [PATCH] staging: comedi: comedi_fops: fix alignment to match open
 parenthesis
Message-ID: <atTFT49xpaBEb7Wn@ubuntu>
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

