X-GM-THRID: 6750983693634895872
X-Received: by 2002:a37:5784:: with SMTP id l126mr1235185qkb.373.1571835878123;
        Wed, 23 Oct 2019 06:04:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:2786:: with SMTP id n128ls725309qkn.0.gmail; Wed, 23 Oct
 2019 06:04:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzxmYXqIE3veLkJWA0vf7ijck5fcy5bf3I5XzvjaU0FkB2EoaVMXNUDy4NXUdrr62oqMwrV
X-Received: by 2002:a37:5b46:: with SMTP id p67mr8248887qkb.318.1571835876951;
        Wed, 23 Oct 2019 06:04:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571835876; cv=none;
        d=google.com; s=arc-20160816;
        b=Uai5Ui5HzzdAC4GKsUEqQiMRjX8S+uGxp8oOMaJk5HUf6RtPi7YBkXu94azvL9zcgs
         OVKS3iDvgsE9zCznN8A9qGqBYJlEiy4k6EbtixQy0qcuqHNU/H7PTdQ9gVdM0jRD+1cw
         qeb/UeI/Mep3/VhZ2TCconANqf90lvxB4GBT9AFZ8l1xtHI+rPyRHVaGOB2Ib3n/7zVT
         nfJMdmJpewXtXppr2aEZUXRPTBsDkaD4v3GIRkgGTCSvo/fBkLtUfpeMNMNqxy/DchaB
         gHzbBhRZ+3FXsZaoaPBdDdc84yuPR1v+qi7drNstTMYCVCDJz7NvJbMjQSiHkUl3qtSh
         QZkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sWmijOlLw9L+Z7Zdc88aDcQ/f+m+VqQLLaambnkwdQk=;
        b=Vo4GfKSfgoPclw+8B35YTIAD3uz9VFwFgKjJWCsZFVGUhnyluHxCo1hEBwo3UnAn49
         VbuJyRP13HPlh3XSTvGq2z1oOgp7ukfGuErt/0pyniLPwYZQg+6H8o7fhycoHdgO7KBb
         E0YWnYZuSCM6JVhR/A4n7CdBROAKLHegyen8H+av/wD2RQcrcA30SsNmtHzUbrrRGvHu
         0GzTZikuIa1XC6FGST9th6TLEh9ixtFVWJbZw3dXOKiMIBBdJ12W77hV5UySnkgmvgUf
         SWXTjPyY/eXvOCnYBh1P7UrEoWWwAZ7UZff0D5y5UUAyOyGi7EIkk1CSDnZWWd+dlQQm
         Y4kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lsvA+WuX;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id y203si547743qka.4.2019.10.23.06.04.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:04:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lsvA+WuX;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x843.google.com with SMTP id c21so32079251qtj.12
        for <outreachy-kernel@googlegroups.com>; Wed, 23 Oct 2019 06:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=sWmijOlLw9L+Z7Zdc88aDcQ/f+m+VqQLLaambnkwdQk=;
        b=lsvA+WuXW9hndAyoEr5RvLtJABNPJQDJ351XMA4q4gyMKTefHQegjRC1/k9nYmmF5v
         uJNUUkFD07u4/fQHM3N1ApwFuMrp3iD5JgsNaSZJd362q8ZAjIP+vWdFGri4LiqtXkfV
         gliA7Dd7vI2wDm2l2VZtQQYMyEQYaPLgylrNFfLdzzxLEubnJNCQ/+enjvyRGzmqqUDC
         pgM7fp1YECVyuNZIFbX23iKIlHEhofzPC4Wf0akNBFrxmfarvufaG4BOd3T/vZWe2F0B
         nR4F75T5bUbAsayJ8ZDMSGfxF9iKZYbN/MG2k218NComt20EH+7JPnX3mZVSEp5goIAV
         qmOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=sWmijOlLw9L+Z7Zdc88aDcQ/f+m+VqQLLaambnkwdQk=;
        b=XA/ipv0YxN101twyyemm27+4S2m7FgIa0I+1FuHov+UMhJeo/KhVfZ5soT8kgkyW0Y
         yAKGDXmPsHSmRGWSoE/HS0OyEK+DBX3MMuiDP0ph2ZbKcGhkicBEozlopxHCxToDobZ9
         ThhxfYQp2dZ/fXMOlO558NU94GkkxEi1/xq6cKztidaAavZawjkNfFJEKqGEyUXKhbPo
         fcLN/+ehbbrF7KsbqpDN2ucGUUDUn42be3j34GKauXk0GP5EwdL9Lo2gjnh17sqywEUG
         LKQUTZaPnN3lWSjjTU/s1wC71pxyTAPkUS/LFKF2hR1kcB+4anAuXG7JGgyriJolUuf1
         pNug==
X-Gm-Message-State: APjAAAVQMlw/+iOorlHlClMskZQLRP2Ip8X7iMaGDTKOV0TaC+jdD82f
	7n68921uHo2sTK69XKs62O5Ot5EVMluwJQ==
X-Received: by 2002:ac8:2191:: with SMTP id 17mr9185375qty.112.1571835876442;
        Wed, 23 Oct 2019 06:04:36 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id z70sm7604872qkb.60.2019.10.23.06.04.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 23 Oct 2019 06:04:35 -0700 (PDT)
Date: Wed, 23 Oct 2019 11:04:31 -0200
From: CristianeNaves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com, gregkh@linuxfoundation.org
Subject: [PATCH 0/2] Cleanup in rtl8712_recv.c
Message-ID: <cover.1571834718.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Cleanup in rtl8712_recv.c

CristianeNaves (2):
  staging: r8712: Fix Alignment of open parenthesis
  staging: r8712: Remove lines before a close brace

 drivers/staging/rtl8712/rtl8712_recv.c | 32 +++++++++++++++-----------------
 1 file changed, 15 insertions(+), 17 deletions(-)

-- 
2.7.4


