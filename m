X-GM-THRID: 6758181371904
X-Received: by 10.112.198.34 with SMTP id iz2mr1568361lbc.22.1425592566495;
        Thu, 05 Mar 2015 13:56:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.74.203 with SMTP id w11ls428796wiv.50.canary; Thu, 05 Mar
 2015 13:56:06 -0800 (PST)
X-Received: by 10.180.101.101 with SMTP id ff5mr5010708wib.5.1425592566166;
        Thu, 05 Mar 2015 13:56:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id i8si675913wif.1.2015.03.05.13.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:56:06 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wghl18 with SMTP id l18so2096126wgh.11
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 13:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=j0mAWVgAuK5fKjwJhZK11/vjOypSZ1Qg2lVokxBSHEI=;
        b=URKvN591f72gOQYaxmxfio3TXUtr90Tm6YSYMIU+NcorEhrQQ/VpyteifsYV9bnqus
         CwIvIPCnrKTTmBsqYd6Mtw+i6AR19nbKebtzSQ0dNoXwXIZ1m0no2hk3/i45E6IaGlQO
         pg4UVFl/IgVWFoe5tefEoRKVymxmvtJ0rE2+sxa+Ic5wA/pYE5Vws92A/XI1Wrr9QV17
         aqGkcxFSQrnIcWPMJFciLlD6xMdo+UT0ZXqm7MDSQDbqcPjotVBCK56xHgG4AVnpFJtw
         COoA07roeib2RIi0roUvJCVx+clcuDVlTgNr+AtzPaFUKjqF0+CEIXzeV12WNeXPD0q7
         akSQ==
X-Received: by 10.194.200.196 with SMTP id ju4mr22400156wjc.47.1425592566056;
        Thu, 05 Mar 2015 13:56:06 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id v16sm31473242wib.5.2015.03.05.13.56.04
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 13:56:05 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 2FDC762672; Fri,  6 Mar 2015 00:55:57 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v3 7/7] Staging: ste_rmi4: Clean dev_err() logging
Date: Fri,  6 Mar 2015 00:55:55 +0300
Message-Id: <1425592555-29909-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425583768-27996-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
 (devcice, driver, specific instance of device, etc) in the log printout, so there is no need for  __func__.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E;
expression  msg;
@@

dev_err(E, msg, __func__);

@script:python b@
e << a.msg;
y;
@@

if(e.find("%s: ") == True):
	m = e.replace("%s: ", "", 1);
	coccinelle.y = m;
elif(e.find("%s ") == True):
	m = e.replace("%s ", "", 1);
	coccinelle.y = m;
elif(e.find("%s:") == True):
	m = e.replace("%s:", "", 1);
	coccinelle.y = m;
else:
	m = e.replace("%s", "",1);
	coccinelle.y = m;

@c@
expression a.E, a.msg;
identifier  b.y;
@@

- dev_err(E, msg, __func__);
+ dev_err(E, y);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 37 ++++++++++-----------------
 1 file changed, 13 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
index f92ae1d..508f8e1 100644
--- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
+++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
@@ -339,8 +339,7 @@ static int synpatics_rmi4_touchpad_report(struct synaptics_rmi4_data *pdata,
 	retval = synaptics_rmi4_i2c_block_read(pdata, data_base_addr, values,
 							finger_registers);
 	if (retval != finger_registers) {
-		dev_err(&client->dev, "%s:read status registers failed\n",
-								__func__);
+		dev_err(&client->dev, "read status registers failed\n");
 		return 0;
 	}
 	/*
@@ -371,8 +370,7 @@ static int synpatics_rmi4_touchpad_report(struct synaptics_rmi4_data *pdata,
 						data_offset, data,
 						data_reg_blk_size);
 			if (retval != data_reg_blk_size) {
-				dev_err(&client->dev, "%s:read data failed\n",
-								__func__);
+				dev_err(&client->dev, "read data failed\n");
 				return 0;
 			}
 			x = (data[0] << 4) | (data[2] & MASK_4BIT);
@@ -419,8 +417,7 @@ static int synaptics_rmi4_report_device(struct synaptics_rmi4_data *pdata,
 	if (rfi->fn_number != SYNAPTICS_RMI4_TOUCHPAD_FUNC_NUM) {
 		num_error_reports++;
 		if (num_error_reports < MAX_ERROR_REPORT)
-			dev_err(&client->dev, "%s:report not supported\n",
-								__func__);
+			dev_err(&client->dev, "report not supported\n");
 	} else
 		touch = synpatics_rmi4_touchpad_report(pdata, rfi);
 	return touch;
@@ -545,8 +542,7 @@ static int synpatics_rmi4_touchpad_detect(struct synaptics_rmi4_data *pdata,
 							queries,
 							sizeof(queries));
 	if (retval != sizeof(queries)) {
-		dev_err(&client->dev, "%s:read function query registers\n",
-							__func__);
+		dev_err(&client->dev, "read function query registers\n");
 		return retval;
 	}
 	/*
@@ -670,16 +666,14 @@ static int synaptics_rmi4_touchpad_config(struct synaptics_rmi4_data *pdata,
 						rfi->fn_desc.query_base_addr,
 						data, QUERY_LEN);
 	if (retval != QUERY_LEN)
-		dev_err(&client->dev, "%s:read query registers failed\n",
-								__func__);
+		dev_err(&client->dev, "read query registers failed\n");
 	else {
 		retval = synaptics_rmi4_i2c_block_read(pdata,
 						rfi->fn_desc.ctrl_base_addr,
 						data, DATA_BUF_LEN);
 		if (retval != DATA_BUF_LEN) {
 			dev_err(&client->dev,
-				"%s:read control registers failed\n",
-								__func__);
+				"read control registers failed\n");
 			return retval;
 		}
 		/* Store these for use later*/
@@ -727,7 +721,7 @@ static int synaptics_rmi4_i2c_query_device(struct synaptics_rmi4_data *pdata)
 						sizeof(rmi_fd));
 		if (retval != sizeof(rmi_fd)) {
 			/* failed to read next PDT entry */
-			dev_err(&client->dev, "%s: read error\n", __func__);
+			dev_err(&client->dev, "read error\n");
 			return -EIO;
 		}
 		rfi = NULL;
@@ -799,8 +793,7 @@ static int synaptics_rmi4_i2c_query_device(struct synaptics_rmi4_data *pdata)
 					std_queries,
 					sizeof(std_queries));
 	if (retval != sizeof(std_queries)) {
-		dev_err(&client->dev, "%s:Failed reading queries\n",
-							__func__);
+		dev_err(&client->dev, "Failed reading queries\n");
 		 return -EIO;
 	}
 
@@ -847,8 +840,7 @@ static int synaptics_rmi4_i2c_query_device(struct synaptics_rmi4_data *pdata)
 						return retval;
 				} else
 					dev_err(&client->dev,
-						"%s:fn_number not supported\n",
-								__func__);
+						"fn_number not supported\n");
 				/*
 				 * Turn on interrupts for this
 				 * function's data sources.
@@ -919,15 +911,13 @@ static int synaptics_rmi4_probe
 
 	rmi4_data->regulator = regulator_get(&client->dev, "vdd");
 	if (IS_ERR(rmi4_data->regulator)) {
-		dev_err(&client->dev, "%s:get regulator failed\n",
-							__func__);
+		dev_err(&client->dev, "get regulator failed\n");
 		retval = PTR_ERR(rmi4_data->regulator);
 		goto err_get_regulator;
 	}
 	retval = regulator_enable(rmi4_data->regulator);
 	if (retval < 0) {
-		dev_err(&client->dev, "%s:regulator enable failed\n",
-							__func__);
+		dev_err(&client->dev, "regulator enable failed\n");
 		goto err_regulator_enable;
 	}
 	init_waitqueue_head(&rmi4_data->wait);
@@ -952,8 +942,7 @@ static int synaptics_rmi4_probe
 	 */
 	retval = synaptics_rmi4_i2c_query_device(rmi4_data);
 	if (retval) {
-		dev_err(&client->dev, "%s: rmi4 query device failed\n",
-							__func__);
+		dev_err(&client->dev, "rmi4 query device failed\n");
 		goto err_query_dev;
 	}
 
@@ -997,7 +986,7 @@ static int synaptics_rmi4_probe
 
 	retval = input_register_device(rmi4_data->input_dev);
 	if (retval) {
-		dev_err(&client->dev, "%s:input register failed\n", __func__);
+		dev_err(&client->dev, "input register failed\n");
 		goto err_free_irq;
 	}
 
-- 
1.9.1


