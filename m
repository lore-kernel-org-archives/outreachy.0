X-GM-THRID: 4409240059904
X-Received: by 10.112.145.133 with SMTP id su5mr1935550lbb.17.1425034534419;
        Fri, 27 Feb 2015 02:55:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls152137lah.23.gmail; Fri, 27 Feb
 2015 02:55:33 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr1930847lbc.1.1425034533967;
        Fri, 27 Feb 2015 02:55:33 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wg0-x233.google.com (mail-wg0-x233.google.com. [2a00:1450:400c:c00::233])
        by gmr-mx.google.com with ESMTPS id cl5si87534wib.3.2015.02.27.02.55.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:55:33 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) client-ip=2a00:1450:400c:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c00::233 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x233.google.com with SMTP id z12so19406810wgg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:55:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QSEfWnj2zXumlObWeU7X7kl4z8cIcnF7Qd2DgF6GUpY=;
        b=vELGVe4rPIFN8KB8rBoa3EZUexJ2n0w9Zjf6UHWtkMcHmOKEICEjUn5zlK0+zz2GyP
         SAlJH32y3b+jepxA5JxyQLSbUZ8abNtodi1vqvhBRq3S2ocp+qA+9jOjsMJ7DrXr3GwI
         rQiggEyR+TDmY4CZH2Mpodm7WMOzti8+LnqmCHe79goJs54LVhrs7hseR0fJlM0PnW8I
         ma/+6gWQ59J1JsFWMUFc4XUKSDJm7/unqZTxAevPMYjvJXEB7btUk2Rnv71wBUYbojYz
         A1d+at/2Vd+XJfA5DMX+3UMFBZ4xuvYmKVlgcbGHfArh319xfOtWnMC2vmL6zO7yoewX
         uS5A==
X-Received: by 10.194.133.68 with SMTP id pa4mr26847682wjb.26.1425034533837;
        Fri, 27 Feb 2015 02:55:33 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.157.65])
        by mx.google.com with ESMTPSA id y14sm5378747wjr.39.2015.02.27.02.55.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 27 Feb 2015 02:55:33 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: media: Add blank line after declarations
Date: Fri, 27 Feb 2015 12:55:27 +0200
Message-Id: <1425034527-10985-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/media/parport/bw-qcam.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/media/parport/bw-qcam.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/staging/media/parport/bw-qcam.c b/drivers/staging/media/parport/bw-qcam.c
index 67b9da1..7f42b4b 100644
--- a/drivers/staging/media/parport/bw-qcam.c
+++ b/drivers/staging/media/parport/bw-qcam.c
@@ -601,6 +601,7 @@ static long qc_capture(struct qcam *q, u8 *buf, unsigned long len)
 			bytes = qc_readbytes(q, buffer);
 			for (k = 0; k < bytes && (pixels_read + k) < pixels_per_line; k++) {
 				int o;
+
 				if (buffer[k] == 0 && invert == 16) {
 					/* 4bpp is odd (again) -- inverter is 16, not 15, but output
 					   must be 0-15 -- bls */
@@ -609,6 +610,7 @@ static long qc_capture(struct qcam *q, u8 *buf, unsigned long len)
 				o = i * pixels_per_line + pixels_read + k;
 				if (o < len) {
 					u8 ch = invert - buffer[k];
+
 					got++;
 					buf[o] = ch << shift;
 				}
@@ -1108,6 +1110,7 @@ static int accept_bwqcam(struct parport *port)
 		for (n = 0; n < MAX_CAMS && parport[n]; n++) {
 			char *ep;
 			unsigned long r;
+
 			r = simple_strtoul(parport[n], &ep, 0);
 			if (ep == parport[n]) {
 				printk(KERN_ERR
@@ -1133,8 +1136,10 @@ static void bwqcam_attach(struct parport *port)
 static void bwqcam_detach(struct parport *port)
 {
 	int i;
+
 	for (i = 0; i < num_cams; i++) {
 		struct qcam *qcam = qcams[i];
+
 		if (qcam && qcam->pdev->port == port) {
 			qcams[i] = NULL;
 			close_bwqcam(qcam);
-- 
1.9.1


