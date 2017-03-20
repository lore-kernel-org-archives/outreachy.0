X-GM-THRID: 6399553954141700096
X-Received: by 10.46.80.18 with SMTP id e18mr2950102ljb.10.1490012299824;
        Mon, 20 Mar 2017 05:18:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.66 with SMTP id s63ls1260845lja.18.gmail; Mon, 20 Mar
 2017 05:18:19 -0700 (PDT)
X-Received: by 10.46.69.133 with SMTP id s127mr928996lja.17.1490012299119;
        Mon, 20 Mar 2017 05:18:19 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wr0-x243.google.com (mail-wr0-x243.google.com. [2a00:1450:400c:c0c::243])
        by gmr-mx.google.com with ESMTPS id l138si876725wmg.0.2017.03.20.05.18.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 05:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) client-ip=2a00:1450:400c:c0c::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c0c::243 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x243.google.com with SMTP id g10so17867092wrg.0
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 05:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=l/k8NEwh1FhIVhsnRY4uU1GFFEYx24mfjSdf/tIidfU=;
        b=UOyXtKteL+wUQ8BQdgryVyJnbce4XuaXJ48ghEECMhsr0FGdg+GF/sxNnF0V/gLzrl
         NG5ecm1+MJjX+VjTQnl+Lmy11wxpD02rCCngsvnOXFoYRAQ2EfZ2Wmgsh696BihrDVWk
         oH+IE4HvKNH5RvJWGu9yizrm2j/fMPXDkh7Q6RBQYTukZ/cRa3Of9UtpCouTOJ4k/+fG
         ikA1+/U/R2s70IbJAJXx94ONqdU/ljKYxM6hN7o99BSJGkcOVobHkXPKEmO3NX8ghKSf
         rXP8xpcG9xt4q+VM4dYoxRNCW4z/I6jDA40fq5DDn766Hg26XBBVljvjsU6Jdn9D/sjo
         0YUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=l/k8NEwh1FhIVhsnRY4uU1GFFEYx24mfjSdf/tIidfU=;
        b=ne6RXexCGWDhv8+cyxvF4WxfpySEY1JyXwxJw+t+FnqmLwO+sT9caiLYQydne+c2fg
         vOKLzeDju8JWj0FHC9CQEHF1ZJBogieA4J2gsARWyJB0Z4odh8ZnoVdPp0QU80v8+zk5
         V6j6Qzcd1fSE6wcuyjnkeF+ZAMPjVJbeg6rlboavMrdBEYhn68FZo8a/Ik+Re+/Inhsl
         ukw1VST+Ua7h8MTDRINgZtTqL0NL1eTImLDESqVmYamn33dPqL7T2j5tF7P4iM+1Zgfg
         7wqjCC9HSjv0d3sT4YEWSCwKJ49Dwbte2mnlxvM/agyws4At2kuYtW4ncOlXDbrZflos
         DSwg==
X-Gm-Message-State: AFeK/H02rX3OjPwAzW0GU7QSgWQB2+haa3Ty1cyP+wS2qp/ydFZGIZK161SqldLfxwC8OA==
X-Received: by 10.223.155.211 with SMTP id e19mr24017606wrc.74.1490012298934;
        Mon, 20 Mar 2017 05:18:18 -0700 (PDT)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from localhost.localdomain (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id m80sm13238725wmi.34.2017.03.20.05.18.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 Mar 2017 05:18:18 -0700 (PDT)
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: lars@metafoo.de,
	Michael.Hennerich@analog.com,
	jic23@kernel.org,
	knaack.h@gmx.de,
	pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Subject: [PATCH 2/3] staging: iio: Add blank lines after function declarations
Date: Mon, 20 Mar 2017 14:18:03 +0200
Message-Id: <8372450c6fdd5ffb584d40939c2400aef349ebfb.1490011900.git.narcisaanamaria12@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1490011900.git.narcisaanamaria12@gmail.com>
References: <cover.1490011900.git.narcisaanamaria12@gmail.com>

This was reported by checkpatch.pl:
CHECK: Please use a blank line after function/struct/union/enum
declarations

Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 1 +
 drivers/staging/iio/cdc/ad7152.c    | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 872fac6..b2bce26 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -1863,6 +1863,7 @@ static ssize_t adt7316_set_int_mask(struct device *dev,
 
 	return len;
 }
+
 static inline ssize_t adt7316_show_ad_bound(struct device *dev,
 		struct device_attribute *attr,
 		char *buf)
diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
index e8609b8..7679633 100644
--- a/drivers/staging/iio/cdc/ad7152.c
+++ b/drivers/staging/iio/cdc/ad7152.c
@@ -244,6 +244,7 @@ static int ad7152_write_raw_samp_freq(struct device *dev, int val)
 
 	return ret;
 }
+
 static int ad7152_write_raw(struct iio_dev *indio_dev,
 			    struct iio_chan_spec const *chan,
 			    int val,
-- 
1.9.1


