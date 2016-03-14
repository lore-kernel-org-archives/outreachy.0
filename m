X-GM-THRID: 6261787574311845888
X-Received: by 10.182.246.73 with SMTP id xu9mr17262798obc.4.1457936031612;
        Sun, 13 Mar 2016 23:13:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.37 with SMTP id c34ls3982552qgc.26.gmail; Sun, 13 Mar
 2016 23:13:50 -0700 (PDT)
X-Received: by 10.140.236.149 with SMTP id h143mr17260518qhc.12.1457936030968;
        Sun, 13 Mar 2016 23:13:50 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id h69si1716181pfj.0.2016.03.13.23.13.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 23:13:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id 124so129593888pfg.0
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 23:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=enVus5haNiQBvxmbQPl8hsGJzEwj8yxWZgnUg0xiKLk=;
        b=UHCkNX3wXaVvSHv7J1J6GzMhGbiOKLRztkuEZ9KKLHBt9UAv19zlaBX6p/0BDI8MeY
         RbmCyv6lxRMIOEvQUVbnH3VWUqzrPvQpZbjT8G95oru7fIN++Hp3OKXpoNsMsOP+kYU0
         pU7CdXY023TiXzsd8OjPSxfUn2sQU1CKTd+6hltMNLkS+9O4eBkwL7DgCAglTel9HZy6
         xz3B3RFacb2CuX0KPDU0t27y03wwJXkhuggWJP/Z9hTbT27j2H1JZj54F1AlvRlU9fyl
         hkqo/rOTirBnTU0SgKRdV7Y20kfM1Z6leTCEuw1GtFAwqG3m/La4BwEyZIy+71ltOIFc
         fXPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=enVus5haNiQBvxmbQPl8hsGJzEwj8yxWZgnUg0xiKLk=;
        b=HCrPUv63NgqBpvzDNDFua+IbUBoZvfNixcqLS/IP642KsLcqWdq1r5ut0AJNiiSwx7
         v4Zm+K2CK5gavQhe4E6QEM6V0LRFsPMP1eHfIves7Vq6TcFwlSaEF8qyWqtIi3JBL9GE
         MQ6ejK+o9CcuaOuqsWhS3OHztWvcL3goKb/J2pJu3ybR+2AmhbOJ5gNaXawPTieo/X8+
         WiQutlOOiMN7gukD0eqpv+C1q1AwnnMhF8Ac2G+g4C456r3bIHDG+B/+snl3b769BrvF
         ri/iAfedkSOpIodnh0ARXHNKqPDCyUiU4TeoZ4aRdasIvEwI9ADoPaPa2Lp552vyBg6d
         L4lQ==
X-Gm-Message-State: AD7BkJIyog+6u/F+XHVxZyvGNORMdALlevbOhdWojKflSAydd9nVfk9T0Y1MNJpU/+rNHg==
X-Received: by 10.98.71.149 with SMTP id p21mr27494883pfi.133.1457936030762;
        Sun, 13 Mar 2016 23:13:50 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-71-44.dhcp.embarqhsd.net. [67.232.71.44])
        by smtp.gmail.com with ESMTPSA id z68sm28995811pfi.19.2016.03.13.23.13.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 23:13:50 -0700 (PDT)
Date: Sun, 13 Mar 2016 23:13:49 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: iio: ad5933: use dev_get_platdata()
Message-ID: <20160314061338.GA6632@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use dev_get_platdata() for retrieving the platform data instead of
accessing dev->platform_data directly.

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/iio/impedance-analyzer/ad5933.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
index d1218d8..4285874 100644
--- a/drivers/staging/iio/impedance-analyzer/ad5933.c
+++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
@@ -699,7 +699,7 @@ static int ad5933_probe(struct i2c_client *client,
 				   const struct i2c_device_id *id)
 {
 	int ret, voltage_uv = 0;
-	struct ad5933_platform_data *pdata = client->dev.platform_data;
+	struct ad5933_platform_data *pdata = dev_get_platdata(&client->dev);
 	struct ad5933_state *st;
 	struct iio_dev *indio_dev;
 
-- 
2.1.4


