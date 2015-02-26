X-GM-THRID: 3635562938368
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b905441b98bf8956
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr1132802lan.1.1424943350665;
        Thu, 26 Feb 2015 01:35:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.181.137 with SMTP id dw9ls9324lac.85.gmail; Thu, 26 Feb
 2015 01:35:50 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr1151643lbb.11.1424943350198;
        Thu, 26 Feb 2015 01:35:50 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id by11si1552502wib.1.2015.02.26.01.35.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 01:35:50 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x229.google.com with SMTP id k11so8767409wes.11
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 01:35:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=4dCTg8CqyLrJt56X3EyYEU9DAr2AnNoAGFBAYYBMQHw=;
        b=EYBojvAhsNUZkSBJS/8sCko4xfy78ItnUYoTGg68c2Zt+JvuDnah7AvO8m9A3smwAN
         P0MohrAdjM7+9dgTyPc8bDFh3QSbo0/s+Qm2S8r/K6WfsrFU/0SznFqfR7MFTtwOnVMV
         m/lb5pvjN4OgGOTD/ZZb2+ZGtO57gyar1KG5nVXyLEBsHimJ3cdfIq54UivvSOsyEUdd
         2hgz2emqN9pg+FgqJaXSnYbi48DVKgBVPzQFaKeWerRVGy4e+s2fpic2KZwZBMoepbqw
         kbmPUb4i8+CtWrcAhm27fF7d2MDldWRWQZxDIZm4zVf8rBHIJtKHgPsLSGy/MZ6QmkdK
         2/rw==
X-Received: by 10.180.14.66 with SMTP id n2mr47216518wic.50.1424943350113;
        Thu, 26 Feb 2015 01:35:50 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.191.167])
        by mx.google.com with ESMTPSA id n3sm490434wja.36.2015.02.26.01.35.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:35:49 -0800 (PST)
Date: Thu, 26 Feb 2015 11:35:45 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/24] staging: rtl8712: rewrite the right hand side of an
 assignment
Message-ID: <1671b3e1c4d377b61bccdf95866df97a896a7ef3.1424942339.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1424942337.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch rewrites the right hand side of an assignment for
expressions of the form:
a = (a <op> b);
to be:
a <op>= b;
where <op> = << | >>.

This issue was detected and resolved using the following
coccinelle script:

@@
identifier i;
expression e;
@@

-i = (i >> e);
+i >>= e;

@@
identifier i;
expression e;
@@

-i = (i << e);
+i <<= e;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_eeprom.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_eeprom.c b/drivers/staging/rtl8712/rtl871x_eeprom.c
index 2f145d6..50339e6 100644
--- a/drivers/staging/rtl8712/rtl871x_eeprom.c
+++ b/drivers/staging/rtl8712/rtl871x_eeprom.c
@@ -64,7 +64,7 @@ static void shift_out_bits(struct _adapter *padapter, u16 data, u16 count)
 		udelay(CLOCK_RATE);
 		up_clk(padapter, &x);
 		down_clk(padapter, &x);
-		mask = mask >> 1;
+		mask >>= 1;
 	} while (mask);
 	if (padapter->bSurpriseRemoved == true)
 		goto out;
@@ -83,7 +83,7 @@ static u16 shift_in_bits(struct _adapter *padapter)
 	x &= ~(_EEDO | _EEDI);
 	d = 0;
 	for (i = 0; i < 16; i++) {
-		d = d << 1;
+		d <<= 1;
 		up_clk(padapter, &x);
 		if (padapter->bSurpriseRemoved == true)
 			goto out;
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

