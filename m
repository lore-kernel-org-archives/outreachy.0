X-GM-THRID: 6618634579794198528
X-Received: by 2002:a63:7949:: with SMTP id u70-v6mr37761pgc.91.1541020949254;
        Wed, 31 Oct 2018 14:22:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:988c:: with SMTP id s12-v6ls6534258plp.4.gmail; Wed,
 31 Oct 2018 14:22:28 -0700 (PDT)
X-Google-Smtp-Source: AJdET5cpCbCi1ydMyrUIQ59zzjlWLwOqTcnKNk0yYYdBrxs7gX+EZE9gVtUETNXImnrnIkh61cKB
X-Received: by 2002:a17:902:507:: with SMTP id 7-v6mr1501829plf.22.1541020948160;
        Wed, 31 Oct 2018 14:22:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1541020948; cv=pass;
        d=google.com; s=arc-20160816;
        b=ngS9iKiIsUDwhsP+gsXTkzktBHa1qJbxWO9YRlKpcNWkIH4uWt3BaFCYaF6T0ipnKd
         uv25sTOYmQJUFDwytaoxpRNupL3mUhQOa/KbMlt4z/RITYjEhMUozna42ulBbLAkVTlj
         YS5A1dFtG7xRiYPdGdxnocqMWHN5XzEJeGz51yxGjPnIChrmiN+bi8nr8iRAwAnXTqTX
         1MqNpMEJ2Mg1W0WDlvxDo+n5u0bMBsCrFsD9ivMtnaFuXSho2Uqbq2jW1mIhKnZbAQa1
         FgwpBkqnhUeL8SrpxQ+2+BntpPrkl2SBld6Vm0GamwjqdWlnXk0WMEedCXG/114b2nY4
         /ltg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Ht8tNiq/MfVB7GDmhK9rxGWw8EMFN8Gt86Qiv+e5uQE=;
        b=tbp9H63LADDDjG1ehAAq7+OdbxeI2uUqQ70+ydq754aSGxJwQWDIZS09A4q02oBSoV
         i4TrCnao8Q4xv54mkNgRVo0ervRDG7kRlonsLFHlxtXZ2fCBKlh1IpkHhunasfk6iKuv
         i4S6QF6K6lyeGq3oi9cokCSRqfvT9FFXRcwfJZJ7UcdzwPrgGzdXXOha3INEUAXtIGww
         mI4Ky0535Yf7kg8H/k2HMRQO+mYg8/Qe1NRo3Tt8SjZ9kGyJjig++6lEeNuE6J/jwDo5
         t144Fb0xvhEi/I8JP6vQfTKUkdZHGWEF6qXxVipxVh/6M101TSG5o0Xn/TMg28CGHnjC
         YCkw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=g8btpYdg;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [185.20.209.243])
        by gmr-mx.google.com with ESMTPS id 184-v6si1641284pgb.4.2018.10.31.14.22.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 14:22:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) client-ip=185.20.209.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=g8btpYdg;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 185.20.209.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1541020943; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=bcjgQ5aCI+PtLhjrUA05uE4TC4nEkwXY8dOXp+mPrsljGFFHEM3FL79vYwdqYtclsWfGrb0c2V5A9WjTpWeiT2lgvFlut8retlSxSA1mNr5aJoFpJi55nttaD39yjEp6ZcP390HzG1DAQDD0LYHajpR/JRHxxBw/9Qn3cdohIKk=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1541020943; h=Content-Type:Cc:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results; 
	bh=Ht8tNiq/MfVB7GDmhK9rxGWw8EMFN8Gt86Qiv+e5uQE=; 
	b=ijNprI2XgJsoTAyWBZ9OHc96Sbd+U11krE/6KG/6MEYho8W1sqyo5wj0CKoIk+JI+vO90hr5A4y2Bcg5Cjf/iw/XoTeN4QQk8Hqn0UEUgRTmujt9/X3yACjPQ6H3z0RJHcXTrASQntoNvFFfCUtf3++IfsaskMtQQv2++/UzF3M=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1541020943;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type;
	l=1497; bh=Ht8tNiq/MfVB7GDmhK9rxGWw8EMFN8Gt86Qiv+e5uQE=;
	b=g8btpYdgH/0CQIegX+j+wy4MFnlfxLIbweYhzq4uKVBElHFGikwuhfihI/vPOuCz
	zdPu7mw1b3JT6/Ec68OrHhkYo1A+5UF3dHzVIolEj5fmBplUhghHolAAnqXTeFcQsu1
	QYFgVGnY6fxlEJKj95kqKzEiyJxUwuGnfXbefu0E=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1541020942123261.8489991821442; Wed, 31 Oct 2018 22:22:22 +0100 (CET)
Date: Wed, 31 Oct 2018 21:22:20 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, sasha.levin@microsoft.com
Subject: [PATCH v4] staging: gasket: Create a free memory error path
Message-ID: <20181031212220.GA24472@kvasir.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

Create an error handling path for memory allocation. It avoids repeating
the same assignments and returns the respective ENOMEM.

Signed-off-by: Ioannis Valasakis <code@wizofe.uk>
---
Changes in v4:
	- Rebase against gregkh staging source tree
	- Modified the error handling paths to correctly free the
	  respective memory

drivers/staging/gasket/gasket_interrupt.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
index 49d47afad64f..721d590e7c34 100644
--- a/drivers/staging/gasket/gasket_interrupt.c
+++ b/drivers/staging/gasket/gasket_interrupt.c
@@ -340,17 +340,14 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 					       sizeof(struct eventfd_ctx *),
 					       GFP_KERNEL);
 	if (!interrupt_data->eventfd_ctxs) {
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_free_ctxs;
 	}
 
 	interrupt_data->interrupt_counts = kcalloc(driver_desc->num_interrupts,
 						   sizeof(ulong),
 						   GFP_KERNEL);
 	if (!interrupt_data->interrupt_counts) {
-		kfree(interrupt_data->eventfd_ctxs);
-		kfree(interrupt_data);
-		return -ENOMEM;
+		goto err_free_all;
 	}
 
 	switch (interrupt_data->type) {
@@ -379,6 +376,12 @@ int gasket_interrupt_init(struct gasket_dev *gasket_dev)
 				    interrupt_sysfs_attrs);
 
 	return 0;
+
+err_free_counts:
+	kfree(interrupt_data->eventfd_ctxs);
+err_free_ctxs:
+	kfree(interrupt_data);
+	return -ENOMEM;
 }
 
 static void
-- 
2.19.1



