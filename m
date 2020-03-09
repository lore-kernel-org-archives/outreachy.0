X-GM-THRID: 6802338694226247680
X-Received: by 2002:a17:90a:aa0c:: with SMTP id k12mr1563864pjq.193.1583792896525;
        Mon, 09 Mar 2020 15:28:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:58a:: with SMTP id 132ls1934892pgf.5.gmail; Mon, 09 Mar
 2020 15:28:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsSMF7gYCd5z3g/KL3v7m4/QdS4mWQHSOGwKj+i2ZQQruEHXiJCCJh1/pMNzjF1qykq+nQ2
X-Received: by 2002:a63:7a5a:: with SMTP id j26mr18639097pgn.447.1583792895183;
        Mon, 09 Mar 2020 15:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583792895; cv=none;
        d=google.com; s=arc-20160816;
        b=z/UjTLgyryWdfTs3IiO1OikwWBwgpyGtsxb8C/oack+6DYrVDr4iNhQ4nNDTzYyis5
         PWEdl+EWXvhn3iCVdnR5fym6e7qvot3A1SOoE3yfMYsnXBE/otkdamJXa/CHeLp92vPO
         mdgDePL9rRnqIanLXlSDUGbUXAMuyCp93kr8W7dt0cbh0d0EOIn1Bc6aZ9EAx1MkBJ/X
         Q6/uJMkwgn4y2XZ9tPqZdUMNokFSFpM3eyZnLX6YEgwE+NAhbY2e0wp9eFPf1XQm4Kbe
         JViXvG3NnsmcNZfA0Cs7ML9sWhA6U4vRwohELRYyqjr6SMFiZfKurFIOL+0D3E5cpNrp
         RCtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=k0rJJc0L8Ce40wZq27cxx4pvxXmvi/wuuhIuylVTpSc=;
        b=UyY6AqgYff4EPzPD1qcJofqmepDre4tW10IGyIdaK/hDKU763eH11ZHhfYije298km
         rtBy2FXOrMRr7tFxLkh4C10FE8NqnDEmOj+3Aou0vInSpqrfys+fIqC7NF6p7bykz/E7
         v1y8/zldfAzodfi2DaO2oaURNI/3Ffht01qjFhXh4vj3WZwdgVEgrycIJpO+Qn40JSl7
         rkEx9dT30zoYw2giwzXCFikwctbQsydLCn1lNqdc8ntNYcOQ0u76BmHIZXhlJuCvbCFa
         eQmCVvbTxOMTPfCdjfNQF3Jv0f79eIAcwQCRmey2rPHERzYrgzS4GQTA7aWyXu1fErHt
         XAFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=dBsnuBA9;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q1si174368pff.4.2020.03.09.15.28.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 15:28:13 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=dBsnuBA9;
       spf=neutral (google.com: 2607:f8b0:4864:20::643 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x643.google.com with SMTP id ay11so4589421plb.0
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 15:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=k0rJJc0L8Ce40wZq27cxx4pvxXmvi/wuuhIuylVTpSc=;
        b=dBsnuBA9314ICnVgMp2Y9eFcYL34aigc1lu9l2F9c7uHpEvYZXAmBTqdcoXQOcl9yN
         ZPjhlVCBhk1oljlVGVxT0O1fpsz0LlvMMCGPAjFJTMiV+rgwNdP1Ed5j0LCrgBfCQ9HA
         pD/RWOvlTO4b/NRjnL7JjaeOVi1YwAA3sJVMJQbyLesjYo+rtKHXWNtAI/a+mwHTMsmE
         WfUSDmDsSJGRvNelkFtN+ju54+BGEjAo0LR1mrKwugvDPU8vbinYF0gmDWdwBZgnZRR1
         QeG04ENpEY6gYF/VCDADL3V6vQoLezZ+TvdO4OKMsZPBfra34vNq/qT31U0wHVSyxRFk
         PzmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=k0rJJc0L8Ce40wZq27cxx4pvxXmvi/wuuhIuylVTpSc=;
        b=RvAex0aZ+lfyXgQmYoaCkiOhfzSE7i6swf8f67oR/KW2R2x0byeB5p6GAPjviJcxvC
         diPvJeJrtkJLaB5dzm2dRjjecPXjsEr0stsVg75WTTX4Ow9i1dZ/TKzZjyW0IwL3tqeb
         Bc/5KtIxfm/BObJRnTu6Ucnoj1mmhonJbQa7XAfU8M9N80rbt+2D6To11hPyZmE5A6jj
         Yq1T1JFZbuy9LDjU3jWrje5psyyi+xU+nCBtJw1egOlZi6WEjtRjbjrSjHBXFruMR3a4
         HLgMVnnmkXagbx0AhUE9KKvSsdYxZ0FYfanuoPuAz/q0iQDiFGs1oGPpDfPjPM3KYG4S
         DFUw==
X-Gm-Message-State: ANhLgQ1Y4RMsSocyFZlnN/p2FQVFCDIoav/9cFIFt8fou7PDV9wFtQcW
	iVEq6hz1HPgNO+LaRTy53Svmaw==
X-Received: by 2002:a17:902:8a81:: with SMTP id p1mr17611102plo.284.1583792893039;
        Mon, 09 Mar 2020 15:28:13 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.174])
        by smtp.gmail.com with ESMTPSA id u41sm45907725pgn.8.2020.03.09.15.28.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 15:28:12 -0700 (PDT)
Date: Tue, 10 Mar 2020 03:58:05 +0530
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
To: Ian Abbott <abbotti@mev.co.uk>,
	H Hartley Sweeten <hsweeten@visionengravers.com>,
	Forest Bond <forest@alittletooquiet.net>,
	=?iso-8859-1?B?Suly9G1l?= Pouiller <jerome.pouiller@silabs.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 2/7] staging: vt6656: remove variable declaration
Message-ID: <20200309222805.GA5524@kaaira-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

int ret is uneccesarily declared and initialised to 0. Return 0
directly.

Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
---
 drivers/staging/vt6656/card.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/vt6656/card.c b/drivers/staging/vt6656/card.c
index 7958fc165462..5592b558cbd4 100644
--- a/drivers/staging/vt6656/card.c
+++ b/drivers/staging/vt6656/card.c
@@ -719,8 +719,6 @@ int vnt_radio_power_off(struct vnt_private *priv)
  */
 int vnt_radio_power_on(struct vnt_private *priv)
 {
-	int ret = 0;
-
 	vnt_exit_deep_sleep(priv);
 
 	vnt_mac_reg_bits_on(priv, MAC_REG_HOSTCR, HOSTCR_RXON);
@@ -739,7 +737,7 @@ int vnt_radio_power_on(struct vnt_private *priv)
 
 	vnt_mac_reg_bits_off(priv, MAC_REG_GPIOCTL1, GPIO3_INTMD);
 
-	return ret;
+	return 0;
 }
 
 void vnt_set_bss_mode(struct vnt_private *priv)
-- 
2.17.1


