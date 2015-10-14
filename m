X-GM-THRID: 6205587481887244288
X-Received: by 10.68.236.167 with SMTP id uv7mr4084445pbc.12.1444850951927;
        Wed, 14 Oct 2015 12:29:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.156.202 with SMTP id f193ls188769ioe.60.gmail; Wed, 14 Oct
 2015 12:29:11 -0700 (PDT)
X-Received: by 10.67.24.39 with SMTP id if7mr4125111pad.24.1444850951639;
        Wed, 14 Oct 2015 12:29:11 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si995499pac.2.2015.10.14.12.29.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:29:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id rc13so62489318pab.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=cz6QR2v2bu8Ezs94t775uAOTrSsRterIluM7dzpk4gI=;
        b=aucCVSYshDcdRouRtYu53hoqZvt48FtZdcLXn6BYdwqKnmG/ow8tob8YYUAH0kWl7J
         wfnuW/Lngiz/DA12TEqmQVWps8/9IF2i1IkLrPY27jlmcjPps9OzT3TspCN03jLlI7Ck
         njS4naSORaNH+OUyjAYLPsljNowmBx0F5lnbFp1LnpKoNYTr4IW4a40MJXGUvUO+yA8x
         cV4YbkxBzJ1iycOHUg2xL4tmoHNff9ndhDeEIj0IU9Pv0QTe35/cjnCccNIThp2rD+gq
         GEYw2UIxhYkKiTTTq3S0N2kRbdmC0bLZOXzGB86URCdgpVUkiaS9kFuLkFMi4kLMFY1z
         Mj+Q==
X-Received: by 10.66.254.73 with SMTP id ag9mr5280435pad.116.1444850951529;
        Wed, 14 Oct 2015 12:29:11 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id aw5sm11106380pbc.13.2015.10.14.12.29.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 12:29:11 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 08/12] Staging: comedi: Remove unnecessary cast on void pointer
Date: Thu, 15 Oct 2015 00:58:26 +0530
Message-Id: <1444850910-11408-9-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
References: <1444850910-11408-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.561EAD06.0036,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

void pointers do not need to be cast to other pointer types.

The semantic patch used to find this:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/comedi/drivers/amplc_pci230.c | 2 +-
 drivers/staging/comedi/drivers/cb_pcidas.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 5c5c4e2..4b39f69 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -2275,7 +2275,7 @@ static int pci230_ai_cancel(struct comedi_device *dev,
 static irqreturn_t pci230_interrupt(int irq, void *d)
 {
 	unsigned char status_int, valid_status_int, temp_ier;
-	struct comedi_device *dev = (struct comedi_device *)d;
+	struct comedi_device *dev = d;
 	struct pci230_private *devpriv = dev->private;
 	struct comedi_subdevice *s_ao = dev->write_subdev;
 	struct comedi_subdevice *s_ai = dev->read_subdev;
diff --git a/drivers/staging/comedi/drivers/cb_pcidas.c b/drivers/staging/comedi/drivers/cb_pcidas.c
index b43e836..b589e17 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas.c
@@ -1234,7 +1234,7 @@ static void handle_ao_interrupt(struct comedi_device *dev, unsigned int status)
 
 static irqreturn_t cb_pcidas_interrupt(int irq, void *d)
 {
-	struct comedi_device *dev = (struct comedi_device *)d;
+	struct comedi_device *dev = d;
 	const struct cb_pcidas_board *board = dev->board_ptr;
 	struct cb_pcidas_private *devpriv = dev->private;
 	struct comedi_subdevice *s = dev->read_subdev;
-- 
2.1.4


