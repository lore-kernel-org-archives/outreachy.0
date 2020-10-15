X-GM-THRID: 6883926801253400576
X-Received: by 2002:a05:6830:20d1:: with SMTP id z17mr8693otq.26.1602789490865;
        Thu, 15 Oct 2020 12:18:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:4198:: with SMTP id 24ls17692oiy.10.gmail; Thu, 15 Oct
 2020 12:18:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCquCqs7E+tmU5kFItYXkfjkImNNull28vqwGB89luVbXaoKdFLOO4360bfmWXm/jrhphp
X-Received: by 2002:aca:a810:: with SMTP id r16mr3819oie.114.1602789489737;
        Thu, 15 Oct 2020 12:18:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602789489; cv=none;
        d=google.com; s=arc-20160816;
        b=Yi4kS6sioVl57c8HeMZ0DwyfUqq3OxwBnWCBibDfbcVtMHgBmYcX1HgBAWXS2/Fqrx
         sLfRFPmSlaSSGZ3ZsZe1och3bkOi5vDYsLDHqLNqv9rWNXws7cVeq/c9elLxasRojTSI
         d4iHsO4lEdWWFfecefZYX22O7w+ckzVpXLitWdEDeDZuFaN6m7uvHajQTvuUZKjzP9/z
         JFHZBCNtRZXCUItCCC2D9XqjYPQPVpDDM8HAf4ZlNTr5oO5TULqS2RSuxbdzaaJqrk1I
         BRq0Yq0jg/vXe1fHLTub2jfoSAkcTCMKujOKzkC9E3DW4JJaiG1hTLoGXrGgFfLmwDHb
         yv5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1HOjMkjnUp3WJQdLidNdtyarl+Q300E40izM90K45Ko=;
        b=Rj/IrCfcmTAwxOm7a/ujnvjHZ/WU64Ph2JCqoWND+ts+ydsJmMsdqfgVVvnOiLzp/r
         EEHNMfbJ9ySVA5OQp+cT1p9cEzLrsWHDhyqfkS8CWC1VPhDJUBEQfDZzKry0UrjjZPGv
         zwnWkGa/aO3MU5g0CgiUV1AQnCjpzLDcGs3CnR58PFV0Yul0a9iBNLci/7KM5ooQ6Ga0
         Wrw46h9q8ot8mTVIne2K1fcDswz7I2o7w5MgqQr50rEVVLxvB2sx3vQQ6DF6gDDPU2tG
         W1IA0xf7A2Z0QtbIj6I6gygW2cNVYWBkem7oAfWby7+gdvkjBTNxfBqMftyCPm63jToj
         67AA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KEtDn9c1;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id w26si6821oih.1.2020.10.15.12.18.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Oct 2020 12:18:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KEtDn9c1;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id hk7so172107pjb.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2020 12:18:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1HOjMkjnUp3WJQdLidNdtyarl+Q300E40izM90K45Ko=;
        b=KEtDn9c13W5myImo48KMHBTPUvzz8QGqrmgb7Qe4bGx5k+ip9JkZ83c12NyX6TcSug
         ZwzpT95XUNnR/2WN2BJYanR9rZeCdW7mkI84U1tKCpJD2o7u2qa6GRCZkTg3LtK5EAjc
         ulWdLcuhwhFdOdGrs1Lxy9jklmLTglFIaubCU2FWZonFOPlwQdcBVdcJxVIaW55WxzNb
         kJyJN8bjlUDtH9UdT1icHljJDkqx/QRyMRHTHmkRt2tPJXvcxstvrIxApFhN2JT+n3zw
         u5CON5YeRUMJL+S7SpqBtg6xmKO9RUxZXgboyp+IiCG13YRm9jXThhCYDHcaECX2n0t8
         O+ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1HOjMkjnUp3WJQdLidNdtyarl+Q300E40izM90K45Ko=;
        b=EpA8GXCxPdjy4bG5fdQ75jYyuAuj2E+hg94T3/iTJ3TaH/raSrs8WiW/Pi8EAsn1+7
         ut/T52aQDPRPJdN9cUsFd2bcOcTUj/oAbi6vpZwvl9Rh5yP9lfS8bjXDbLHXgZs1LxOQ
         GcvHFg+HxxZNo1eR+gHoevI24KErwJuNrCEkt1o39HvgrZu9Q3LZ0XNGboo81afElLoA
         hkc5jyMT9H30HbNlkEaIYyn3yFae8FDUfPIThRSieTt1lntrqIELrGZGZ5PNqPqV1e1i
         fjiXJE9nFpYr8OF+oX2PXgU1JzXixpv7GNEOOF6oLx1KEmKLtEQWlwACMcg0BxHuPpUg
         FIhw==
X-Gm-Message-State: AOAM531m+uspdIVgmnUYzefYHPTrWiR2A3LNoowZdJ/0hlN5QBGXlTl3
	A+9sJHGokBavLM7dldS1dffDNOuHY+I=
X-Received: by 2002:a17:90a:f211:: with SMTP id bs17mr175815pjb.153.1602789489236;
        Thu, 15 Oct 2020 12:18:09 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.198.246])
        by smtp.gmail.com with ESMTPSA id 8sm67985pge.7.2020.10.15.12.18.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 12:18:08 -0700 (PDT)
Date: Fri, 16 Oct 2020 00:48:05 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, hsweeten@visionengravers.com,
	abbotti@mev.co.uk
Subject: [Outreachy][PATCH 3/3] staging: comedi: Replace snprintf() with
 scnprintf()
Message-ID: <233169195737b5f3afd429d8b6572f3b531168cb.1602767114.git.sylphrenadin@gmail.com>
References: <cover.1602767114.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1602767114.git.sylphrenadin@gmail.com>

The show() methods should return the number of bytes printed into the
buffer which is the return value of scnprintf(). snprintf() returns the
potential number of bytes that could be written which may be greater
than the actual length to be written.

Replace snprintf() with the safer scnprintf() in comedi_fops.c.

Issue found with Coccinelle.

Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
---
 drivers/staging/comedi/comedi_fops.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/comedi_fops.c b/drivers/staging/comedi/comedi_fops.c
index d99231c737fb..c9ab36792f00 100644
--- a/drivers/staging/comedi/comedi_fops.c
+++ b/drivers/staging/comedi/comedi_fops.c
@@ -396,7 +396,7 @@ static ssize_t max_read_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return scnprintf(buf, PAGE_SIZE, "%u\n", size);
 }
 
 static ssize_t max_read_buffer_kb_store(struct device *csdev,
@@ -452,7 +452,7 @@ static ssize_t read_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return scnprintf(buf, PAGE_SIZE, "%u\n", size);
 }
 
 static ssize_t read_buffer_kb_store(struct device *csdev,
@@ -509,7 +509,7 @@ static ssize_t max_write_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return scnprintf(buf, PAGE_SIZE, "%u\n", size);
 }
 
 static ssize_t max_write_buffer_kb_store(struct device *csdev,
@@ -565,7 +565,7 @@ static ssize_t write_buffer_kb_show(struct device *csdev,
 	mutex_unlock(&dev->mutex);
 
 	comedi_dev_put(dev);
-	return snprintf(buf, PAGE_SIZE, "%u\n", size);
+	return scnprintf(buf, PAGE_SIZE, "%u\n", size);
 }
 
 static ssize_t write_buffer_kb_store(struct device *csdev,
-- 
2.25.1


