X-GM-THRID: 6950271792119283712
X-Received: by 2002:a05:651c:212a:: with SMTP id a42mr18140556ljq.505.1618236254227;
        Mon, 12 Apr 2021 07:04:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:48c6:: with SMTP id v189ls1339362lfa.0.gmail; Mon, 12
 Apr 2021 07:04:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxLCKp9MXWS1+PX0zbuQIcwUHhMF+8wwJoBOuY0RVq9TGpleLBSeL/RB0k8mB+6X44FZuEd
X-Received: by 2002:a05:6512:3614:: with SMTP id f20mr14867206lfs.91.1618236252591;
        Mon, 12 Apr 2021 07:04:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618236252; cv=none;
        d=google.com; s=arc-20160816;
        b=h81Ae6YbqQiq05+L3kRr7/gcsc9p1xA4Cta5agvXJm0QT0JfxYoLRaA55jxtNhLH/P
         jv8iP2HgFJm663G6MdFezRpAdlFoSEVlbxAbrorvBEi2XOjpdHI1DsXtTMw2wApejSZe
         DgBBnS79z14MCXFTP6BfvMT7iRMAwr0Kc4Tr7OuS5y2WFGfrPVlMCg2cFXyO3gcMgxQe
         u3YQr+5/2tyJ6lu2HCQvmaA2l3K81qypb/Tu93YVcSLT0bt19Y+XyXO0WmfyPoaS2WiX
         B0X3eIqjaizWiJQtIy7sj8cCU7DY1IERIsp0rW5fZHSBsHbESEZK0JbWA13BmvOPb8fx
         0Hcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:content-description:mime-version
         :message-id:to:from:date:dkim-signature;
        bh=lcGNOYVdXxipPJpBHLMfMmIr5y6kL1zAs6W9LWpICg4=;
        b=TnOFgW+Q2B5Q92w/cvq1LJL58cqPsB72/LZeFRscpBzKQ0LllgjRCZGfwQStOHLCwF
         kbb1x4GY4gLrQIvy4XSACPfh0ve8xLfTPGh8BmKNQFCfkhksgUgZhbvfBIddPbUopqtM
         AHOp9I0wDP1WDzLBG8WvqrET3uyBC6aYr10jSG2yv7NA/xTJLgz5TLxQdMGWOoJehoMe
         eq9DyVXnQZXJ+1BhTUBya9daObgmTGRRwgckJZ1Mgm4zv4/6g5SrgoGi4K3Z4NFNYYuq
         mj7RUH9an3bJaK7mo1S0APdecUvio020FWi9Hl34TOm3FBRzaMmWfGIIIftj9hgGDtWZ
         N5OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jn8It9pG;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <tawahpeggy98@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id j7si640166lfm.9.2021.04.12.07.04.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:04:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jn8It9pG;
       spf=pass (google.com: domain of tawahpeggy98@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=tawahpeggy98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id s7so12960055wru.6
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 07:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:mime-version:content-description
         :content-disposition:user-agent;
        bh=lcGNOYVdXxipPJpBHLMfMmIr5y6kL1zAs6W9LWpICg4=;
        b=jn8It9pG/kzIg8JsMYvwO1kgqHgDCKvL78JDKQWXQX1M66Evhgvbh+dXfwb8rO8nax
         vfqlqbiF9oCLSADl9basfa+9Xa+x7SGmRztAz55Nuqd25W/BL5rcaPKtsuo1GDJUIuMX
         H9ZJ+RyIzcmoY/GYRNAAJL8VJuEPTw7jwdTqRcbpNtHPHaS4tWtMq9XVs1fFmpeUTtWb
         ociNc0n7eEkAeawfVLqAimZlKwK81r+DrD7FGD3O14KSF5FDDKBRpY6JYwUr+UqIOnkS
         txOos9zluSyycBtUlrtTHQGdulDfaTKE6DJfKUSDKyGngUe//KsHc2IHs+k3P9vnJ7Zz
         Yhvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:mime-version
         :content-description:content-disposition:user-agent;
        bh=lcGNOYVdXxipPJpBHLMfMmIr5y6kL1zAs6W9LWpICg4=;
        b=b0Ug4thVnUJzKgpSWyLcvCe7OX4rleCLPwwXouvWdophOGkimNGNc4suruBJM5+7La
         uS8qNMbwbilgUMlxTuXOPyM0Zbnhx9YonLWVcac1ft/fZwMERu5TtrqQ3L5V3mrx5aPQ
         TtmpUvguug+HhToflbQvMvn7yr9/fn16tCJzhUGfpX21F54Ok/85wbCN4bhRjdrVU8mw
         Mu00xPXKLD2W6OtIJsUvbbUks4Oe7C6iB4woq13rFPRlM8pTJjDfyBgLp4yBlKkcTFgH
         UF95P2wAT8StfumyZRRca+IsHzY36U0neR+a0RzRpPLXja1mSKRKdMy9/tjfQdLp4hLy
         gplw==
X-Gm-Message-State: AOAM532TK3P+2nOly5KJJiFWLE2sfBqkkR3TXPYhI+bZoXknIe9vZ+oA
	L0U6m02F/mW4HsjTVR6jY/RyxMHJercw+meR
X-Received: by 2002:a5d:4402:: with SMTP id z2mr11934955wrq.179.1618236252357;
        Mon, 12 Apr 2021 07:04:12 -0700 (PDT)
Return-Path: <tawahpeggy98@gmail.com>
Received: from peggy-Lenovo-V130-15IKB ([154.72.153.204])
        by smtp.gmail.com with ESMTPSA id h13sm15015796wmq.29.2021.04.12.07.04.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 12 Apr 2021 07:04:12 -0700 (PDT)
Date: Mon, 12 Apr 2021 10:04:05 -0400
From: PEGGY TAWAH <tawahpeggy98@gmail.com>
To: Vaibhav Hiremath <hvaibhav.linux@gmail.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Message-ID: <20210412140400.GA31238@peggy-Lenovo-V130-15IKB>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Description: checkpatch complained of line too long so i removed some spaces.CHECK: line length of 101 exceeds 100 columns
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Cc: 
Bcc: 
Subject: [PATCH] Staging: greybus: Remove a space because line is too long
Reply-To:

checkpatch complained of line 182 too long in greybus driver,so i removed some spaces. CHECK: line length of 101 exceeds 100 colums

Signed-off-by: 	PEGGY TAWAH <tawahpeggy98@gmail.com>

---
 drivers/staging/greybus/arche-platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
index e374dfc0c92f..1bfec5fae849 100644
--- a/drivers/staging/greybus/arche-platform.c
+++ b/drivers/staging/greybus/arche-platform.c
@@ -179,7 +179,7 @@ static irqreturn_t arche_platform_wd_irq(int irq, void *devid)
                                if (arche_pdata->wake_detect_state !=
                                                WD_STATE_COLDBOOT_START) {
                                        arche_platform_set_wake_detect_state(arche_pdata,
-                                                                            WD_STATE_COLDBOOT_TRIG);
+                                                                 WD_STATE_COLDBOOT_TRIG);
                                        spin_unlock_irqrestore(&arche_pdata->wake_lock,
                                                               flags);
                                        return IRQ_WAKE_THREAD;
-- 
2.17.1


