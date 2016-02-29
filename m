X-GM-THRID: 6256792083376373760
X-Received: by 10.107.12.213 with SMTP id 82mr19887065iom.18.1456774066157;
        Mon, 29 Feb 2016 11:27:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.73.226 with SMTP id o2ls586418igv.8.gmail; Mon, 29 Feb 2016
 11:27:45 -0800 (PST)
X-Received: by 10.107.135.93 with SMTP id j90mr19471245iod.27.1456774065772;
        Mon, 29 Feb 2016 11:27:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si4146376pad.2.2016.02.29.11.27.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Feb 2016 11:27:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id t66so5182066pfb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 29 Feb 2016 11:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PqL+SpJSIEWzK/fxEHhljmVdkz6Dyu5QRgoR6gnOYVw=;
        b=e7/UDqhV+b9qKHwSbQc0xm4E+xfVNMUKodF20NkhsDLWy32hOMS5+NDXNNjbJlBjCn
         MdMow9PPvmfLRSxeapBSbIFU4SLVqhnCt8QnnzFG4eEFWZQmsHgalKu4wCMnehR0Rm08
         ZtmFhvfpAvLwy5DHZG9uqwpYETqg7jA6jqyGTdsR9lGwP39sLTnUdn5jbZWsLU30+yax
         dSiL7C5dSRnS/7nf4wgXLj8TYSdFdoFx1qmrjOf44KrjNAYO5/ubKEj7lCALct0Lzqwb
         dTyuJinn/H48HbneQ8RwOiW6xH1vnmxUkEn5pjOWEPHEr2Z+u7a1z7nR4GnRpIwkszW/
         Kifw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=PqL+SpJSIEWzK/fxEHhljmVdkz6Dyu5QRgoR6gnOYVw=;
        b=BwQtnbu1/pvMbfzc3QPtK2566V3ZGSajstaxA5Z7CK7QjuYZJ9hLfIQVZsA31Yf4Hd
         hEg8oDx0wFjWX+cgbGD8z4WtZW6bfk8KhRw2dVvTSaRkJXIf2dpcBEj85vWjs/Yy+edS
         /BN9+Mo790UF7D5DqzhlRcxwbxETPmvOX4fhRzSHx6/tPeyGAlJE9F1el9cY+jFl8quq
         nVhLH0cq24Xd5NMCfJQoBAl3HWApCU4V0rKEubO1d/7vcgw71X6k9GGtL/K5hsSF/SqM
         rIvuEqj3D0MIH9mvqByfxpxHxbq7BcDIzdXf1CAaxYxKlQfpH8RFgNr4QAqWFpJVSSFU
         BpQA==
X-Gm-Message-State: AD7BkJJZkXcmzLPnYzpRwuzG5GlcjzYgV7/l6wpesni4FBZrDifhy0LtojKGU33l2wWFbA==
X-Received: by 10.98.74.74 with SMTP id x71mr16693825pfa.135.1456774065608;
        Mon, 29 Feb 2016 11:27:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.65])
        by smtp.gmail.com with ESMTPSA id w20sm4847227pfi.31.2016.02.29.11.27.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 29 Feb 2016 11:27:45 -0800 (PST)
Date: Mon, 29 Feb 2016 16:57:53 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/5] Staging: gdm72xx: Remove unnecessary goto.
Message-ID: <ac2338054d0a82e95bf038d687825041098c8aa5.1456743650.git.bankarsandhya512@gmail.com>
References: <cover.1456743650.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456743650.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary goto.
Used below semantic patch to detect the unnecessary goto:
@r@
expression ret;
identifier f,l;
statement S;
position p;
@@

(
if (<+...f(...)...+>) S
|
if@p (...) return ret;
return ret;
|
if@p (...) goto l;
l:
return ret;
)

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/gdm72xx/usb_boot.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/usb_boot.c b/drivers/staging/gdm72xx/usb_boot.c
index 99a5c07..eb28c2e 100644
--- a/drivers/staging/gdm72xx/usb_boot.c
+++ b/drivers/staging/gdm72xx/usb_boot.c
@@ -257,8 +257,7 @@ static int em_wait_ack(struct usb_device *usbdev, int send_zlp)
 
 	/*Wait for ACK*/
 	ret = gdm_wibro_recv(usbdev, &ack, sizeof(ack));
-	if (ret < 0)
-		goto out;
+
 out:
 	return ret;
 }
-- 
1.8.3.4


