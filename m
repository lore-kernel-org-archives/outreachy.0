X-GM-THRID: 6249299693524746240
X-Received: by 10.50.50.208 with SMTP id e16mr4565005igo.12.1455030685030;
        Tue, 09 Feb 2016 07:11:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.36.5 with SMTP id m5ls895580igj.32.gmail; Tue, 09 Feb 2016
 07:11:24 -0800 (PST)
X-Received: by 10.66.100.201 with SMTP id fa9mr33732523pab.11.1455030684112;
        Tue, 09 Feb 2016 07:11:24 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x244.google.com (mail-qg0-x244.google.com. [2607:f8b0:400d:c04::244])
        by gmr-mx.google.com with ESMTPS id y131si2115587ywc.0.2016.02.09.07.11.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:11:24 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) client-ip=2607:f8b0:400d:c04::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::244 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x244.google.com with SMTP id y89so5773446qge.0
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=MqZCV1VWC4bJfRt/PqOiFdOW5gG5SGFqzid4Ijhi9Fs=;
        b=qqDFu/WCp5Kr9AoOJXUStMbcAekp6omEbHk5euqCErvLbUzohaRhYFiEb1AqtiE3Z5
         INj6yhi+L1jQuvGjYRQfrGa+8XkoMrY1/P88Awyo9/I+41sPxV8kdfkEERcq3Vv+zVMT
         jhsfKAStrdDnfJhoIbBRkMz/K9OqfA/j04eRgzxq/rrPgwddpsdY2ikiZY6T137S8DpH
         X7kAR97Si4X1uUxkxTb/k2RUv0RL+5HVX9EMEhJsii4VnlDDO2WARMoy7vYv70l3JOqu
         RSWT1iZXuw0gg+MllY8LpzLlAsgdo7tp32oHxz+n3ZkTUnqyzPtTZx3tqEGhocx1tRCR
         c5RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=MqZCV1VWC4bJfRt/PqOiFdOW5gG5SGFqzid4Ijhi9Fs=;
        b=bVS+n/LMIhCJN2XaRAmJIB1tyS58YpTA7cZutarpDwTCDuVKA8oXIq/s+SoNBzm0Cv
         h6tETLSJVdCQ0EHquo0Iu6eSf5Rr4rtFVb9ZkzqzW8llS/PyGQqprLUT3S2KTFRJdtvN
         6zt3O/XAx3mwX9zx7iU3BGz4hwol0lvMgyE2TpaK5nhdDLLOHJQq3/iPBS1IwCvrDHYs
         qZ/wP0erTGkYZBpz4RJDwr68tBI93Eapf87ByiCzSgep4Abx6pFBtU1Ii/jYYN6brXRS
         S+jacVOHMoiOSpo6stokv+GJ9Hm+yhupOWQGDFUWrag0XX1NA5DKCps5zuKZaFSyGJIb
         amjw==
X-Gm-Message-State: AG10YOQ4OsNZcRgVB3Bl67xhU5URY5/MqTJN7KwYMkyn4VDycSpeW5co1Es/bbln6VLFFA==
X-Received: by 10.140.167.135 with SMTP id n129mr42422965qhn.73.1455030683882;
        Tue, 09 Feb 2016 07:11:23 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id z190sm16037304qkz.16.2016.02.09.07.11.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:11:23 -0800 (PST)
Date: Tue, 9 Feb 2016 15:10:46 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rdma: Use kcalloc instead of kzalloc
Message-ID: <20160209201046.GA6794@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Use kcalloc rather than kzalloc when multiplied with size to prevent
integer overflows. This change also makes code nicer to read.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
Changes since v1:
 * Removed unneeded parentheses around kzalloc's first parameter
 drivers/staging/rdma/hfi1/efivar.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rdma/hfi1/efivar.c b/drivers/staging/rdma/hfi1/efivar.c
index feef163..b8711f3 100644
--- a/drivers/staging/rdma/hfi1/efivar.c
+++ b/drivers/staging/rdma/hfi1/efivar.c
@@ -83,7 +83,7 @@ static int read_efi_var(const char *name, unsigned long *size,
 	if (!efi_enabled(EFI_RUNTIME_SERVICES))
 		return -EOPNOTSUPP;
 
-	uni_name = kcalloc((strlen(name) + 1), sizeof(efi_char16_t),
+	uni_name = kcalloc(strlen(name) + 1, sizeof(efi_char16_t),
 			   GFP_KERNEL);
 	temp_buffer = kzalloc(EFI_DATA_SIZE, GFP_KERNEL);
 
-- 
2.5.0


