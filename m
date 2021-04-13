X-GM-THRID: 6950525312871432192
X-Received: by 2002:a63:3244:: with SMTP id y65mr31853308pgy.197.1618295282272;
        Mon, 12 Apr 2021 23:28:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls1121545pjt.3.canary-gmail;
 Mon, 12 Apr 2021 23:28:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx0ovxk+FkQ1fezOZ/LCOcmMN+RgSOB+sWJV3NXVu+lfn9TqlOrz1i/ZL58l+PbMnKf4AX1
X-Received: by 2002:a17:902:d2ce:b029:eb:364:a2a0 with SMTP id n14-20020a170902d2ceb02900eb0364a2a0mr7864162plc.0.1618295281146;
        Mon, 12 Apr 2021 23:28:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618295281; cv=none;
        d=google.com; s=arc-20160816;
        b=GtGxgAA/tC0cx5xFtUnCoBH2ZCiQSS+n3NIDAgb3jGet807Wry30/Bj2hux/bVDX8c
         GmLzLxazeGBtsAYW91KAiTZcyELus5TgfxVijpie4Ok7Ud050SmMclFqYB8tZ0IhnT7f
         aOQEqqunB91293h6R7lnDErWmHSyBzTyW3jibRK3ptFMYAEvcq50oIlYvmlAsCW1DthB
         qoLt2CfiiUBRTPksTUzwD1CmudTlkYZpQl0WApvPi4N9foYiNPs8ozH9lhKxRsmmmOY6
         NJ8dwbUD9C3y96uy/FaP/i8HRpEtvCqhjsvQRRCnKh9ux1K8z5VbjPwcEIWHHkzeg3yY
         QYCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Nt0fDmT0/sSLx8SXvP12vsQxR8HIersO+xhC1jo5rA0=;
        b=v+e4iG50sBNMvja59yDG5K4yIVATQVAA4VwjFSJD4diCftBrbGgY+GYI9Eh6Armnek
         tBEy87pVWiNH97AMpNud0tigHvet8u9Tb5lVEKDHyrgTnoeEdfSNtofWgFT+fuzPXUiW
         GQKdM5tMJJNrO3KACwZAxeJL3NjOBNfzqUU+MjcnpkwDVVQFbvhFw4PKC1GW61K2D3Gc
         XAWXbyV+Cpng1z84d+RlrfKtLV3CgkPihIbvDhew7pFZM9Pa6eWpxsJDI/TXsHjHmf86
         L7QGoktgL6h3bieHJ4qywGwiPBqbBQMZd+zdA0/xKUVXwxCri95Sm6UJLfjHOvIH+TWf
         JVKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sl3xokFP;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com. [2607:f8b0:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id p2si835929pli.3.2021.04.12.23.28.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 23:28:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) client-ip=2607:f8b0:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sl3xokFP;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::52b as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52b.google.com with SMTP id y32so11191260pga.11
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 23:28:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=Nt0fDmT0/sSLx8SXvP12vsQxR8HIersO+xhC1jo5rA0=;
        b=sl3xokFPsQ3gEUalWsbT9Ivb31ReDXvXvicMwxDLicpI0mmNTLYl7/XtErj73GTIRf
         ch/dywOrBxbpxRaRBd9P1UBWjOOs8LgY8RNdAPGAx9aL/Fq5p8C2EDEu1+Z8Zbk64YoO
         cVNrscOHZLiO7J0NhQHadASxDipAD8+0tENdsS2eeTVBpBJRNzleWehCIgAA5JQU03xU
         drDdaJz+IGntTjxCD9arxBgTTgExiw/uQuSqlo2kf7l8BsRWYvtroYt+qHfMc8iEvEko
         RIEwaGxTFo0IPbdDIbHq3Q0tHsf3/K2nTpxzi3Jb0e8ZKKqgo2ELv6QDRFrPy39QK3iP
         soDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=Nt0fDmT0/sSLx8SXvP12vsQxR8HIersO+xhC1jo5rA0=;
        b=uNnpn+MLBUNJFIEQIR6NykiOSBvH+A2praGjbqeeCFUYIC1hoPsSseqGni5Qoj9LBF
         4U71jYQ5QpsftPVttqwW2Dh5Qw5DTfJ9TzKHS1j6yK1cJ5ndb1Ak7fOWN8+4681X6FS+
         rPPTsidS4dvV6pYJbBmCufe0q9kZlTXfKoTCJ00tKYiqrThpplIQV3Pag0eLXrI0Sfd7
         xeaCxLnqdonXPOrdcSgafgfePJGFwMoDLaRs3Knod3Mdr9onRSDqDlTOIItCw39eCrTL
         UDhCqh1UlUfbXbX0YT7+kkvggPkFkxlB9y+DnTds6fcopg6H0cCRG52huJKYEakiMKKf
         c+cA==
X-Gm-Message-State: AOAM531kgboUEC4EgIbl5/r5Jq+WoZkY0pV/SGhTor2Ccn1TwFi9IHVX
	zgEXZhxFugQpNyzSbfyIPwk=
X-Received: by 2002:a63:fe12:: with SMTP id p18mr30877410pgh.425.1618295280741;
        Mon, 12 Apr 2021 23:28:00 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id f65sm13461382pgc.19.2021.04.12.23.27.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 23:28:00 -0700 (PDT)
Date: Tue, 13 Apr 2021 11:57:52 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: narmstrong@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org,
	khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	linux-amlogic@lists.infradead.org, mitali_s@me.iitr.ac.in
Subject: Subject: [PATCH v2] staging: media: meson: vdec: declare u32 as
 static const appropriately
Message-ID: <YHU56OM+C2zY34VP@kali>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Declared 32 bit unsigned int as static constant inside a function
appropriately.

Reported-by: kernel test robot <lkp@intel.com>
Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v1:- Rectified the mistake by declaring u32 as static const
properly.

 drivers/staging/media/meson/vdec/codec_h264.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/meson/vdec/codec_h264.c b/drivers/staging/media/meson/vdec/codec_h264.c
index ea86e9e1c447..80141b89a9f6 100644
--- a/drivers/staging/media/meson/vdec/codec_h264.c
+++ b/drivers/staging/media/meson/vdec/codec_h264.c
@@ -287,8 +287,8 @@ static void codec_h264_resume(struct amvdec_session *sess)
 	struct amvdec_core *core = sess->core;
 	struct codec_h264 *h264 = sess->priv;
 	u32 mb_width, mb_height, mb_total;
-	static const u32[] canvas3 = { ANCO_CANVAS_ADDR, 0 };
-	static const u32[] canvas4 = { 24, 0 };
+	static const u32 canvas3[] = { ANCO_CANVAS_ADDR, 0 };
+	static const u32 canvas4[] = { 24, 0 };
 
 	amvdec_set_canvases(sess, canvas3, canvas4);
 
-- 
2.30.2


