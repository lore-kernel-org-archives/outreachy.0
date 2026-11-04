Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.128.49
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1793765571;
	b=CZXykksO/k1dO8eBBMdneb7mwnBmPaqVs5m3NZWhnSwAZv9WyVeuCt1HZLJ1VBU4aZ6s
	 DbW6DgaLDiqY4LWjdk8B/U4xIoopvfMTO3dYQhyxfjxhYvq2yBVi6a17fdBD1MwHX+TEl
	 8Qq1SjCI0HPK/1/6ofPuB6LNb9RQ3iqud/JJYQEwhLo9cWVYu0YBT2EXzLvmTyIW/cFTV
	 xlwyB0Wpbe3wKmsXGFs3f0WgANMy7V4ZNwaVyWHd3J/bgsUPrnJ+jO+3wxBuwTTixJTE8
	 dhv8GA0rk61lfRyN66xZsTxoDAp4LTnacz6r0WqhK8JVxKhobuK7HAIdFgfugtnXl0Q==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1793765571;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Gm-Gg:X-Received:Received:From:To:Cc:Subject:
	 Date:Message-ID:X-Mailer:MIME-Version:Content-Transfer-Encoding;
	bh=ETxWwH+3XKdmGy3va4VsbBXcOFXJDAUa18QQihknvJY=;
	b=LxzL4Zq5uiG9KuEIGBBpTzypLnmxEO+4T3fVEVpkh1nFYfg2w49B++Ewq7OO8o+TfYlo
	 r7QUDdAYgheABmgn6KacK1PNGfV2kOZmSQqsqp6vu/Y+THqs0IzlCblD9uJK9rh4IJDMc
	 I74qqeTloUtCz8ifrm+sxE8J9TMknrGrohfbilPBfnAfc24wN9u6o+YvFHOb0GySsTbrh
	 OMBZ8dsHWnkK8Niym+rdKerG05KI5y1m7rocI9URNmXuVKaggAXd8KUzlXcZsOPCXHet6
	 jUwns/+cEtQaFmm9HUixJ8sWacBwaYhWkaDG60sSZMOEHAcDPPHrShaFrXRMyvXwAQg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=gmail.com;
	spf=pass smtp.mailfrom=gmail.com;
	dkim=pass header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rnwDgGOj;
	arc=none smtp.remote-ip=209.85.128.49
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6B7606A331
	for <outreachy@lists.linux.dev>; Wed,  4 Nov 2026 04:12:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 1E6B7606A331
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rnwDgGOj
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4a60f9474c4so1718835e9.0
        for <outreachy@lists.linux.dev>; Tue, 03 Nov 2026 20:12:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793765569; x=1794370369; darn=lists.linux.dev;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=ETxWwH+3XKdmGy3va4VsbBXcOFXJDAUa18QQihknvJY=;
        b=rnwDgGOjRSiFhw83B7foxlSgQEWgu0iExnSx9WeExadRFOcpRloAf5cIei4xolmrhr
         O6MLNwWDk15ot/rtCaan0/4FQ+F/tEumfTkC9l+pfZsQhbi6HEMLx3lahNgYzBTojrQW
         P50hs0yX/bOvVRnmf0n9jPNZuk/QDduoMuTNBQ1TQNyS5aFmyjKXhIXYDKACgTsVfjDQ
         SHGzD4IoTFoG+5K6EudDNOiiwke84vcyMpRf9+YAXWA+KYSKjJs+4ZHVR31tB7Mty6nU
         Zybp1ojn/+b5y707lSETyDnhpw/MEpKZc5YqrVElwbpAHngJoSkrIq9knufwXlubT9Qt
         W2jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793765569; x=1794370369;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=ETxWwH+3XKdmGy3va4VsbBXcOFXJDAUa18QQihknvJY=;
        b=GMDELilvMO6Wg3d2mXGd2rn9ZKEVqQtw2jyaR1bdqTgrHMqFbiZxEDgCCokoDkzBau
         YpzGVpx6YM6pwTEFFU9V3C29tmj54TSZFDQUgzkXtLYNM5CyBdtBiOioqisFk+Su6zC5
         SJqTMma8PZd57gKEgBu8dAeZSVKTixKbFD7K42mCr50ZJWgE9LOjh9vSnwNxWknjHp21
         GOSaKUysJa/1KkrB2NVYWqgYVoS6n1qX51tc3BXrxzkC9E/z3Ej4lfcetGpLwQVd866Q
         JvW5b5bAsK+PhhnY/vcDoOqNXRgVJsQL8CCNp5/YvK5OEqdnhH33F5n4bXLLrrU27F9X
         +35w==
X-Gm-Message-State: APuU4Z8a6lypBWofLYPepyQ1SplylfFOx/rtxX1o+e7d7BTTmmoXjGW/
	0icWsCbhxSB4Ms8x5aYLfow3qDJHayFa2c6LYpCTj1mAkjMv9jrZXl+f
X-Gm-Gg: AYBFou0cXiOUk6cD9CSk4FHHBxyb078c/W60qllIVLGlTVSy4yN4zoBzP1y702Bb6KW
	fnEL/2CBpbqxMsp2OJOmFHwP76AXwdgEB9S9if6sD1sZbDgcoY6/I4IyjhvC8Jm7V5YVIOO/oUs
	38Ij/86Pa+HQ/bPfCEjoSHaTzmYGNGISOku6iftlLGJm3chj82lJ78YODNeGwIx88pRYMmqpOlb
	t8QowoJ5RJ/+upqcQh1Bo4m1cbwpMQhxFgygOBSSuzMomkRO/5lbCsL4TR5L/riKZOMTwSZ4JlK
	6iDyutP4pKqZwkEdy5J/LOKsBERDQBozZvyctO/rMWv6zebQFGx4UA5GWHktc2HWLAPA4wRVbav
	tRXD0U7q+iVfHJ3Fm1bWZ5BDbNq0ZjkVCMTGs3EvdNstjto6K6wxqBxKWlfhRa1b0/A6BCjK5ye
	itcGU21n2VDURfCMe7ZK6KGi5xmST3jyxjxmQhdjWQ/TjMPQo8bpcwEP/9FfYtIZ0AXtBDiRNJC
	vNkMLbzH01DXhaFFO3bjrrygFerJbeqgNjtAvvFYMXJXlI8Fcqzzf68ufmM37wbNOBCwZDBdHH2
	HqG33EHto9eGiPnQihWeUNAnjICb5jsaU4w/s9ViaTDRQYDtTKxYyMabsPU1CniU1tiMsRUoWH0
	mIM9MLa2rcm2+Cxb1gb3E4g9GuE3w/EK8K36jiamQ2RuKaUKZdUNhsAw17QDo1431VL3C49BmCM
	L5NIfO+s1FzSju
X-Received: by 2002:a05:600c:46d1:b0:4a1:df52:3e36 with SMTP id 5b1f17b1804b1-4ac17b2cdc2mr344273165e9.27.1793765569288;
        Tue, 03 Nov 2026 20:12:49 -0800 (PST)
Received: from maria-VMware-Virtual-Platform ([154.80.94.109])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b437864e3fsm21212225e9.0.2026.11.03.20.12.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 20:12:48 -0800 (PST)
From: Maria Sheikh <mariasheikh812@gmail.com>
To: outreachy@lists.linux.dev,
	nuno.sa@analog.com,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	dlechner@baylibre.com,
	andy@kernel.org,
	gregkh@linuxfoundation.org,
	linux@analog.com,
	linux-iio@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: Maria Sheikh <mariasheikh812@gmail.com>
Subject: [PATCH] staging: iio: addac: adt7316: return 0 in _adt7316_store_enabled
Date: Wed,  4 Nov 2026 09:10:45 +0500
Message-ID: <20261104041237.7978-1-mariasheikh812@gmail.com>
X-Mailer: git-send-email 2.53.0
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

_adt7316_store_enabled() writes the config register and returns -EIO if
the write fails. When execution reaches the final "return ret;", the
write has succeeded, so ret is always 0. Return 0 directly to make the
success path obvious.

Found with cppcheck (identicalConditionAfterEarlyExit). All callers
either check for a negative return value or pass it through, so
behavior does not change.

Compile-tested with W=1. The disassembly of adt7316.o is identical
before and after this change.

Signed-off-by: Maria Sheikh <mariasheikh812@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 20f6052cc7fb..4cb03e7808ab 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -236,7 +236,7 @@ static ssize_t _adt7316_store_enabled(struct adt7316_chip_info *chip,
 
 	chip->config1 = config1;
 
-	return ret;
+	return 0;
 }
 
 static ssize_t adt7316_store_enabled(struct device *dev,
-- 
2.53.0

