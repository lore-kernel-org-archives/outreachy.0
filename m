X-GM-THRID: 6950275572294483968
X-Received: by 2002:a17:90a:9413:: with SMTP id r19mr28966515pjo.236.1618237135966;
        Mon, 12 Apr 2021 07:18:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:da91:: with SMTP id j17ls7797135plx.1.gmail; Mon, 12
 Apr 2021 07:18:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJaiHNy5ZDppr8VtHHn1vAMwtEQQLTivUwFZGpoivGM/IXtOTWaXbdMlOyJmBpZ9RAC27A
X-Received: by 2002:a17:90a:eb04:: with SMTP id j4mr17187510pjz.156.1618237134777;
        Mon, 12 Apr 2021 07:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618237134; cv=none;
        d=google.com; s=arc-20160816;
        b=AUlvWXbwXWuT/MESHbtGnCme0c10GM5nZzdkTpNel31BEU1vncoaJ2+ENYjNndYXJR
         iAhO0dPl75RJwh4tvclP5HSYTTRzGlqIlSEHkOGZ9+zAaFsOLLZa9OFQAS6N1Cr6v0gG
         eSC0pUwazqDrXABdV0mrBGxuERqi/4E4RNQw+pBCCCRvTWdodjqHy7sAAcyI9wa0o8Ok
         /d4iroxtkcvXnUAXqixF5yn9XTqUVcuVUtr1Ix2awYS00K4+Au6L0tVCfSAJsXmVHbEV
         g4eCQxAMqGEKZwL2A6KmIwrxazQUCJnwuL+Ydd0hrvLo4AO5NNNgP7U0QYBbxQMaDlj0
         qZ/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=gE1tFWhSzbHqAI5X9ftQT0mEeaEBuCfbMLq9XJpCJgo=;
        b=l94biJ1bsP/LLp4uPzEezv00mK8gBSZs+lkkP/nYHWbyfYLJsGgTgLGmxmLBaOkd/k
         MdAPUGCDopdZh4xN93MgsL4fT7ZFtB5BWDblIhwAZIx9e9bhk0nEsmdtZpDYyhNbog7q
         lv6GSqTnmheTd47bkw7eHVBHZEomFVg/8BaG5ayP74QXVmfEQtXaMNLW1gU10LX19Fbh
         GymyVCHKn25dTt0uMIrUWimL+wv1Q8kK47zmEIipeLP1BJosYqcdCq4D5OsdyEW/ftMy
         lZuYBGiBXB4d/j1Qa4RJw5FznDiLkOVEwSmG0lvdLIjSXMT+NQAktz/UvYe97ciyAwOv
         1dVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kAr42R2k;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id u12si1057115pgf.0.2021.04.12.07.18.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kAr42R2k;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1030.google.com with SMTP id cu16so4714188pjb.4
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 07:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=gE1tFWhSzbHqAI5X9ftQT0mEeaEBuCfbMLq9XJpCJgo=;
        b=kAr42R2krMprDasFsl+izamVChxE+LZ8Vd0aPw47+CCHoupj1Qgnq68hh9kaimTv7F
         37gTXi1cEh+NQk9l6uzuQrdIhj/8ScTKyLBVwYcOjRw9TDXI0peJmFyFq4ikp5qLPnzX
         fXZA72Vq8jWSg0VH0W7sfejshHq75rG60XhYxtyYvEwAThHqqIsFMZN6YEOUwTQWUuzh
         IIDTwHv7zQfSZXfOsovIERUgBePRT/8dJFfoWIc0HkJ8n5vCTJyCVaBu8e9rntDVYWXZ
         7nu29nmtdJzotxfPnQeWQ4tMZ6IxdL9d3i/LmtAqO7DlXrbp5Pj3xdetRHlCrKt+lMP3
         gANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=gE1tFWhSzbHqAI5X9ftQT0mEeaEBuCfbMLq9XJpCJgo=;
        b=BcR/nGaPYEhRNC3+LIwKR4t/mlZfAkV/Zed3DsFsZLkElTtebMomRUjbyG2TgzMGdU
         MAnnyB3dh9DqPJLWXvIiFLOnUk0sG1iCVaqcoyCgp74d3HieSKob8X4GregSuT4EF4CM
         jaz/7kTfTHh1hkEyVO40CKDNYSJk8OqZK/EYJUG8pbAVlvXfRpVwg5jgRRL74/buz7nr
         QWnLGC0eK3kqcyHi34sKnBc3rAKZgk2j6v/7V49jbYTA/PyI9XoiVrMJ1p8nWGoNspsH
         qhxm6vE1OR+H2rNy5saALno5zt9sVbekrGEDaqFB53opMBEwn3CXJdkRtBnWB9t+Hlm6
         TSnQ==
X-Gm-Message-State: AOAM530pgtQvVjImt/1XObLisbAxJpQ3CxY6TJu7+EDdoBR/68KJ+9uQ
	A+B3qg7AmbNLz8Bhlk1yX4k=
X-Received: by 2002:a17:902:ac89:b029:e6:d199:29ac with SMTP id h9-20020a170902ac89b02900e6d19929acmr26586468plr.46.1618237134354;
        Mon, 12 Apr 2021 07:18:54 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id gb15sm11274248pjb.32.2021.04.12.07.18.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 07:18:54 -0700 (PDT)
Date: Mon, 12 Apr 2021 19:48:45 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	mitali_s@me.iitr.ac.in, linux-amlogic@lists.infradead.org
Subject: Subject: [PATCH] staging: media: meson: vdec: declare u32 as static
 const
Message-ID: <YHRWxeXA9m+Gt+e+@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Declared 32 bit unsigned int as static constant inside a function and
replaced u32[] {x,y} as canvas3, canvas4 in codec_h264.c
This indicates the value of canvas indexes will remain constant throughout execution.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 drivers/staging/media/meson/vdec/codec_h264.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
index c61128fc4bb9..ea86e9e1c447 100644
--- a/drivers/staging/media/meson/vdec/codec_h264.c
+++ b/drivers/staging/media/meson/vdec/codec_h264.c
@@ -287,10 +287,10 @@ static void codec_h264_resume(struct amvdec_session *sess)
 	struct amvdec_core *core = sess->core;
 	struct codec_h264 *h264 = sess->priv;
 	u32 mb_width, mb_height, mb_total;
+	static const u32[] canvas3 = { ANCO_CANVAS_ADDR, 0 };
+	static const u32[] canvas4 = { 24, 0 };
 
-	amvdec_set_canvases(sess,
-			    (u32[]){ ANC0_CANVAS_ADDR, 0 },
-			    (u32[]){ 24, 0 });
+	amvdec_set_canvases(sess, canvas3, canvas4);
 
 	dev_dbg(core->dev, "max_refs = %u; actual_dpb_size = %u\n",
 		h264->max_refs, sess->num_dst_bufs);
-- 
2.30.2


