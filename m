X-GM-THRID: 6886889197397868544
X-Received: by 2002:a1c:6643:: with SMTP id a64mr3772971wmc.142.1603478844586;
        Fri, 23 Oct 2020 11:47:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls3244624wrc.1.gmail; Fri, 23 Oct
 2020 11:47:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyZtvGXNYj/TZZErEqcUO+SNdcgMtklQc56uV/KVh7sJWvesoluRefu7XQyUiC5Z+jTbh4+
X-Received: by 2002:adf:a557:: with SMTP id j23mr4237853wrb.95.1603478842493;
        Fri, 23 Oct 2020 11:47:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603478842; cv=none;
        d=google.com; s=arc-20160816;
        b=g5bg7BundvSaJGaCqBMfJ9n1fFx8DvC5u6zimkjWmI94gOzX2SYoMsNcFXyNQp1cHG
         vgyU0T6YCiIguc+PGbmFZjYeO2rzzhZaB1SiHHmlyNfPbGFrq7Ne37wggP4sv7ZN6cPE
         Q4Pk3lecFNRSnb9kZAiZJEL2ESe00ZB7dnG7xgZab7LTuHjVipjl57pOcxaiAeMIO9QY
         jrIasKfEHHHp/5UPM3+8G+5Piz5ZZaPZr+8RPmjgmT/OQi6HHqiZrHiZwg8TsfVwBMAV
         NSSiwxrQTKWSPBgGXCf/7Z+SSslzD55JrrppWnfo/I43ERmU9QKznSK7SjCeQO+RrS4l
         8vMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:date:cc:to:from
         :subject:message-id:dkim-signature;
        bh=u/tW7eVCfHGY9hMZbenszHfGZCctcOjNQMSRv2EDhcU=;
        b=aV58dZgRuobH/OqG7Ag2QPCT8Jt9zGzMI6FNWW/39jXAfI8uxlPrgI9lQuw3BCVNaK
         btNxaf4MZHNSBBFrPSn2Y+q9+rYllxetxVj4JsuReLPDz0U9jNmsBRmvUCCcmjduM4Gp
         8jkgZ9h4qKh71Vwkjxn1xOMz99nD1iqo1RJFPPlVvumSMaUC9kk6Fsbdfo3ghrDSeaPm
         0ACNFGWq+oNrT0dF81Q1o0MZX3f69Lt7RxjXi0wQuLrxL+RhBL2E++VED0jLSICQy/bj
         9xDX8S0x6gsmA7paBzFZN4dBxiSYtaCL5jRa3jYtQ4fI8BGUco2FmKf2jspVegeTcOGu
         3Bew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tNxvnlbM;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lj1-x241.google.com (mail-lj1-x241.google.com. [2a00:1450:4864:20::241])
        by gmr-mx.google.com with ESMTPS id 11si84463wmg.0.2020.10.23.11.47.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 11:47:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) client-ip=2a00:1450:4864:20::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tNxvnlbM;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::241 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lj1-x241.google.com with SMTP id c21so2640478ljj.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 11:47:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:user-agent:mime-version
         :content-transfer-encoding;
        bh=u/tW7eVCfHGY9hMZbenszHfGZCctcOjNQMSRv2EDhcU=;
        b=tNxvnlbMoRurgHQF4IvYKx8rWo3rrZNrk1qOv3slPPyRFsNla0OkJgWkuBhmSSOqX0
         QMaCvbKbZuu6gyHtF6Frg2PRHAH9K2/gCoAZ2EF4ck+Bhwq0by+BRf4Fon+fi6B0pIaY
         h1SujMBuaOJYeJ/cnacm82mxDuJ5/+aLllh+KIUlBgMzmaKNiJlCwYOMsv5hkc5TaaXU
         EF49uurQJwlfEERk8WNz+h1rqW+UfY528gRz0Mnc3bYmnh0Bsu4UkIJPxL9d93k3ulq6
         5jH7J9LRdhUSONd1uhTSDjwJRg+XpYJVNdpFROgm0KsdE+E/z9DTfDX2D2Df95OWvOIO
         1LJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:user-agent
         :mime-version:content-transfer-encoding;
        bh=u/tW7eVCfHGY9hMZbenszHfGZCctcOjNQMSRv2EDhcU=;
        b=aQR1/LJqKcgA7iH+6NtBsNbDsrJcsJtvC1ePOW1tOxXsU+FXgrhmfWNwZvIpXDYsZA
         qouB906ev9yyOr1Bv0Z9/rCL8Kb8EzXhzHi6QPxw4uSL3mO543EzIGOoDFkDSH3fhM+S
         1y3Hzof+a0yzivEb7rhlwlJV55K5VmBoOs2s6D4yImkq7bHUjuQn0LXjZ3dZIdWxn5ws
         zJkHHz2tU/t6KpByLFLOeFfx/wV55vxKU2YRffP9jHSf9LNoy/hjIXv4a9LFX+yXV6s9
         TaFc8bTrMvPf7NDr2dqMj7FoWI+aFSMRlUmD46tMW9oaWKs3mMsDithhj+Eq59DzQ0+l
         X9vA==
X-Gm-Message-State: AOAM5330J/6BKJLzSqqF5MNihgHC/ZwMVL/g4/TroMD8T47FmyOErHeg
	Sd4X6qWtXfLN3UGaS5gR9dw=
X-Received: by 2002:a2e:5853:: with SMTP id x19mr1321082ljd.24.1603478841928;
        Fri, 23 Oct 2020 11:47:21 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from [192.168.167.128] (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id w71sm214005lff.36.2020.10.23.11.47.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 11:47:21 -0700 (PDT)
Message-ID: <b0d792de290fd492ac77cfa574150d67d3b6276c.camel@gmail.com>
Subject: [PATCH v2] staging: rtl8192u: ieee80211: replace kmalloc/memset
 with kzalloc
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Date: Fri, 23 Oct 2020 11:47:05 -0700
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Replace kmalloc + memset 0 by a call to kzalloc which zeroes memory too.
Found with Coccinelle.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
Changes in v2:
	- correct the subject line
	- correct the commit message

 drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
index 63a561ab4a76..fb8483c499b3 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
@@ -227,13 +227,10 @@ static struct ieee80211_txb *ieee80211_alloc_txb(int nr_frags, int txb_size,
 {
 	struct ieee80211_txb *txb;
 	int i;
-	txb = kmalloc(
-		sizeof(struct ieee80211_txb) + (sizeof(u8 *) * nr_frags),
-		gfp_mask);
+	txb = kzalloc(sizeof(*txb) + (sizeof(u8 *) * nr_frags), gfp_mask);
 	if (!txb)
 		return NULL;
 
-	memset(txb, 0, sizeof(struct ieee80211_txb));
 	txb->nr_frags = nr_frags;
 	txb->frag_size = __cpu_to_le16(txb_size);
 
-- 
2.25.1



