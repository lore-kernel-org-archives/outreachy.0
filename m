X-GM-THRID: 6886430706216468480
X-Received: by 2002:a17:906:348c:: with SMTP id g12mr2310513ejb.422.1603372093769;
        Thu, 22 Oct 2020 06:08:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6402:1d3c:: with SMTP id dh28ls313851edb.0.gmail; Thu,
 22 Oct 2020 06:08:11 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzGts7X2AfGYm7f1fdy0F+JxrVkIkfVo60/Av97tX9HGsZPF+wKD67qI8oWA8wPucVqWjVj
X-Received: by 2002:a50:d796:: with SMTP id w22mr2232543edi.123.1603372091368;
        Thu, 22 Oct 2020 06:08:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603372091; cv=none;
        d=google.com; s=arc-20160816;
        b=DY/VZkvsz7J6/qX9jXs2WjmiplOvhsfOzUWULp+ds2liXV6SVnIMcT7+DPRNm+nRBP
         si+lNclrJGIp2hA7PcQFAcAoSkdkH+laDOkAfy3dFKF/00dz6lxCQPwOI0UssnbjRgVl
         pWR2TgBR6vo7F/9a34APnsQ86C2VMd38zNs5IO4BJbYA/plsC/NCoYRAhafwwU02aHJU
         NM2sHdyiZJk/kiFfwn9pyvjbY96UWrXgeRjAktwTV8xoaPtQS68Zp6wr48GhrQ+U44s5
         tHIRzIu43vUBa7L3rkKOsudQqMy+LGgfM1P+niakleUzaGD4hsQ2JRVTETnfwWrp35mb
         7ZFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=YnVSHPtkEDV80qgIOohyTUBh5oj/YizZewvliA8voeQ=;
        b=Tk005L8+3V1I8gd+ZlYzWsWmUZNe+T6nutkF8afV6gwU6d7hRx69+PEEAA8CmQgLZK
         PTYOOavZkEab7j3k+CQfq1+JG6dNo3/zi9vT2Nl2O9uDCvVMdw/5cL8lKoJPMyRotf7V
         Y1TwTPa7GzitJvoOTUFXV08QHzQhJrCzmGugY4GUKUP+Sx4RP8tjjPyTZiiqHfNb6/J5
         Hou4ip/E9NNSo6AqZsGenlfJC+L79YXl8VBV17kymgNgHADDIFkG2ZaR1APFKVmljrRT
         jalXAQWoETLUGqIIP3wjck1OjOhzGMqk+pJZQneRG9eCU5gyX5eCRhQC+1I3Fd0kBTEo
         I9Vw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ElU6qfg6;
       spf=pass (google.com: domain of izabela.bakollari@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=izabela.bakollari@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <izabela.bakollari@gmail.com>
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com. [2a00:1450:4864:20::643])
        by gmr-mx.google.com with ESMTPS id n11si58333edi.1.2020.10.22.06.08.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:08:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of izabela.bakollari@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) client-ip=2a00:1450:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ElU6qfg6;
       spf=pass (google.com: domain of izabela.bakollari@gmail.com designates 2a00:1450:4864:20::643 as permitted sender) smtp.mailfrom=izabela.bakollari@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x643.google.com with SMTP id h24so2187182ejg.9
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=YnVSHPtkEDV80qgIOohyTUBh5oj/YizZewvliA8voeQ=;
        b=ElU6qfg6v/wFR7SXZ6Er6eboZ3A5bx8GD5X9SAdsxJiJCfWp23+eyZMYpIedG3cN8r
         x5sktzejMQgBoVHggchF2yC1AWyxMCSOwP1paYXrqVRyfuaHcH2V3ZBMODUFHdbuXawD
         aQxNQQjlOeQtDUzS37KrK9YOA739hNydhJFmso8JoNXCkA+6Pm3ywynD0dO8VKEUjnnt
         R7CfzStF0bnPCD9SMpXZT7ON0pnhxNz6er8DHAopQPh8/9ZBTfeEP7QAYyOPHUDFHO9Z
         XqVfIdqYr0212gA5TOFUWjVPVyC59W7y0civxWmB00tGD/+HoiwzmRhBM08mQ7Mu+Dmj
         eeJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YnVSHPtkEDV80qgIOohyTUBh5oj/YizZewvliA8voeQ=;
        b=NqOd5nQB5r/l5vmPO1dhLFB/KdKXfQvdX9e0Xvuy/FHYAZcZ4Q9BDcT4lCDlyQmCNx
         M/qsl4wYR/jR4C0MFOSrMgojvAKDIREIQusx94ssz7NDqrwAE+HlmWta9St+VZ2F+R+Q
         Tr2cJaqLQTbpebKlyKMc2Yj5JPtZgA0EHzoffjyNcxPpSZzvnKl2dSzA34JxnIBkDS3v
         bpHIeQVdQbSVev1d3novTMGLL8bkViwjiuJidUxQZUrRsCM49KoG0CAaFq/vrHOzXeeL
         zVWteebkFXGa/tWu24fu1pqRFZ5PEXy6kBPy0cXKEu+8cM+rVs/HekqOTbIXbEvqKXSw
         KUwQ==
X-Gm-Message-State: AOAM532F6T3T6EWpNLswx/qBvZtVP6u1f3eY8YKzaYUSV4/uZOiWMFE6
	SCTZGHpOXYKYqeGzqm1Q8fo=
X-Received: by 2002:a17:906:388d:: with SMTP id q13mr2101698ejd.92.1603372091196;
        Thu, 22 Oct 2020 06:08:11 -0700 (PDT)
Return-Path: <izabela.bakollari@gmail.com>
Received: from localhost.localdomain ([185.200.214.168])
        by smtp.gmail.com with ESMTPSA id e4sm732723eds.50.2020.10.22.06.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:08:10 -0700 (PDT)
From: izabela.bakollari@gmail.com
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Izabela Bakollari <izabela.bakollari@gmail.com>
Subject: [PATCH] staging/wlan-ng: Fix line that exceeds 100 columns
Date: Thu, 22 Oct 2020 15:08:07 +0200
Message-Id: <20201022130807.212454-1-izabela.bakollari@gmail.com>
X-Mailer: git-send-email 2.18.4

From: Izabela Bakollari <izabela.bakollari@gmail.com>

Rearrange comment that exceeds 100 columns length. Issue reported
by checkpatch.pl

Signed-off-by: Izabela Bakollari <izabela.bakollari@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 759e475e303c..5fad37a49aa5 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -366,7 +366,8 @@ static int prism2_scan(struct wiphy *wiphy,
 					  msg2.beaconperiod.data,
 					  ie_buf,
 					  ie_len,
-					  (msg2.signal.data - 65536) * 100, /* Conversion to signed type */
+					  (msg2.signal.data - 65536) * 100,
+					  /* Conversion to signed type */
 					  GFP_KERNEL);
 
 		if (!bss) {
-- 
2.18.4


