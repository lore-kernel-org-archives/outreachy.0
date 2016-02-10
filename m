X-GM-THRID: 6249584492196921344
X-Received: by 10.182.29.41 with SMTP id g9mr36557083obh.27.1455094779253;
        Wed, 10 Feb 2016 00:59:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.247 with SMTP id e110ls301480qga.44.gmail; Wed, 10 Feb
 2016 00:59:38 -0800 (PST)
X-Received: by 10.129.32.68 with SMTP id g65mr35503327ywg.3.1455094778549;
        Wed, 10 Feb 2016 00:59:38 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 12si220988pfb.1.2016.02.10.00.59.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:59:38 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id w128so70109pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:59:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Vrsb6ZUZ+tRnkFtUGgoUc6uT+9DBy2EYEacGH7qQcNo=;
        b=HpImYgnZb7iQkWj6lNRpZ+t75KwDcR7WN+g6+43iiFLX3Fjd1AZB2URO49+2i+01BN
         uKEBshZKtYZ0dC6I9057ZQtG0yURKLeiUH+NbbHMlhoY3v+Nbgkm2snBTYMfqRqoHN9y
         f2L6nHOEaD9Wt7Btja7XU5oSX7DhO1Et7aTHksu3YyCYV2716fA/gMmnkmFszs9nVP/q
         JmK+7tIDCqXeMvEZyBog2tvX8agi3TLIT4dY/BCCR2eSnnumKO3rk/vElyGT3b0y2W2f
         kyA29dZCPvSH5BTD6kzB3JGl/3TfTzDGOghFBaapGBCQ8Lw4ZDwjNBIFpECvLmsv40JL
         EEbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Vrsb6ZUZ+tRnkFtUGgoUc6uT+9DBy2EYEacGH7qQcNo=;
        b=bX53VR3a/wMpAW2Js1NCASjmhA1s9tmgxBHkRuqpjxdMeMG1C9HAhpOj1oQqkikA8W
         3BA3ndkrBuMurnXtn3Jz08omlCafLEi3Rz2igHnmk5jZ3+Qvt1Ws41XpNaiBO346mKN3
         DyZ08igCA08vFo1ijjo6jILadArTctkvvIkK3SH4zzYAnlPOFqy07EG+07sQ6al3Cg4E
         nVVTnIQeRDEO2eodGvVGj/xfQ3RM9Gu7zs9AN5LIdDPc4in97szyEYM1qCorq/4VkHid
         rqKNgY/O/EJMQYJUeJFpxTBCP2WpKz1KaBg0Kv5VMKcdgxlE6cDuq0eOy2epOrixiQgq
         FxCw==
X-Gm-Message-State: AG10YOTH0Z6QBvdMvFxT2wbg7ltZo0pZ29FVii1+2SlhdsKyDiPsgnWwS+ncAtA6kj/HqA==
X-Received: by 10.98.80.80 with SMTP id e77mr56895233pfb.126.1455094778374;
        Wed, 10 Feb 2016 00:59:38 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.72.191])
        by smtp.gmail.com with ESMTPSA id 144sm3347292pfa.83.2016.02.10.00.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:59:38 -0800 (PST)
Date: Wed, 10 Feb 2016 14:29:34 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 5/6] staging: comedi: drivers: dt282x: Merge if conditions
Message-ID: <20160210085934.GA14640@amitoj-Inspiron-3542>
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
 drivers/staging/comedi/drivers/dt282x.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt282x.c b/drivers/staging/comedi/drivers/dt282x.c
index 5a536a0..ded985e 100644
--- a/drivers/staging/comedi/drivers/dt282x.c
+++ b/drivers/staging/comedi/drivers/dt282x.c
@@ -887,10 +887,7 @@ static int dt282x_ao_inttrig(struct comedi_device *dev,
 	if (trig_num != cmd->start_src)
 		return -EINVAL;
 
-	if (!dt282x_ao_setup_dma(dev, s, 0))
-		return -EPIPE;
-
-	if (!dt282x_ao_setup_dma(dev, s, 1))
+	if (!(dt282x_ao_setup_dma(dev, s, 0) && dt282x_ao_setup_dma(dev, s, 1)))
 		return -EPIPE;
 
 	outw(devpriv->supcsr | DT2821_SUPCSR_STRIG,
-- 
1.9.1


