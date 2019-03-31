X-GM-THRID: 6674500883205586944
X-Received: by 2002:a24:3608:: with SMTP id l8mr4416056itl.35.1554028528841;
        Sun, 31 Mar 2019 03:35:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:6c09:: with SMTP id w9ls120794itb.3.canary-gmail; Sun,
 31 Mar 2019 03:35:28 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxQlbSGA/DaVyWRjSeMkDiXaqKiE/Uz7PbzJQ28T+Ls2AuWeZkiXDPp9dx7ysW0Ge0Ap+1W
X-Received: by 2002:a24:3793:: with SMTP id r141mr4984518itr.7.1554028528308;
        Sun, 31 Mar 2019 03:35:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028528; cv=none;
        d=google.com; s=arc-20160816;
        b=WMVmO38SHLTQ7ly4nr4plNO3O+1alBbCpLDkELgcFn6nE0EOPNdtVeDCiwL++iD8es
         vyXse6XAQcRE7VcQh5R6oEs/EiKjqCZQDdDOKDGEgcTd3zQOYRq1q4ct9jiVPzWeh2Ua
         f1Tw4j+CgxFEfqE/TzJlFbQ8oP4ym0f1PpTOo0404wKuRquq9m4lTXfieRj+5pP7XSTL
         LahxR9IJ6ERJ13A6dl3hmQ5UfK05CWNYz6Pu0viA/ErctF7kPJLzXV5FPKmncSfYwjRO
         Mk7nBWhy180vXwj1+96jdNAlTLe/xa52XVxEOsibUhngWitCXmexeXArnfz2PQ3oJ6KL
         nJ5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=DkW7SAeSvL7CjiuMWt7zmpN4VCGvMbsZFJGg5CnlzIY=;
        b=qWZVoxVdCj9iWuhU1UU0Olj84ZmHA1BGTnXUttggFL8aBGvGR59UJpugUrvY4Gbc03
         dWVc4ykUvBi/SK5JXni2XS+1F9LmajVAgYWAkVJG6+dHnF4fwjxRVIcEv0OpIJhwp3Pl
         q7ioMwnZPDViRNqgBGVCTb09ZR0aZMTrpo23KzXa+jc1nUfHomug5mTuDmYDRG6T5OD/
         SxpRVwsmGnRC5xHqVS3+XTR60lfzLmu7xaO9Oe4QFzPq4ImZ/ARhZv/wx6Aimt2DVOee
         py211QTIaN+oLysGLqVsbqAoYlYbsPAY3c7biLdPzLdvtwr/oSakLSo+7SwS2JQQY8We
         9X4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z3/ibFbY";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id q130si376065itb.1.2019.03.31.03.35.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:35:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Z3/ibFbY";
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id j26so3294826pgl.5
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:35:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=DkW7SAeSvL7CjiuMWt7zmpN4VCGvMbsZFJGg5CnlzIY=;
        b=Z3/ibFbY37a77R/0NIj8KK5JfTgvu2L1wkYQ/BIG0TXHmpcj+/LW29uwP19gtw5p2r
         6SBlvuxUn8c56XM2TbBoi3eI+GU14e4y4KCExt34LDj1uDgViBtmHSPttkAq6PQF824E
         Lek/cvu03A65nVpNMMr7vwR4LyweNZ5mA7YEMtuBU7J8AQX2o64nyFBKKCJYYeg+50wX
         GKgzJbf4mbb3lCOFY/g8SyVD9FXyvtL+21h2sKojaDYv7FgHSN0NxYokP0MOD0NNYpvc
         BUrTDnIXj59ZDXs4EALbXKE+wZu6S+Z3tBiRYHujzIzaXYEaHvfhMXgwUsCbt11z6XQg
         w7zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=DkW7SAeSvL7CjiuMWt7zmpN4VCGvMbsZFJGg5CnlzIY=;
        b=V7vl3On7ZQSDdqtceUiHsD4IshQXzT7KK+N2d4uHh531mH81/MSYWyoCqK/bWa6CGF
         diJtkFJBTT0lujWwWEneASsQ7yBGSl9TC54oiIRi//C6UGb/JFoqhVNC/RpeD+eQXgTz
         CttMtSul0Eo+XT6ABmYiRVA9NHHPoFRFw7fu/6XRPcvgFoDaVjjuPRIAbOzEJJVBGuTh
         R11bIGtwihMJquiNjfPR28llb0F1khRaNBOXSjpZLb/hLcK7ecWBFSP5yIVEVlJ9+SHU
         bHOlqoUHB4TIq79dI6tTrjlt6w+gxnUdZpy8xZvy6GIZ7nuntAyjlkbEfV24wP8F1dCQ
         rEog==
X-Gm-Message-State: APjAAAXcJMHfsMGglYXA7/bLtX0IHGiY2DtDwpnRJNo+i5Yj+he4SnAU
	2v9lzSa5W2tZ3s1Nbcb04nIqNunnUzE=
X-Received: by 2002:a63:3d49:: with SMTP id k70mr38303182pga.447.1554028527740;
        Sun, 31 Mar 2019 03:35:27 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id s85sm3144766pfa.23.2019.03.31.03.35.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:35:27 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 6/6] staging: comedi: Prefer using the BIT macro
Date: Sun, 31 Mar 2019 16:05:17 +0530
Message-Id: <20190331103517.21656-1-sanjana99reddy99@gmail.com>
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
 drivers/staging/comedi/drivers/amplc_pci230.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

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
-- 
2.17.1


