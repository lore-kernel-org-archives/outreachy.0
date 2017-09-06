X-GM-THRID: 6462772146556895232
X-Received: by 10.202.166.219 with SMTP id t88mr284614oij.112.1504731398928;
        Wed, 06 Sep 2017 13:56:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.77 with SMTP id r74ls20251ioe.53.gmail; Wed, 06 Sep
 2017 13:56:38 -0700 (PDT)
X-Received: by 10.84.234.201 with SMTP id i9mr330394plt.14.1504731398125;
        Wed, 06 Sep 2017 13:56:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504731398; cv=none;
        d=google.com; s=arc-20160816;
        b=iVj4arzNIInzC0lXOI8pmVylLg3N6IZMZ8BT0BQGLGY8ooA3OTK9e3RgJeXI/qJoQZ
         X1ocAVpxaxmEV/kF2tJf88ImmO+KfHF/sIsBeoAkquX0WoQZaPEXNcaEBIt8SO3pQFhg
         Ghk0D78Nn+M3Ng5Of/FmNI4QJcjNW+XbGbMcO8C3Nj4Hk2FTyXo3ODJfAnJ+h/Int+6k
         MKaJKG9zeHqq6EBm0ZKgU66YtlHCMjDeatDSXE86+soPSB7FVdl02KNCxGbqsvWd8VDs
         uD/HawkgNGTs4znoTnAFjYyRLeY9qwKNz9Ac5DNQCCLN0X5/b5KZaewfYNujY35BCQGd
         b+uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=mJQiS+8GjX70/x7e3gzIf1AjPSX5IivAKCrUd29JH8g=;
        b=wEkYlKxc1kfQpiD9JSWra1BA5QbL1RtG7RcV1/+yOZmWU+kGR4SpJsa1WKQvv6X8Yj
         sSCJSf86FT/bikYXEsmpMDD7F/7riMa8RrJf9shs9tZ50de9P7FxDOzbSMgJlR5smmXx
         7YTl/XQh4skysElb3TsZMBIO+1YQ4h7ehjOPR2+2DJKChoUK/o9yyC5ZLbgLdFob462S
         oXus98Y0dwcs3QcgdBCtCPp2q/OuWu9g0uT5ezZbG+DSormEOXNUTKKCEaAC0zOFDN3m
         tdQjvEW0SGhTL9aZAdtyUpWXJ559JUUvaR99SeHAOqgL5oY53t9WL31h0u+p+BgKJnxB
         U1yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INzl/yCs;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id g19si108167pfd.14.2017.09.06.13.56.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Sep 2017 13:56:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=INzl/yCs;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id m9so4012109pgd.0
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Sep 2017 13:56:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=mJQiS+8GjX70/x7e3gzIf1AjPSX5IivAKCrUd29JH8g=;
        b=INzl/yCsxs1DwfJiKt4V4HtmgSwk7lo1N1/sV2S0oNAOhmy/J5FCBZRZaKShkPd3Dc
         CvEdro4t7DRrFYICPAod7VC/iT2JM+XJgSXJbJIEzU31xnk2b4kPdNdTUxVG+Q0BSpde
         1zzz4SA/D7F8YPxDCpdXb89IArIbWZcYMuJh3PE5GrI13/9SLPkPJ8RgNzH/26U9DJVq
         jD8Plr/whnp/8EIrCKeCrcpz/JWzKs42pDsD0bO8nSPIgAO13rhgaycVfr6BWfL4W0nr
         eTY7yihunQH0LuA0iAAFBArVB7XEzQpcQbunOXrkzgpyft821tmGicGYNidNzim1wP8C
         E1Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mJQiS+8GjX70/x7e3gzIf1AjPSX5IivAKCrUd29JH8g=;
        b=Fuhw84hWMs00pX3WgghATe/PDLoouRiIcfP6DpISp7IivCvyElMLn1wO/IBgTkglBN
         dZvoFKjCQ2tv9uZWfShvRtbxyeDXAK6+Rr2n7L09cy2N7t401/TfDfL/cPvIgMjrB385
         V00qfgSQ3BD93Sc1rpKTTyr0WtWLGkb4Qp7c1np9TLycFBGRsgBgDWfiMamUa/ICGBSi
         nFUCXnCzYlvwfiwZDfbSjFEHM8iF4R6udVx+ubVAIy7bU8Kz59+1+Rbe19+jD7OmsHxH
         MEjpXRpGagKeldaoKzU/BMtNs6bZvC8SM76/2RwnTqetgZtcaqTm7tbJJKeELp3o40Ik
         C8fA==
X-Gm-Message-State: AHPjjUgqvSjvgkS1Fd88McYmo6smoph27gc1xhOdzQjqQXtqpHlPqV9e
	ndMwOTw6MDZ0UxRN
X-Google-Smtp-Source: ADKCNb6SPcmaIgggxt7GmdqLSkZOrgWBHAwVu6lSfVqMSC4VYBUVvE1qx6BnI0w82vzSNjIgt/aCWQ==
X-Received: by 10.101.82.8 with SMTP id o8mr437358pgp.404.1504731397850;
        Wed, 06 Sep 2017 13:56:37 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.61.60.94])
        by smtp.gmail.com with ESMTPSA id m190sm848455pga.2.2017.09.06.13.56.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Sep 2017 13:56:37 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: gilad@benyossef.com,
	linux-crypto@vger.kernel.org,
	driverdev-devel@linuxdriverproject.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: ccree: ssi_cipher.c: Make comment more comprehensible.
Date: Thu,  7 Sep 2017 02:26:30 +0530
Message-Id: <1504731390-9536-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

Edited comment to make it more comprehensible.

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v2:
 - Make comment more comprehensible , instead of just correcting typos.
 drivers/staging/ccree/ssi_cipher.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/ccree/ssi_cipher.c b/drivers/staging/ccree/ssi_cipher.c
index 99232b2..fec2faa 100644
--- a/drivers/staging/ccree/ssi_cipher.c
+++ b/drivers/staging/ccree/ssi_cipher.c
@@ -702,7 +702,9 @@ static int ssi_blkcipher_complete(struct device *dev,

 	ssi_buffer_mgr_unmap_blkcipher_request(dev, req_ctx, ivsize, src, dst);

-	/*Set the inflight counter value to local variable*/
+	/*
+	 * Save inflight_counter in a local variable.
+	 */
 	inflight_counter =  ctx_p->drvdata->inflight_counter;
 	/*Decrease the inflight counter*/
 	if (ctx_p->flow_mode == BYPASS && ctx_p->drvdata->inflight_counter > 0)
--
2.7.4


