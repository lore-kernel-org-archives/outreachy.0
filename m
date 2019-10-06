X-GM-THRID: 6744825053591896064
X-Received: by 2002:a05:620a:65d:: with SMTP id a29mr21347803qka.285.1570401958221;
        Sun, 06 Oct 2019 15:45:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3f5d:: with SMTP id w29ls3333043qtk.0.gmail; Sun, 06 Oct
 2019 15:45:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqye2Z6ItLz5fu3JgKZVr9ULK+fQlPFCI91khJBPKrGrgm/LvfbcO9RJiJdI3ZVo9WzkB3mw
X-Received: by 2002:ac8:f54:: with SMTP id l20mr28017720qtk.355.1570401957379;
        Sun, 06 Oct 2019 15:45:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570401957; cv=none;
        d=google.com; s=arc-20160816;
        b=IMmLHGhOk4nDZOlXF3hegjAC5rErJm+GIa2sfOXVWCmz1hrQArBFSxePqvzi1hc/BV
         y6hQqGw//gGvcwmZhBWsUCuy4Onrtr3o5+0PD1hXmHKGxUikhdQqgZDFb0cAB7+K8pdH
         tvuRaV87BE3YmMorbVvY2eb1tbdLQ/2YgFoYUdzX16mp0tW8U5GAiaGHq783wjnL93Q4
         oRL2WBg3iuFK9uKQYv033MlUtV1fVdPWtJKlPK5e6kTT+8lOwIeh37YChdM/ub0rZZHz
         Oy2N2hc3jAAaj7J8HVF50NNzAbbxd4i2RV1NND8UZN0aln6hg7I8SL3V4aBjAeqdeKnS
         5WCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=ZNp8j6VG3Nyq6tcpawEIEFVuzNbzhyqnZTlRzfnJ/XI=;
        b=TMXx1vOzkK+Yc+zdkFZtG0tTFhMTJtDlJ1AUsIjgCGQvS8FWmZnhjWQLmKYdW+QCh8
         eVDXVf7wtu3+80wC405r0EblrlKse9jaH65WdjBrOrv9pBB/6m7ePisfkI1OPgKnJzXd
         YHkgh8Rz5wgZ0iTDioYS2Omm14DP7PSFXUbbEsWEuf8JfUyZ0mO/1ylvCWGetNtLi8jm
         dAKXt7C5h4tLTgWokOEWKUsAEyGEkRkG9rFBFS9iwiEf2yk6ODkh6JfnZR/ijfKif4Fk
         yBwAwbySyr3dCNpcHPLsomwL7S8XotFJHEGTE9PEdl4d0bwNV2Mtmqt3ehkx4VU76637
         UCiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e+PFYFMc;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id c78si927796qkb.7.2019.10.06.15.45.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Oct 2019 15:45:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e+PFYFMc;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-vs1-xe44.google.com with SMTP id p13so7712370vso.0
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Oct 2019 15:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZNp8j6VG3Nyq6tcpawEIEFVuzNbzhyqnZTlRzfnJ/XI=;
        b=e+PFYFMchVEjFr06MS7RZ/r8cEqM8zna5DiSg1O725ZwZnq9RWdQ1btMxKYUExDOqx
         fB5zrQol2LJ3wxP+V/XPjKf7L6P0gn3w8oJoStXKy0wmxMdGQhTOivceyLK7Wa/rmvbr
         f+MNPWWmfhshsTbAD4w6hyggiCb3rB23RG0yhkkXt5hO0xFwIKXerO4DdasQf+wyC0TV
         W9VDTQ5kW0Pc1Yl9NHa6Z0fN98lXSNhoNGU2rTxtJcswecQEom9UHjHBu7HfKPWTnvNJ
         TTf05Cr4XNDVoxT0OzR72ernLrQiqnvajHPubH2VKEtHaES2ZlX8Rleuyu69Xao7Ehg3
         Aq4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZNp8j6VG3Nyq6tcpawEIEFVuzNbzhyqnZTlRzfnJ/XI=;
        b=N8rjBGCJLBn/QwwLQ0UoyhiIhFjQMl5U+DDYsvHa58T9DEcRfhCyTOL0HXyCBN5llc
         khWebSz3q2lTmg73HfCug1YRLsqQKe/18kLtl1eFV7qg8pfbRM813KQINRmYb5s5F5gA
         qAqDS4GlCsMm/bMleEJ57Ud0Y8G24aKn/6jgeVCmCZ/yeYHlsm5Tl/DQ/gScs1KlYkaN
         Mi26MlAJPQ5LcQWxGc2IIgFr7GNNN9NRoZyCCwB9q+CUEb0RuDReg1YE7iCbPRIy8qKj
         nNFq5jKllOGuOHHTDDg6VBXCPtWoMrfDPjZXxF+HBuEfHg7Mfs7z00H/d0ZTSQBjsGUc
         za7w==
X-Gm-Message-State: APjAAAVpicfZFSkKTPb/1Z5W68YjpclQBxHot6HWjgHOZoyreH21u7Wr
	IbyCPRuUeZq8/7RTq9WXM0LreoAiwJEzLQ==
X-Received: by 2002:a67:e9d3:: with SMTP id q19mr13407511vso.40.1570401957075;
        Sun, 06 Oct 2019 15:45:57 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-200-119-56-53.dynamic.etb.net.co. [200.119.56.53])
        by smtp.gmail.com with ESMTPSA id a16sm2667910uao.18.2019.10.06.15.45.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 15:45:56 -0700 (PDT)
Date: Sun, 6 Oct 2019 17:45:54 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: Remove commented code
Message-ID: <20191006224551.GA3551@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)

Remove commented code for a cleaner file. Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 29acbb1ee869..3956c43a6468 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -2689,18 +2689,7 @@ void wakeup_sta_to_xmit(struct adapter *padapter, struct sta_info *psta)
 		}
 
 		pxmitframe->attrib.triggered = 1;
-
-/*
-		spin_unlock_bh(&psta->sleep_q.lock);
-		if (rtw_hal_xmit(padapter, pxmitframe) == true)
-		{
-			rtw_os_xmit_complete(padapter, pxmitframe);
-		}
-		spin_lock_bh(&psta->sleep_q.lock);
-*/
 		rtw_hal_xmitframe_enqueue(padapter, pxmitframe);
-
-
 	}
 
 	if (psta->sleepq_len == 0) {
-- 
2.20.1


