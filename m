X-GM-THRID: 6331255217033576448
X-Received: by 10.107.10.91 with SMTP id u88mr1628907ioi.72.1474121946186;
        Sat, 17 Sep 2016 07:19:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls7772424otw.9.gmail; Sat, 17 Sep 2016
 07:19:05 -0700 (PDT)
X-Received: by 10.157.21.114 with SMTP id z47mr12325982otz.13.1474121945827;
        Sat, 17 Sep 2016 07:19:05 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si3564643pab.2.2016.09.17.07.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 07:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id pp5so4695995pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 07:19:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=QVnbfmkgq1KHVQXgIYXFR5T7zDrlk3k0qkzlwxG26VI=;
        b=KRzyJ6yIZ4yfh6qD6v8G3DTQeWy4Q+icv8m2qjTQK+dzGoncpZHZf9IRk+J5lrCnpP
         AO9HGk0aihMmM/XZt91BM/4KYTsPojyEoKanlNQNrEDi8P2AA7uQhEucEJA+/PC4UvY1
         85lieLfizKbr9TUPV4v45K345qEBxBeLvALH+G2K2od1KK7cV9pH+yDCBLD0QVESbBSI
         s28gD0p52VSPF84FRYMWymZo8P7Kpo43ORZrAiz0TrxMR9Jkp8V8CKtsH804WQu6Kivo
         wQu0BPymWKJlNjuWWSiafx7dX4pjjw+brVyA9/hrK8Lph5wdtvO2cO44fyEUlqKS35Ek
         Hd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QVnbfmkgq1KHVQXgIYXFR5T7zDrlk3k0qkzlwxG26VI=;
        b=fWWfd/n95kl7WcNUv/Ks4WADosUHDqN/2kQMVCIX1N3Vcz4sQ0vAw4e8r89T9duD13
         KTEJ0LtdsFol/koOcoWUzlm7+GATEb6UDfC6PkWNxgxzWFzh26qTJr8hHxMuy9kasz96
         rx7VxiDIDQm9EI2K6dk5XaF8ky6K334vorirjCXh6AwG0Eq0ce7pfSfMmTxBuy6wc2IL
         F+NVos+4jnr9cD2qKjW4DxAygUQRlPNSgWksuuvRr3YJcc1enpL1JN45Lc64RD6xBjta
         8TVyRuIZD5UzeMRSt4neGQZhvMBxbtj9phzR3Qnck0JweNq7RULkmDEG7OMdvX0XBne3
         VcZA==
X-Gm-Message-State: AE9vXwM2Nq+aAlUjoC0o2iklRrOKwAVhTT+IH2+vbwEnvvVgpJaYpmNs3f/hPFXuJqM5Kw==
X-Received: by 10.66.161.195 with SMTP id xu3mr31789478pab.68.1474121945446;
        Sat, 17 Sep 2016 07:19:05 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id ps2sm19600706pab.10.2016.09.17.07.19.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 07:19:04 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH v2 0/2] fix multiple coding style issues
Date: Sat, 17 Sep 2016 19:48:19 +0530
Message-Id: <cover.1474119676.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2

Patch 1 fixes the issue detected by checkpatch. Patch 1 modifies
multi-line comments to follow kernel coding style guide.
Patch 2 uses kernel coding style guide for macros.

---
Changes in v2:
	Capitilised first letter of sentence in commit message
	of patch 2.

Gargi Sharma (2):
  staging: wlan-ng: use kernel preferred block commenting style
  staging: wlan-ng: change indentation for macros

 drivers/staging/wlan-ng/hfa384x.h | 626 ++++++++++++++++++--------------------
 1 file changed, 303 insertions(+), 323 deletions(-)

-- 
2.9.2


