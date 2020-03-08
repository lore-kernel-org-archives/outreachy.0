X-GM-THRID: 6801933833462611968
X-Received: by 2002:a05:6830:22fc:: with SMTP id t28mr10094558otc.166.1583698632895;
        Sun, 08 Mar 2020 13:17:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:478e:: with SMTP id o14ls2145643oic.6.gmail; Sun, 08 Mar
 2020 13:17:11 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuMQUfHBRb8MyyqAy/M+fk6hXhO7+07XesH77B52NUod/Q+hGkJjJVpeKWFRCXfbenMn4s/
X-Received: by 2002:aca:a882:: with SMTP id r124mr2850560oie.53.1583698631593;
        Sun, 08 Mar 2020 13:17:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583698631; cv=none;
        d=google.com; s=arc-20160816;
        b=my0RrzPCgqs5OaJRbjymNMzYf1xGAQ/tZ+tnCjkCW5ySuNA5wKitgLGarLJguge+0N
         DdkrQgAscxObiDSFtC4Od1b/wA6gXtL+befyDNHWmJ3CdcXB7Uon6BXDCryK0owgt+AW
         Qnp2NdvS2DK/wYWDSAutgyf7MRk45xOeh1DCFq6kTV5FM5NLpcmUUHnq5nkvKdxf36Zp
         XLi50dbpy2vTKcUPz4tk/3mg8+MEE2onwv2N2E2UshlN1jgt3yILI/qQLRxW921beSGa
         ApinNfTvRnUD92+Y4jHp5JETSw72ivFgpSCqMWoXk8fQP0XvO8uIlQg/AdNFfZ3eWE+m
         YOpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gCmJ+G7TCrvBbeETOpvYyLbw+i9yV7qmAncCZUfBuCM=;
        b=rW8QLoWX6jqe4SNEVezEGTY4nugnA8Y+k9ExXdupGRPlySYidDfcvQnc0WsZoDuAcL
         53mXsYeNA5g3jn5ljWEe6eDTtYykvr4C03uAyOEIGTcKNT5DYh0Cgr/ebNjQOzmAg1rq
         W3ICLjJmh62zVhecSf7KLHz4Y9CTciKwYv7urjXvBNo5BXnk0TBTq8E/D1p8/lI5DAPp
         HI0Ikc2MkGn1bQZCVeF7YiUQv4ek9g1JOFlkLoYigYN44khhKG8cI95F6LgN5RpkvXMH
         lnM9fXzpaNQ1AvB/VopIGqA1n9af/Faeywj1ZbZuawOy5x7z47LvvV0b6DzeXvxAAzYA
         lg3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d6px74uV;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <shreeya.patel23498@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id d11si32535otk.5.2020.03.08.13.17.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2020 13:17:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=d6px74uV;
       spf=pass (google.com: domain of shreeya.patel23498@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=shreeya.patel23498@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id g6so3126846plt.2
        for <outreachy-kernel@googlegroups.com>; Sun, 08 Mar 2020 13:17:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gCmJ+G7TCrvBbeETOpvYyLbw+i9yV7qmAncCZUfBuCM=;
        b=d6px74uVt1+SFm603mg3MlgNgNOBAcMTO19U7/2hWVGFyedLMM5yckn/R+48b5etZx
         3Xb6/0DVjti8txu9xDFY7uv4U2qU1VbJechlphDAV96GpJWz04TopcYoYWmfeo7sKKZi
         wmSIWW/htWhHjxMJF8PZiwlqEIloDcBMCQmrbQsnZarhT4qzoq6VIwBqk6FRLPEq1Sm5
         CZmAYHnSDFvBTZIUVzZqLM4u4wkfu9WIMUvMliljoVJDrXC048pFPjcFrJhT+1NnvDrr
         0SXIhBbFzV638h0TwcNZ1ZbL6AB1E+U3vNYUnPuZbqaqJmjJqUHZwU1cHHTi1AZH1Gka
         KRCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gCmJ+G7TCrvBbeETOpvYyLbw+i9yV7qmAncCZUfBuCM=;
        b=IdifEmRzQlWG/oPaI8HSaqxBEXe7H4fosGuSyH9byu8XrIQuP4o8sCUqN5T7y16Qd9
         sDVy13J9JFg+nu32OvmgTiAFEaRHLWscoSmyk7QL/iCO8EbFEbg785f140tS/GIAp8Yu
         T9zWbUzoBlfasp1ho3pm5J7PJ3L/mOjO9C7OkHfbifcGtEbnCT9Bvr+gVhsQNEBDkqSV
         ngeVgjgFXNpKdpYPsawKTCXmoRZ3I1Qo8/QQiciKba4NfczlREJyFQzTFNpVhJTifwvj
         qcjPZLGac4t5dolzFfQb7XMA5D0VOCuDTWu9C5o8Is5Er8SWwSvpYqko62xWPp1CR2Wu
         qFmA==
X-Gm-Message-State: ANhLgQ2k5NxUa/1Lqw9jog3LypcFsAo15UmzUYKrhg0pt9paadW4xoe0
	zmBtdy0CHulM4Bqpkr+kwx0=
X-Received: by 2002:a17:90a:17e3:: with SMTP id q90mr15491962pja.12.1583698630751;
        Sun, 08 Mar 2020 13:17:10 -0700 (PDT)
Return-Path: <shreeya.patel23498@gmail.com>
Received: from localhost.localdomain ([1.23.250.201])
        by smtp.gmail.com with ESMTPSA id x197sm27062658pfd.74.2020.03.08.13.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Mar 2020 13:17:10 -0700 (PDT)
From: Shreeya Patel <shreeya.patel23498@gmail.com>
To: gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	sbrivio@redhat.com,
	daniel.baluta@gmail.com,
	nramas@linux.microsoft.com,
	hverkuil@xs4all.nl
Cc: Shreeya Patel <shreeya.patel23498@gmail.com>
Subject: [Outreachy kernel] [PATCH] Staging: rtl8723bs: Remove comparison to true
Date: Mon,  9 Mar 2020 01:47:03 +0530
Message-Id: <20200308201703.31709-1-shreeya.patel23498@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove comparison to "true" from if statement to
maintain the kernel coding style.

Reported by checkpatch.pl

Signed-off-by: Shreeya Patel <shreeya.patel23498@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_ap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
index 7117d16a30f9..a76e81330756 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ap.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
@@ -2417,7 +2417,7 @@ void stop_ap_mode(struct adapter *padapter)
 		paclnode = LIST_CONTAINOR(plist, struct rtw_wlan_acl_node, list);
 		plist = get_next(plist);
 
-		if (paclnode->valid == true) {
+		if (paclnode->valid) {
 			paclnode->valid = false;
 
 			list_del_init(&paclnode->list);
-- 
2.17.1


