X-GM-THRID: 6950918029312
X-Received: by 10.112.125.67 with SMTP id mo3mr933181lbb.6.1425668879315;
        Fri, 06 Mar 2015 11:07:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.99.40 with SMTP id en8ls162295wib.11.gmail; Fri, 06 Mar
 2015 11:07:59 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr3010651wib.2.1425668879019;
        Fri, 06 Mar 2015 11:07:59 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id l8si242200wia.0.2015.03.06.11.07.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:07:59 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22c.google.com with SMTP id p10so59135360wes.12
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 11:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=3vcmNxLNB3+UB62uRFY3fkVA3IJPB1el2UvxolQ8A+k=;
        b=WiQjAU6LZe58C+IqNF7vCzgOnFNPaWT3QEdDWpHZ/0SmYlqP5PLYDUohwDYDqF3snY
         hIZOM8C3FqIJXstjCmqR5hPZ6ZIoyg5tzyN3YODkB9rQh4eRtFiZJh3eCNG+6gzD3DOK
         R46q801LTRgKiLkac8kE5UUm9KHo0wq+0gXDGaGLfFv6agvr5xlXU/EVoaZQ21LC39pu
         CCjk2cjedX8SO5ZtZ+081wDAfHvGEiqFYPQnj+D1cuRgloYA8weudpLR0GE+K8W0fRrd
         L0dQ0omVExjlDyKHZOxyG3KcHWcoqlYmbiKiqzrCKqzP4K1+OUZ4KGRE0By4zF+TA5Lo
         hfsQ==
X-Received: by 10.194.93.134 with SMTP id cu6mr31691868wjb.79.1425668878900;
        Fri, 06 Mar 2015 11:07:58 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.175])
        by mx.google.com with ESMTPSA id cb9sm3454609wib.10.2015.03.06.11.07.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 11:07:57 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id DE58A62672; Fri,  6 Mar 2015 22:07:54 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 8/8] Staging: ste_rmi4: clean dev_err logging
Date: Fri,  6 Mar 2015 22:07:13 +0300
Message-Id: <1425668833-27627-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425668163-27190-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes  __func__ from dev_err. dev_err includes information about:
(devcice, driver, specific instance of device, etc) in the log printout.
This was done using Coccinelle, with the following semantic patch:

@a@
expression E, R;
expression  msg;
@@

dev_err(E, msg, __func__, R);

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
expression a.E, a.msg, a.R;
identifier  b.y;
@@

- dev_err(E, msg, __func__, R);
+ dev_err(E, y, R);

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
index 508f8e1..be5ad12 100644
--- a/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
+++ b/drivers/staging/ste_rmi4/synaptics_i2c_rmi4.c
@@ -209,7 +209,7 @@ static int synaptics_rmi4_set_page(struct synaptics_rmi4_data *pdata,
 		txbuf[1]	= page;
 		retval	= i2c_master_send(i2c, txbuf, PAGE_LEN);
 		if (retval != PAGE_LEN)
-			dev_err(&i2c->dev, "%s:failed:%d\n", __func__, retval);
+			dev_err(&i2c->dev, "failed:%d\n", retval);
 		else
 			pdata->current_page = page;
 	} else
@@ -283,7 +283,7 @@ static int synaptics_rmi4_i2c_byte_write(struct synaptics_rmi4_data *pdata,
 	retval		= i2c_master_send(pdata->i2c_client, txbuf, 2);
 	/* Add in retry on writes only in certain error return values */
 	if (retval != 2) {
-		dev_err(&i2c->dev, "%s:failed:%d\n", __func__, retval);
+		dev_err(&i2c->dev, "failed:%d\n", retval);
 		retval = -EIO;
 	} else
 		retval = 1;
@@ -823,8 +823,8 @@ static int synaptics_rmi4_i2c_query_device(struct synaptics_rmi4_data *pdata)
 
 	/* Check if this is a Synaptics device - report if not. */
 	if (pdata->rmi4_mod_info.manufacturer_id != 1)
-		dev_err(&client->dev, "%s: non-Synaptics mfg id:%d\n",
-			__func__, pdata->rmi4_mod_info.manufacturer_id);
+		dev_err(&client->dev, "non-Synaptics mfg id:%d\n",
+			pdata->rmi4_mod_info.manufacturer_id);
 
 	list_for_each_entry(rfi, &pdata->rmi4_mod_info.support_fn_list, link)
 		data_sources += rfi->num_of_data_sources;
@@ -979,8 +979,8 @@ static int synaptics_rmi4_probe
 					platformdata->irq_type,
 					DRIVER_NAME, rmi4_data);
 	if (retval) {
-		dev_err(&client->dev, "%s:Unable to get attn irq %d\n",
-				__func__, client->irq);
+		dev_err(&client->dev, "Unable to get attn irq %d\n",
+			client->irq);
 		goto err_query_dev;
 	}
 
-- 
1.9.1


