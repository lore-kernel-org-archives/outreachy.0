X-GM-THRID: 6674500883205586944
X-Received: by 2002:ab0:60b5:: with SMTP id f21mr6217867uam.14.1554028503492;
        Sun, 31 Mar 2019 03:35:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:2d4c:: with SMTP id t73ls1084732vkt.3.gmail; Sun, 31 Mar
 2019 03:35:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqymd1jipmPZHSXZYMRJpdPN+LVbmnKdXmB9bVhG4sSM9b1NlHmOoeraekk6JEDR6lUE8qrx
X-Received: by 2002:a1f:3215:: with SMTP id y21mr441918vky.23.1554028502948;
        Sun, 31 Mar 2019 03:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028502; cv=none;
        d=google.com; s=arc-20160816;
        b=DmMUCi0yHb1Kxe8v9/MhqtEY9mbx4wlc3LiwGI7c91po6F32Ck97nAvpeg1MBiMpAz
         VT0htcjRc6dw1LtOxY7gFzxoBz7lgVtMoQ7uo+iXpTqsJSj7vKyg/WsqBaxfmNaYXuqR
         zucL4ZrzGuCoNWlpJYfTCd5Tq1ExUEzLz++/sOJdJNGZum3UuQC6m2cEMSzVgVsWqCsk
         WSQJC4tMVl9SkzE9oqFMy9rOsC5YwEQ26HeUDRViZfhnHxgbxQwI6PPq3n5GSqwtl3Jm
         DSV3tNufBdhcD4doPmIGTmFaXehKoAICqeUt/d08oUg3GiAwDUoIvfLuX6PEyUl8JGBV
         dCaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=14S+s2DDnFBIuYjTfRrVtRPa//8clivF1tyI4rzlcv4=;
        b=sJBoZlqMh/B9/Ly8uxy7JQIhbWzfJUYuunLp4jrp/23hCpKl3eOyp1F2m5YeGX28ND
         X82wSwjSi0yoo4pNmVOq1zsP9A2uYPv/FGNERBhUWGmKOUSUWx25QfeUVtjI4YoQRXtS
         kwUSzDjXVyDbrsgexsjNtKP35+rmoiKdQiodr36zj4I7+V7acobs8uR+xsFSqQzOsv0L
         wq8VBjGZko/fUofCZhJUeEAT6GglgTUHpLu/puqZo61ZlnaNn74Y0/KzFjFJwb3dDhxr
         r+rbiJWXoyWTSCfFxgMgZwULCzau4XgJXHJR246VmmGp0vdZdBKdkHmFM8RmULj6VPmL
         D+bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RmjcnjSE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com. [2607:f8b0:4864:20::536])
        by gmr-mx.google.com with ESMTPS id q191si429665vkh.0.2019.03.31.03.35.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:35:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) client-ip=2607:f8b0:4864:20::536;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RmjcnjSE;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::536 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x536.google.com with SMTP id v12so3304917pgq.1
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:35:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=14S+s2DDnFBIuYjTfRrVtRPa//8clivF1tyI4rzlcv4=;
        b=RmjcnjSEb1eUUi6t2P0ppnCTqBrjFUKKtCCbXIehQsKTvfQECjlX3FxDv4jqabg18y
         ab7K6KWoE5Ge9IF69W+0izD5M7woSms0DCeUUBNee38hvyFT0EziuBqUTHvA8bbZmH0f
         25/jB/k1o/icDN0ITO5hGhJpqOfc4FTNoTlrnzU5glQEOCRtzS42znbM44Yqw7pinfq5
         7AoF7xia4Ko7m6fpY5XNrSVgF+y3g5gEtTI8AIMovTXbpzj4ztAYy9pDlYJJ89BWsOS3
         kU48AosEbSV8WNqWjSISr3sfFDqAO289i/rjRYR53rYoQug5K/oYwE3AIKjzInon4MXx
         qhdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=14S+s2DDnFBIuYjTfRrVtRPa//8clivF1tyI4rzlcv4=;
        b=J2XGXj5PkIoV+3Sjjq+SAzvqxzre6p0MU4SMuM2sizVlu5GYfFxEFoku8U7rj8o60w
         WBg1Bsd9CrVelAzx60tRPrRKvMfGviL/kCXD7HzFNtBFe9qfMVYA1L2FOwLFOfTcgWv9
         xNpltjAla/R3OIs78KYx7xMOYfGYGhB0HawAB+aWXVe15QcK2QqXYoZya7Myzk5fsyuh
         3Bl6pCTyE6ZwcgGgvrtFBHeotE+lCfhyJF9gDHfmOhkCdGq7eoFfPjss8GSedqmOlmiZ
         RAlu8fphZDmRJQHsXWxeNtyuzuUsEBKJeLYTGkNGTXtuRFMwDp+UXyBn75OOC6jMGwyx
         JKOQ==
X-Gm-Message-State: APjAAAV+EnWNA2XV6kFn+a/751xnC1pjrD9xpNE8S2IsinE9+ZTv20jS
	hf9CTW6VB+bWoT6ZaNXdG2H0J05pqLs=
X-Received: by 2002:a65:424b:: with SMTP id d11mr25982663pgq.205.1554028502660;
        Sun, 31 Mar 2019 03:35:02 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id p2sm26749030pfi.73.2019.03.31.03.35.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:35:02 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: comedi: Prefer using the BIT macro
Date: Sun, 31 Mar 2019 16:04:53 +0530
Message-Id: <20190331103453.21603-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
References: <20190331103204.21358-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/comedi/drivers/ni_daq_700.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_daq_700.c b/drivers/staging/comedi/drivers/ni_daq_700.c
index b9e525b9beb9..81fd4c26a16f 100644
--- a/drivers/staging/comedi/drivers/ni_daq_700.c
+++ b/drivers/staging/comedi/drivers/ni_daq_700.c
@@ -239,7 +239,7 @@ static int daq700_auto_attach(struct comedi_device *dev,
 	s->type = COMEDI_SUBD_AI;
 	s->subdev_flags = SDF_READABLE | SDF_GROUND | SDF_DIFF;
 	s->n_chan = 16;
-	s->maxdata = (1 << 12) - 1;
+	s->maxdata = BIT(12) - 1;
 	s->range_table = &range_daq700_ai;
 	s->insn_read = daq700_ai_rinsn;
 	daq700_ai_config(dev, s);
-- 
2.17.1


