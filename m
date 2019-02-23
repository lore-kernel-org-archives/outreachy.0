X-GM-THRID: 6661088091510407168
X-Received: by 2002:aca:ebcc:: with SMTP id j195mr4500598oih.6.1550905432664;
        Fri, 22 Feb 2019 23:03:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6485:: with SMTP id g5ls3335337otl.6.gmail; Fri, 22 Feb
 2019 23:03:52 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZ1bMzWFTNpc0+IkXFp7anTHw+Qt5TjPFPywoJNM81uu4o5gkip4rBTiFRq5K3Ppz+PjA0l
X-Received: by 2002:a9d:20e4:: with SMTP id x91mr4737136ota.19.1550905432218;
        Fri, 22 Feb 2019 23:03:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550905432; cv=none;
        d=google.com; s=arc-20160816;
        b=rws4H8GeKxaMwg4CGY0CmJE4xOAZBZtIJFHtt7P37Kiz/YokRSmXN9wzTdyISqq/By
         SdkAW7Ogo/5aZ1xIhTnplCxq4sm8q6OG8VVsGZd5kG5//LhFixs59DYQ0GJAfCCTSK+y
         Mahdwu4sCM1TsrycSvRcQx4jkT15J/djv29H7+c1DbEvWKvWFaSHZi0Tg2dyzlHXiEJX
         PtrPEmTs8Gy2Y7obpklS0tuo3Pqxy5LKXa7z6vkKtz3ZA9ZDHZw1N36LBEOT+R8XAMNH
         4kaJqIcOfBWBAraQ246NWK0fMVouha1c5dQ5WJLzJM1b9pSUIL/fVkJafJ/mizj8NMtM
         fz8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=fs5QpURQPjAdiFkPYwlO+zpkA9NK9O6JlJY70Y+ssd4=;
        b=AqW5TeFFOIiIkCjYLZWt/Rndl7i82xklEkO42VT/qEsTzQTLe/BGaFWKkw5ZKNTsJS
         IYKQFzN6fn0NcXvfoa1fXW76PhHtqnj2UKQOKQrEhzrPQ/x6UOsrZaeXH08+ljYdTuV+
         tE7w4vOcM2oFkFXyAKaH44Uo8iWa0mmkCY3pvjTbDQk2LTWdN0EruXZoc0JkB0K2izDA
         TITjWMo5Ki9tSyCqCDqgxKBA2BzPngcvmvSUBoT+ZL68ipKrydbnDDhlGM6wDZCqEaEJ
         Jb6/ip0nkjcJictbm0gEaZ9Plt0mhZ3swAJNJRicM63DPYNtod+2IF96DoxiaN99tj5g
         vrEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTS6c4QS;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id l26si291486otf.0.2019.02.22.23.03.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:52 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NTS6c4QS;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x534.google.com with SMTP id b2so2116551pgl.9
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:03:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=fs5QpURQPjAdiFkPYwlO+zpkA9NK9O6JlJY70Y+ssd4=;
        b=NTS6c4QSUn9xOLhHyyj4lU0rjP71KAOK8e2Yjl5FAsCmSeNLa4Tes2wHexDkG08ohG
         uh4k4XTjeVV6ob/JKNJ4R1vdgV8wk9id1gfHA2x40OUNk5TefSOsyhApCmFuJF/ncdOR
         krbgaM8vf5qjRg4ZceEgni32WMxDUL4a6Yef5qvoPxy5iR+jKfeGycCA4UJW9X6sm7oQ
         uwqUdW8JDGQTRlhZkO3lvozQP+mPoBuBKxHddhyP++Fsw282JBRAgpz84l+Lv0UGTxfJ
         pHyGC5cxxFo8OrGlcFc307AGHguCGq3C5E7PT+vHW4+vngI/hFB8SCvuByK7Exs23Xdp
         6cbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=fs5QpURQPjAdiFkPYwlO+zpkA9NK9O6JlJY70Y+ssd4=;
        b=XwtpS7q+WbSsy5z/umNhsLa1giAIAuo2O6reXljCI3mVqzRMmqs5j8LdRiAyVGPmWA
         yPUM+53Gj95/+AiSF5HlOd3V1lL5iwS2S/cJwsiZlNinGv6069szXqDplIBzlqDkmcel
         zXLbdN+ldOrXMnMvALf9EfMvyQg44uixn6kzq1cIIjdqE9lyAqtRO88p/DtbXYGX0pNh
         2FSj90MmnkEXU37WkvnCKGoedp+b2uAzVPd0sw3Jn/67SWl5LRBa2dUGIkAX5ry1tukV
         Yt7RKwHF/dkW8RLO9Q9f93BYPqXJa2Jd6vXreDbRmxXgadg54uWOYrJVUcRa2r7wMnl1
         YGGg==
X-Gm-Message-State: AHQUAubcSPI8gLk45vvh+DjiiXXusVrFifSj/Vtbcayk8WxRfWgSAhD5
	sRID+NS6Q1ohUzVxaPJimjKgvFuszhw=
X-Received: by 2002:a65:508c:: with SMTP id r12mr7553833pgp.247.1550905431700;
        Fri, 22 Feb 2019 23:03:51 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id p34sm6252336pgb.18.2019.02.22.23.03.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:03:51 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Mark Greer <mgreer@animalcreek.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH 2/4] Staging: greybus: Blank lines not required before '}'
Date: Sat, 23 Feb 2019 12:33:23 +0530
Message-Id: <20190223070325.6750-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190223070325.6750-1-bhanusreemahesh@gmail.com>
References: <20190223070325.6750-1-bhanusreemahesh@gmail.com>

Resolves checkpatch.pl issue:
CHECK: Blank lines aren't necessary before a close brace '}'

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/greybus/audio_topology.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/greybus/audio_topology.c b/drivers/staging/greybus/audio_topology.c
index 8bcbc3c4588c..4ac30accf226 100644
--- a/drivers/staging/greybus/audio_topology.c
+++ b/drivers/staging/greybus/audio_topology.c
@@ -923,7 +923,6 @@ static int gbaudio_tplg_create_wcontrol(struct gbaudio_module_info *gb,
 		break;
 	default:
 		return -EINVAL;
-
 	}
 
 	dev_dbg(gb->dev, "%s:%d DAPM control created, ret:%d\n", ctl->name,
-- 
2.17.1


