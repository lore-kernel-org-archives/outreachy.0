X-GM-THRID: 6249584461823868928
X-Received: by 10.129.32.68 with SMTP id g65mr35730954ywg.3.1455099180630;
        Wed, 10 Feb 2016 02:13:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.2.23 with SMTP id 23ls149593ioc.58.gmail; Wed, 10 Feb 2016
 02:13:00 -0800 (PST)
X-Received: by 10.107.152.10 with SMTP id a10mr39597353ioe.28.1455099180382;
        Wed, 10 Feb 2016 02:13:00 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id ui7si328221pab.0.2016.02.10.02.13.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 02:13:00 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id gc2so296213pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 02:13:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=m38JuyDjr55ubvAMcl8ex0xNwbpf1LbF1xSqsypu/2I=;
        b=nIIMVHOcWiT8XNfv9T33VgmLwacKIH9PX2HeID7UJso7N7oRt74xpxVZO5YmF08hyy
         g3CJaT5EhxN83WtdFMFN4smng0zFdQpIiqwctpQbMrH6FPmDlaXK3k5QUrp3pwK4sdpf
         sk51fUijB2TQieq3KDNaxYIFkoLONf5tR9c6lLAFHI3IYpOhvOSp6heWsKDlHg7O2JWD
         OZF0bZu4eK2Hw7lZcS8LmzywJ701r1V+hnlXzeZ58g00QAdAQSnGYrwA7/leZ3o53+ax
         WAD/D3YBYQe4gwAOUi7MCnQ6lKdQVOY/W4X0fL5vRd32pNGtepCuIPxjs8inFkBo9piZ
         z57w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=m38JuyDjr55ubvAMcl8ex0xNwbpf1LbF1xSqsypu/2I=;
        b=NgI45HhAohu0oivNYbGDz4MT8JqDrzbWjWaJE+C47Ym8NbSS3nk6q6MIaRnTGuLBav
         oo3LqeiPk9jJ+1K953Jdtif3F+TkpBxrD8A2Wo3TsK8IgFSeUjBUCQcE3h4VfdYMIdzT
         YLLgGFbrvftMpWDu/FwbVeCFhuSxg6QbzGTdn4eFj7/01y3vhxj74Uv72yOXz+DYGoyU
         5gdQCxIizJKAdwFMmjEk8AgFEX1HkdRneOybArSK9oUJFEKxgI9h+WTSnV2MOAtl+uMJ
         fa2FLSdinNMZSo+Eclxge2amPrgZZTN3IQDgbIN/1bZXT+1Lf6lJz9XjpVk2Nd3h1dAj
         QAzA==
X-Gm-Message-State: AG10YOTKswOkG1AEVHgA50pTZ9x2Sy2QHASJGGZmx+5vWFJV97RObvwBtap76VR5lQsCmQ==
X-Received: by 10.66.229.38 with SMTP id sn6mr10234740pac.1.1455099180249;
        Wed, 10 Feb 2016 02:13:00 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id ya4sm3950208pab.22.2016.02.10.02.12.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 02:12:59 -0800 (PST)
Date: Wed, 10 Feb 2016 15:42:56 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/5] staging: comedi: range: Merge if conditions
Message-ID: <20160210101256.GA29080@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Merge if conditions with the same statements.

Found using Coccinelle. The semantic patch used to find this is as
follows:

//<smpl>
@@
statement S;
expression e,x;
@@

* if(e)
(
{ ... return ...; }
&
S
)

* if(x)
(
{ ... return ...; }
&
S
)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Remove extraneous parentheses added in first version.

 drivers/staging/comedi/range.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/range.c b/drivers/staging/comedi/range.c
index ce3a58a..4eff819 100644
--- a/drivers/staging/comedi/range.c
+++ b/drivers/staging/comedi/range.c
@@ -67,9 +67,7 @@ int do_rangeinfo_ioctl(struct comedi_device *dev,
 	subd = (it.range_type >> 24) & 0xf;
 	chan = (it.range_type >> 16) & 0xff;
 
-	if (!dev->attached)
-		return -EINVAL;
-	if (subd >= dev->n_subdevices)
+	if (!dev->attached || subd >= dev->n_subdevices)
 		return -EINVAL;
 	s = &dev->subdevices[subd];
 	if (s->range_table) {
-- 
1.9.1


