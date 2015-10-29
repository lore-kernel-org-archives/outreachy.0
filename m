X-GM-THRID: 6211023730283380736
X-Received: by 10.129.85.80 with SMTP id j77mr801935ywb.31.1446116652080;
        Thu, 29 Oct 2015 04:04:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.18.172 with SMTP id 41ls333375qgf.79.gmail; Thu, 29 Oct
 2015 04:04:11 -0700 (PDT)
X-Received: by 10.13.214.200 with SMTP id y191mr827323ywd.10.1446116651512;
        Thu, 29 Oct 2015 04:04:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22b.google.com (mail-pa0-x22b.google.com. [2607:f8b0:400e:c03::22b])
        by gmr-mx.google.com with ESMTPS id vy6si117819pbc.1.2015.10.29.04.04.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 04:04:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) client-ip=2607:f8b0:400e:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22b as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22b.google.com with SMTP id hk11so38094922pad.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 04:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=INahDrXFGJukXMRjx/oMofPvC8R4hA2IDCs9xD1w0wU=;
        b=HW6MeP3vCctwnhBE0B46BMsIS1zbKp21ecSvSx2iAlb8z0RFlEBsbtb/5pB2s68tYv
         SryFD0Vjljl40F+DbtK/b/n9emXTsbZ7He3IrQDdklmT1miG0DGT1JXWBD897EXH6h35
         G5AWylkpX3rnfsbmgZEQW2Ri/NgbUhpHIWztGGwhLvgkfD68OmzZKgr00NZDnt5KlLGh
         1+v9su+nJF18GftvOpYSkEaQp/g6M7w8tiF0HASokO7FZP+IO9QAhoEo3advF/3SMpcK
         UEC9LoTU8R8ZoIvDRpX0enI8b82OY/NAdm5NGSaYuNtUA7lnV0Rb2XMGbEXGOZVMywVh
         AYSA==
X-Received: by 10.68.65.104 with SMTP id w8mr1334524pbs.48.1446116651349;
        Thu, 29 Oct 2015 04:04:11 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.166.247])
        by smtp.gmail.com with ESMTPSA id si10sm1750862pab.15.2015.10.29.04.04.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 04:04:10 -0700 (PDT)
Date: Thu, 29 Oct 2015 16:34:06 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: core: Change function parameter to bool
Message-ID: <20151029110406.GA24418@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Change int wait_ack to bool wait_ack as it only takes true or false as its argument. 

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index d3b92c5..22f57f6 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -608,7 +608,7 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 	return;
 }
 
-static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, int wait_ack)
+static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame		*pmgntframe;
-- 
1.9.1


