X-GM-THRID: 6670882575741878272
X-Received: by 2002:a62:41dc:: with SMTP id g89mr4067974pfd.109.1553185883487;
        Thu, 21 Mar 2019 09:31:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:82c7:: with SMTP id f7ls2512052pfn.6.gmail; Thu, 21 Mar
 2019 09:31:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxbqCSVgz31MswIhOlUu9zyDCEgSJcBodSP3V1ay3yO564cTF+lU4y8twdnu7Zua67Zprq8
X-Received: by 2002:a63:c149:: with SMTP id p9mr4042420pgi.362.1553185882537;
        Thu, 21 Mar 2019 09:31:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553185882; cv=none;
        d=google.com; s=arc-20160816;
        b=sSI+EG0BLQQFcDua2CfDFMfOyCTvzDrqwYATY04gf65Yhj971VJGVd/g51kU2AdXml
         E4wBw3qTChMc189Gxsh6CXRWhmgKs72cXFL19NV6rzKbq1TwTHkjb4S4XOO1I8U1LjIJ
         AVdQIwBiC/evcEw8KH8GEJGWztpo0JV/yxGwnvj8IrLghrhu4oH5wkBf+eK2ICrLv07N
         9ds8+xKYTgBKI5cQiKLyjMxXmaEBZueT9ZoE8qkSC8aS7UrG169s/us3d5Q1dEkpFL08
         Tt37cwRXAeIz/rjpJh5dbhod18Sj6VdZS9uWvq3ObcAAT273Us3kBmlZvUfNTpRpmiKh
         685g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=z7lGNfisZnYsucrK8ejbwgQYMORW7HnN1RhP0b3o7Kg=;
        b=BKf3h0eXVYlYUwxUKkx72qldGcmpxSBGLbfDeeGVy/wn6Py/1yrJX6VbrMOpfB1t46
         ghNhx6xuqkQJ4bJqTmd8nOKg95AzvwAHHfXsKx2HOwGqrLtH/OUdQrkyCurtyd8mN+MG
         m6dqRcXbAU9J3VKhFtX08pGESRk+Dd938tsLBCxiNv1Sl0alJwNy5SiIZ8jTgnjXwrx7
         7J2USE9H3sYnFbrUkFVqXq8jsxHjXqpYtV9ddr1z3ve1xi9P80vMvqe6hdE8MVajgCsP
         hr2o9lKk2taECpx9U7pXIJVWNIC3L+BvXfhFj4kjMssRPXGjYHMj5WN2xKy8cc69dfTh
         cNUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GMS4cBnq;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id a6si394512pfn.3.2019.03.21.09.31.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 09:31:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GMS4cBnq;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id h8so4551041pgp.6
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 09:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=z7lGNfisZnYsucrK8ejbwgQYMORW7HnN1RhP0b3o7Kg=;
        b=GMS4cBnqbD7Nv9lqAifj30T8EjTFqUm6hEHgaKYLE5ktNQTKCj9GYzuDUas1+r2f7P
         z2dHV53rZZL62FnAuGYlyhpvUAdcNmyfrNolsPOtf0zb172OfVkByBeYBQpAZZiVGoGP
         BfTWffhHNt7xmnWmN/x2f/9LYbf8l6ojf4CF+ZBm2Osc2NkbPhkgMga+6G+fRcpdOyQA
         bVGTIs9zhHx8wutZgfkmHRQQDj4bCXc47ENfrwQ2Z9qwGoMsyH9GMcEUY0cAYzpvURd2
         RYxqNskHlCP29ktlABDlACaRp6MI1dKzTiDzZD+W42z9RQVG6ZyiR85MxJWg6MVeUz3C
         QvtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=z7lGNfisZnYsucrK8ejbwgQYMORW7HnN1RhP0b3o7Kg=;
        b=iL4qNjmTeN9lsfibTkIbE4eiIBNzDdCa7mwNK0WrmNAGa2OxzrRhc9xTUOtTBpv9zZ
         jFWzEGgNRjHrrmYETWrN+oFfZkahSR7xBoYizZWYWLCFwcs+PBY2T4A5uGGh39bR+1Np
         pD/OvCrohUUkNDEGNfx5/sdLOiwOTauARgcSUsfo69jZzH0OnwihaAB3eLoI5K7lsF+v
         hliWU997d0SeCE1RguLfQf+S/NaPIeeb946Q1tF+F7ypcqS9qBFhT1nW89lNCXy8/urj
         M3oyT3gU7b4K+G7Hhpl0PyXvt4GssGhwqTc7YlYn4/CdXg4mOEO1N10I+09LZ/wK+rQk
         SCGw==
X-Gm-Message-State: APjAAAVq2eVhKf7kUid4vVzeQy2EEGr9+9Yg6B/elcItV6z+O9X42ACl
	geh2e17+c8eVw8l5oIIQKVE=
X-Received: by 2002:a62:3047:: with SMTP id w68mr4169532pfw.17.1553185882239;
        Thu, 21 Mar 2019 09:31:22 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.163.0])
        by smtp.googlemail.com with ESMTPSA id k83sm16474509pfj.178.2019.03.21.09.31.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 09:31:21 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: sdio.c: Remove unncessary paranthesis.
Date: Thu, 21 Mar 2019 22:01:08 +0530
Message-Id: <20190321163108.3114-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1

Challenge suggested by coccinelle.
Remove unnecessary parathesis around the right hand of
assignment using the below script.

@@
binary operator op = {==,!=,&&,||,>=,<=,&,|};
expression l, r, t;
@@

(
l = (r op t)
|
l =
-(
r
-)
)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/greybus/sdio.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/greybus/sdio.c b/drivers/staging/greybus/sdio.c
index 38e85033fc4b..a097a8916b3b 100644
--- a/drivers/staging/greybus/sdio.c
+++ b/drivers/staging/greybus/sdio.c
@@ -275,7 +275,7 @@ static int _gb_sdio_send(struct gb_sdio_host *host, struct mmc_data *data,
 		return -ENOMEM;
 
 	request = operation->request->payload;
-	request->data_flags = (data->flags >> 8);
+	request->data_flags = data->flags >> 8;
 	request->data_blocks = cpu_to_le16(nblocks);
 	request->data_blksz = cpu_to_le16(data->blksz);
 
@@ -329,7 +329,7 @@ static int _gb_sdio_recv(struct gb_sdio_host *host, struct mmc_data *data,
 		return -ENOMEM;
 
 	request = operation->request->payload;
-	request->data_flags = (data->flags >> 8);
+	request->data_flags = data->flags >> 8;
 	request->data_blocks = cpu_to_le16(nblocks);
 	request->data_blksz = cpu_to_le16(data->blksz);
 
@@ -602,9 +602,9 @@ static void gb_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
 		vdd = 1 << (ios->vdd - GB_SDIO_VDD_SHIFT);
 	request.vdd = cpu_to_le32(vdd);
 
-	request.bus_mode = (ios->bus_mode == MMC_BUSMODE_OPENDRAIN ?
+	request.bus_mode = ios->bus_mode == MMC_BUSMODE_OPENDRAIN ?
 			    GB_SDIO_BUSMODE_OPENDRAIN :
-			    GB_SDIO_BUSMODE_PUSHPULL);
+			    GB_SDIO_BUSMODE_PUSHPULL;
 
 	switch (ios->power_mode) {
 	case MMC_POWER_OFF:
-- 
2.17.1


