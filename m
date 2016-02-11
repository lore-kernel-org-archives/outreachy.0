X-GM-THRID: 6250064878859452416
X-Received: by 10.28.158.216 with SMTP id h207mr2228890wme.4.1455206628161;
        Thu, 11 Feb 2016 08:03:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.87.68 with SMTP id q62ls1063857qgd.95.gmail; Thu, 11 Feb
 2016 08:03:47 -0800 (PST)
X-Received: by 10.31.11.75 with SMTP id 72mr43735340vkl.2.1455206627579;
        Thu, 11 Feb 2016 08:03:47 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qg0-x230.google.com (mail-qg0-x230.google.com. [2607:f8b0:400d:c04::230])
        by gmr-mx.google.com with ESMTPS id t198si681144ywe.3.2016.02.11.08.03.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:03:47 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) client-ip=2607:f8b0:400d:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c04::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x230.google.com with SMTP id y9so41147536qgd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Feb 2016 08:03:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=S62gENCPHIX6GnK2+jzMtCuIUz4qLDEE7a6+huTUb/U=;
        b=vMrlSrYZPW/miDuK4i6Rhbr+z3lzX5vfsK1V+E3vsZ5qt0MxS6oXuRMQiAKAlj+jGy
         ZqHViw/q4wiaDNtFC6g1UnKuMag6yHNa8ZjNKIHSyukXlE7k/wQMVZjI41dXveLUSjMi
         KhnZzZqAbG+OWxEeq25pvmTwjomKZW2Tz62zk4jSq0VUn4q4gNqUXJ6VxNdEzrHbx+LE
         MuXiqnHqLVqVLldKN9vuos3HZ0HOtJ96pNZqwHODC+iqZDpK4tqP/xMK0bq7n+g3G2/c
         oCOccIqHlZSaA8XT/iJXYNOvmNE6Xt6vork+JCvfIme/rf/0wDlG0Q0ZjecoXgp/OHWx
         4nSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=S62gENCPHIX6GnK2+jzMtCuIUz4qLDEE7a6+huTUb/U=;
        b=YAQdT7wrXTuILaMrkDOh0n4wGskRu0Ox2Glu5Jw7tQdptuMzsq/PVuW+7TXII1MrBT
         X8yw1lI5Bty81+8IhqXllfyy84/cbWDb/l5aHaAUIRqbD0zcHktSXdPhX+dr1tS2PzXJ
         K+eum7RpL11vwe9KQm5l6btb9tM4g9y+Y3jtgFzaJEnPesJrVq45YnxccMIUbYrOzne+
         FWbfhIMXO3QHobUfVTV8O5DJpVOV+CdTw3lwtdD3vEKJpUWObrKgVhMT+z1ZukSg1uWt
         mrvFeHyBBuAL1am+3ZNYC4rfZNpNmUypKzKm/WTlJz0ZV57IOn17nnZjbVOpATzzJqCz
         wSnw==
X-Gm-Message-State: AG10YOSDidyr16oCy+zgErNKwsgCv7s4WRUOvdlvihxA54lmrSVFBeuyRKTja+3B3Dnx6A==
X-Received: by 10.140.240.87 with SMTP id l84mr60454295qhc.69.1455206627345;
        Thu, 11 Feb 2016 08:03:47 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id d71sm2015700qhd.18.2016.02.11.08.03.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2016 08:03:46 -0800 (PST)
Date: Thu, 11 Feb 2016 16:03:08 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: emxx_udc: Remove parentheses around the right hand
 side of assignment
Message-ID: <20160211210308.GA3996@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove parentheses around the right hand side of assignments as they are
not needed. Semantic patch used:

@@
expression a, b, c;
@@

(
  a = (b == c)
|
  a =
- (
  b
- )
)

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.c b/drivers/staging/emxx_udc/emxx_udc.c
index c408ee9..a1f624f 100644
--- a/drivers/staging/emxx_udc/emxx_udc.c
+++ b/drivers/staging/emxx_udc/emxx_udc.c
@@ -271,21 +271,21 @@ static int _nbu2ss_ep_init(struct nbu2ss_udc *udc, struct nbu2ss_ep *ep)
 		data = EPn_EN | EPn_BCLR | EPn_DIR0;
 		_nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);
 
-		data = (EPn_ONAK | EPn_OSTL_EN | EPn_OSTL);
+		data = EPn_ONAK | EPn_OSTL_EN | EPn_OSTL;
 		_nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);
 
-		data = (EPn_OUT_EN | EPn_OUT_END_EN);
+		data = EPn_OUT_EN | EPn_OUT_END_EN;
 		_nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_INT_ENA, data);
 	} else {
 		/*---------------------------------------------------------*/
 		/* IN */
-		data = (EPn_EN | EPn_BCLR | EPn_AUTO);
+		data = EPn_EN | EPn_BCLR | EPn_AUTO;
 		_nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);
 
-		data = (EPn_ISTL);
+		data = EPn_ISTL;
 		_nbu2ss_bitclr(&udc->p_regs->EP_REGS[num].EP_CONTROL, data);
 
-		data = (EPn_IN_EN | EPn_IN_END_EN);
+		data = EPn_IN_EN | EPn_IN_END_EN;
 		_nbu2ss_bitset(&udc->p_regs->EP_REGS[num].EP_INT_ENA, data);
 	}
 
@@ -460,7 +460,7 @@ static void _nbu2ss_ep_in_end(
 		if (length)
 			_nbu2ss_writel(&preg->EP_REGS[num].EP_WRITE, data32);
 
-		data = (((((u32)length) << 5) & EPn_DW) | EPn_DEND);
+		data = ((((u32)length) << 5) & EPn_DW) | EPn_DEND;
 		_nbu2ss_bitset(&preg->EP_REGS[num].EP_CONTROL, data);
 
 		_nbu2ss_bitset(&preg->EP_REGS[num].EP_CONTROL, EPn_AUTO);
@@ -844,7 +844,7 @@ static int _nbu2ss_out_dma(
 
 	/* Number of transfer packets */
 	mpkt = _nbu2ss_readl(&preg->EP_REGS[num].EP_PCKT_ADRS) & EPn_MPKT;
-	dmacnt = (length / mpkt);
+	dmacnt = length / mpkt;
 	lmpkt = (length % mpkt) & ~(u32)0x03;
 
 	if (dmacnt > DMA_MAX_COUNT) {
-- 
2.5.0


