X-GM-THRID: 6406607470592
X-Received: by 10.152.28.137 with SMTP id b9mr341858lah.8.1425447227492;
        Tue, 03 Mar 2015 21:33:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.10.5 with SMTP id e5ls122379lab.37.gmail; Tue, 03 Mar 2015
 21:33:47 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr340597lax.10.1425447227049;
        Tue, 03 Mar 2015 21:33:47 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id el6si239496wib.2.2015.03.03.21.33.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 21:33:47 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevl61 with SMTP id l61so44089112wev.2
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 21:33:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=+X3VQPU+z3sz02OKfSCEu/UUwNhrDKGRG8/k8iPmTTE=;
        b=Zh/P7xH4U8h3+8LSmxDxJA4bxoZ6SxqEpFSP0pFnaE/4qVx3cYJv6UuwJHxQYjz4+g
         AuWHoTF9UUFKwi62OnMc6qavdAhoHKh2HpXrrjqEYwLaQDloYnw/lUVIvchSH4ZjEdOt
         MfVnwJGEkdqvmRoBtDOYBJEnxiLs11i1ERO6mL7MQ/k+CXykdqsC/hlHDdNFDFSUnScn
         2knGLNqxX66YoDyzb0H/vPAQpE1AbnPO9Z1rsSGKYE7UraTjU1LZyGJ1EHqr++Mg2nKs
         KJpmu9sMvg+zCGWaZ/moiwOzS17c+3ySNIElGbUM0th6PhB5zJwfRgaj9JK4mZpwDHBO
         szgg==
X-Received: by 10.194.193.99 with SMTP id hn3mr4281361wjc.148.1425447226934;
        Tue, 03 Mar 2015 21:33:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([62.135.96.219])
        by mx.google.com with ESMTPSA id dm6sm5377432wib.22.2015.03.03.21.33.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 03 Mar 2015 21:33:46 -0800 (PST)
Date: Wed, 4 Mar 2015 07:33:39 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 09/13] staging: rtl8712: remove extra parentheses around
 right bit shift operation
Message-ID: <c80650f4395505d3e8847652baaa2deea90fa6a3.1425446659.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425446659.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Removes extra parentheses around bitwise right shift operation.
The cases handled are  when the resultant value is assigned to
a variable or when a shift operation is carried out for a function
argument. The issues were detected and resolved using the following
coccinelle script:

@@
expression e, e1;
constant c;
@@

e =
-(e1
+e1
>>
-c);
+c;

@@
identifier i;
constant c;
type t;
expression e;
@@

t i =
-(e
+e
>>
-c);
+c;

@@
expression e, e1;
identifier f;
constant c;
@@

e1 = f(...,
-(e
+e
>>
-c)
+c
,...);

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 4 ++--
 drivers/staging/rtl8712/rtl871x_mp.c   | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 0ec0bda..50227b5 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -166,7 +166,7 @@ static void update_recvframe_attrib_from_recvstat(struct rx_pkt_attrib *pattrib,
 	 * Offset 0 */
 	pattrib->bdecrypted = ((le32_to_cpu(prxstat->rxdw0) & BIT(27)) >> 27)
 				 ? 0 : 1;
-	pattrib->crc_err = ((le32_to_cpu(prxstat->rxdw0) & BIT(14)) >> 14);
+	pattrib->crc_err = (le32_to_cpu(prxstat->rxdw0) & BIT(14)) >> 14;
 	/*Offset 4*/
 	/*Offset 8*/
 	/*Offset 12*/
@@ -435,7 +435,7 @@ void r8712_rxcmd_event_hdl(struct _adapter *padapter, void *prxcmdbuf)
 	poffset = (u8 *)prxcmdbuf;
 	voffset = *(uint *)poffset;
 	prxstat = (struct recv_stat *)prxcmdbuf;
-	drvinfo_sz = ((le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16);
+	drvinfo_sz = (le32_to_cpu(prxstat->rxdw0) & 0x000f0000) >> 16;
 	drvinfo_sz <<= 3;
 	poffset += RXDESC_SIZE + drvinfo_sz;
 	do {
diff --git a/drivers/staging/rtl8712/rtl871x_mp.c b/drivers/staging/rtl8712/rtl871x_mp.c
index 3d913b9..26201ea 100644
--- a/drivers/staging/rtl8712/rtl871x_mp.c
+++ b/drivers/staging/rtl8712/rtl871x_mp.c
@@ -327,8 +327,8 @@ void r8712_SetTxAGCOffset(struct _adapter *pAdapter, u32 ulTxAGCOffset)
 	u32 TxAGCOffset_B, TxAGCOffset_C, TxAGCOffset_D, tmpAGC;
 
 	TxAGCOffset_B = (ulTxAGCOffset&0x000000ff);
-	TxAGCOffset_C = ((ulTxAGCOffset&0x0000ff00)>>8);
-	TxAGCOffset_D = ((ulTxAGCOffset&0x00ff0000)>>16);
+	TxAGCOffset_C = (ulTxAGCOffset & 0x0000ff00)>>8;
+	TxAGCOffset_D = (ulTxAGCOffset & 0x00ff0000)>>16;
 	tmpAGC = (TxAGCOffset_D<<8 | TxAGCOffset_C<<4 | TxAGCOffset_B);
 	set_bb_reg(pAdapter, rFPGA0_TxGainStage,
 			(bXBTxAGC|bXCTxAGC|bXDTxAGC), tmpAGC);
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

