X-GM-THRID: 4475579269120
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9816ab370498a2c8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.6.232 with SMTP id e8mr2054067laa.2.1425042609763;
        Fri, 27 Feb 2015 05:10:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.103.202 with SMTP id fy10ls83943wib.15.canary; Fri, 27 Feb
 2015 05:10:09 -0800 (PST)
X-Received: by 10.194.161.194 with SMTP id xu2mr2047736wjb.1.1425042609130;
        Fri, 27 Feb 2015 05:10:09 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id o3si107658wib.2.2015.02.27.05.10.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:10:09 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id k14so20383060wgh.3
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:10:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=LAk7jKQvwWvKhZdJ9WmHifpn2qKdzK0Rnsh23/E91sY=;
        b=KEHqWbXK0SgyAP108w53WZpOqDkfjHpdVgwrYVqpKlenzHa6asjSUz2HoL3QjeKaUR
         5DB/7FDwsUJCe4gaBiTv9h3L2TXJE4ukUABXESkp4x2XCFCwSSOmmz/vVMkkndWUumrW
         uvganWoO6mV1llfBd1Pa/mW2izxPSyqJeIWbJbMroAlOCuMpnzQ4gNjHAnpgL3e10vCE
         brP18Jyqp36uLlEF06UVisfjb+7xwsyY1DCQK1t8hgPCFRr5mbPPGIS9+hDaDUVW65wY
         q9t/yr5Q8B8eSG3E8F12vjuCxZWntEIW+VRw5Qd2NpPM0IQ/F24Okf16zjbFdKd2ajMf
         1dHg==
X-Received: by 10.194.61.100 with SMTP id o4mr28008311wjr.28.1425042609063;
        Fri, 27 Feb 2015 05:10:09 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id j7sm2791451wix.4.2015.02.27.05.10.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:10:08 -0800 (PST)
Date: Fri, 27 Feb 2015 15:09:53 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 22/24] staging: iio: light: remove unused variable
Message-ID: <2708e05145be19e83323dff3614508efb18f4244.1425035012.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/iio/light/tsl2583.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/iio/light/tsl2583.c b/drivers/staging/iio/light/tsl2583.c
index 8afae8e..b5e1b8b 100644
--- a/drivers/staging/iio/light/tsl2583.c
+++ b/drivers/staging/iio/light/tsl2583.c
@@ -471,14 +471,12 @@ static int taos_chip_on(struct iio_dev *indio_dev)
 static int taos_chip_off(struct iio_dev *indio_dev)
 {
 	struct tsl2583_chip *chip = iio_priv(indio_dev);
-	int ret;
 
 	/* turn device off */
 	chip->taos_chip_status = TSL258X_CHIP_SUSPENDED;
-	ret = i2c_smbus_write_byte_data(chip->client,
+	return i2c_smbus_write_byte_data(chip->client,
 					TSL258X_CMD_REG | TSL258X_CNTRL,
 					0x00);
-	return ret;
 }
 
 /* Sysfs Interface Functions */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

