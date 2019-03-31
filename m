X-GM-THRID: 6674500883205586944
X-Received: by 2002:a17:902:9b90:: with SMTP id y16mr885249plp.95.1554029261731;
        Sun, 31 Mar 2019 03:47:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:683:: with SMTP id 3ls2723923plh.1.gmail; Sun, 31
 Mar 2019 03:47:41 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx2AxBwJodVjSHA8MBFj7xDlO5XxOtTdk/zLoCv01dthHVxWxgLz6cEv5Y0oYE8LA4RFFAd
X-Received: by 2002:a17:902:2be4:: with SMTP id l91mr1582826plb.53.1554029261126;
        Sun, 31 Mar 2019 03:47:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554029261; cv=none;
        d=google.com; s=arc-20160816;
        b=fNS2foe6TfgpqomdQbwqQ4fFNFiWvOU6hCz3561sx6xKXKU5pLAbkUroxumANtDDJH
         6m2Xva3hFj24gI6UNTBoiGj+dclMdBFfjJY1zUeCktENgtbm2WDAaNBXJ7sl8B3UAks5
         QuFT9a5jIOXT0+sWS/bNle2Pzl7CSwsXA6iSLW6KCQVP+IhcpeMsI3e3+XNM50iO0E0f
         2p3xgnBXhsD8VWp/AqooJ8DrcH4w0HGDf4rShAo740iXy7f82RyuHP3OWTRO1a3J2hQJ
         CcnFXJTSmzNckOeAj1Ch0iYOYjH4ZVtOBzeTM7xwdJRmZhzHumuhllEWucQL1Yhn4CfM
         hwBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=r1ulg6bIw9pKJXnglRs5Oi6D8atWcNiuTD+H4RGJMD4=;
        b=gNlynKj+Ep9yvi5mp5zdHriX0qxuaF8tqiRp+4EfhVxmsOBhM/JukWOUlFlHeP1nUP
         QzfwSslQzChIuQYRr5ZDbRma8V+HBY8SowNUOEmxEpwkBR4WLc7ixKPgzJvAlIzWru3R
         hzIRBaOADHes3RIRPXKLLKOOfZle4v0fDqjPM+fGb5nRXsdQQ75gk6PDq41ZxjxNCUtA
         OauQm/AVuJBslz4zfEmVUnY7BFaYpwbbDj6BQcoDxY/YPuD5Rmlry3wS+GamD7h1EcM7
         KT0gKzlC4MPm0nBvAdsBv8tO1tCqlJZ470PnHv9Kqn6fDmmVIKSnNa3Bvt20LA+KsePU
         JyuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vtczag4t;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h2si589737plk.2.2019.03.31.03.47.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:47:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Vtczag4t;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id t16so1188902plo.0
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=r1ulg6bIw9pKJXnglRs5Oi6D8atWcNiuTD+H4RGJMD4=;
        b=Vtczag4tMj6e19dg3WsxwyeNcEYnYgKETaIFIXBdQVUJAHY2ssZURSlPTVRg++pD7S
         4cDYHOEO4KRqQjj+B6eB0VnA78wYwUHJPU5zrAmc1ciTUQK14/GZneOJAPhDiufjGF66
         67crXrTAoKOpgKmDK+xnRg0YHttFPHhLOawe9kRm58jkNJa67gFKysn/4vA3YJONXVes
         QNmRilw+HMJueC2FD3FLMZlt64hox2CxTvZFnnRQEOlj2/rxmLSqXkOhoEA8x050yGBK
         6u9KTeEJ5imW5ZJzlY+hT1Cq7dCvq37Up2QfGHaaU/LGS+yKwjHwZOcOh7urmuwjgcLV
         1nPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=r1ulg6bIw9pKJXnglRs5Oi6D8atWcNiuTD+H4RGJMD4=;
        b=r/OLe2M7WWWZrL2qY/DFNuOIjIBGCa8WFuEiynIklEvYpI8UfRpgAZAwiw/s/g+bjc
         EIgdDKoU/kiJce3VT2v2nQY3Xicn7PfuwMVkPrpcJRbmExNGUqc4N9qTSqsGdHEqVeGd
         ATWjHV7hCrZaGnzY1nl/06dk+9MLbuLWgKi86qNJ60QkcJhaP8dTXecMQCKwmV8XEvNA
         iA0GhPSX9tOfPkATnTp/faG0x965m8n/DpCVDKhT15y3VYTlqiiQXv7bLN9dfiXgnepK
         xoQCo7df1OkgneI/X5kIIb2OU//XnRW9hoCQA8lMXpbshHSlflSYFSo3s9k67C9fsD9a
         mvzg==
X-Gm-Message-State: APjAAAWCQNL8HBlEJSMrqloyn4i0M1Us2NiRdfUX6+Xz9d7NUU3jtkqe
	YjOzKEcuxmq6qCNsQKbvittyXYuVfIY=
X-Received: by 2002:a17:902:b40a:: with SMTP id x10mr18420080plr.231.1554029260907;
        Sun, 31 Mar 2019 03:47:40 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id e23sm9132069pfi.7.2019.03.31.03.47.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:47:40 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi: Prefer using BIT macro in various files.
Date: Sun, 31 Mar 2019 16:17:30 +0530
Message-Id: <20190331104730.22168-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
References: <20190331103204.21358-1-sanjana99reddy99@gmail.com>

Challenge suggested by coccinelle.

Replace bit shifting on 1 with the BIT(x) macro.
Coccinelle script:

@@
constant c;
@@

-(1 << c)
+BIT(c)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
Changes in v2:
Remove patch series and make all changes into 1 patch
 drivers/staging/comedi/drivers/amplc_pci230.c  | 2 +-
 drivers/staging/comedi/drivers/das08.c         | 4 ++--
 drivers/staging/comedi/drivers/dyna_pci10xx.c  | 2 +-
 drivers/staging/comedi/drivers/ni_at_ao.c      | 2 +-
 drivers/staging/comedi/drivers/ni_daq_700.c    | 2 +-
 drivers/staging/comedi/drivers/ni_mio_common.c | 4 ++--
 6 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/comedi/drivers/amplc_pci230.c b/drivers/staging/comedi/drivers/amplc_pci230.c
index 08ffe26c5d43..65f60c2b702a 100644
--- a/drivers/staging/comedi/drivers/amplc_pci230.c
+++ b/drivers/staging/comedi/drivers/amplc_pci230.c
@@ -2464,7 +2464,7 @@ static int pci230_auto_attach(struct comedi_device *dev,
 	devpriv->adcg = 0;
 	devpriv->adccon = PCI230_ADC_TRIG_NONE | PCI230_ADC_IM_SE |
 			  PCI230_ADC_IR_BIP;
-	outw(1 << 0, devpriv->daqio + PCI230_ADCEN);
+	outw(BIT(0), devpriv->daqio + PCI230_ADCEN);
 	outw(devpriv->adcg, devpriv->daqio + PCI230_ADCG);
 	outw(devpriv->adccon | PCI230_ADC_FIFO_RESET,
 	     devpriv->daqio + PCI230_ADCCON);
diff --git a/drivers/staging/comedi/drivers/das08.c b/drivers/staging/comedi/drivers/das08.c
index 327ecf9aea30..65e5f2e6c122 100644
--- a/drivers/staging/comedi/drivers/das08.c
+++ b/drivers/staging/comedi/drivers/das08.c
@@ -236,9 +236,9 @@ static int das08_ai_insn_read(struct comedi_device *dev,
 			 * COMEDI 16-bit bipolar data value for 0V is 0x8000.
 			 */
 			if (msb & 0x80)
-				data[n] = (1 << 15) + magnitude;
+				data[n] = BIT(15) + magnitude;
 			else
-				data[n] = (1 << 15) - magnitude;
+				data[n] = BIT(15) - magnitude;
 		} else {
 			dev_err(dev->class_dev, "bug! unknown ai encoding\n");
 			return -1;
diff --git a/drivers/staging/comedi/drivers/dyna_pci10xx.c b/drivers/staging/comedi/drivers/dyna_pci10xx.c
index e50536731d11..9bdd5bf2eb99 100644
--- a/drivers/staging/comedi/drivers/dyna_pci10xx.c
+++ b/drivers/staging/comedi/drivers/dyna_pci10xx.c
@@ -54,7 +54,7 @@ static int dyna_pci10xx_ai_eoc(struct comedi_device *dev,
 	unsigned int status;
 
 	status = inw_p(dev->iobase);
-	if (status & (1 << 15))
+	if (status & BIT(15))
 		return 0;
 	return -EBUSY;
 }
diff --git a/drivers/staging/comedi/drivers/ni_at_ao.c b/drivers/staging/comedi/drivers/ni_at_ao.c
index aad0b295ee2b..814895d01ffa 100644
--- a/drivers/staging/comedi/drivers/ni_at_ao.c
+++ b/drivers/staging/comedi/drivers/ni_at_ao.c
@@ -244,7 +244,7 @@ static int atao_calib_insn_write(struct comedi_device *dev,
 
 		/* write the channel and last data value to the caldac */
 		/* clock the bitstring to the caldac; MSB -> LSB */
-		for (bit = 1 << 10; bit; bit >>= 1) {
+		for (bit = BIT(10); bit; bit >>= 1) {
 			bits = (bit & bitstring) ? ATAO_CFG2_SDATA : 0;
 
 			outw(bits, dev->iobase + ATAO_CFG2_REG);
diff --git a/drivers/staging/comedi/drivers/ni_daq_700.c b/drivers/staging/comedi/drivers/ni_daq_700.c
index b9e525b9beb9..81fd4c26a16f 100644
--- a/drivers/staging/comedi/drivers/ni_daq_700.c
+++ b/drivers/staging/comedi/drivers/ni_daq_700.c
@@ -239,7 +239,7 @@ static int daq700_auto_attach(struct comedi_device *dev,
 	s->type = COMEDI_SUBD_AI;
 	s->subdev_flags = SDF_READABLE | SDF_GROUND | SDF_DIFF;
 	s->n_chan = 16;
-	s->maxdata = (1 << 12) - 1;
+	s->maxdata = BIT(12) - 1;
 	s->range_table = &range_daq700_ai;
 	s->insn_read = daq700_ai_rinsn;
 	daq700_ai_config(dev, s);
diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 5edf59ac6706..cdc9d0ed15c4 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -4780,7 +4780,7 @@ static int cs5529_do_conversion(struct comedi_device *dev,
 	if (data) {
 		*data = ni_ao_win_inw(dev, NI67XX_CAL_DATA_REG);
 		/* cs5529 returns 16 bit signed data in bipolar mode */
-		*data ^= (1 << 15);
+		*data ^= BIT(15);
 	}
 	return 0;
 }
@@ -6189,7 +6189,7 @@ static int ni_E_init(struct comedi_device *dev,
 		s->subdev_flags = SDF_READABLE | SDF_DIFF | SDF_INTERNAL;
 		/*  one channel for each analog output channel */
 		s->n_chan = board->n_aochan;
-		s->maxdata = (1 << 16) - 1;
+		s->maxdata = BIT(16) - 1;
 		s->range_table = &range_unknown;	/* XXX */
 		s->insn_read = cs5529_ai_insn_read;
 		s->insn_config = NULL;
-- 
2.17.1


