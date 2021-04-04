X-GM-THRID: 6947432106689560576
X-Received: by 2002:a62:1ad0:0:b029:1f2:c7b3:3039 with SMTP id a199-20020a621ad00000b02901f2c7b33039mr21774818pfa.30.1617575089976;
        Sun, 04 Apr 2021 15:24:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:ecc2:: with SMTP id a2ls1524477plh.7.gmail; Sun, 04
 Apr 2021 15:24:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwBLeJVkUxgEJAxntTw+B/Hspn8Jx9SN0e56lXyAzjq+RZoCAQ11gKglTZw7+o3yep83O3L
X-Received: by 2002:a17:902:bd4b:b029:e6:a4a1:9d8b with SMTP id b11-20020a170902bd4bb02900e6a4a19d8bmr21957186plx.56.1617575088921;
        Sun, 04 Apr 2021 15:24:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617575088; cv=none;
        d=google.com; s=arc-20160816;
        b=N/+gfWNCa4myJTPrpou5R9Z2Ygq842qk8EjOJG6Aajj/cFdQbah0tCmVFJQXvkHlRb
         C0thgb+LUwM2MEr9qgEyRIpS2pujs067lkM0qsGmLj70J0CZ6Xppm1EknWBo9qkH/dyA
         8s5j6dWjowoqLT7r8U8oQxXdttvgph0UV5Sd6y1j7X0hEJg8hqHWJcbph5mCPO67J7iM
         Vq6qIPRQkKGGeu8mU8d4JTCW5HrsiTgppuJsaSDVNhwsmBOjF38MFNP2cwCIyHX9pq2x
         AsvCcM7Da+muvw6kfXfTOCJEsH1RS6hEO2oCaSVxDx+hmaBICJnw6Vfe+9deLFjb8+6Y
         3xUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7mopXWBi2wijSGKa4AiTjRSanyVNKQw/ECdzYkzyHBg=;
        b=If1BWYR9k2SEg7WkNlveK2wJftIu8CiZLFEl4/KUZwyeelWLp7JU61z4is//U3VNJX
         PJO8SE3rizwgn2mNVLzMzOnvK6m8Y8omahSBSO9tSpmlSvnfZhw/EpSRB2fvUmR+uWRn
         DDFfM8m52sa+e4LjyT6iouQFpVIKEjIuzi/6JXNp53nhOG5Ps9YO/lvfUSIhojpe7dSb
         2mYMbSuRhgJxKn2DvdM99P9dw36/Hz9NT5ZRU6sVBqegbDtJ5MJISjWQ3ZVjPjH41WYZ
         ocT87ll3E1Gaiwf9yJPTOHBEbwv5sRFqh30INVxebqA35W2eJiMc7xvhvHQbXO/JxSCm
         FTuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TVG60R2H;
       spf=pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=davidvillasana14@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <davidvillasana14@gmail.com>
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com. [2607:f8b0:4864:20::32a])
        by gmr-mx.google.com with ESMTPS id g23si1738586pfu.3.2021.04.04.15.24.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Apr 2021 15:24:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) client-ip=2607:f8b0:4864:20::32a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TVG60R2H;
       spf=pass (google.com: domain of davidvillasana14@gmail.com designates 2607:f8b0:4864:20::32a as permitted sender) smtp.mailfrom=davidvillasana14@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x32a.google.com with SMTP id k14-20020a9d7dce0000b02901b866632f29so9865967otn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Apr 2021 15:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :content-transfer-encoding;
        bh=7mopXWBi2wijSGKa4AiTjRSanyVNKQw/ECdzYkzyHBg=;
        b=TVG60R2H4bKieRfyglnQsIBgGK4c5WjLKncENtq0PCeTqi0D6q5ytdppV9OrFrcyfW
         HHH8bCRos+sm+98LPMbzfw9UHqsTBBg7s/QkgB1moRZ5iouugI0y+vNhwmbhAePnOB4i
         UHm7CwCPhCx4Va+74vAKzs/MYhDMCYVVJk5Niwvy5dk5Tb+bSMDd87VQEozlro4dyDG6
         AmPXEEKsjQqXG482qICSickkZGyHeqV/iHIPo8n5z2ogNCNr7F4BNBGtqg0y29ni41l5
         KgrHtAzgpk6axHm7eaSh7ZnahfnCXCwIhxpCHE4w7O1ko7h6Z3DhSzbH48qD+o6iYVPk
         2dlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:content-transfer-encoding;
        bh=7mopXWBi2wijSGKa4AiTjRSanyVNKQw/ECdzYkzyHBg=;
        b=A7yyZKOgoP5eNnkmCSIw9h6i3SPHT4cPgKFE6oJumRj9SuyoKiEmQgtFeY1jasH+bE
         fm6p/X8tWvlF13m+QHyuEmpoKExJ+FeQtfkgopAvJcffKs4SaKPkJ+za0p2qaCes6F6j
         jNO7+2tK8ijw3azKUhwg6TTr1hgz9wQDeSrvzIAszgh6m6mF9Aotf3wDCaGdNIteK2zN
         DbdkLZRuWLAKU0q0J3HbUNJkNHlVu59TUGpFjYpCe27105+vPWohkda/601XmorcFs2u
         dVnixMi1xwXyB4Y8CXuuf9vSCmen94U+vlbXM3gznL0gZRPHDv3Mqp9xzbzGphlJD7Lz
         meOw==
X-Gm-Message-State: AOAM532a+EqZ58WOyy/RLd1KaD3YSLYm/iBuZ5epsT2CmBuoi/NEIjj9
	5yz5i7jY4UHVlcBDLALRO/YZW0KUERT86g==
X-Received: by 2002:a9d:2e1:: with SMTP id 88mr19725255otl.120.1617575088397;
        Sun, 04 Apr 2021 15:24:48 -0700 (PDT)
Return-Path: <davidvillasana14@gmail.com>
Received: from fedora ([2806:2f0:7000:86b1:c1bc:6875:f962:d652])
        by smtp.gmail.com with ESMTPSA id h59sm3528290otb.29.2021.04.04.15.24.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Apr 2021 15:24:48 -0700 (PDT)
Date: Sun, 4 Apr 2021 17:24:43 -0500
From: David Villasana =?iso-8859-1?Q?Jim=E9nez?= <davidvillasana14@gmail.com>
To: jic23@kernel.org, lars@metafoo.de, gregkh@linuxfoundation.org
Cc: linux-iio@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: cdc: remove repeated word
Message-ID: <YGo8q4R5dqgtDMlg@fedora>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Fix checkpatch warning:
WARNING: Possible repeated word: 'from'

Signed-off-by: David Villasana Jim�nez <davidvillasana14@gmail.com>
---
 drivers/staging/iio/cdc/ad7150.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/cdc/ad7150.c b/drivers/staging/iio/cdc/ad7150.c
index 48132ab157ef..1be214512ff8 100644
--- a/drivers/staging/iio/cdc/ad7150.c
+++ b/drivers/staging/iio/cdc/ad7150.c
@@ -57,7 +57,7 @@
  * @threshold: thresholds for simple capacitance value events
  * @thresh_sensitivity: threshold for simple capacitance offset
  *	from 'average' value.
- * @mag_sensitity: threshold for magnitude of capacitance offset from
+ * @mag_sensitity: threshold for magnitude of capacitance offset
  *	from 'average' value.
  * @thresh_timeout: a timeout, in samples from the moment an
  *	adaptive threshold event occurs to when the average
-- 
2.30.2


