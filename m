X-GM-THRID: 6254577761914978304
X-Received: by 10.129.85.68 with SMTP id j65mr35414061ywb.57.1456257366721;
        Tue, 23 Feb 2016 11:56:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.228 with SMTP id c91ls2502543qgf.37.gmail; Tue, 23 Feb
 2016 11:56:05 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr33168863ywp.33.1456257365966;
        Tue, 23 Feb 2016 11:56:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-yk0-x22e.google.com (mail-yk0-x22e.google.com. [2607:f8b0:4002:c07::22e])
        by gmr-mx.google.com with ESMTPS id q187si1764912ywf.4.2016.02.23.11.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:56:05 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4002:c07::22e as permitted sender) client-ip=2607:f8b0:4002:c07::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:4002:c07::22e as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yk0-x22e.google.com with SMTP id u9so80778621ykd.1
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=UmYenxJdaY7HWo+QLmY6u5dsBrFxGuzq7TPGUUCUeKU=;
        b=CsTESx+EO49HCZT2HH/CyIQESJn/nee+kybE6mcXBW7sxJcSxKZm28R6Dv3HjCitNP
         HPo110CtZr9Rr0vxNDM2FX2LupkNbkWP9hanyv+fDceg70vGxqUajBZf2Rdu6t658tZY
         uImiKs8AiYdQp+60YbWCRgQ5eGKzIhlaPMLIuH9vna03+YiQHLLxrpAneQqjqXNNm85E
         0ukTkg9IELV48KiOdYZrojmwkO11FhY5+ZmrMFhil/IAwpAX7zKnj9jnv3F2iP1yeNWA
         3KgimD1Cta9ZPQaQDuunL1kP8Rx21InZJ/5ssK1YkYyfojrYKPtuvLtw26W+YTh8nn2/
         8laQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=UmYenxJdaY7HWo+QLmY6u5dsBrFxGuzq7TPGUUCUeKU=;
        b=frpQyzgwXjcQcqiObkGRb3963+XvZue4ROgI1dLjXWoGM2DUDcwc7SxrVR9TPUXJ28
         Jwvl0Jp6akA7O6WlrE+DFmj3IZyS8jzfFeoVoeWn9vh6E+DbxThPHZcSjJutRTpAraZn
         U8yiGf76tjbdMIQjdfLpmnrXGfA+vMVisIDl7l87RNn1SFpHn24Hdp87OgSbfzfWqBFn
         uFi28ybsKVdKbHMtqy7XzI3AQyG/rYr1nevJSz0POn7zH6kYAZrZTp4hCtqZnIQnpCO0
         zqCPc7BlL3uorHjKbTc0X7B4BscMqqPMjQXU476sl5kKmVwix0pz4aX6tW/NACmGrD8v
         os0w==
X-Gm-Message-State: AG10YOTAR2ya9dyVgDhIBaVk7XUyZwwodvvjS+NjDgmBuJF/ms9lrIx21Qke9UH9794acw==
X-Received: by 10.37.41.214 with SMTP id p205mr1840058ybp.85.1456257365815;
        Tue, 23 Feb 2016 11:56:05 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (pool-68-133-44-176.bflony.fios.verizon.net. [68.133.44.176])
        by smtp.gmail.com with ESMTPSA id z7sm24840956ywf.7.2016.02.23.11.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:56:05 -0800 (PST)
Date: Tue, 23 Feb 2016 19:55:17 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: drivers: Do not use | with a variable with
 value 0
Message-ID: <20160224005517.GA3677@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The variable events has a value equal to 0. There is no point combining
it with other things with |. Semantic patch used:
@@
expression x, e, e1;
statement S;
@@

  if(x == 0) {
    ... when != x = e1
        when != while(...) S
	when != for(...;...;...) S
(
* x |= e
|
* x | e
)
  ... when any
}

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci230.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 4b39f69..0c4d9fe 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -1107,7 +1107,7 @@ static bool pci230_handle_ao_fifo(struct comedi_device *dev,
 		/* Check for FIFO underrun. */
 		if (dacstat & PCI230P2_DAC_FIFO_UNDERRUN_LATCHED) {
 			dev_err(dev->class_dev, "AO FIFO underrun\n");
-			events |= COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
+			events = COMEDI_CB_OVERFLOW | COMEDI_CB_ERROR;
 		}
 		/*
 		 * Check for buffer underrun if FIFO less than half full
-- 
2.5.0


