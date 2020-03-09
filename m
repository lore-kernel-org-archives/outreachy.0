X-GM-THRID: 6802195878840893440
X-Received: by 2002:a63:1862:: with SMTP id 34mr13349628pgy.191.1583759644998;
        Mon, 09 Mar 2020 06:14:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:982:: with SMTP id 2ls1349878pjo.1.gmail; Mon, 09
 Mar 2020 06:14:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu68+mJK4IRhW1PAyELacigUCAdhwxF9074ZL0D4aAi/xvHl2SthBptJ0f3MXuwyHn1cNki
X-Received: by 2002:a17:90a:1c01:: with SMTP id s1mr17078008pjs.84.1583759643706;
        Mon, 09 Mar 2020 06:14:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583759643; cv=none;
        d=google.com; s=arc-20160816;
        b=Rr/YV3F+gFYUYf8cTPd5cKr3DFF88+oV4Q5oF92nm1IBgf/LyANDTop/kRhSV65Gn7
         jVBmpsiNNLGV/4PMLso4PwC+z0QCgg/w/jhPG1GtglFtOjNG50b28CwD7x8gxYpS2Rie
         r3G1xi1ODEcxxHdF3iWUcQ8vIgjMZ+iF0F6Hft9250H0s4kacC922B6isXtrHS+VLMou
         5+6IfA7C80dY6biuOCrJ8PEvSnnrnmisK0sCxWTFxcEukh1CRb/4LtGrA6szX+Wdl72O
         howF6r3gewCok9wWsvbyISZAq2e6HU4kqEbHW1Yibjsg8dGmg2qGUyCd93nWQQWDoyiS
         J1Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=rDIhPTyW8q3YTfa4iU522+aqdK2EBIQqrSM9utIxD4Y=;
        b=Z9+Z8QBZmTcRprR1s5DwjAcfTfSwT4PRMNOmv5RoHN72uGGSYghul/x/0mbjboC8ig
         kjnBIAKlj2tfdxzYOUhh6jJ84dNQwvivDtazgCL3HQshhZk+CWEZLTFbJVeQvN61K0nV
         VfG9kcK7qVl/vfOSJmI8wP+LW6KJluPqVxBrG2QL4WeOpblzLYdueQlOAsxiYJxa5mtt
         BrQ6SXGwahqZer+GlihrNn1XS3RIHwUMYvTOoXwUAB9PF2lA0Dul3y1lCDEFqFeSjUoH
         idDdeatpt2SF0KQpb3l2ZpQgkhvQWuMYv4E5yVRxIFYEjonu8nWQVg4yymNo/1zKVWGF
         09xA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jMM8wjhh;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id q1si58687pff.4.2020.03.09.06.14.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:14:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jMM8wjhh;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id a16so4431855pju.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 06:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=rDIhPTyW8q3YTfa4iU522+aqdK2EBIQqrSM9utIxD4Y=;
        b=jMM8wjhhoKvM5r8RmFrP8Uyc6dgDm6NfOOiCMEdtbo7IPcXZ2xlVmVxItXmErV81Ke
         G+E2C0u3eoLmWnpOa+m8O7K0sNy/lMaQDNG7eJoJSjA3VBt8ioG64l0nSIp7umBfzWct
         cBZkTjenZ69JT80Z0FN5U0dmEiC/ELMvK5fnFAsgvVqVg3sqiQQsToKxmzLoUsvdEquK
         L9GS+YmFKvogcCXbBzkRZjG3Q1YnuobgK3/+DATb0g/FhJASNkiPkfo2ogIYhjt0eh0+
         60+Rg4li8MKZGFXlSZtwVJIJ+JLaGn0C0bGIlsduLmIDr4Qte2H8v/tNWLH++ItMYmep
         d1uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=rDIhPTyW8q3YTfa4iU522+aqdK2EBIQqrSM9utIxD4Y=;
        b=fJAPFAa0gXwojvQ0Ov01HFpk8u4CmuUZJluL5OBxPQWFdCZcFfgEKDYm/sElOCTjRp
         llmdnYG2JeT03FfMn+4Rdy8lRuU58lEgGV2aFQIS6iojwlCsyhwlkPE9626N9IBgP7md
         iEBYn5ezrvzfi9laaXl3MsVvwt6bnTtemotV0UIjzggGDfZrWdgQK4W918dsVpn3/RS9
         lz12CYyrYMJ2HRbqOyHqplsTjm8eUYBY3i0LVx8vvwcBMMxXkDO8D6+mrSOABRzVe6Qf
         Y+BOGX9P+vnZXHpfcCtighbZAgeod6Cxst75DHPCJ3/eyT1rnUY2HHTWzjlG5AFIzNV7
         y+Gg==
X-Gm-Message-State: ANhLgQ3Yp/0OcQpKd3Zgu6oopHfHX3ZvVOdwQbeGwO+SBdfW1iDDP9Nt
	4YQRd+xHsuTdqC+FSZtd9pz+p71SRfE=
X-Received: by 2002:a17:90b:30cb:: with SMTP id hi11mr19336775pjb.112.1583759643217;
        Mon, 09 Mar 2020 06:14:03 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([157.33.162.233])
        by smtp.gmail.com with ESMTPSA id f8sm44651812pfn.2.2020.03.09.06.14.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 06:14:02 -0700 (PDT)
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: manishc@marvell.com,
	GR-Linux-NIC-Dev@marvell.com,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payalskshirsagar1234@gmail.com>,
	linux-usb@vger.kernel.org
Subject: [PATCH 0/3] [Outreachy kernel] staging: qlge: qlge.h: cleanup suggested by checkpatch
Date: Mon,  9 Mar 2020 18:43:53 +0530
Message-Id: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
X-Mailer: git-send-email 2.17.1

Cleanup suggested by checkpatch for the file drivers/staging/qlge/qlge.h.

Payal Kshirsagar (3):
  [Outreachy kernel] staging: qlge: remove spaces before tabs and align
    code
  [Outreachy kernel] staging: qlge: qlge.h: add spaces around operators
  [Outreachy kernel] staging: qlge: qlge.h: remove excess newlines

 drivers/staging/qlge/qlge.h | 69 ++++++++++++++++++-------------------
 1 file changed, 33 insertions(+), 36 deletions(-)

-- 
2.17.1


