X-GM-THRID: 6808044843867045888
X-Received: by 2002:a25:5c86:: with SMTP id q128mr3514397ybb.236.1585121492078;
        Wed, 25 Mar 2020 00:31:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2ace:: with SMTP id q197ls499545ybq.1.gmail; Wed, 25 Mar
 2020 00:31:30 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvVVGD/zVXSnYGYs07r979QBbBqK/I4MarmCrynwZ4u2Ip3eYyIpCZhqf74woNbDdZM4tun
X-Received: by 2002:a25:1043:: with SMTP id 64mr3530992ybq.224.1585121490951;
        Wed, 25 Mar 2020 00:31:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585121490; cv=none;
        d=google.com; s=arc-20160816;
        b=QO1uopyX95KXxv51NtofBpnda4MNTN9qDZNzEs1BPwCO2lD6vEzDgObkLmktHxB7cn
         tFBwNCZRVoGAJVWF1COx5s5L6ofz5r1cFHJvnJ3xf6/RjuDEvYKRErxjiv4NL46Vh0J5
         pEkn9B8KaAEAOWz45iLGahOb9ZPCxPE9fJc+Aw2t+RFSswESYFLjGEZZdTX4kzx4dY+x
         e/ANUpgh4s2XULh7M3PqpJENsebghp1THnIQ4NoUA+lIqjgpumCslEGIC2MmfA3pkyKN
         SFjeUi+je/L8kCanF5eIM3SP87Pis0TtQ+PxFm6Rr3LOGnPk+xjNHfvIpHLKrvKH329s
         6/sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=pdOS/WqAbBuWcBFO5S6JNgTjNzJhz+nrcp4A5ZDH1ek=;
        b=bVMMZ5vEsTz8HnYXE0KB4jRbUKwI8Pu5gtx91uU2XmXPw/wVm6gvTzRZ2lZsfUtaRZ
         xoDnRmNiR9h0u8Dc0xd2/yqCjM2ti0c+V+dHQ8w/+zKJ18dwji/RkSAyoiMQC92sVUyt
         QfgTu4Q3/bjdWZsWAFmrUg0kBt1ZVklq71R9xF9gWBFCBhOJPhMkgK3vyAuJZtvuKezV
         6h6YTJ/YKWZI9X0bywa1O54qpVuPOoAU9jAQWdwu3zuFbkBxcHVkmxiK+m/YsKJZNGA0
         23sW41BsFbhoVIaCYO9MTitfiw7skyMJt/ETCNpKKyWknh4aEGNwzCUZn607PbED2Rfe
         3P3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NpTQDie1;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <debsoumyajit100@gmail.com>
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id y140si1071326ybe.1.2020.03.25.00.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Mar 2020 00:31:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NpTQDie1;
       spf=pass (google.com: domain of debsoumyajit100@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=debsoumyajit100@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x543.google.com with SMTP id d17so759708pgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 25 Mar 2020 00:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pdOS/WqAbBuWcBFO5S6JNgTjNzJhz+nrcp4A5ZDH1ek=;
        b=NpTQDie1jYlvzhU+5vknQi18whiIUAdvHvwjTN7aso/XmVZwpaoD8LVCZJcJ3kJAh5
         KQ/3j/AffwRXZ6zwoJ7ecATHTC/27wGl25NYZ1X6DH6IDqtsJx3qPOzJkX5ASzMsR8+v
         SM8+bDCu/C5aFbG3Mq2q57F2mp/fIt3+B9xUsUaFMeJrxgu11pctaaTTpZQjGYQ33xUQ
         znTMyCP+7nP2lgVd7JGAXcbdIn2tH4RMW8zRUJNjHZ9vf3iCwG03JF01zNklX/fRinKf
         MFDdDCCehIVGn29gr7r2GJaWOUSvLxWsX031O+udtKCBW9x7uBjr2/pd6uKD6WZlzwCD
         3nvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pdOS/WqAbBuWcBFO5S6JNgTjNzJhz+nrcp4A5ZDH1ek=;
        b=KCX9uamK/LRj4rmiUNCa4BlMJRvwnPDd8RcuitKcAOGal1vQJOaz4/k26Ulxq0keB9
         K0Ub7sQtbc1c0tnhDkzEK770aSNDBGoROVjvLUKbgvmFgl/7eV3u9xrl7zyKB75+wgEW
         DVjh2hEs8LVDhuzZYU3yBaS6A3CNFV0rQzZBvkob7auG4wjLiSNfF0F5QESxay3+w5vu
         4ePbdIDLmPeAq5BCOacJe6CtZJjwbBYot6N14b+2F5Y8LGznRJYzG7dbZOJt2PTGAFVX
         YGiGhKha55fejwH4F1Il27H0M8dtZBBpOse93p++/51+T+AqAXqqLAaxS9jzI1qSdDDl
         j6NA==
X-Gm-Message-State: ANhLgQ3bFVx+D98btTljIF0cJPLHXenYJJznTfCXHGjpyh9K5aR/UkVA
	FMuFN5xF5kBRcylXE+FmUYyHFJnn7HaQFA==
X-Received: by 2002:a62:7d11:: with SMTP id y17mr1960903pfc.127.1585121489693;
        Wed, 25 Mar 2020 00:31:29 -0700 (PDT)
Return-Path: <debsoumyajit100@gmail.com>
Received: from localhost.localdomain ([47.29.229.149])
        by smtp.googlemail.com with ESMTPSA id m11sm3896670pjl.18.2020.03.25.00.31.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 00:31:29 -0700 (PDT)
From: Soumyajit Deb <debsoumyajit100@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	perex@perex.cz,
	sbrivio@redhat.com,
	Soumyajit Deb <debsoumyajit100@gmail.com>
Subject: [PATCH 6/6] staging: hp100: Remove space after opening parenthesis "("
Date: Wed, 25 Mar 2020 12:59:05 +0530
Message-Id: <20200325072905.29066-7-debsoumyajit100@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200325072905.29066-1-debsoumyajit100@gmail.com>
References: <20200325072905.29066-1-debsoumyajit100@gmail.com>

Remove space after opening parenthesis in if statement to improve code
readability and to adhere to the standard coding style.
Reported by checkpatch.pl

Signed-off-by: Soumyajit Deb <debsoumyajit100@gmail.com>
---
 drivers/staging/hp/hp100.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
index bc8bb48956c8..16fe9c7879cf 100644
--- a/drivers/staging/hp/hp100.c
+++ b/drivers/staging/hp/hp100.c
@@ -2455,7 +2455,7 @@ static int hp100_sense_lan(struct net_device *dev)
 	}
 
 	/* Those cards don't have a 100 Mbit connector */
-	if ( !strcmp(lp->id, "HWP1920")  ||
+	if (!strcmp(lp->id, "HWP1920")  ||
 	     (lp->pci_dev &&
 	      lp->pci_dev->vendor == PCI_VENDOR_ID &&
 	      (lp->pci_dev->device == PCI_DEVICE_ID_HP_J2970A ||
-- 
2.17.1


