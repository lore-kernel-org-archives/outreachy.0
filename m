X-GM-THRID: 7460820615168
X-Received: by 10.112.40.81 with SMTP id v17mr975723lbk.5.1426006859025;
        Tue, 10 Mar 2015 10:00:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.134 with SMTP id r6ls57408laa.59.gmail; Tue, 10 Mar 2015
 10:00:58 -0700 (PDT)
X-Received: by 10.112.224.12 with SMTP id qy12mr4785007lbc.10.1426006858529;
        Tue, 10 Mar 2015 10:00:58 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id gj20si1118198wic.1.2015.03.10.10.00.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2015 10:00:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id bs8so4717528wib.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2015 10:00:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=NmmAyRQfpWoUNfeuhUFpYxH01n4MPjkgQhfsN1LSp7U=;
        b=Xws3q7FgtciIuYsppzJZJ9Nk6RC4PEnbL7Ij37gsDNGFjsgZIRam6t2KLVyYNY29vM
         +loGqiJ0KdpoQk0q5qdcqaWVi1lg/1qHktMY1LI4+9R4eHE+pNlKGBVPfPSo1dHRZufj
         vFmQQpAwPKz9ui2naWqLz+BngwJY0bPG/3vf2sDKz4JN6qNea015enqIxn71pfnNo73v
         HM0kWDKY6juD3zQPB37WpCZ5IkDIj3ajzcOB5bt1KCHJC9Lx7Z6vDNOtCqYbaujl1s8J
         Sg8MKIeb8JeoDa081CiNC9vbVjc3/iSK4IxCcfFeilP+P1e1xug42h3ZT1joPD/o9Ltt
         EZ+w==
X-Received: by 10.180.92.136 with SMTP id cm8mr9990350wib.41.1426006856906;
        Tue, 10 Mar 2015 10:00:56 -0700 (PDT)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.233.194])
        by mx.google.com with ESMTPSA id p1sm2366982wib.23.2015.03.10.10.00.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 10 Mar 2015 10:00:56 -0700 (PDT)
Date: Tue, 10 Mar 2015 19:00:53 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 07/20] staging: ft1000: adjust function arguments
Message-ID: <7283cbbc893b41812e3f235bd3a10a8ff4c100f1.1426004643.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1426004643.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Handles the following issues:

Removing extra parentheses around function arguments,
Removing unnecessary pointer to pointer cast.

Issues detected and resolved using the following coccinelle
script:

@@
expression e;
type t;
identifier f;
@@

f(...,
-(t *)
e
,...)

@@
expression e;
identifier f;
@@

f(...,
&
-(
e
-)
,...)

@@
expression e;
identifier f;
@@

f(...,
-(
e
-)
,...)

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c
index 06b0e9c..cbf59ab 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_dnld.c
@@ -713,10 +713,10 @@ int card_download(struct net_device *dev, const u8 *pFileStart,
 
 				/* Get buffer for provisioning data */
 				pbuffer =
-					kmalloc((usHdrLength + sizeof(struct pseudo_hdr)),
+					kmalloc(usHdrLength + sizeof(struct pseudo_hdr),
 						GFP_ATOMIC);
 				if (pbuffer) {
-					memcpy(pbuffer, (void *)pUcFile,
+					memcpy(pbuffer, pUcFile,
 					       (u32) (usHdrLength +
 						      sizeof(struct pseudo_hdr)));
 					/* link provisioning data */
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

