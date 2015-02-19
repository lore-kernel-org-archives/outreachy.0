X-GM-THRID: 700464496640
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,5f9f78d7fc02ee8c,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.70.100 with SMTP id o64mr5492395yhd.9.1424363573419;
        Thu, 19 Feb 2015 08:32:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.111.41 with SMTP id if9ls434754igb.17.gmail; Thu, 19 Feb
 2015 08:32:53 -0800 (PST)
X-Received: by 10.66.196.11 with SMTP id ii11mr5008446pac.37.1424363573197;
        Thu, 19 Feb 2015 08:32:53 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com. [209.85.192.173])
        by gmr-mx.google.com with ESMTPS id pc4si2966302pac.0.2015.02.19.08.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 08:32:53 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.173;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pdjg10 with SMTP id g10so857508pdj.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 08:32:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=OE5GW2o/PJ75PP98iYeZdu4Fe16TKTClVqF31G+2PUM=;
        b=ZngofaJ6MQHshNXeZgmUlwAGF1I2+dfZ+Rcl5Rzo+Fcz0UIdDwJwH+cD9qE7W88jAV
         QIAjnjHBEiSojKk38kSTgwrqL9UiXKvxu1hhvHHATUOsNy5rg9HRN9E8MX7t64dC9mDe
         SBj+p9ocW1tJJaL1OZ6vu3NMDnEZgu7GB3ief6HSERIfxvtK+tYJbKDlPTwfFN36HNXR
         CLXLBHjps5j2liQhsP8sJKlOmQfFo8STtOT0ovh/5upMucU7NjzUans4kYlyVI2V4RE9
         Ee/v7XAxuKM/EE+x4r4O8ufUpVG9rhOVJdA+ZWkmwQ6NxdepMQh2rAPeBAz1bu8cyv/J
         naqQ==
X-Gm-Message-State: ALoCoQmZstwS8zV7LzWWU5j1k+7cuXIjPLaqP4J8E+aIkLgKEbxKZ2jjbe1CjDVLEhUWCNIY0y7r
X-Received: by 10.68.204.39 with SMTP id kv7mr9025475pbc.49.1424363573037;
        Thu, 19 Feb 2015 08:32:53 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:59cf:aa00:32a0:a253])
        by mx.google.com with ESMTPSA id v6sm24290064pdp.50.2015.02.19.08.32.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 08:32:52 -0800 (PST)
Date: Thu, 19 Feb 2015 08:32:51 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: mn88472: Match alignment with open
 parenthesis
Message-ID: <20150219163250.GA29556@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch.pl Check:
CHECK: Alignment should match open parenthesis

Used tabs and spaces in 8 instances to align with open parenthesis

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/media/mn88472/mn88472.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/mn88472/mn88472.c b/drivers/staging/media/mn88472/mn88472.c
index 52de8f8..b8e43ed 100644
--- a/drivers/staging/media/mn88472/mn88472.c
+++ b/drivers/staging/media/mn88472/mn88472.c
@@ -17,7 +17,7 @@
 #include "mn88472_priv.h"
 
 static int mn88472_get_tune_settings(struct dvb_frontend *fe,
-	struct dvb_frontend_tune_settings *s)
+				     struct dvb_frontend_tune_settings *s)
 {
 	s->min_delay_ms = 400;
 	return 0;
@@ -33,9 +33,9 @@ static int mn88472_set_frontend(struct dvb_frontend *fe)
 	u8 delivery_system_val, if_val[3], bw_val[7], bw_val2;
 
 	dev_dbg(&client->dev,
-			"delivery_system=%d modulation=%d frequency=%d symbol_rate=%d inversion=%d\n",
-			c->delivery_system, c->modulation,
-			c->frequency, c->symbol_rate, c->inversion);
+		"delivery_system=%d modulation=%d frequency=%d symbol_rate=%d inversion=%d\n",
+		c->delivery_system, c->modulation,
+		c->frequency, c->symbol_rate, c->inversion);
 
 	if (!dev->warm) {
 		ret = -EAGAIN;
@@ -113,7 +113,7 @@ static int mn88472_set_frontend(struct dvb_frontend *fe)
 		break;
 	default:
 		dev_err(&client->dev, "IF frequency %d not supported\n",
-				if_frequency);
+			if_frequency);
 		ret = -EINVAL;
 		goto err;
 	}
@@ -277,12 +277,12 @@ static int mn88472_init(struct dvb_frontend *fe)
 	ret = request_firmware(&fw, fw_file, &client->dev);
 	if (ret) {
 		dev_err(&client->dev, "firmare file '%s' not found\n",
-				fw_file);
+			fw_file);
 		goto err;
 	}
 
 	dev_info(&client->dev, "downloading firmware from file '%s'\n",
-			fw_file);
+		 fw_file);
 
 	ret = regmap_write(dev->regmap[0], 0xf5, 0x03);
 	if (ret)
@@ -295,10 +295,10 @@ static int mn88472_init(struct dvb_frontend *fe)
 			len = (dev->i2c_wr_max - 1);
 
 		ret = regmap_bulk_write(dev->regmap[0], 0xf6,
-				&fw->data[fw->size - remaining], len);
+					&fw->data[fw->size - remaining], len);
 		if (ret) {
 			dev_err(&client->dev,
-					"firmware download failed=%d\n", ret);
+				"firmware download failed=%d\n", ret);
 			goto err;
 		}
 	}
@@ -384,7 +384,7 @@ static struct dvb_frontend_ops mn88472_ops = {
 };
 
 static int mn88472_probe(struct i2c_client *client,
-		const struct i2c_device_id *id)
+			 const struct i2c_device_id *id)
 {
 	struct mn88472_config *config = client->dev.platform_data;
 	struct mn88472_dev *dev;
-- 
1.9.1


