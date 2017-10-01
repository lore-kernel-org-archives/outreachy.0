X-GM-THRID: 6471841659603648512
X-Received: by 10.223.157.134 with SMTP id p6mr1257193wre.14.1506843059444;
        Sun, 01 Oct 2017 00:30:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.195.40 with SMTP id n37ls1650571wrf.2.gmail; Sun, 01 Oct
 2017 00:30:58 -0700 (PDT)
X-Received: by 10.28.22.4 with SMTP id 4mr1289583wmw.13.1506843058604;
        Sun, 01 Oct 2017 00:30:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506843058; cv=none;
        d=google.com; s=arc-20160816;
        b=ZXxjHVYPBWUYm3h7Gwc9kpGuoRGhlU+zNNgFDRZMowPR5EGzDjTD5Pio1LWSZ8YcMS
         YlBjGuHIXFEhQBh6wdoAv0SfaKOlbrTsEvVErQaZp+aeykw0Ozh2aUwtoux1AQ6SZFVh
         9GPAYOwG8DRl7mpGCVByf/PYwWeuV6GKVByPyIDq7MdkG+tnU3Ti4K7mbvsRZY1c1IFZ
         HkP9qW78NIM2j+R3ddsTvhnYKHq0nWaahstp9B/8wPxRgi/4A37+1gJgmQhq4WG+ccHT
         bD07U6tt3sc5OQNSzcakZB21qZXwF8vxe8kp8QhC76IzdPefmeogI0ttaqTtAeNXcLhE
         1YBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=NDqwegI3L1RGjlgP7KihOVmMCjRtjUVYzj3GhP9Oddg=;
        b=YzWDcOTkSAtpvb+g6YObC2/mFcWHHAxCv5/lbSQ1NQKCFOSbqg2i0vO4L1KQzh6fvn
         rG7aBJhEzH7C4wq7eOvgmVS2UJoqk2gnMG8oRYHIRRJvSko9l1N06kNbuxl+8IA4YBBO
         7CMA6YZValVitC7G+c1c0qUZUf8QS99lgRhoYnldaOD+b/CvyHiGunYSt7IRLwMH2lTx
         IFWp7vJ4KHS7Pz4GQj1Ue4O3DGFQh6DlXB7QQ0KAfl/lU4hvexVhBoUk2+DLxhgcZa7n
         XLGb9QuggdzJe5JH74683V2DHpZeqKnrTFyMDZS7krKGubjN4ejrDCiZBHi5wvm1PC/a
         E/JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=duK5hHPs;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <mihaela.muraru21@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id h17si961082wmd.0.2017.10.01.00.30.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 00:30:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=duK5hHPs;
       spf=pass (google.com: domain of mihaela.muraru21@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=mihaela.muraru21@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id z96so515479wrb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 00:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=NDqwegI3L1RGjlgP7KihOVmMCjRtjUVYzj3GhP9Oddg=;
        b=duK5hHPsZqGJosl2L8HNpcHaQAoSmWbezt91VeH+koei1l+dDdI3+lVr96mIXy9rTI
         Zlznpi35KN2j4sq5b2AfMkI6PTRsAS1htsHLeeCu5plKuEkxVAFP6v5VTzSS5Tn1+x5o
         +RTnozPZWAZ2KxoUsxUCEwjP2U/z+z15gKHiwOLRmcWKjKq1Bx/2E7WP+fPPIfNAk9L4
         M7AX7rW9u4f7rtnns4ZQXo1WzhYzSGEFlrmfi1FmZXgDCrVaQCBzUyWLqf4MLGyGLNJQ
         +7rApzgQvgeJ5+OJ30hT29gTapC9EIu4OVHH9xjXChHWSg46zNtVLTmW/wJ4hkvfBvNA
         xtYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=NDqwegI3L1RGjlgP7KihOVmMCjRtjUVYzj3GhP9Oddg=;
        b=PA++FYU71+NKlogRSSK/Seg0pDru3+Dal2E7YjNe5hhsHXVHKYo1/3cLqNx3X5sr1T
         +961uR23Z1SYPOKO8CBH0AUZ7lPKenTpx2FUgh2xGjD/6/X8r4v4JyErJu88ttxEO2F0
         jPW5kb1GC+YxyRaL48sRA+Zxb9T0Hip39vSv5PhAlcCZTvpxi2s2pcjlEKbm7K3K95o3
         IRzlZ1dfypctuLIhUTiY7bBcVSjo0rBByrOvKfKD2SewpxBadG1fbuVsr3XFq+aMI0/u
         ixcXl42CleydQ4aoojn1tRqmDdrzSbajHPru2HVLvdQ8jaZvWqKOOOfB1KPmfYp81SuH
         mKMg==
X-Gm-Message-State: AHPjjUh8M5xQgYcqiN1xgLJcEGx8K/dyUjfEZINiDY2DEsFJofxZR3q5
	ZxImMm3Q9gtzaNXb9cIukUa4NA==
X-Google-Smtp-Source: AOwi7QAJOyMd1kbS0bXSfvyFApti7xNrOHkvBl++8Go72hC5AeKyiSgZO7JA2G4VZVvY5NHJXjdkXA==
X-Received: by 10.223.175.100 with SMTP id z91mr12830687wrc.177.1506843058277;
        Sun, 01 Oct 2017 00:30:58 -0700 (PDT)
Return-Path: <mihaela.muraru21@gmail.com>
Received: from domino-MS-16Y1 ([92.83.158.26])
        by smtp.gmail.com with ESMTPSA id o59sm13979786wrc.45.2017.10.01.00.30.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 01 Oct 2017 00:30:57 -0700 (PDT)
Date: Sun, 1 Oct 2017 10:30:56 +0300
From: Mihaela Muraru <mihaela.muraru21@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eric Anholt <eric@anholt.net>, Stefan Wahren <stefan.wahren@i2se.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: vc04_services: Use usleep_range() instead of
 msleep()
Message-ID: <20171001073056.GA7890@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Since msleep() will often sleep 20 ms for any value given in the
1~20ms range, use usleep_range() for a precise wakeup.

Issue found by checkpatch.pl.

Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
---
 drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
index 631ff73..daf18e8 100644
--- a/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
+++ b/drivers/staging/vc04_services/interface/vchiq_arm/vchiq_shim.c
@@ -357,7 +357,7 @@ int32_t vchi_bulk_queue_transmit(VCHI_SERVICE_HANDLE_T handle,
 		if (status != VCHIQ_RETRY)
 			break;
 
-		msleep(1);
+		usleep_range(1000, 2000);
 	}
 
 	return vchiq_status_to_vchi(status);
-- 
2.7.4


