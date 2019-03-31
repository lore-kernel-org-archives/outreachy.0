X-GM-THRID: 6674500883205586944
X-Received: by 2002:a02:4f4a:: with SMTP id c71mr8162931jab.17.1554028433119;
        Sun, 31 Mar 2019 03:33:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:b:: with SMTP id 11ls2039825ita.0.gmail; Sun, 31 Mar
 2019 03:33:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwVKHT+lfYoIZre7P6VWXDKEUds68fKc9ihJBH5l7P9UeXOqoePis1UM9Kio7n+gnVh7Ev1
X-Received: by 2002:a05:660c:288:: with SMTP id s8mr4626403itl.25.1554028432500;
        Sun, 31 Mar 2019 03:33:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028432; cv=none;
        d=google.com; s=arc-20160816;
        b=yk5T+wJUrypYoDyqBtXytfUvV01QFxaAwHqb4KpSEcMWSo/LYK76636ooDPWYbeuMA
         5R6QANA09Xyrgdyfo9e7RbuP+ksWxHWWITHgvEMCqUpRN/3zPF0MJx6v6L+zryDSagGY
         /Bxpol0va0cMKfEZ3Jhw/N1QxEjd4lPe8v/26Q+YUhTr3r/F11md3CwtStGHCaExaVig
         h8fDV7+CTrzDY6IyDnY0mEqJyZemfYTGMDOYE1V1TQ9WiihMXu0J8sGU33lOp1kcDOa8
         LwDz3voEp2UkI3ApeIae6MAz+EJzGQiJlkJne580qzuQ2Sm7TQWomqD7hHRyNw7uZUq+
         S1HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=OVTKVgmhWnlcU+FnzafxjimEqZj0c80LxdmeaErFZ/E=;
        b=joG5pghLCtMzigCe329hiGAu0vz+GMVRgsa7oT1r+sIal6d1a6QyHyPVdAVnkVb0Ei
         ELYdhl27Y7C1Ihh8GYKto0k91zlo4zAwiM3SoRhUUjOX0eerb9RWdicDHczTqIP4sluq
         F4Axi2AIZfslVsCnS1+ar4JEZ1ZLAcHBzTbiQgeH9kiCtYRVjtF8wiEBnoFUrjbsrDIf
         RQYwuFoS9CQkNFo2pIs51Ui8pfPEfVHKzg/c7OCwv+YmT/qDK8JIZApttGWwWo2JDNi3
         5JWYjHgpkZq9zTDm81YGYmXGx5z6tURtnhu4jb0l09vxGrSDqrJH9OE/N0JZOJ/sPsf3
         FVIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0tjxVwP;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com. [2607:f8b0:4864:20::433])
        by gmr-mx.google.com with ESMTPS id u1si947795itj.2.2019.03.31.03.33.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:33:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) client-ip=2607:f8b0:4864:20::433;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0tjxVwP;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::433 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x433.google.com with SMTP id 188so3111045pfd.8
        for <outreachy-kernel@googlegroups.com>; Sun, 31 Mar 2019 03:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=OVTKVgmhWnlcU+FnzafxjimEqZj0c80LxdmeaErFZ/E=;
        b=I0tjxVwPOaEGV9b3Y3MHpp/5smG1u4BXYfxMCoAlfo+1F+kkAB6vOLDh0KHy/6fmVm
         a5cGXUlUOp37eJjpMJtFzrEi/IATF7a8FJnpbjYqlCejA3QxNK5Ut/pxe10VbUlv2J2v
         5HgvmnSVbVB3EdJ5GwsyukAd3oeiwrErv5kyU/knmr1P/OXYTPDfIVZZmUk2tUxXvw8K
         BTyDDS+pZGgLG+HbnlLJuDIQGKByobtJ+5H3SNjiAadsxfPA5PVvd4ANhzdaaRhhA6Lq
         5rhwj557ESJR5BI39bTy7LwYxkyhJRa2DZB3JJiOO8qoLhPJtN/n/PAMrXFCJ/pTJKdR
         xhew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=OVTKVgmhWnlcU+FnzafxjimEqZj0c80LxdmeaErFZ/E=;
        b=mVRGUblSTBcNY5ge6PZI8KnYMKxqXx5erY6yGiHQrPHRrHfPVjAqT9wiJjSSOXBJ8Z
         uy0RyYkCOuCGJJIiGRmjg/Jw2istfQiatbVTsNVs2dF6ZPT9h5fPefkLeQlKiIiolQ2Q
         CMJzXXN8f/o4ziJkZBL1/LuorOYj/3KTg96GTEBpKjpdMRv0l9z7F6bBTPw7pvMO+VSB
         k0n40I4Y4NGJOfZFkZo7ZKzPuhYyo4neQRdHgad1QsEPySAD8MJDJ8sbbp+/MD2h3fqL
         GXDCkAgSMYKtx/SWqGZ86ku4fhowGjQ+/Ijh5AgEl8esbacP56LzHxwSBteLuyYceT0V
         FMmQ==
X-Gm-Message-State: APjAAAXYoNy4fFZgzC/g5kTvA8BmoH8YrgPpFb0770Qe4Yr+DnVwvxRY
	v2lV5f28eiBES2W95EYRHSwRCHGrtu8=
X-Received: by 2002:aa7:8b12:: with SMTP id f18mr57971831pfd.240.1554028432274;
        Sun, 31 Mar 2019 03:33:52 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([123.201.105.95])
        by smtp.googlemail.com with ESMTPSA id h4sm2560140pgn.20.2019.03.31.03.33.50
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:33:51 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/6] staging: comedi: Prefer using the BIT macro
Date: Sun, 31 Mar 2019 16:03:41 +0530
Message-Id: <20190331103341.21459-1-sanjana99reddy99@gmail.com>
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
 drivers/staging/comedi/drivers/ni_at_ao.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/drivers/ni_at_ao.c b/drivers/staging/comedi/drivers/ni_at_ao.c
index aad0b295ee2b..814895d01ffa 100644
--- a/drivers/staging/comedi/drivers/ni_at_ao.c
+++ b/drivers/staging/comedi/drivers/ni_at_ao.c
@@ -244,7 +244,7 @@ static int atao_calib_insn_write(struct comedi_device *dev,
 
 		/* write the channel and last data value to the caldac */
 		/* clock the bitstring to the caldac; MSB -> LSB */
-		for (bit = 1 << 10; bit; bit >>= 1) {
+		for (bit = BIT(10); bit; bit >>= 1) {
 			bits = (bit & bitstring) ? ATAO_CFG2_SDATA : 0;
 
 			outw(bits, dev->iobase + ATAO_CFG2_REG);
-- 
2.17.1


