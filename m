X-GM-THRID: 6250664265920806912
X-Received: by 10.107.157.9 with SMTP id g9mr6307631ioe.26.1455346332957;
        Fri, 12 Feb 2016 22:52:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.77.18 with SMTP id o18ls305658igw.26.gmail; Fri, 12 Feb
 2016 22:52:12 -0800 (PST)
X-Received: by 10.66.246.193 with SMTP id xy1mr5354575pac.7.1455346332625;
        Fri, 12 Feb 2016 22:52:12 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si1860955pad.2.2016.02.12.22.52.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 22:52:12 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so4928373pfc.0
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 22:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=kW3El9ZfDoDn1VYsABRJLFD4peTfuN961BkEicobUac=;
        b=r1sP8yLdoE+DSsNy+ZeU67yXTesYHmteDO6GEKziyW7ZMz7h6HYHhHBYf3zMGn3DLq
         fYAA4RzT44fbNmW7Ajw3t9t8w0tBGEdHSRyj3d/sH7rMwOKLT5Q7HzFCkf+RtrSCVm4h
         OoMmH5XSvfT5YFTwxD3GPTQ7zZpA5NGMLBCuEkRr8f5/f97N4nRuCE6HZ8mzWtJWNilX
         d6vPsDKtgcUoPqDNQBHRi+/+mD+HI/jZcGNKjGYBiZs3fO5Bn2U7+AUFMnI5Xd9fIEST
         MTRKDcks5LPX1UTXywIHX8c/ucIEOkYWDfD0I/7UBk23tkxb92FyVTykLMYvLnGbGDo5
         GueQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=kW3El9ZfDoDn1VYsABRJLFD4peTfuN961BkEicobUac=;
        b=GMU7eDdd8nBXT/yntwWANfrFGaTx0xR+6oFZOqZBF1XOmAa0FKWOzirPgEcOauAXWr
         Bw0Gto1LFCAtvwIZ5O34qlUUKGK8PRzHxcBlMpK4RwZRDqLo1jFwGw6iybk44Cz483sG
         fGU0GpAjR7VkdGxR8jr5wkkLfwONvEmg2OPCGvRpM4qRZPtCFdWJpY4ubKGaCDiDC/bS
         h9Z0xClPGg57JEtaJfSRTt1gsOoHJIP9dJM3EXaaRBgVv+TqR3kafDaNN7Vou4quyXUT
         4Fqaw0drbrckgNMeQuIWl1nN9O19/HsR4l0j0BmDn2f3+7bLEKmFXdCzZLiop4HIBceP
         ocwA==
X-Gm-Message-State: AG10YORlE046s31V5HLDjT1CPPoLorHs9L+6cjiiLnBQdmiufyjlligyzMgpow8XPUlnfw==
X-Received: by 10.98.66.157 with SMTP id h29mr7925028pfd.91.1455346332515;
        Fri, 12 Feb 2016 22:52:12 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-97.dhcp.embarqhsd.net. [67.232.66.97])
        by smtp.gmail.com with ESMTPSA id o73sm23731115pfa.37.2016.02.12.22.52.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 22:52:12 -0800 (PST)
Date: Fri, 12 Feb 2016 22:52:11 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: wilc1000: linux_mon: remove cast on void pointer
Message-ID: <fa891a5e9a4f113164f213c400611fa8cf20f5bc.1455344328.git.amsfield22@gmail.com>
References: <cover.1455344328.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1455344328.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove cast on void pointer. C programming language guarantees
the conversion from void pointer to any other pointer type.

Coccinelle patch:
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

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index e9bb0ec..ba702b2 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -137,7 +137,7 @@ struct tx_complete_mon_data {
 
 static void mgmt_tx_complete(void *priv, int status)
 {
-	struct tx_complete_mon_data *pv_data = (struct tx_complete_mon_data *)priv;
+	struct tx_complete_mon_data *pv_data = priv;
 	u8 *buf =  pv_data->buff;
 
 	if (status == 1) {
-- 
2.1.4


