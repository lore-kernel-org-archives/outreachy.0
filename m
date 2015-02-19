X-GM-THRID: 500390952960
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9286914636319bba,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.194.163 with SMTP id hx3mr2291919pac.18.1424311542832;
        Wed, 18 Feb 2015 18:05:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.205 with SMTP id h74ls313943ioi.30.gmail; Wed, 18 Feb
 2015 18:05:42 -0800 (PST)
X-Received: by 10.67.29.231 with SMTP id jz7mr2407594pad.9.1424311542498;
        Wed, 18 Feb 2015 18:05:42 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com. [209.85.192.180])
        by gmr-mx.google.com with ESMTPS id bo1si2726696pbc.0.2015.02.18.18.05.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 18:05:42 -0800 (PST)
Received-SPF: none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) client-ip=209.85.192.180;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: kdunne@mail.ccsf.edu does not designate permitted sender hosts) smtp.mail=kdunne@mail.ccsf.edu
Received: by pdjy10 with SMTP id y10so5382413pdj.6
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 18:05:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Paf/tpnT9LKpqVZqzknZpvaC3tbQEJdFAju/e//whcE=;
        b=CKFEA0SO4x35W3ohzncF2MRkkEjZ80kweGMDD1TnoTCU0KdsZIl9LTiFpkmcD+YE41
         OGWNW4f2tnEnLfANl1pGoik2oiqT6P5/QxP+AWFV8Mtf95OOO1xjuKs7JBC3pzkNjFHK
         gqaPbGZwyNTOZ7Wuh98jH0HQLwJh0wXtYOk+AyQqtJ38eBLWcAovAVdmsfJIixBDYkB7
         gUgsQ0rUGe0OLaiiS+VR9IPM3b8QVdiebml+cmROOz67rZ24a4QTyRIvIP3Q+6KKx2KD
         THPRRqIz7mOIVh2jYdsPW4fBsrByJnKKcGCGf2OSbMseBqWlPpe9tigf7dF1yTyFSN++
         y9hw==
X-Gm-Message-State: ALoCoQlYpV6U6kUxdkDNumQfXrgQtsNfR3gvENtEwBTAq+cROVUnDnE/yxSixIaroNRLaoQARSgM
X-Received: by 10.70.130.69 with SMTP id oc5mr3615522pdb.160.1424311542317;
        Wed, 18 Feb 2015 18:05:42 -0800 (PST)
Return-Path: <kdunne@mail.ccsf.edu>
Received: from katie-Inspiron-5748 ([2601:9:8340:b6:59cf:aa00:32a0:a253])
        by mx.google.com with ESMTPSA id n2sm22057644pdo.0.2015.02.18.18.05.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 18 Feb 2015 18:05:41 -0800 (PST)
Date: Wed, 18 Feb 2015 18:05:40 -0800
From: Katie Dunne <kdunne@mail.ccsf.edu>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: media: mn88473: Match alignment with open
 parenthesis
Message-ID: <20150219020540.GA12874@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Fixes the checkpatch.pl Check:
CHECK: Alignment should match open parenthesis

Increases readability by standardizing 7 argument indentations

Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
---
 drivers/staging/media/mn88473/mn88473.c | 24 ++++++++++++++----------
 1 file changed, 14 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/media/mn88473/mn88473.c b/drivers/staging/media/mn88473/mn88473.c
index a333744..197e2d0 100644
--- a/drivers/staging/media/mn88473/mn88473.c
+++ b/drivers/staging/media/mn88473/mn88473.c
@@ -17,7 +17,7 @@
 #include "mn88473_priv.h"
 
 static int mn88473_get_tune_settings(struct dvb_frontend *fe,
-	struct dvb_frontend_tune_settings *s)
+				     struct dvb_frontend_tune_settings *s)
 {
 	s->min_delay_ms = 1000;
 	return 0;
@@ -33,10 +33,14 @@ static int mn88473_set_frontend(struct dvb_frontend *fe)
 	u8 delivery_system_val, if_val[3], bw_val[7];
 
 	dev_dbg(&client->dev,
-			"delivery_system=%u modulation=%u frequency=%u bandwidth_hz=%u symbol_rate=%u inversion=%d stream_id=%d\n",
-			c->delivery_system, c->modulation,
-			c->frequency, c->bandwidth_hz, c->symbol_rate,
-			c->inversion, c->stream_id);
+		"delivery_system=%u modulation=%u frequency=%u bandwidth_hz=%u symbol_rate=%u inversion=%d stream_id=%d\n",
+		c->delivery_system,
+		c->modulation,
+		c->frequency,
+		c->bandwidth_hz,
+		c->symbol_rate,
+		c->inversion,
+		c->stream_id);
 
 	if (!dev->warm) {
 		ret = -EAGAIN;
@@ -112,7 +116,7 @@ static int mn88473_set_frontend(struct dvb_frontend *fe)
 		break;
 	default:
 		dev_err(&client->dev, "IF frequency %d not supported\n",
-				if_frequency);
+			if_frequency);
 		ret = -EINVAL;
 		goto err;
 	}
@@ -229,7 +233,7 @@ static int mn88473_init(struct dvb_frontend *fe)
 	}
 
 	dev_info(&client->dev, "downloading firmware from file '%s'\n",
-			fw_file);
+		 fw_file);
 
 	ret = regmap_write(dev->regmap[0], 0xf5, 0x03);
 	if (ret)
@@ -242,10 +246,10 @@ static int mn88473_init(struct dvb_frontend *fe)
 			len = (dev->i2c_wr_max - 1);
 
 		ret = regmap_bulk_write(dev->regmap[0], 0xf6,
-				&fw->data[fw->size - remaining], len);
+					&fw->data[fw->size - remaining], len);
 		if (ret) {
 			dev_err(&client->dev, "firmware download failed=%d\n",
-					ret);
+				ret);
 			goto err;
 		}
 	}
@@ -325,7 +329,7 @@ static struct dvb_frontend_ops mn88473_ops = {
 };
 
 static int mn88473_probe(struct i2c_client *client,
-		const struct i2c_device_id *id)
+			 const struct i2c_device_id *id)
 {
 	struct mn88473_config *config = client->dev.platform_data;
 	struct mn88473_dev *dev;
-- 
1.9.1


