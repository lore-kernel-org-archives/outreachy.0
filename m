X-GM-THRID: 6252689592181325824
X-Received: by 10.107.128.102 with SMTP id b99mr9545441iod.1.1455817742845;
        Thu, 18 Feb 2016 09:49:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.35.52 with SMTP id m49ls4474989qgm.97.gmail; Thu, 18 Feb
 2016 09:49:02 -0800 (PST)
X-Received: by 10.13.204.85 with SMTP id o82mr8445255ywd.51.1455817742090;
        Thu, 18 Feb 2016 09:49:02 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-ig0-x230.google.com (mail-ig0-x230.google.com. [2607:f8b0:4001:c05::230])
        by gmr-mx.google.com with ESMTPS id s20si296125igr.2.2016.02.18.09.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:49:02 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) client-ip=2607:f8b0:4001:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4001:c05::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ig0-x230.google.com with SMTP id xg9so17805159igb.1
        for <outreachy-kernel@googlegroups.com>; Thu, 18 Feb 2016 09:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=13sqS64hwV/5aL+XUYgBDANMPX99xbIyd1xIKw88yec=;
        b=tA8+piBxo0CXsZz9HFMUasZCyBEUYVDOR0OKyZouNUPMVFijwY38U8i9A/h852GDm1
         +zbYSx0LabqvlESujD8WXMiHqqxUgxO0dmgUei/qiOpD9jtVKnlcU8H19WDlVwZZ8qW/
         zqRnvyoG45jwt/1o4XipiEnkwdSZNxUWM2Jv76UU4RDxU+Usi7FUsIa7N7uPIv4fvtkB
         P1nvBIPYtF+PjbQCXNqUo4VMNABfNZKLCveYYgeWXBDTUlcWbWrPjJbp49oEiCJ8xITf
         nQ9BbErzYlmUpNmuXxTWMW9HOCJFGhkZCxLje7eVxh49E0QKinV7iXZRvwSxmXGvZIKn
         XzkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=13sqS64hwV/5aL+XUYgBDANMPX99xbIyd1xIKw88yec=;
        b=cRKJGVm3WudczK7nDX8TXeZ+BLfhsJFwXCm21ovaB6PEICLokXsdNsDyRLUjntey6l
         dnCpmacCBBGJU9A6LwuPc2c7BWyzzTlrygtr3/gyrZIdQKzMOC7x/12ZowZoA3gue0cV
         Q8+uRObIP0iyvwgGT9hUwSdM1Ht2Tr/Esx++sAkrs/aaDuuOWfUj4oGG8vzXWPGrJkDe
         yMYkNAHYYdtNvqw55xh47GEBS4smwKAj6CLyQ26W60GObQ9uenb1/4bsm1AEU/L1FcjS
         WBdhyuLFe5scrtyXR8R+icw9qQENkqw/fzq+Ft0gIUqXojHLvaS4ZGjrKASm8H+jsCcx
         3A3w==
X-Gm-Message-State: AG10YOQ1+CL9XfC+AnTlpzFoTOGB9rqeo78CJkHM6+slwsnJGiPtfcEvUf1JEG9VThl8lA==
X-Received: by 10.50.28.105 with SMTP id a9mr4842108igh.94.1455817741954;
        Thu, 18 Feb 2016 09:49:01 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id l94sm3933681iod.13.2016.02.18.09.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2016 09:49:01 -0800 (PST)
Date: Thu, 18 Feb 2016 17:48:17 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: Remove unnecessary else following
 return
Message-ID: <20160218224817.GA8075@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Else is unnecessary when there is a return statement in the
corresponding if block.
Coccinelle patch:

@rule1@ 
expression e1; 
@@ 

	if (e1) { ... return ...; } 
-       else{ 
	        ... 
-            } 


@rule2@ 
expression e2; 
statement s1; 
@@ 

	if(e2) { ... return ...; } 
-       else 
		s1

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/comedi/drivers/comedi_isadma.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/comedi_isadma.c b/drivers/staging/comedi/drivers/comedi_isadma.c
index 6ba71d1..68ef9b1 100644
--- a/drivers/staging/comedi/drivers/comedi_isadma.c
+++ b/drivers/staging/comedi/drivers/comedi_isadma.c
@@ -132,8 +132,7 @@ unsigned int comedi_isadma_poll(struct comedi_isadma *dma)
 		result = result1;
 	if (result >= desc->size || result == 0)
 		return 0;
-	else
-		return desc->size - result;
+	return desc->size - result;
 }
 EXPORT_SYMBOL_GPL(comedi_isadma_poll);
 
-- 
2.5.0


