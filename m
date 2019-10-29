X-GM-THRID: 6753034664415330304
X-Received: by 2002:a5e:820a:: with SMTP id l10mr1119963iom.48.1572313415696;
        Mon, 28 Oct 2019 18:43:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:9719:: with SMTP id h25ls3028462iol.16.gmail; Mon, 28
 Oct 2019 18:43:34 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw3TVjwYY3vDglib6+YsdVjMnuQUOBdvYG8MmLeHz1gzdNmDsyY5YtdnFd5QhZc8BYrefVm
X-Received: by 2002:a6b:fa08:: with SMTP id p8mr1115240ioh.84.1572313414434;
        Mon, 28 Oct 2019 18:43:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572313414; cv=none;
        d=google.com; s=arc-20160816;
        b=JJH8Z56XumkiNBjJ81qYUxOwrA5RIPXQbu4958HM2LGeaXqG+FV/5gaKfHnsfrBo1g
         DrQykVOl2AlEGODGYXDFtqz4+TokohQTnn5/pUPNHwCu8cgQNqSsF+e/dLSLynbfEP++
         axHSbv5CKo+TztSQUAQIeZ0rlYPg70eYjmpnc0nfGd7jg335AsR/OpApXJwK+Vu6YN2L
         O+Vm6YDyfHODkNh75YZpEE6mCavhMmS5eqTT1tN9Nu7FlYzFA5pX/MEuBUSulbIb+4IS
         f8DHcIR9tbazeZIaUW/w5BXgBmIoeHvS3z4+Mky1le3iY2hovsYDl9T/C4KAr3VH4RT5
         VKzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p2YVxbiyZYmfoNFO+GQXGr1xr8s02Ylhj+EKSio98t0=;
        b=KeamwdefqRBTG+sXB9oqdgqnghF1pKqbgopLyju2T61lK/tzRUH8wr8k124vkfCANJ
         0LOJch4NP3l78c0voMvQySFFFxsUDpdnoEv+R+Uodfqp+HyoVGGpZw85XLKDruNcRMgv
         +tyMaB3oGQZpiNmnX6dnNJkdquxWbBkl+A4mWqkPGOo/usnspNTab8U6l15aYrfVYHnS
         CRGyd1TuBCtfgkftfMMVNgBKKrOVv2zF6M9jM/HzxTpb8Zoz753LEllB91NYqRDxZbnz
         PUWHqjnTvP67XepgNFFi2eHEP4LZjpAuk2/1CXaSlvKhktJqD8ID7UOvslF8QSriTVU/
         6Oog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYAEi8NA;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id y205si776567iof.2.2019.10.28.18.43.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 18:43:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kYAEi8NA;
       spf=pass (google.com: domain of gabrielabittencourt00@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=gabrielabittencourt00@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id l15so11167981qtr.10
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Oct 2019 18:43:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=p2YVxbiyZYmfoNFO+GQXGr1xr8s02Ylhj+EKSio98t0=;
        b=kYAEi8NAw7/+sabPybO+4uDVIy7ER+uGxhi6tPjHvuBNyJsXYBC4QKpdhzJj+xTL/M
         9WH6DSidQ2eVrNog3EuOJhfSA5F2a/vyc54x0wOeAEKY/BV2OEbZoxYw/Gs/GI3EPj1Q
         uT4o3uD4Qi6Q8awdskOsbfiiGH/mrVCb8Pnq9+fx97F2LDgo4/l86iu4TLMX79WZ3jPZ
         xhakislTgvvrytbpj1Z4ADwj8ikZ90NPqpSiUSy6GqiEUkS+CR+prXQ9UPpbflbIZ9Bk
         UGP1R1jm+7nnWVAMa46W1oxpO7ziXrRY3L8wUwHUmXcQCN8vRzsQ3I5NA7GzPKZSaJII
         z1zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=p2YVxbiyZYmfoNFO+GQXGr1xr8s02Ylhj+EKSio98t0=;
        b=ecFCQ6BwGK6NCMjQ/NNTSjd9+diC3NSAwytN5NmGvLf5rHiu1KBub35E7ev7VOQSmh
         h2vW3mCPZj5sQ1kcflOOVRjpayP/os8eVW8JOKaKlV0Bn19BW6OkcuqGCPD+3KgVhIzX
         +zWIe68RhW6ejM2hMVHoNZmcTQtTpEA1kHQg8wrp49wOyK+zDzac/MokDiXoDPnNDLE6
         +VJy+iHpZX88ZVNQGc566KWv3+Xc0TFnPU7F40GSP7osJIb4xUMAgYEVzkBbdSUiEQ+r
         5HQtvwIvXYSRwMFmv6PBcuZ+Jcymuf9LZAjK7sq09z/hEgdxSfLjmCYN8t5ZfNCUAzaq
         o1XQ==
X-Gm-Message-State: APjAAAX8a3oHm329Ndrt43t1wTNLnFljp9A2H9P3B9novBVTI6HKQTSi
	09t2zqF6upnJ4IYET+nDxyVLVIQa7+L8/A==
X-Received: by 2002:ac8:8a1:: with SMTP id v30mr1779396qth.44.1572313413612;
        Mon, 28 Oct 2019 18:43:33 -0700 (PDT)
Return-Path: <gabrielabittencourt00@gmail.com>
Received: from localhost.localdomain ([2804:14c:483:ade:87ad:69fb:5b32:cf88])
        by smtp.gmail.com with ESMTPSA id 197sm6698394qkh.80.2019.10.28.18.43.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 18:43:33 -0700 (PDT)
From: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com,
	devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	lkcamp@lists.libreplanetbr.org
Cc: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Subject: [PATCH 3/5] staging: rts5208: Eliminate the use of Camel Case in file xd.c
Date: Mon, 28 Oct 2019 22:43:14 -0300
Message-Id: <20191029014316.6452-4-gabrielabittencourt00@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
References: <20191029014316.6452-1-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Cleans up checks of "Avoid CamelCase" in file xd.c

Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
---
 drivers/staging/rts5208/xd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index f3dc96a4c59d..0f369935fb6c 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -630,13 +630,13 @@ static int reset_xd(struct rtsx_chip *chip)
 			xd_card->zone_cnt = 32;
 			xd_card->capacity = 1024000;
 			break;
-		case xD_1G_X8_512:
+		case XD_1G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 64;
 			xd_card->capacity = 2048000;
 			break;
-		case xD_2G_X8_512:
+		case XD_2G_X8_512:
 			XD_PAGE_512(xd_card);
 			xd_card->addr_cycle = 4;
 			xd_card->zone_cnt = 128;
@@ -669,10 +669,10 @@ static int reset_xd(struct rtsx_chip *chip)
 		return STATUS_FAIL;
 	}
 
-	retval = xd_read_id(chip, READ_xD_ID, id_buf, 4);
+	retval = xd_read_id(chip, READ_XD_ID, id_buf, 4);
 	if (retval != STATUS_SUCCESS)
 		return STATUS_FAIL;
-	dev_dbg(rtsx_dev(chip), "READ_xD_ID: 0x%x 0x%x 0x%x 0x%x\n",
+	dev_dbg(rtsx_dev(chip), "READ_XD_ID: 0x%x 0x%x 0x%x 0x%x\n",
 		id_buf[0], id_buf[1], id_buf[2], id_buf[3]);
 	if (id_buf[2] != XD_ID_CODE)
 		return STATUS_FAIL;
-- 
2.20.1


