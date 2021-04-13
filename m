X-GM-THRID: 6950644769369358336
X-Received: by 2002:a63:7a07:: with SMTP id v7mr32314510pgc.26.1618328598752;
        Tue, 13 Apr 2021 08:43:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:80cb:: with SMTP id a11ls7170684pfn.9.gmail; Tue, 13 Apr
 2021 08:43:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwWXj9wvs0ZMfzyyBfck4Vr5L33riIlgWOcxu6UgBUtcx0ydfuSU3VlY50zWQl6Z6Fjlpue
X-Received: by 2002:a63:330b:: with SMTP id z11mr15469725pgz.32.1618328597630;
        Tue, 13 Apr 2021 08:43:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618328597; cv=none;
        d=google.com; s=arc-20160816;
        b=Lhgosbq8g7gj/HZlmP7hMpTyTjSvrqtZvb/90DU/3xi011FJNDWWkYkdTcIc3AtY35
         laCVMztkhiiQi/pzBUHJmWnme9mhnkEwhdAxgkueNq4j8UbCs7S/QvkYIu7/Jel2PaxE
         9DE3kHmRnM+FqNDlhOOJIlwf05Y4A/BscmvrgOEsgNhYRxD57xu8iH3feIMZz8kNFQHS
         zYc9KtEFoX2bnuqRxHV/9oDCXORkTGQwyK002LzotQWXlu0RdR11X1gNEs+6bZOh8Wyy
         2bEy5n/4kLqA1xYdJh2WeWSXiK4auls3XWPP3xv9uLKr3Ei4HzUfCqtD7wyfY/qzvMJy
         8UeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=8Muu/9WdfBgf9XGzBb/oUnmSPxJfSkGD9Nopu5TItCA=;
        b=A0MGZ/fa65TgrGQSAaspwzN49qbesw3tZpmP/VojKzkdzOGvlz4FdKsGrUnEhHmspX
         LccOJWtDTMPEl6U6qIGF+erOexLnrdL7xj5E+yY8j30hzNRDvq72+PPEMYW38beajTxN
         7AwrKVi0t4wIXT26LnmVETvHXuAGVip7P/D5ZMMzYl3rbaj6Q8uV2OXJBTWvY73BGz31
         eIcoRTXtn8LIGI03KzaQ44moGqEKcO8A/Su122KtLcQY0kJ3i8sa3Ot/rxf6s0oWPs/m
         /pRr1nc7UHDYJ9E/sXi16cjylLWMgBxMTTmOj0Kw4tZfvbCwRqGvtyfxvACFp/kzw9bt
         Oz2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t3Ri2SNL;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id g23si1494891pfu.3.2021.04.13.08.43.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 08:43:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t3Ri2SNL;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1030.google.com with SMTP id nm3-20020a17090b19c3b029014e1bbf6c60so5016648pjb.4
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 08:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=8Muu/9WdfBgf9XGzBb/oUnmSPxJfSkGD9Nopu5TItCA=;
        b=t3Ri2SNL5+EIJHCO7rV0ZBDAuEnogEiAwxV5x0DtpbyJocT6i2WoGDYeINTw4XNjNY
         CoGAhswVk2+FCbxNGJLJAbLbWVNO+z9TFj9Szwr5W8fb4oJ5vrFn4Alm/cIijGbfJ6dN
         Lo0kgHFnheU8pDkOg5hHZc1WPmMq/6uU9ypeCur2JSeaZoiV3JBIADdYzJ48u46YSuJz
         QERBXv537o/d9RPTE4svky7HLqPMY8tev5/ngiOtvWIrzk/rLyTrWJ8Wrp3pOIpPY7YG
         Tz9cAPfWi4OzuuAQCTSe9magjw5EwyOP5Mh858MfiqYke60Sm1YFx+cLQ5jf73BWpHMP
         1/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=8Muu/9WdfBgf9XGzBb/oUnmSPxJfSkGD9Nopu5TItCA=;
        b=CNYhxObYV2mpKK6RNwHYB0Gwj4qf9zLRU+rK6TVOqVJn0uusoPpeJHyJ4XXfeTpNfE
         8dgCI6+pNB/qKlEOjv7R0zHopP78w+fvmZ+bN0b5I7vZycPIDthkwPrJa1mZ9UVFvRpO
         Dt8hzTfC3LyLG1rsxWnEUStHuSG9ddcd9a6iA0l/XWcyOdv9qopL+3aBFinQkxKtJ5BE
         tfy09RIhw2Ru/5s4TJEfqXQZAOkmE8nQEA3ocdeYhkFmOF2W6/vqUC27QepOkWsICE6s
         qQsVwD0VAZXrOVP0jPSIj1u4PIapn3n2celEuNLfDNWrfFLQnjNgWhgg/dNjQkBsNnpF
         tABg==
X-Gm-Message-State: AOAM532pPBv2P66gTUDf1OLggeInbqit/aErC82bnrm8Kq94z211QTUQ
	UYG6WhgG6OYddU7oDoDd2Lk=
X-Received: by 2002:a17:90b:e0d:: with SMTP id ge13mr614712pjb.189.1618328597240;
        Tue, 13 Apr 2021 08:43:17 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id k3sm14555276pgq.57.2021.04.13.08.43.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 08:43:16 -0700 (PDT)
Date: Tue, 13 Apr 2021 21:13:09 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	linux-amlogic@lists.infradead.org, mitali_s@me.iitr.ac.in
Subject: [PATCH v4] staging: media: meson: vdec: declare u32 as static const
Message-ID: <YHW8DWNUAmp4mXm3@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Declared 32 bit unsigned int as static constant inside a function and
replaced u32[] {x,y} as canvas3, canvas4 in codec_h264.c
This indicates the value of canvas indexes will remain constant
throughout execution.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
Changes from v3:- Made commit message under 75 characters per line.
Changes from v2:- Rebased this patch and made changes against mainline code
Changes from v1:- Rectified mistake by declaring u32 as static const
properly as static const u32 canvas'x'[]

 drivers/staging/media/meson/vdec/codec_h264.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
index c61128fc4bb9..80141b89a9f6 100644
--- a/drivers/staging/media/meson/vdec/codec_h264.c
+++ b/drivers/staging/media/meson/vdec/codec_h264.c
@@ -287,10 +287,10 @@ static void codec_h264_resume(struct amvdec_session *sess)
 	struct amvdec_core *core = sess->core;
 	struct codec_h264 *h264 = sess->priv;
 	u32 mb_width, mb_height, mb_total;
+	static const u32 canvas3[] = { ANCO_CANVAS_ADDR, 0 };
+	static const u32 canvas4[] = { 24, 0 };
 
-	amvdec_set_canvases(sess,
-			    (u32[]){ ANC0_CANVAS_ADDR, 0 },
-			    (u32[]){ 24, 0 });
+	amvdec_set_canvases(sess, canvas3, canvas4);
 
 	dev_dbg(core->dev, "max_refs = %u; actual_dpb_size = %u\n",
 		h264->max_refs, sess->num_dst_bufs);
-- 
2.30.2


