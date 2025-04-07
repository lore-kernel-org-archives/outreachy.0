Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B331C36
	for <outreachy@lists.linux.dev>; Mon,  7 Apr 2025 00:27:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743985680; cv=none; b=REo5GyrADgAZbQSOQl+stEneed1GsFqYSm/opGM/WtjSC2X/cA7MoRFNsUc1ZPX/4BHuAzLyuv2DlKHwsvh3PJQ9x5ML0rA6jURb/rrcipUtIusoCK9ZUMysuGOuYDRIBhcUEucLL9Y0KQcCl1JPRJC9Kc1BK3Ih/sdjQogPuG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743985680; c=relaxed/simple;
	bh=/FBJUEuiNZnf6+4wQekulaqENCuepfWHig7ltnni628=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=bRjvndF53yQS9pyGpyj76vaCEGasEzhwV9L9aSXIlhp1njbeOVOQPplz/o9ZYvxrModnRc75YJn4piquSnBnkZPHejrhYNEH7vfOscCw6YsfIBJWYIdeqoJN78fLhkRiSCPn947M1ASBxoqEFaMIAbo2gymkgLv0BVGpJ1qB+OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=iWTg3HUz; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="iWTg3HUz"
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ac25d2b2354so696437066b.1
        for <outreachy@lists.linux.dev>; Sun, 06 Apr 2025 17:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743985676; x=1744590476; darn=lists.linux.dev;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v0Kj8uLmrietvObdF0qp86X5EUoKWCpxBDnwabchfu0=;
        b=iWTg3HUzo2LHUuk1zAEL8tvepiovrlePz0n1UW3hL4fHGfaFU1qQKtqGDbw6Y5StXX
         Gi51CwL7cnLpe89h53oSbJ74h9802NNyEPXjbxQuAJ65LEQqVvA3EmbT1z+yr9pupJW/
         GPAbCB456V/vJhOdel/CjRJ07ceq6o03Ii+Vpd6fxeFkCPU+1fBeC73soOBHJvlJr3gp
         NGLwAX6OyQOqF18FK9NB5bPKtcgJwoNW6KD8yhezXFqLZ3lgjyZ7/d+CLYjBEhqhI9M+
         glkCBmBihuc7dfyCXaqd0IgKfEIYnwkp/2lDTmv4eDe/bWdgwBGJU486Q3biXYA45Pe0
         5hcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743985676; x=1744590476;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=v0Kj8uLmrietvObdF0qp86X5EUoKWCpxBDnwabchfu0=;
        b=q6Q/TLjTgGMMF4zsWUjBf/v+H6SmNQlk28Z9ia7OKcpw7pi/I8cqQwNMWcsAwTwyHV
         d4QzjvBHcUsfCgqqmP7tp7yX91KjNodpAvw0QShkjXADR6UPtdFsQrkUxDpR+j8PUQ35
         prxHF8hRL8VDye9bWHmTkDOG9RBbRSL/vhDjFaFR7Vv74zkNS+Jz89mlEZTUBxy/ioUh
         HIrKe+erjXohlJMZt9vzK3DNdClfmPfU6fceS8Jgff7S7fy+iIFGq/k863Uoc/pLdkfD
         Z3FOdUJ9oBYbihjPqfTxtfn7IvDPMgYW9eDVQfs7VFLu6sXERfojLmmftvj12gQsHT1m
         Nh7w==
X-Forwarded-Encrypted: i=1; AJvYcCWAXi3Q6Nd9DKlyEYjCkI/kpiw/Md2seR59uJSdtcqpXntisZaZGzKiitcE+vH/epPl79YXD8Eb7Z0=@lists.linux.dev
X-Gm-Message-State: AOJu0YwIQA1IjTAINPgfLhnuKRlPioT9SRNiGLFM/Fe5WoU2on+8usv4
	d9yNZOAKhOINqFtT6qFA7GWeDzm1O0gRCb/syuxXRirX19eos3lv
X-Gm-Gg: ASbGncuMBLFuxfG8RUNLAuA6/8YZSWs5qEYvuLmhcyGiPSxc8+guD+v56fWwobwLIyo
	fREWLY8QDmg21tgFJD5Q5KADPbP0pQMa0/AelC9Luy7JOqNbdFHgINvqkDZsO0Lnf7QUQDkw24F
	frvvbMRd03SEghIaAC0I0Hd6QJdUcfCG3ms+JWwjdcliZGwpS82AmCfwyEsotSHcb01rJBmsZOp
	gzGJwpOqNX+3tbv8K13QF103/Z0M1J/2vocpoJVivx+PsUKsUTKzVphq/i7ZBrJBsMjwFo44loQ
	4tAWnnxyQgQBBYqrNwx0zsKTchfuFR3HE5fo4/VxYBu/G10S
X-Google-Smtp-Source: AGHT+IEWd6+xIkKF3Jfn6HvYe3Wp3/JAclOqHUw1FW5NG1aE1ovoFcH3tcF//AH1B2uB6HLE8nEvKQ==
X-Received: by 2002:a17:907:3e0f:b0:ac7:b621:7635 with SMTP id a640c23a62f3a-ac7d6d8f3d7mr990391866b.36.1743985675875;
        Sun, 06 Apr 2025 17:27:55 -0700 (PDT)
Received: from ubuntu ([105.112.123.29])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7c01c2ce0sm657201266b.178.2025.04.06.17.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 17:27:55 -0700 (PDT)
Date: Mon, 7 Apr 2025 00:27:53 +0000
From: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy@lists.linux.dev
Cc: andy@kernel.org, dan.carpenter@linaro.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: rtl8723bs: Use % 4096u instead of & 0xfff
Message-ID: <Z/McCdceSpyL2A2p@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

The sequence number is constrained to a range of [0, 4095], which
is a total of 4096 values. The bitmask operation using `0xfff` is
used to perform this wrap-around. While this is functionally correct,
it obscures the intended semantic of a 4096-based wrap.

Using a modulo operation with `4096u` makes the wrap-around logic
explicit and easier to understand. It clearly signals that the sequence
number cycles though a range of 4096 values.

The use of `4096u` also guarantees that the modulo operation is performed
with unsigned arithmetic, preventing potential issues with signed types.

Suggested-by: Andy Shevchenko <andy@kernel.org>
David Laight <david.laight.linux@gmail.com>

Signed-off-by: Abraham Samuel Adekunle <abrahamadekunle50@gmail.com>
---
Changes in v2:
	- Changed the commit message to a more descriptive message which
	makes it clear why the patch does the change.
	- Changed the subject title to include `4096u` to show that an unsigned
	module is used.
Changes in v1:
	- Added more patch recipients.

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 297c93d65315..f534bf2448c3 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -943,7 +943,7 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 
 			if (psta) {
 				psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
-				psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
+				psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 4096u;
 				pattrib->seqnum = psta->sta_xmitpriv.txseq_tid[pattrib->priority];
 
 				SetSeqNum(hdr, pattrib->seqnum);
@@ -963,11 +963,11 @@ s32 rtw_make_wlanhdr(struct adapter *padapter, u8 *hdr, struct pkt_attrib *pattr
 					if (SN_LESS(pattrib->seqnum, tx_seq)) {
 						pattrib->ampdu_en = false;/* AGG BK */
 					} else if (SN_EQUAL(pattrib->seqnum, tx_seq)) {
-						psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq+1)&0xfff;
+						psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (tx_seq+1)&4096u;
 
 						pattrib->ampdu_en = true;/* AGG EN */
 					} else {
-						psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum+1)&0xfff;
+						psta->BA_starting_seqctrl[pattrib->priority & 0x0f] = (pattrib->seqnum+1)&4096u;
 						pattrib->ampdu_en = true;/* AGG EN */
 					}
 				}
-- 
2.34.1

