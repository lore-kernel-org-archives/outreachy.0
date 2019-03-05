X-GM-THRID: 6664844369829298176
X-Received: by 2002:a1c:a702:: with SMTP id q2mr250247wme.0.1551780004810;
        Tue, 05 Mar 2019 02:00:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:400e:: with SMTP id n14ls2095613wrp.16.gmail; Tue, 05
 Mar 2019 02:00:03 -0800 (PST)
X-Google-Smtp-Source: APXvYqz7JDVVgz5Ml/WEZYModGTYnd/0Z6YIws8ab392/O+jG5kXSPX+TnCQbAexlHpNFETp29r7
X-Received: by 2002:a5d:4908:: with SMTP id x8mr1169044wrq.5.1551780003711;
        Tue, 05 Mar 2019 02:00:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551780003; cv=none;
        d=google.com; s=arc-20160816;
        b=Ym6FmafezxzkIfNFRaTxccrzx0Kyt92krBPFxUslRLxZVglnpXp4BfxFpdA7s1+c7E
         w3m5PXKwym4pJXlBcXm3p/HihiXi3kdx7N2S08633YnP4gr1O5Z/a9tTtH+WV/fhE7tk
         RFccBD93VZTYR9ulNJ01enWZKShF2tXXTg9hmH24KKdRAwMdsxDw15GAbtXsRSwrmwcq
         CctizICo/wIy9janP277TkCzM4CC5UIJXNLxcPx6K2aGnyK2t18ftz2xPXjzltiNRbbS
         Bp5rKuOsxr9jgGq4uJfgdJS/gzOANO4chzjqp6qTsrydRFJtiMIeusySX7m7lc8l4Ji0
         iyig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=164ohzjba6wnVQdTa2+RbBJI0f500kCjeGB0YuJy168=;
        b=0iipwe/6d7SW8lr6MG0inahfkgRawTIvC5+Rj+wO4uc6XtMJpjyJfqzgUZNGbL7r+g
         /33HjxhdBxHxk9iMPw5y/8zck7z91aauqRiJsErr8YcBX5l+F5Jqoozh0BNsmMUqSUDy
         9Dajkyb7MjnVBrmgJ37jGP/AAUi1M6q+lKYVdhTd7ec3jNm+nPyT59BGfAMRaBPWkZ6q
         qLHtcIvQyJxaTPceP2Jo1bbQB/NcATIelRCF8S7MaIq17VG08F81MRdeWiUAitbEQ0JQ
         PVXW/y579AwIdP9MATYkKLpCtGbtfsKhTx84wRiRaeDlFPvlxMgMus6QHvCX6T6VOopA
         TtEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lky7mpEu;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com. [2a00:1450:4864:20::434])
        by gmr-mx.google.com with ESMTPS id f2si436965wrq.5.2019.03.05.02.00.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 02:00:03 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) client-ip=2a00:1450:4864:20::434;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lky7mpEu;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::434 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x434.google.com with SMTP id o17so8733068wrw.3
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 02:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=164ohzjba6wnVQdTa2+RbBJI0f500kCjeGB0YuJy168=;
        b=lky7mpEuUClos2HCO7iwHupEgejN+tk6WDWL8/3285FZh0XvW/3qCYp4q4saqcNU2A
         LMS2o8D3UUlRlPAIv1/QdjezHknCFkIBcBGo3GHF19stcyrImNjuibdwSXODHEdJA4aS
         Rz1sKCLPY0OWhEz7rbT9K2/sFEeIZB17VkKqcMoCuhXFxl4XcjuMGQ9qIIYIscyfuvZ/
         DAnAOx4aATuijLTh9TxJkXrkeWf1+wmbBkOJjCq5c8oLbrL/yLxc6w8yoxrS9X37u7Bp
         x6m0FTuzPJEQ6NVaggqkzyKMkUm+9RoawQ6RB5cejkAaU4J0h9b5jt2iCAr0MTFfcyMp
         7ZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=164ohzjba6wnVQdTa2+RbBJI0f500kCjeGB0YuJy168=;
        b=CPPOL5vnXmCjUc0w4YMbamB5wmt6uYyaRyacmh2CwGAqd8StmJgO4IJWyza9xBEU/N
         2UOna+dEso17DTeHs3ZrESO5lh3OhwFF/XAIe/cCm67kc0I0NjqPBM6Qxc3SPLdZ/V3j
         lbfnT12YhU2kMlkD71G1G1ry+3+U0J+uepcUDWT/sF3g3KgnWmAtXJZQ/T6ZhEOnE0B1
         GHsRDEEPvDIkKN61WzPk8hiTimOqVjMJ5zJXx+5urSa8VnbkZuWxewJWT16YnFg3gsff
         1ssiEBAqUxUXJxW4U4govrP4l9mCRPpcukhjgf5JspG/rYENjA9qrBpDL7euCMWpAlLz
         Y4JQ==
X-Gm-Message-State: APjAAAXd4jaFEBLgeUI7jil/bZMESe/nRQ3ZYoTveo/SxTRKPyERQdPq
	B1kYyHLC5x8xXGHxkk0vvBpNAyTP
X-Received: by 2002:adf:9cc3:: with SMTP id h3mr15031492wre.47.1551780002951;
        Tue, 05 Mar 2019 02:00:02 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id z14sm8819564wrv.91.2019.03.05.02.00.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 05 Mar 2019 02:00:02 -0800 (PST)
Date: Tue, 5 Mar 2019 12:00:01 +0200
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: Line over 80 characters
Message-ID: <20190305100001.GA13873@pthm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix line over 80 characters to get rid of checkpatch warning

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/iio/addac/adt7316.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/iio/addac/adt7316.c b/drivers/staging/iio/addac/adt7316.c
index 6f7891b..be2dfdb 100644
--- a/drivers/staging/iio/addac/adt7316.c
+++ b/drivers/staging/iio/addac/adt7316.c
@@ -2155,7 +2155,8 @@ int adt7316_probe(struct device *dev, struct adt7316_bus *bus,
 	else
 		chip->dac_bits = 8;
 
-	chip->ldac_pin = devm_gpiod_get_optional(dev, "adi,ldac", GPIOD_OUT_LOW);
+	chip->ldac_pin = devm_gpiod_get_optional(dev,
+						"adi,ldac", GPIOD_OUT_LOW);
 	if (IS_ERR(chip->ldac_pin)) {
 		ret = PTR_ERR(chip->ldac_pin);
 		dev_err(dev, "Failed to request ldac GPIO: %d\n", ret);
-- 
2.7.4


