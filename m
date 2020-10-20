X-GM-THRID: 6885724039640252416
X-Received: by 2002:a37:a14a:: with SMTP id k71mr3342164qke.33.1603207560745;
        Tue, 20 Oct 2020 08:26:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b897:: with SMTP id y23ls632446qvf.5.gmail; Tue, 20 Oct
 2020 08:25:59 -0700 (PDT)
X-Received: by 2002:ad4:472c:: with SMTP id l12mr3833360qvz.42.1603207559392;
        Tue, 20 Oct 2020 08:25:59 -0700 (PDT)
Received: by 2002:a05:620a:2e2:b029:142:bf89:f2a with SMTP id a2-20020a05620a02e2b0290142bf890f2amsqko;
        Tue, 20 Oct 2020 08:05:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz6uz+KK+FiwJfWNzWHne65vtdmQ1hlKmxkud+PSGlUedJDoiGeU6n4wMvQbeJN+99kuAhr
X-Received: by 2002:a19:e03:: with SMTP id 3mr1252461lfo.335.1603206321604;
        Tue, 20 Oct 2020 08:05:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603206321; cv=none;
        d=google.com; s=arc-20160816;
        b=AelgcJsqDuHZUgTwR1X30mWK4cBm40JII5xtnXgS0ggM0zgrFs3MK2VO7bQ/QQLHw8
         bMra2OP7nYR2gQA6aExf3LOcPfp7Ds3vXNjbjeE/q8VLNWMOPaN9HUTqeG78sosmmOnh
         MEJtKUvFp3s1mAvmQYesNAqMz3e2vhrjUKmRQladrNiY1Bm0h2LQ0s4mtj2D6Ssg4s94
         9/2fzhUmDHdzsHH/p5/Qkvb4J7aedOmAXZdboBnJJc8RGFzQjmbz3eMj6i6qGkd8gsIE
         1YH2StaNMiONcbwdk4TqB/Lcrk31jf1Z6gFtlmAk4fzBWKzcripC2dI4r4nFBzWbpt53
         eIEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=7TJv4ZXg2MXwEfHyowh8npSJLG4Kmdf3ACv+lxm/lQE=;
        b=iNbNgNKb6mf6SLXMAaV0n47wAUiYqbmW2Ja30XR/LdzqpiWsXEuRK3ivecbi8IHhzp
         BbqEQcrth8Biz8AToKfA+z3IrZRpcpMR/adwr5hgbx4N3TwAneZPFQPR/Ht2I92HyaV2
         tBf8Aw3gR4k60sjoKmGDQEI+GBa6dzBzJouTiUi/JTtmghHSxfWZ0kRME55zFUFcytuL
         +w7tmemGqUjB6B6r2j+wxG4wx2KuDzXh8AEI1j89Kb3sNw9RfX19ZBOpN+8hfDI1Rh1k
         Etjwg3ZlhzoSp/kiWIVz/t4ajw9jnnp33kQAPHaFx7N1DbkclFafiGMzkW0B4I7SlQ3p
         s3tw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KsWlu6Ts;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id i17si77609ljn.4.2020.10.20.08.05.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 08:05:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KsWlu6Ts;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x243.google.com with SMTP id i2so2387065ljg.4
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Oct 2020 08:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7TJv4ZXg2MXwEfHyowh8npSJLG4Kmdf3ACv+lxm/lQE=;
        b=KsWlu6TsLv+KPklGb+OeT9zYIWS3970FjdSR0G2YKoiPFF4AeOoYi96MeUgeh1nbbR
         tb/eiv2g+x6ECUDa8UawTdhVP0r7v6s/raQbkEYwdpzt/70bS0T4OX90RzQmPhyyMufH
         6gHThTdKjdQNdby2zE9C6zPPemm8kogK1GahTRHf7RhCJhv7jPxARcYjs5JPLEiIKdEc
         8RTzozGrNb8bGHqcuO7iEkKnkDjEXzZvSYKybkQ0qSh2akRJwSPqSn+edHW1+EEmAs5p
         nDcfrrxaWChcNayHX/9BfGPw5Wp5p4Fa1CtMudBkSF43+auK1JbuCAek8OURVph9amYt
         Yrdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=7TJv4ZXg2MXwEfHyowh8npSJLG4Kmdf3ACv+lxm/lQE=;
        b=rNW0QTRrdamaeLT7qgqbdJBTKlivJoAEirp/DvfpfgIVNMCCDdtlLg6kp4Eg8Yyl2a
         oobdftQg+R7AWKTOJGXlpNKdjDyO6DU6yo2FZK619nB2ADl5L2BtwgSKHdFru7lqZfWk
         +L07qApR3wOEp5lV0w3BJxpTmcfMF1wIAVv7bB1YgVK0TUqW4lBQDjsLrHR1eXqScb2n
         mE40cb46k4js0W56cM7w0ocECTiRxdnA3a+I/Do6msKvW00OzwbmwezeRRdlbRDBXqaU
         iignhAV9mdcojNnn1wKmWmL2fTcjUoeKOZLywPKiLV50nG5NUUvTKDQpWMNKAKea7E6F
         ImnQ==
X-Gm-Message-State: AOAM531K0Fomnu2vtSbwuyEXes2soPRC7dUpR8N8osh8VzOGFJOrKADH
	S/G//Ygz7OWIGyhgFns3QuA=
X-Received: by 2002:a2e:9789:: with SMTP id y9mr1336077lji.456.1603206321353;
        Tue, 20 Oct 2020 08:05:21 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id c184sm340622lfg.274.2020.10.20.08.05.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 08:05:20 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/qlge: add blank line after declaration
Date: Tue, 20 Oct 2020 08:03:56 -0700
Message-Id: <20201020150356.35605-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/qlge/qlge_ethtool.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/qlge/qlge_ethtool.c b/drivers/staging/qlge/qlge_ethtool.c
index d44b2dae9213..a28f0254cf60 100644
--- a/drivers/staging/qlge/qlge_ethtool.c
+++ b/drivers/staging/qlge/qlge_ethtool.c
@@ -178,6 +178,7 @@ static const struct ql_stats ql_gstrings_stats[] = {
 static const char ql_gstrings_test[][ETH_GSTRING_LEN] = {
 	"Loopback test  (offline)"
 };
+
 #define QLGE_TEST_LEN (sizeof(ql_gstrings_test) / ETH_GSTRING_LEN)
 #define QLGE_STATS_LEN ARRAY_SIZE(ql_gstrings_stats)
 #define QLGE_RCV_MAC_ERR_STATS	7
-- 
2.25.1


