X-GM-THRID: 6263794151847886848
X-Received: by 10.66.142.135 with SMTP id rw7mr16786375pab.20.1458405386837;
        Sat, 19 Mar 2016 09:36:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.137.100 with SMTP id l97ls893700iod.85.gmail; Sat, 19 Mar
 2016 09:36:26 -0700 (PDT)
X-Received: by 10.107.135.101 with SMTP id j98mr16301507iod.2.1458405386530;
        Sat, 19 Mar 2016 09:36:26 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 12si2560607pfb.1.2016.03.19.09.36.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 19 Mar 2016 09:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so22564651pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 19 Mar 2016 09:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=eOT5JG4vmx2sDmVV67kQvvkC8/PuI7SJyMecKHei2Yg=;
        b=nRFY1Y/leFnvg25u79u47XCAePGaRJ9EbEP9sBJZw0xp13pb9kukApG8DO33QResUC
         OuqS9AWhs906dGrQAF2WULHdWun39oo6tAbXQAU95SJYjVgEcK6SsxVg+l8ml3OFw4jf
         Z6ck4HBTxV8iCucdWcyXBOWWm8EVP/eQ/qZS6ntA4n7g8RrD+UwH/vSb4Kd+rZfPXj9T
         eQtaiqc0dFNxx8CVBV9T4qEGvaHRAvlSDWb2CIjLFqQFr+uRDB7cIzofmp+7HAQpTi4q
         bynGIGZOZPZtNYiXXDHfJRNDWUwiCy0c38bu9NPEsl070RHG0aivF9MSleuda4ZHNXBw
         tywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=eOT5JG4vmx2sDmVV67kQvvkC8/PuI7SJyMecKHei2Yg=;
        b=KQE/rRQmpLeBkymXpoJxMuJMAX8Mk2qlzXlDQqSiHXvyZv62pxj8iugKmItYMgzOhR
         H2+wy1VNAyh0WXqKwKyMVkhCAISKcQGrf2FbF85V+x2uL3Yxw9qzvyacxCzRB8r7WZgY
         gAQsqTR3tU4ReigMLh9lwRvLNgVyDzDV8mpTJ9K2GYJbdIfbO6MzQpYYb10m3A5e8hgS
         toOncENE75La9NM0rwCCetZh7IvphlRMKaLU448Xu22uv8DJEdU5qCno3QB4k6CHVXJd
         hKKdvxpdxDgDYs551cF07+o/ox19D/YOGih1AoBp6HTWACBg3HGOSOyUQcTYnt+R/kTb
         t1mw==
X-Gm-Message-State: AD7BkJJ8pdAh8QC9SokH3ZvokV12rqcvSsE1nx0clEPuumFpf0D4Po+CUY8iC8UeUhMvSg==
X-Received: by 10.66.146.196 with SMTP id te4mr32420609pab.125.1458405386374;
        Sat, 19 Mar 2016 09:36:26 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.86])
        by smtp.gmail.com with ESMTPSA id p79sm29103573pfi.61.2016.03.19.09.36.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 19 Mar 2016 09:36:25 -0700 (PDT)
Date: Sat, 19 Mar 2016 15:07:33 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 0/4] Staging: rtl8188eu: Remove NULL comparision.
Message-ID: <cover.1458376695.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove NULL comparision.This patch is found by checkpatch.pl script.
Changes in v2:
*Correcting the heading.

Sandhya Bankar (4):
  Staging: rtl8188eu: Remove NULL comparision.
  Staging: rtl8188eu: Remove NULL comparision.
  Staging: rtl8188eu: Use !x instead of x == NULL.
  Staging: rtl8188eu: Use !x instead of x == NULL.

 drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c | 2 +-
 drivers/staging/rtl8188eu/hal/hal_intf.c             | 2 +-
 drivers/staging/rtl8188eu/hal/rtl8188e_rxdesc.c      | 2 +-
 drivers/staging/rtl8188eu/hal/usb_halinit.c          | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

-- 
1.8.3.4


