X-GM-THRID: 6394807331810443264
X-Received: by 10.99.121.199 with SMTP id u190mr662204pgc.103.1488907107888;
        Tue, 07 Mar 2017 09:18:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.98.11 with SMTP id d11ls3382679itc.1.canary-gmail; Tue, 07
 Mar 2017 09:18:27 -0800 (PST)
X-Received: by 10.107.51.81 with SMTP id z78mr672076ioz.51.1488907107042;
        Tue, 07 Mar 2017 09:18:27 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 2si111482pfx.8.2017.03.07.09.18.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Mar 2017 09:18:26 -0800 (PST)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id j5so744276pfb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 07 Mar 2017 09:18:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=kKQjseYxAu9akb8v91GGlL1m4sSDlQgA7kkGWVcmUz8=;
        b=W8OX36WzmC2+/QS/3j9yOo7o49Foe9lzQsHEsSSYnlds5fAo5OHv7W2Wl39sFupdXD
         m9FxICCcAG9K2wOdXD3W5m0Py9fQBifoH6QXwJ/JxDTnv8uJYzkpd58RUi5myauxp664
         SQ+S7PDqjC3OW8aMHYY8uyMU3KiLQ+jeQa70wYh6V/RxunOZbi/eUCWSUslcHOvHX3iv
         TC3hqYHROnS0ZAlpKikcyPUkj4FI0BY8bWdTxxp27LD5Zea1Iu9asRjgl98swspGQlFe
         T6lCsjOergHQ8F/dJ/p4/aB9PdkXNbVkrFH49xZ4lNS259lotYaRtBhWxZ0StjtfrnVA
         1BTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=kKQjseYxAu9akb8v91GGlL1m4sSDlQgA7kkGWVcmUz8=;
        b=kJargj5/QMZtdL3Y2Oi/f4Gmrf/+kH7BhEeWi1Tq0nCgj13QWP3m7kMLnDKkp4AYiC
         MzGfHbwgzVgAsuRZ51tEha9a1vu/mmW6NrCgTvtdLQUnNgVF8QaDADJu5tMFq4vaEIqg
         AwcL2dNuo67/gIzGTD1X4UNBjJhzvK3g5ooXzGyJbYrsiJ1qnw0yb8Z20HzdN2FE8Bbg
         5D8HGOWumpsz5BPZN9Zq/0yRMN32CxB+bwjakC9Vq0nBT7hfomKrOejPctKkSPS9AGRW
         VYzdl6ke1ITmnpmf49rbSXtNhmKIpSDZcb4zpMBRee1VpoO5P1DKMFxvgZCkMjmOUlRg
         aHYg==
X-Gm-Message-State: AMke39m/ZT5FZUnLvZ0spQfjudBaoWqxG90f4Zrl+PoQzPm4QquRjizyj0k3UiDh0YTjHw==
X-Received: by 10.98.60.199 with SMTP id b68mr1626003pfk.102.1488907106684;
        Tue, 07 Mar 2017 09:18:26 -0800 (PST)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id c1sm958212pfk.112.2017.03.07.09.18.18
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 07 Mar 2017 09:18:26 -0800 (PST)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH] staging: comedi: Replace ternary operator with min macro
Date: Tue,  7 Mar 2017 22:45:54 +0530
Message-Id: <1488906954-25933-1-git-send-email-gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4

Use macro min() to get the minimum of two values for
brevity and readability.

Found using Coccinelle:
@@ type T; T x; T y; @@
(
- x < y ? x : y
+ min(x,y)
|
- x > y ? x : y
+ max(x,y)
)

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/comedi/drivers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers.c b/drivers/staging/comedi/drivers.c
index a5bf2cc..6a413c7 100644
--- a/drivers/staging/comedi/drivers.c
+++ b/drivers/staging/comedi/drivers.c
@@ -815,7 +815,7 @@ int comedi_load_firmware(struct comedi_device *dev,
 		release_firmware(fw);
 	}
 
-	return ret < 0 ? ret : 0;
+	return min(ret, 0);
 }
 EXPORT_SYMBOL_GPL(comedi_load_firmware);
 
-- 
2.7.4


