X-GM-THRID: 6753200563017482240
X-Received: by 2002:a62:1b50:: with SMTP id b77mr26815090pfb.187.1572352033050;
        Tue, 29 Oct 2019 05:27:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:b042:: with SMTP id z2ls4962865pgo.16.gmail; Tue, 29 Oct
 2019 05:27:11 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxwwrvtTFkVGqoy+f39EK5+4p/Kqp9cpPJsW2s189hO1a2aoAMRNugEdr346fKRqegj1NCp
X-Received: by 2002:a63:934d:: with SMTP id w13mr26451699pgm.185.1572352031544;
        Tue, 29 Oct 2019 05:27:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572352031; cv=none;
        d=google.com; s=arc-20160816;
        b=cgIYg8YPjBemQOFgr69cY0SqskKOSef3HWR/DJ9oLdLlsqyGgvNd0hIhYgmZbxql8K
         tixce3gi0GM5FY+u4V2Lqk4e5iV1cqp5jvEB22T35MX5DvJF2F+9BUq1vQaXa7I9luFU
         zfkPCUZOa20nJc8KDNgBkJhWQa9rA55ABSnBm2FywU1GQXo67056V4nj9mSnIw0mYppX
         BKIHWrWdH5MosMvDxfksZgLM4E0I5IdcJiMdBHNU0nnPG1z76DLpiIwGtHjvlIszdacc
         F1xr0mkPLPPyYPsQ2YvLbbfOs+Lb8phjYL7hgvYNayw+JjHnyBwJS+Fhg16kubmp0C9R
         N5Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=eQBB4XTcfKp0XfHWuYScWoDybcg4PuTDBR9y3o9pvL8=;
        b=rM2RJ0+36KmsGCSAyOyVl5y4mu2TQqCROCLzC5HinVNoN6cZGLiHX3SB+uD7jT8WE4
         xdsvs/pdB9X6YlwUeIOLw/PS5piP4iF9DSLicEN119PaarU3UwPCht2az0C1J8sfKTpa
         8UuZLtOErn+rTN4Q8GmX/0OLiRr99qbOzB2vMnVlx2xR7iZproIZyLV1zjqrWifBKsVP
         r7KlzkW5GtmxMwANjGO4yAWYiXyEuNXNbvX68WdPszX6fgLteSi7cCBAtwM27wArLwww
         WKiGISR7uKm5jq48GrzXbaRnaAG64eTZ1f3tWREM73NagfKny0PlasregO36bXGZXHa6
         I6rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICsqj+pW;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chime.evan.dri.devel@gmail.com>
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com. [2607:f8b0:4864:20::e2a])
        by gmr-mx.google.com with ESMTPS id u10si157973pge.4.2019.10.29.05.27.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Oct 2019 05:27:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e2a as permitted sender) client-ip=2607:f8b0:4864:20::e2a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ICsqj+pW;
       spf=pass (google.com: domain of chime.evan.dri.devel@gmail.com designates 2607:f8b0:4864:20::e2a as permitted sender) smtp.mailfrom=chime.evan.dri.devel@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe2a.google.com with SMTP id k15so8608681vsp.2
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Oct 2019 05:27:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=eQBB4XTcfKp0XfHWuYScWoDybcg4PuTDBR9y3o9pvL8=;
        b=ICsqj+pWFQ1xp3egafy5dzVgZNPJrMJuHLRS3vvUJCaj2a6j9F8t4I0YenJ5IUUEhm
         sRbvU0432n05lKs31CZ844t5jEiMfT89mmZ7T/9HNwoZuxDwbFdJ/bZK+VW5lVCPRitN
         IsWT6mIAxzv/H6vNwgu+5aiWU2faJwUN5+EOnPCSlVKJ/JdfpXMoT5x4RNtGQc03qUrG
         0BVaRq5DIo2u07NiSfrvyRHQA9VXI4v+k6pjARcXNsW8gmXeDcfGaJB3jxbpsttHTmuc
         Mzs4FBFw5NuRRQBTG+D9Ov9BKIL65QK3P/4GkNroJR5PBP163B762PpaZgKTzpSYZOWL
         WBuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=eQBB4XTcfKp0XfHWuYScWoDybcg4PuTDBR9y3o9pvL8=;
        b=WR+VGzmmqnHCM64bE/ji7pLNObNI6B0QueN3LJRwWDXt+KKYencg/fLuPbo5uiORnr
         LoWT+6ZYl7lBfgQcZNtD1ADJS7NalSvwl3F18OgKhvByXwx+epViDYboTFJxVzz4ewlj
         aJGahcwl65nISDWPrWmANcvhO+quWhkF10aBNitY62tSFTEZZVZCUOoRoZYcMeDwaYCw
         X32qgq8creyfXOjgdMnSqmFOdtl+725+Zpr9cGPxU3UYy7v1a+Xa4BEbatwAuJaVN1Kg
         x1HAS02MNtXsNBiinzEHr9rVfdrgFj6EzelLdATum+kF75akUnbuoAjPzK98JfFisuXb
         ZOgw==
X-Gm-Message-State: APjAAAXlQ+jUGvHHvOzvIU/lKhFwJauU/0Wq4xQ2ajBg7ZfI29wF3maN
	U9rKNEvx0MKtXUaGp55VmytQrvvJVCl0u+J0dCv1CbrZ
X-Received: by 2002:a67:1a47:: with SMTP id a68mr1532258vsa.147.1572352031043;
 Tue, 29 Oct 2019 05:27:11 -0700 (PDT)
MIME-Version: 1.0
From: evan chime <chime.evan.dri.devel@gmail.com>
Date: Tue, 29 Oct 2019 12:27:00 +0000
Message-ID: <CANR89jaTHmRieV47zcr3MZJ69cmNSBOtuTLN88bti4HAf73CkQ@mail.gmail.com>
Subject: Driver dependency
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary="00000000000045b38705960bbce2"

--00000000000045b38705960bbce2
Content-Type: text/plain; charset="UTF-8"

Hello Guys

Please am trying to modify a driver and the driver depends on COMPILE_TEST.
COMPILE_TEST is [=n]  and depends on !UML.
UML is Symbol: UML [=UML]
                                                         Type  : unknown

I've read the newbie tutorial many times, please can someone help. I guess
!UML means UML shouldn't be on ie UML [=n], then "!" will make !UML true

Kind regards
Evan

--00000000000045b38705960bbce2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+SGVsbG8gR3V5czxicj48YnI+UGxlYXNlIGFtIHRyeWluZyB0byBtb2Rp
ZnkgYSBkcml2ZXIgYW5kIHRoZSBkcml2ZXIgZGVwZW5kcyBvbiBDT01QSUxFX1RFU1QuPGJyPkNP
TVBJTEVfVEVTVCBpcyBbPW5dIMKgYW5kIGRlcGVuZHMgb24gIVVNTC48YnI+VU1MIGlzIFN5bWJv
bDogVU1MIFs9VU1MXSDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oMKgIFR5cGUgwqA6IHVua25vd248YnI+PGJyPkkmIzM5O3ZlIHJlYWQgdGhlIG5ld2JpZSB0dXRv
cmlhbCBtYW55IHRpbWVzLCBwbGVhc2UgY2FuIHNvbWVvbmUgaGVscC4gSSBndWVzcyAhVU1MIG1l
YW5zIFVNTCBzaG91bGRuJiMzOTt0IGJlIG9uIGllIFVNTCBbPW5dLCB0aGVuICZxdW90OyEmcXVv
dDsgd2lsbCBtYWtlICFVTUwgdHJ1ZSDCoDxicj48YnI+S2luZCByZWdhcmRzPGJyPkV2YW48YnI+
PC9kaXY+DQo=
--00000000000045b38705960bbce2--

