X-GM-THRID: 10320556851200
X-Received: by 10.112.212.33 with SMTP id nh1mr2271661lbc.4.1427886132875;
        Wed, 01 Apr 2015 04:02:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.5 with SMTP id lg5ls47120lab.106.gmail; Wed, 01 Apr
 2015 04:02:12 -0700 (PDT)
X-Received: by 10.112.198.34 with SMTP id iz2mr9592231lbc.22.1427886132075;
        Wed, 01 Apr 2015 04:02:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id na10si103807wic.0.2015.04.01.04.02.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 04:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x235.google.com with SMTP id m6so49080993wgd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 04:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6SZcgUjuh3aJNk/Ic86kDLnuo39SD49/1PWfwxV4JKw=;
        b=kt9cU/015E5KZYP409LJgJT/NH4m7xUKB3I7XTug/uaWhOZjjdakYN/bH2xbIbfJCU
         gd8pHsoHPuF6VtWwCROLq9DXyaPWAe5V2O6Q9hxTV+jecK5lOSLZfpG2eU7jzSVau/Jz
         7qSF1m5jTT8XjmDpI1z/EI2tO1MlpMVnltgDFYco6MxMwe+4tvNUT2JrIEQ0rSsP5Emn
         7sJgfmUcwCuqTfJBpr8vZD7BNkAe6ePfhYmEQ/6synvidpQjrkbeL3q4SRdJRvHpzYe/
         as2DFu0iVvsWoPzk+juyXGsyCJJa0/fN93QEJQhK33B6YL8MBK4t+8k4D3rMoAlOn08h
         JOJA==
X-Received: by 10.180.206.244 with SMTP id lr20mr14303259wic.24.1427886131963;
        Wed, 01 Apr 2015 04:02:11 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id lg18sm24923859wic.23.2015.04.01.04.02.10
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Wed, 01 Apr 2015 04:02:11 -0700 (PDT)
Date: Wed, 1 Apr 2015 14:01:11 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-iio@vger.kernel.org, outreachy-kernel@googlegroups.com,
	daniel.baluta@gmail.com
Subject: [PATCH 1/2] iio: magnetometer: mag3110: Place driver on standby on
 error
Message-ID: <33355f963dc3956b6b75c6915b1e3f616c4411c1.1427797741.git.cristina.opriceana@gmail.com>
References: <cover.1427797741.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427797741.git.cristina.opriceana@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Place driver on standby mode on error in order to prevent wasting
power. Move standby function above to be seen by the new call.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/iio/magnetometer/mag3110.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/iio/magnetometer/mag3110.c b/drivers/iio/magnetometer/mag3110.c
index e3106b4..261d517 100644
--- a/drivers/iio/magnetometer/mag3110.c
+++ b/drivers/iio/magnetometer/mag3110.c
@@ -321,6 +321,12 @@ static const struct iio_info mag3110_info = {
 
 static const unsigned long mag3110_scan_masks[] = {0x7, 0xf, 0};
 
+static int mag3110_standby(struct mag3110_data *data)
+{
+	return i2c_smbus_write_byte_data(data->client, MAG3110_CTRL_REG1,
+		data->ctrl_reg1 & ~MAG3110_CTRL_AC);
+}
+
 static int mag3110_probe(struct i2c_client *client,
 			 const struct i2c_device_id *id)
 {
@@ -360,12 +366,12 @@ static int mag3110_probe(struct i2c_client *client,
 	ret = i2c_smbus_write_byte_data(client, MAG3110_CTRL_REG2,
 		MAG3110_CTRL_AUTO_MRST_EN);
 	if (ret < 0)
-		return ret;
+		goto standby_on_error;
 
 	ret = iio_triggered_buffer_setup(indio_dev, NULL,
 		mag3110_trigger_handler, NULL);
 	if (ret < 0)
-		return ret;
+		goto standby_on_error;
 
 	ret = iio_device_register(indio_dev);
 	if (ret < 0)
@@ -374,15 +380,11 @@ static int mag3110_probe(struct i2c_client *client,
 
 buffer_cleanup:
 	iio_triggered_buffer_cleanup(indio_dev);
+standby_on_error:
+	mag3110_standby(iio_priv(indio_dev));
 	return ret;
 }
 
-static int mag3110_standby(struct mag3110_data *data)
-{
-	return i2c_smbus_write_byte_data(data->client, MAG3110_CTRL_REG1,
-		data->ctrl_reg1 & ~MAG3110_CTRL_AC);
-}
-
 static int mag3110_remove(struct i2c_client *client)
 {
 	struct iio_dev *indio_dev = i2c_get_clientdata(client);
-- 
1.9.1


