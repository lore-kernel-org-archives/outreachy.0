X-GM-THRID: 6675393159366705152
X-Received: by 2002:a62:13dc:: with SMTP id 89mr1416658pft.140.1554236085947;
        Tue, 02 Apr 2019 13:14:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:b60a:: with SMTP id j10ls7135pff.6.gmail; Tue, 02 Apr
 2019 13:14:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzTW4aynpOUX2vifSC6P1DDl97PAVv3xhE/QrpXsumFDWQ7QvIb4LqiB1sPB/J0hr0tdL1u
X-Received: by 2002:a62:184d:: with SMTP id 74mr970558pfy.30.1554236085307;
        Tue, 02 Apr 2019 13:14:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554236085; cv=none;
        d=google.com; s=arc-20160816;
        b=XNJ000GrL1/Z10jyX+qYKB0JI4XoTx0FIzFu86TozXifxSDka4g2QPDPlcOHE6VFRa
         fL+rGYcDJpD1PVgMglcOXkac5GQEFan9cZ+8FkEYBYEUKGRma/hm+3PH7fynVrjeegPp
         dDsYTjlBhgPOKSa1swBT3IgKIAH1UXxT5RAUaKLgOX9gWNX0yAbHLd4r30s0ZsVK5RcT
         6lleUMZYm9GqoPgMitACq6vPsxsrmChqmvio0CEWSbCAonhWUvfSZ2JLIaP22+AsjIUU
         O5zruV3BLZqz2njUwYlWo7WifiiU6jdOa7oBe7EZBKo5xETcUBqdMu4SpeZ1x2rq+c0C
         olFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=8V+5JHdYYftbr3ACdvo9+UYkXxcO9QX2yVByc2b/eO4=;
        b=vXGL6KoQAdv0L3dfkSdEN9cc1WlmwUvRF1uA2Psb96u513s39MhrJuO63sqq6G3fZQ
         vWOMQaE6dxMp8xJurYNIbwjABq23JBJ+fL61kBGle+bxPHHlGUiP1PDaYu+qo3neTru8
         o9WWuH3KTJhw0ESLC26MoxDj1o7LFoUqF8aQa+qjJXNwO6/yaXgACOsIrDyREOaUDeTp
         b2zo2BwiPN007I0yN832jqhqvv02/xMltCOzm427Y3cat0/qteoAdQiA1vbhgKS62D8T
         dYFagV0tzFWfc+W+VAbcDkZ8iZe1r1MRnn/9uqA2XgVTmhZW32VOKcpEaLJuJofIFMi+
         ATLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=MS1WLGmT;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic313-20.consmr.mail.sg3.yahoo.com (sonic313-20.consmr.mail.sg3.yahoo.com. [106.10.240.79])
        by gmr-mx.google.com with ESMTPS id i126si658828pfc.4.2019.04.02.13.14.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 02 Apr 2019 13:14:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) client-ip=106.10.240.79;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=MS1WLGmT;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.79 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1554236083; bh=8V+5JHdYYftbr3ACdvo9+UYkXxcO9QX2yVByc2b/eO4=; h=From:To:Cc:Subject:Date:From:Subject; b=MS1WLGmTVt6PRctQj74wnmxygOR3YUxl/3tJqmJPmg9Xyk9txBUOaJRQb0rgHozEo4MCyXxQpUqqUF20omYgAcKOKAZjbW2IeorA/W89vIin4mAm+STp2RPuKqXvytWyOs2NchwTmnPEbLfo+iz7al4ci+516B7rOY6NJzaEZBwF/f8PxB/MlGpqdX/uidhiCuxRtx4pYfIZmrauhdaMGtqI15uGgk5p2I8bgZNFWultlE/dRL0ZnIIY+Bren9udKUjdPvk0WTszpzd2JYWA2L74OsVx6ZzDLT7ka3eoFUeE946t5FyyyfZlXinTlNWUK0x8EqwzerDGqzE327FNDA==
X-YMail-OSG: xIu.D64VM1k_iXDzKgo9HO2N3Db5GQYfNjVFkA1uWnhsvBZJBjVjyyuCisMJsQr
 SCbqGgpqw1z4YRZPp0nkjfFPxCBsZ__HFiADLPOH1ROallHAQQOYnPXd3N90IZI.SIH7taovuGb8
 2ag18NV6fD8xN8IQolRvzoWV2yeQEPQv9Y47J0LEadyJUkfb20lf_Pw5RDSr8zB2dEBouZMNmhH0
 5FSt_T6HCys3ZX9MpbgrM.ZFeykbgf6Zd_2DB6JJkUrZ.XmdLikx.v1FTUOfh1YxdfO9ok3WNKI7
 N4SqITuXUXm6jY.L3dSkDW9qyV1qTxXjjBA4_4DMjd32SMl_JCNylM9f5Yf1U_bAOZh7AsP39i_s
 RcFXvf63IuOB.rDjeIHdhbUCz5U0bSxrrWzRxJJewng6pMJZOxVswwBYbsfCdnWUhD.afodHd9tm
 FvarB3qHz8mg73CKqW5XJvhnuHioKeijDRnsIGE.H3Y3HyXUqGTsyIZYiG5D5S5pBRBFzk_cT.tV
 TuBZtj6FNWNCsUzvwH1oaxgSbZL1ZZuP.A8QYB8uhWL0iXPLp0UHhfO33neTF4PVJbizeeh91ZwN
 aLfxwUc72y45EAxX.Ze_Fe7hkEjNk0w1pzZLb_EZomzpXK9snTRL6mDY66LQswlMz_eOtV7H8mbP
 smKktYLdLcqSJrLfTtGLfdghSgyuoHlzVedjku3Gz7wgkJOZYDXHbf_NasZT.yvMlZ6SjJjF_qaw
 whTjZZ4xueAcxE9Q3wVJ4sywI61ktGcb6KqbyZ2UjtdgfCmRrL5jaFfqO0nfJ.uxU4zKtYZj6kpB
 56g1x3kxFkmRSLuQQmJ5ZlaL4RReE7OrPh60AsMO3nu48rB7FVy8MxwfcirDXfvpW_OV9ZSjr_lv
 nJdPPla5tVF1JK9W.MnbtAfXET9LQ9I7eF7T8pZ3PV83XxUAJhCt.f9jPkeknCHGxkJrpGrmXJ63
 QWsJbFQ8zc7tWMrCQS_fRip32WR0MYp3OecXNg7qtbJsmo6haVFRDkvrL3QQgkSN54dnI5Zs.pQS
 pJWt4tDRHxcI8elKbmS2tioaQTEYLdY1H4FJ6aOThus8x_a79_bYhCBjQse6hIFwjCv9upiIOdyq
 vzLoZjQ8LIBtlf1JmBVO6NmAxN6WqdAaeCrWy1w--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic313.consmr.mail.sg3.yahoo.com with HTTP; Tue, 2 Apr 2019 20:14:43 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp420.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID aef7e9bb0d691cd54e16e4e1a162fad3;
          Tue, 02 Apr 2019 20:14:38 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	mchehab@kernel.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH] staging: media: zoran: Remove print statement for failed kmalloc
Date: Wed,  3 Apr 2019 01:44:30 +0530
Message-Id: <20190402201430.3402-1-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove print statement indicating failure of kmalloc. Issue found with
Coccinelle.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/media/zoran/zoran_driver.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_driver.c b/drivers/staging/media/zoran/zoran_driver.c
index 4c281d9a0e60..9e39dc549024 100644
--- a/drivers/staging/media/zoran/zoran_driver.c
+++ b/drivers/staging/media/zoran/zoran_driver.c
@@ -226,10 +226,6 @@ static int v4l_fbuffer_alloc(struct zoran_fh *fh)
 		mem = kmalloc(fh->buffers.buffer_size,
 			      GFP_KERNEL | __GFP_NOWARN);
 		if (!mem) {
-			dprintk(1,
-				KERN_ERR
-				"%s: %s - kmalloc for V4L buf %d failed\n",
-				ZR_DEVNAME(zr), __func__, i);
 			v4l_fbuffer_free(fh);
 			return -ENOBUFS;
 		}
-- 
2.19.1


