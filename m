X-GM-THRID: 10320556851200
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,15c5bfe5b0735a7
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.14.38 with SMTP id m6mr894819lbc.12.1427631792665;
        Sun, 29 Mar 2015 05:23:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.224.165 with SMTP id rd5ls491759lac.77.gmail; Sun, 29 Mar
 2015 05:23:12 -0700 (PDT)
X-Received: by 10.112.169.36 with SMTP id ab4mr1582625lbc.4.1427631792050;
        Sun, 29 Mar 2015 05:23:12 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id bz6si434652wib.3.2015.03.29.05.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 29 Mar 2015 05:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id ne17so951092wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 29 Mar 2015 05:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6SZcgUjuh3aJNk/Ic86kDLnuo39SD49/1PWfwxV4JKw=;
        b=Udc8Fx4DKJgc94ll9aOKx0GzvbMbDfi6mWlCeGfJkC8aEWCj46CmkR3i5GW/NuDOLN
         vBpCwpbU/Hj2D09mP7/QK+iCrJE8TcdLvYNjMnGkwNb0zqrcFIu+VCG7cIdlnIG8OsIS
         e31DeTUaJi7ypXDbNTPh3EeshCYnCAdGnlYSn2OVIz0AlJiIHXrGPurVhcypO/jND4e7
         Q80EvHhljEmnhXFI5Siw/yMQ0zSdy6F1EllFDlqp9TGqQ7bPzJRNQmLnctG/VmqV4WgL
         ZzcQ57VyP6Uc7QDmq8ANpK9d6OPIUar/9vub2nL2DeNdWhUvzNIrFapGPmRKoW+FOkwm
         miqg==
X-Received: by 10.180.82.169 with SMTP id j9mr1972237wiy.40.1427631791937;
        Sun, 29 Mar 2015 05:23:11 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id dj5sm11032785wjb.28.2015.03.29.05.23.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 29 Mar 2015 05:23:11 -0700 (PDT)
Date: Sun, 29 Mar 2015 15:22:15 +0300
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] iio: magnetometer: mag3110.c: Place driver on standby on
 error
Message-ID: <8207e365c0599cf7e89b71e1f10cd550a9264e7c.1427630628.git.cristina.opriceana@gmail.com>
References: <cover.1427630628.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1427630628.git.cristina.opriceana@gmail.com>
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


