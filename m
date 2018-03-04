X-GM-THRID: 6529117174550757376
X-Received: by 10.176.25.239 with SMTP id r47mr5570584uai.87.1520178564811;
        Sun, 04 Mar 2018 07:49:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.96.8 with SMTP id u8ls7674203vkb.0.gmail; Sun, 04 Mar 2018
 07:49:24 -0800 (PST)
X-Google-Smtp-Source: AG47ELvIwpU75sz/q2FROwPxOl8yanRM+sCWUl7h09jPoQf+SV2+sK5Q53ikw2FT6Pe5gR3uomD5
X-Received: by 10.31.47.65 with SMTP id v62mr5439346vkv.95.1520178564236;
        Sun, 04 Mar 2018 07:49:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520178564; cv=none;
        d=google.com; s=arc-20160816;
        b=TuIvkF6gLV/7XGFtpItJKUXetTYUaFydCnN+lTM/jD/dQljr+iTjScGZZ79MB2ggAJ
         NtQYFI3cFBYKQszdSxX/xGMuvSajyfKjaunnKmtL29Ztp3RVRi5+4w1DdMRYmjg3736p
         3z+sZcU0vWJQ7D+SfIO99xaAUTblAIwWuPr6/mcJ2sMlF0io4fjiyZLQHkxYEHNMs1Qq
         x0lmFgdSoLb+VEdrqbUlgv6e2mZgoNwZeWL446F6d58sinNbFu/y9vTXSH8PZngc6SnW
         OILyS/QzeTuvURpLGhCIC2nDuXtm1JHHlSDk7uRGQ8e4+kcstS33kRqQ08yIjmyAeSK4
         32sQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=QJMVUzWQK18zAAZHluxGWTzLfK5hqG49y69fBARFg7U=;
        b=b4RtjPzYJpU9EjyH2JH9pxTdWT7t8voDwVYvVJuz17ZmT52GKrJtQEF5uHg7CTEQos
         +LM71Z0I/EWxq5Fn+5e/EDa5S2nrpvsqycEgfMLOBcYToKKuFjEFjWoNoSX5U/hs6cz2
         BSqNYgap2/oZzWhlC7z3WoJ6M53zlUUnDrEKE81Vcw5RssROVzvbdfue5WkA4oZBKuz2
         9fnmG5qjp2cn+bMTfXDRfQBk9PyJ8DK9u7XlkGOLV96FuJESe3ZlvH1pB8sFKVVxai/d
         M2UFjEDPXUqdJCxiYBIv4qIeyKyvlPUDTYiJdKr2fagbVcSYb0jeG+0GxNlpq1Rza7cF
         ZhyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gwo8SMAy;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pl0-x244.google.com (mail-pl0-x244.google.com. [2607:f8b0:400e:c01::244])
        by gmr-mx.google.com with ESMTPS id e1si762811uam.1.2018.03.04.07.49.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 07:49:24 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) client-ip=2607:f8b0:400e:c01::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Gwo8SMAy;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c01::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl0-x244.google.com with SMTP id 9-v6so2805904ple.11
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 07:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=QJMVUzWQK18zAAZHluxGWTzLfK5hqG49y69fBARFg7U=;
        b=Gwo8SMAyOeHB5BaZsjdGXoVciC+FIe1wbA5A4yU/9si+pP1mUvZ+lmCpHIC8Iod1xb
         EzmAfm6FOplQZuYzLSvOW7ktcF0RbqXY3xjdmrjgxCEmcuPx6B1d0OaZW/2vIMJzI461
         IyvtvuRwcpM99UIKqe0FV1HWb/fQmlCv/r+VcUZ5w8kfTyVd73svzx1SkKPKhTLSn5uH
         ZzA5wjMdyeywqqsRk1wXXO476JW5Pk3WdHpdw+mdZxGO/N+QWMLWvn5IUF9ac/HViq1c
         lbzS3JRcN6d3qnNg5nWIrDi1ct9HrzCt3v/nHiMtr73mUUK5uHq0Yx2wgZLK4fioLcRD
         HBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=QJMVUzWQK18zAAZHluxGWTzLfK5hqG49y69fBARFg7U=;
        b=ODxmLxFpjkzx+uxNOttXgQ+yDpM9VBNUPwAXge/0ONreRQxVaOWtAUDum/cuz0sBNo
         +716ptKT77AuW5/afzESDRddwgCV//PlA+Qa++XBZ+uSB/+6SCKq6YnfQkLO8ziFYnho
         680IDwUg2uB9IC+UtbgtVUt0Yo8/c4S6q6VPc2kLl5lKgZZ2MH3wtvJdvDJyrsYnM+21
         MJOGHPodo6JmnJGoBsIN1qaCuECKeG0FXNTBU+J6SvEopv455javAT+MokbuFywG+J3b
         IkqcmzD+1gE+UrEBuBjcuP420ms7hB0i51urq1EmDWHgSjQp0qRORusA88/9FEo4jxJN
         AWHw==
X-Gm-Message-State: APf1xPDe73k5lE5PKXuwFv8LMda+7/SwQdL3diWlR4Xju1lc2kaJPiJz
	h0hmCq29T7EHFVCfzLuJdP4=
X-Received: by 2002:a17:902:2843:: with SMTP id e61-v6mr10550803plb.437.1520178563342;
        Sun, 04 Mar 2018 07:49:23 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567.iiit.ac.in ([14.139.82.6])
        by smtp.googlemail.com with ESMTPSA id o82sm24847163pfj.163.2018.03.04.07.49.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 07:49:22 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: alan@linux.intel.com
Cc: sakari.ailus@linux.intel.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	linux-media@vger.kernel.org,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Arushi Singhal <arushisinghal19971997@gmail.com>
Subject: [PATCH 2/3] staging: media: Replace "cant" with "can't"
Date: Sun,  4 Mar 2018 21:18:26 +0530
Message-Id: <1520178507-25141-3-git-send-email-arushisinghal19971997@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>
References: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>

Replace "cant" with "can't".
"cant" is not same as "Can not" or "Can't".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
index bffe215..634d38c 100644
--- a/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
+++ b/drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c
@@ -444,7 +444,7 @@ static int vpfe_register_entities(struct vpfe_device *vpfe_dev)
 	for (i = 0; i < vpfe_dev->num_ext_subdevs; i++)
 		/*
 		 * if entity has no pads (ex: amplifier),
-		 * cant establish link
+		 * can't establish link
 		 */
 		if (vpfe_dev->sd[i]->entity.num_pads) {
 			ret = media_create_pad_link(&vpfe_dev->sd[i]->entity,
-- 
2.7.4


