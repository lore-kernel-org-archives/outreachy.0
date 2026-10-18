Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 554EF4B9235
	for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 13:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792329784; cv=none; b=Gq7OEkZkmVSbZRPNZYnr+AQlQecHZO4R615jVM0yRRP5u46dh/JTGA+k5QvcH9NZe0F9SvV1iCj7slj3ejPVoV3ztZFvmRSjvu3QeSBiqjfBDnVWu+uSbCzSx1oMDlIWSbJVek8cutFPP051VL7S1HzdV7ZSO3seCKe+TQwGWRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792329784; c=relaxed/simple;
	bh=N2JeCWLFfoU+fSPfPomIYnFMAghodOlr4AC/9OfNW88=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=WpZDgZrsIr2080mr5UWngY+zmDFAy+9WyDtb1PsCp31IDWGlbI0xQ923cIdIxq6nKZFCwRNSgfvjB6XEF/ytyMdbnEUNZm+W2SNgbihWvpOg5BeF0Ttc4QzRJWzIeGr192BeOQHnFJli1aVjdfxk+sqU2UzR57B2WlsqgY86vP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=r5HmFKi3; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="r5HmFKi3"
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-49d0da752ffso10085825e9.3
        for <outreachy@lists.linux.dev>; Sun, 18 Oct 2026 06:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1792329781; x=1792934581; darn=lists.linux.dev;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=uEOyoCt2AD7D1bry5/d2H2T1Ku2G2ZXxRyhNNZRqt9A=;
        b=r5HmFKi33KKNKhFrwpURV2g08hOmL4lkpsQbxPKkG+hHk1JPUTEVcsDir9JAO91Qto
         toVyYs9m2R1/z+fgE55Ur6qxi3MBUJc3J+wvPl2RY3SNnjiZM38mB9d3/lhCxyOP5xJi
         6YLvEXdQmjByV8eS1Cbv04tIqQGUxW4xLdXgHaLI8pSG/WfnFLkjEUKh6+wrWeBMMDsS
         oaiHE3cxr+lyNrbwPIKnWMCwtBZZDeWIrr7hcgj12jmhTOKImQe7/83xyIUSVmhX1M1l
         KW2DpCgdRnmmo3Y1lbMMEUmkhW2JK/LuPz3PSPd46r3ViZsQGOlpQL6WHLGzlpPOBhei
         ekaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792329781; x=1792934581;
        h=content-disposition:content-type:mime-version:message-id:subject:cc
         :to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uEOyoCt2AD7D1bry5/d2H2T1Ku2G2ZXxRyhNNZRqt9A=;
        b=rPClicemjNw3BhIcB+Gq4+6jGotwCGbP8Cn9fgkcWMH36oTGDUN1JnoZUTQeLKUrlW
         GuVZoAKF0mMRJnTKNmoo+jNQKpno1mrXS8DAi6POOOFz7O/Znpas+nHVUfKXuvkftGme
         u/hEPr4b/+Ut3Vtr4SCk+fJAuOzCaA3pa5kaA4GfxhUq+fXjg+Cjf9n8U0RqOT7SMr/u
         LcErNK4P5wl8UqlWw78DyBtZUEMIVMdC+53R13LkQbdyuIQ0hFM255bi/4uNmMLLLk0a
         sygw2DFRX0j4SyiotrTIc2CdXU9NFJIuazr6wVtgspxhesS7cIwt8ngpv/ddosJjFKrT
         dmlQ==
X-Forwarded-Encrypted: i=1; AKwUvBxiMIC9pB70v3GmZVF7Oejdfwj2uT4ODw/vG6IMtVNDsfciLVFk5V9LCHdv57wZfdS8G2Ao4Am40e4=@lists.linux.dev
X-Gm-Message-State: AFq9FYIT5UeRbxooY7xi2ZB/DJS0LaeeG+0nPo6ljx1tCdDiTFejEN5b
	5y5Iwre7i728/1Y0r8utuAXdb4mSf4+Fs9bdyXT5NQNq76kZWtgj6+k8xxzwRj4EaM+N5g==
X-Gm-Gg: AYBFou3UCNRXh4P3CQHsqcgvkCcfCZnszrl0H3GsaTNtllYNkwv4GxKDSwGkFJEsLc+
	G0RIi9DN1ofV21jo3wlusHkCmWVa45JEQRHBQriWVpP+p1WuE+vEE6cB7CKZZ77ZkobMF6YHMo6
	f3jw7IuPpwjoZCr5mjyriDlJL265FF4CVUBH+QF89NvuzS4CslGc/GsVHLIhwhvwEXZGmg6tzK5
	NOBOgYPkvQVxi66oQnFyM60jPbPd5cWLdgOiHOJndE4v+ke9gijBfkV/RDo/D23Gtx7EQLIps4/
	lGrcVt1MZkEmhZBTL5pUBl41sNgRRrg6qqpWX6ZrnKKibDMwr6n363ldYi7fXMX7e/Mxz0zl4ow
	lKRCnqKsRK506W5JNvgIVvWOlHJYURTkGFa6qR3bi12BDZJ/s800j/te/sBB5tWE1L6FpZf6M9h
	uvnMKd805yfuHIp8ScPumlVXXX0fU9MV9eWS7SvNqifeoKjtAnVzAaTf2+cComtZSt
X-Received: by 2002:a05:600c:1909:b0:4a1:dbdd:d56b with SMTP id 5b1f17b1804b1-4a1dbddd68emr85495375e9.19.1792329781242;
        Sun, 18 Oct 2026 06:23:01 -0700 (PDT)
Received: from ubuntu ([2c0f:f5c0:570:10ef:ebdb:1ad:9af2:42a7])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4a1ccc15aa1sm195044575e9.14.2026.10.18.06.22.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2026 06:23:00 -0700 (PDT)
Date: Sun, 18 Oct 2026 14:22:49 +0100
From: Comfort Oyewole <coyewole7@gmail.com>
To: abbotti@mev.co.uk, hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Subject: [PATCH] staging: comedi: comedi_fops: fix alignment to match open
 parenthesis
Message-ID: <atTIKehBxn93Lcix@ubuntu>
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

