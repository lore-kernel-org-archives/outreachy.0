X-GM-THRID: 6609200682225369088
X-Received: by 2002:a0c:b7ad:: with SMTP id l45-v6mr1475923qve.37.1538832495623;
        Sat, 06 Oct 2018 06:28:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:2b98:: with SMTP id m24-v6ls4211440qtm.9.gmail; Sat, 06
 Oct 2018 06:28:15 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60bQSqgUMBADQpl167e+Kub6BkLJWrImEqJ82D05IJnnHY9WP6921hjSKAk2Z9TNqWdI5gq
X-Received: by 2002:ac8:2373:: with SMTP id b48-v6mr11452834qtb.43.1538832495160;
        Sat, 06 Oct 2018 06:28:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538832495; cv=none;
        d=google.com; s=arc-20160816;
        b=JJQQ7HYhg6gCmErRasMrPEIodb9lJ3mVKSBkozumvfv/B+RBAcu59f+1gUKVOckYDN
         HTGK/cdTDygyZamabzj3pRD3rViFIgB8Isz5iu/emXFfySH/m2NpATotlaw6DNNImjs6
         tgvBox2HmM8Z0hxG/OTUY2aQgUy31Eb6H6pz/Goz6R/YHlVwa8LSTJLkH9MfxSAqyn5h
         he2sNHhQ2SxW3F7260bVRaS1l4X98AgP8o+lHdfDxh/n/H9g/6LeWxIU6weJx2ErghrH
         +glqzrKgzaFWKbZ4Kh/vUK0DbIXNDtOqv142AhhH/PMNgLrToRE0UXqjQIINhRxrPuf3
         pe6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=l5oGb+CNVqYXEfe4n24mNsgLSzX2Dwe+gB3ZiMTrLUM=;
        b=dqiyesVgRbgLKcRdVZHDEDR9c8MTSTWJa51tX/QDHcbUOAIOjsWqQNWk/OVmROb+19
         jenoAL05xgBijLgmcLJKQMKxu/HyUnPaCZ5u1JzavN3Y62/pMr0X2+XK8LZu90EonfPB
         2LAmkgxOXMTcfZs5KrayXBGOURATmKg7iXtif52F82tSPg64tOULT6RpvpdE3oXyszLk
         0V3UcNZ6qMYaitDJ2F2phYXIkA4pDCOZAzOon1Bn2BjDpWVdDkS7PueuIZmf+QpUyLeX
         xCuMKakT74Y5lJFpJS/GXtmYUFgKlGNJxVSKLc9TAoTExxUq9wo+CB6QnoYNpu3IMADc
         vYPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VaRRBt0x;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o26-v6si32209qto.1.2018.10.06.06.28.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 06:28:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=VaRRBt0x;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id f26-v6so6195754pfn.9
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 06:28:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:mime-version
         :content-disposition:user-agent;
        bh=l5oGb+CNVqYXEfe4n24mNsgLSzX2Dwe+gB3ZiMTrLUM=;
        b=VaRRBt0xKEKoSogLbo3skDoWG5m6R9zI2vpm9BbDBrVXMuVWbaXWbqh2nl9CHl3UHC
         O4HqfAe+OQZpBTa/TvvAx1Eo4Qq+fyY08/g/8q1bRzufQoXoWCSIl8G0CUhTV16bPB+0
         G2zonYG108LCd5sZMJop6nUvMIcDtvjxspwc9AqFWxSxSVUqKpUGZqaXeDQ1iylyI0kn
         ZGwHcPkwEQvzlklvFnGfD7vBaqMVFFYGA5Z36GfNKn+Madp/nnnbaUYaWEDxKS7IHxeq
         AzSc1Cs8KQtDoj0UzOVLaqON4aex6Mh1Oj5jEmAjqnB8mUZ1Daoa3VpyaufpWXrlxp3L
         g0sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :mime-version:content-disposition:user-agent;
        bh=l5oGb+CNVqYXEfe4n24mNsgLSzX2Dwe+gB3ZiMTrLUM=;
        b=rB8l/FzLOrPKr9mZ1Jb2h/PnEzSiZ8Vef9MFjxDPaPuJZdkn7qeE/aT8WyGLSaFL3o
         ghWEm293M2Pz5mh1MTxuQPwycmy6LOgIEMECh+TBtMJZKCbqMzu8hHT/iuHmz2TEMSxJ
         35xEy0yVgxoRRBTGgfLtDfD4Vsv0mF5NaFqTLkYNou2FGcILNyK9cklhsIuIqFhiznff
         8zFTg6VNDfPYbwFlYxg9EI5grPpd32XFB5sOztxJSu2ZY/ISNzPFIW+3oxP4aaYhfa5g
         oQGUYyWxzRNEosqhVvY5MnA094r2MEDnpOCRKsuenEFMN4qC2A3Ea7JIbJblrAUbtpFD
         kssg==
X-Gm-Message-State: ABuFfojIKJoPpc8adF2kkO3s5SyKghFqZwvF9NUBbloKx/aUmK5btp7Z
	flVaNdLFNYfOyqJgkCN8F1Ij8ZMlEpw=
X-Received: by 2002:a62:c252:: with SMTP id l79-v6mr16471640pfg.141.1538832494211;
        Sat, 06 Oct 2018 06:28:14 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from veda-VGN-CS3AGH-R ([183.83.92.101])
        by smtp.gmail.com with ESMTPSA id o2-v6sm11793495pgp.65.2018.10.06.06.28.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 06:28:13 -0700 (PDT)
Date: Sat, 6 Oct 2018 18:58:10 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: bhanusreemahesh@gmail.com, gregkh@linuxfoundation.org
Subject: [Outreachy kernel][PATCH v3] staging:comedi:comedi_pci.h Prefer a
 maximum 75 chars per line
Message-ID: <20181006132810.GA2774@veda-VGN-CS3AGH-R>
Reply-To: mamtashukla555@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Adjust all lines exceeding 75 chars per line to fix checkpatch warning.

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
changes in v3:
-Comment section of module_pci_driver() exceeds 75 characters.
 Adjust the chars to 75 per line
-Modified log message.
-Added change log.

changes in v2:
-comedi_pci_auto_config() function prototype is exceeds 
 75 characters per line. Adjust to 75 chars to improve 
 readability and also adjust the arguments to match open 
 parantheses.
-Comment section of module_comedi_pci_driver() exceeds 75
 characters. Modified contents to adjust 75 chars per line.

 drivers/staging/comedi/comedi_pci.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/comedi/comedi_pci.h b/drivers/staging/comedi/comedi_pci.h
index d89273e43cea..1cc5436cb415 100644
--- a/drivers/staging/comedi/comedi_pci.h
+++ b/drivers/staging/comedi/comedi_pci.h
@@ -42,7 +42,8 @@ void comedi_pci_driver_unregister(struct comedi_driver *comedi_driver,
 				  struct pci_driver *pci_driver);
 
 /**
- * module_comedi_pci_driver()-Helper macro to register a comedi PCI driver
+ * module_comedi_pci_driver()-Helper macro for registering a comedi PCI 
+ * driver
  * @__comedi_driver: comedi_driver struct
  * @__pci_driver: pci_driver struct
  *
-- 
2.17.1


