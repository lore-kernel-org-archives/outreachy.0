X-GM-THRID: 6182590742528
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,c387ba6d11b89b19,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.182.92.226 with SMTP id cp2mr33181654obb.44.1425382609841;
        Tue, 03 Mar 2015 03:36:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.88.135 with SMTP id t7ls71210qgd.63.gmail; Tue, 03 Mar
 2015 03:36:49 -0800 (PST)
X-Received: by 10.52.236.196 with SMTP id uw4mr30993456vdc.2.1425382609645;
        Tue, 03 Mar 2015 03:36:49 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id gb13si58112pac.2.2015.03.03.03.36.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 03:36:49 -0800 (PST)
Received-SPF: pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of navyasri.tech@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mail=navyasri.tech@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fa1so23277930pad.9
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 03:36:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=+tC4ZSSXDwF1KYevD49N8iabIAWhgFcVKAxEMKcGxQ8=;
        b=j8+hGFShf5EHr8WszwIebbWKwc5OH+EGR1KIXk1U9ENv1DuaFva5SDHXlXL0WjQa0s
         PPVRczQDHF4BHyU5lgWNyljkkgvvKrgT/bzRS6nLTf6yx8RW+AXM29QQNWAI+zYgkIJg
         EmYtEo1YwslGkId+EXFA+OEgjnUfEyLJ04XjDBg82kTJMNCpCv4LKolrQlS12yIqcrxG
         qjkzqY4cEx+wgkhsmvPGwm34OWASPbdXQ0N3pfMbc+8ODENarFZHbAmkqvv749pyXmdA
         VVVUAo7pO2Lv6PBunkizUfbY518sFfpQnDjgtam5F54FuDqq1zp8btnq5+38pfoAUwTw
         pf2Q==
X-Received: by 10.66.121.134 with SMTP id lk6mr34719757pab.67.1425382609502;
        Tue, 03 Mar 2015 03:36:49 -0800 (PST)
Return-Path: <navyasri.tech@gmail.com>
Received: from nizamkari ([111.93.6.70])
        by mx.google.com with ESMTPSA id u1sm801214pbs.7.2015.03.03.03.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 03:36:48 -0800 (PST)
Date: Tue, 3 Mar 2015 17:08:06 +0530
From: Navya Sri Nizamkari <navyasri.tech@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: Remove if condition.
Message-ID: <20150303113806.GA8173@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch removes a if condition which has a semicolon
after it. As the conditional check is redundant, the comment
before it is also changed. The following
coccinelle script was used to detect the pattern of a
semicolon after if.

@r1@
position p;
@@
if (...);@p
@script:python@
p0 << r1.p;
@@
// Emacs org-mode output
cocci.print_main("", p0)
cocci.print_secs("", p0)

Signed-off-by: Navya Sri Nizamkari <navyasri.tech@gmail.com>
---
Changes in v2:
     -Updated the commit subject and message.
     -Removed the if-condition completely as 
      it was redundant.
     -Changed the comment about the statements
      which follow the if-condition.

 drivers/staging/comedi/drivers/das1800.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/das1800.c b/drivers/staging/comedi/drivers/das1800.c
index 0790a28..8ffc9d0b 100644
--- a/drivers/staging/comedi/drivers/das1800.c
+++ b/drivers/staging/comedi/drivers/das1800.c
@@ -491,9 +491,7 @@ static void das1800_handle_fifo_not_empty(struct comedi_device *dev,
 
 	while (inb(dev->iobase + DAS1800_STATUS) & FNE) {
 		dpnt = inw(dev->iobase + DAS1800_FIFO);
-		/* convert to unsigned type if we are in a bipolar mode */
-		if (!unipolar)
-			;
+		/* convert to unsigned type */
 		dpnt = munge_bipolar_sample(dev, dpnt);
 		comedi_buf_write_samples(s, &dpnt, 1);
 
-- 
1.9.1


