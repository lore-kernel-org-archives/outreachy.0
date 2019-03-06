X-GM-THRID: 6665198893900234752
X-Received: by 2002:a0c:a992:: with SMTP id a18mr4087992qvb.15.1551862548435;
        Wed, 06 Mar 2019 00:55:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b5dc:: with SMTP id o28ls718485qvf.0.gmail; Wed, 06 Mar
 2019 00:55:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqxBTlUz+Wq2w+PkjC9fi+sTSquSe3y2ouDl8xKzQJktBhSbULssQWWLGP1tCVhzw1wSTHR9
X-Received: by 2002:a0c:89d2:: with SMTP id 18mr4079252qvs.9.1551862547844;
        Wed, 06 Mar 2019 00:55:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551862547; cv=none;
        d=google.com; s=arc-20160816;
        b=YUGSTHA2KPRIcD/IhMUfmkH1rIfr2nU/FEggaOYGXoVxU3BnVTXfWQ5RxJ9VysbD/J
         rADeFLShBIRE3ciURZDPlG/0eEQbBx1eCyRJZRIRcYZSPTnAIgURAhCLfiumg4EbJblw
         oLvcspuWjEWNJEY3p3uunP0XlDqnwuZWtq5s06elGxsO6iha2mMqRUJvV98cj8HC2MZl
         1RziYOfBini9t5GRuhX5rTL8KfwJt9twH2cKeVoXMTB0Zac4pbVrjLJngcp5YyBQJeRj
         0poKTs9ZVoXiPGfegpiu4aJFc0Uc19B+sD8jmLndflUfnvHWh3dcued9BnHzXlUuAC9Q
         xl5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=3inBLpfLhl7k+3PEM1w87KZejL0u8oOsBvA3+hFKKbo=;
        b=dkfHQ349BsCAC0/3sIoAYzjwU0+G5EJbMvC4SGAhRb97xgaEfVnx0dWwcBJTm2nIw4
         tdj4ZJVQBb4xOt+23zL1gTSE7LfYEJW1waZdMBnKomNOINqtA4mklpqSj7f64Rdi1zZM
         gwNEcxck+NILEtUbVzoti0r1LqzLTJmxhed16eZkhxIZnOs+PexKkLCJvbHgU4PYZSly
         HvDL0oVz/nLUqaEgHBkAtlziG0kv3aKZDgfj0l9cgeNN0ZfBHge38C6pwjOrH1BCL9x0
         zOj3nD30bdLO1yLfxvTyIuNzBfKMzAv1DvlyVX3x4+oqyN/YyptnTt4NLEZYYUB0AZgu
         v1bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hbJV0HJ2;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com. [2607:f8b0:4864:20::436])
        by gmr-mx.google.com with ESMTPS id a62si57845qkf.1.2019.03.06.00.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 00:55:47 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) client-ip=2607:f8b0:4864:20::436;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hbJV0HJ2;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::436 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x436.google.com with SMTP id j5so8045789pfa.2
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 00:55:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=3inBLpfLhl7k+3PEM1w87KZejL0u8oOsBvA3+hFKKbo=;
        b=hbJV0HJ2FV8nKMNytE2QZOaOGy0XcYTQZa815gR02YluOnFjwgCuTVFilSxPBdP157
         G1R2FBwCpbea1IJy0hgJX2fxJhqvz9i3St8oYOp9Vs7H0nQl0tYRAOSEicT6RWvzC+x1
         AxJWwvI9g2GB7K6P6HgJv8zRJ+nJ/4VQMvtuH90qw3lFvjPc0sGimACS0z/5plaXxMoj
         pfhe4f4JZGQl15nn1kFLziDs4zv/o2cUJ47T9Xwf7Ynjobqbxzdk93S7tfmcDvIVm47p
         Kk7WayvCdnAoWEEMPpyoMJjrPDoQI478CDBmZnVDlVKswZnEFUlDbdaoR728R7tnIxCb
         NNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=3inBLpfLhl7k+3PEM1w87KZejL0u8oOsBvA3+hFKKbo=;
        b=lVZEdrwKiHWtiYDFcsZqlW1Aa/VZwq+bzLXNoP9Jryo98lqrih/50gybB1PTzk7VsT
         20+Jlkjbkt5wHzGgsbLpe2p8SQAjFSgU+qYuEeFy4EyrFthO1hBpDqBHN2uovELd7Oxi
         8UB37CP+0hkgvHvYUIlarUWVVzfDpJsyiFq5MLB+b/4hb1OnqqnbRMItM6CNRV9XB9rR
         gbBTqIQ2l6dlFEHpEacYZgdD/IKYmWVzzyGgirbbYwHtA/Ud0+VEYYo+bCnZmbvrXjQL
         9IQppYnYbc+d+3BHfm4BKrUSDZ7MJ781pI3sh7PNdxUtQRx8eD7b4IDR+QXQi3bkNxU3
         SGqw==
X-Gm-Message-State: APjAAAX/kTQYW66NfhuL3qLAT51wrvZuEkRbwayOhO6ppKHbHlEvZIFY
	2BoptM1D3a9wVNpGOyOEMqd8r2bqvVrTpA==
X-Received: by 2002:a63:69c2:: with SMTP id e185mr5320986pgc.4.1551862547116;
        Wed, 06 Mar 2019 00:55:47 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e93:b9ba:1446:ba71:6db0:9fb2])
        by smtp.gmail.com with ESMTPSA id q62sm2689634pfi.183.2019.03.06.00.55.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 06 Mar 2019 00:55:46 -0800 (PST)
Date: Wed, 6 Mar 2019 14:25:41 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: speakup: Comparison to NULL.
Message-ID: <20190306085540.GA9075@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, detected by checkpatch.pl "CHECK: Comparison to
NULL could be written !tty->ops->write"

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/speakup/spk_ttyio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/speakup/spk_ttyio.c b/drivers/staging/speakup/spk_ttyio.c
index 0057eb9..5a9eff0 100644
--- a/drivers/staging/speakup/spk_ttyio.c
+++ b/drivers/staging/speakup/spk_ttyio.c
@@ -47,7 +47,7 @@ static int spk_ttyio_ldisc_open(struct tty_struct *tty)
 {
 	struct spk_ldisc_data *ldisc_data;
 
-	if (tty->ops->write == NULL)
+	if (!tty->ops->write)
 		return -EOPNOTSUPP;
 	speakup_tty = tty;
 
-- 
2.7.4


