X-GM-THRID: 6950478192224239616
X-Received: by 2002:a05:6808:1412:: with SMTP id w18mr1774844oiv.50.1618284366157;
        Mon, 12 Apr 2021 20:26:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:f0d:: with SMTP id m13ls4092099oiw.4.gmail; Mon, 12
 Apr 2021 20:26:05 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRw2WEF8naH3GCH1yq5jsE2SlwZAGHK0qUgUvzkA0uKWFVEx3eN0RPEfcNmcuTYSDKwV4s
X-Received: by 2002:aca:5fc3:: with SMTP id t186mr1700016oib.69.1618284365554;
        Mon, 12 Apr 2021 20:26:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618284365; cv=none;
        d=google.com; s=arc-20160816;
        b=qo4FpCujbBBgH79CuzLTZOILXaNqXK14QlCl5wlIybvBrLalGtA2RFF46g7AQwl+5/
         JiT2H072RrlBID5ORmKtRjdtETM783TnHOQLJhqCDUGijkyRuuZ7jWLdgjI/Yz2pc/R0
         3VpoczIk2jBNct5+EHBwPL2GrhbgAtGHbezc7BjRqv4xwGRV1Xj2W1IPGnqpUZxMaOsR
         81IVS5yHY+3lB1lp3GH20hsLIEGTpiigikTT2hQAWfAsCLhae0ix086XRShvHTaQTxzI
         Dw/ZGzwFm3RVph/KEoHhCcpFDM5JLofqXUTlrC7GY8arFCsT/uIgn9h5fOMWvSr6yaTj
         jRtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cp9Q3q4NFkapY3F7PFjTBCPu8I2/yhix4VA8BHzZzls=;
        b=iJ8fjCJRIRRDJ374o2+CbQHHeA7BSAOERJjZdjKY8YatOP3FBxtNaQAsgdF3UFD8gE
         SGqwrzECYZ1QgPvvT+sZfd/B2qmOJctXYln2lWBxtQskvqdCZ+yv4gtoF+ZuBO6e2HR3
         tLTOJQiOjhlP2TegVToYF241CAJDG0mEIsMW043G29+HuZ3msRpmW4haZCEx1I4rSiAB
         65yC26+krdrIB8jxL8ZT/J1DnJzkB9nMRqt41/fZ2z24zxMmbOWcOSn35j4YEt5C/VVB
         tDuDNn+HZ/OuYnwJidVJCBR//QpxAsfUcn8z6h74MlzgnUsLXVJlQpMJ5P6I6MDyoxkS
         dopA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyL39EPK;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id w16si911509oov.0.2021.04.12.20.26.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 20:26:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jyL39EPK;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x634.google.com with SMTP id y2so7458158plg.5
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 20:26:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cp9Q3q4NFkapY3F7PFjTBCPu8I2/yhix4VA8BHzZzls=;
        b=jyL39EPKMRbMkF0H8rbw6NZX1+zZgJP8rqnJ9V6W7SeaX1Fw+PMHo6LHRRnE71F2xP
         bZ/6MQNeBhJTo1CzCfmYpLq5c2VubtyUZr0eiQtmNy2RGP3QU+wu/ca5sMZFgXLQuK95
         i6gRCxHKrHH2qCctRZJRKtDFah5eRxFykDujHolvqAodLegAzHmvJFRej3zVNy9rgwtU
         kz/gLWmS3UJ/T0Hrp9OQBYtoKT6nM4qy6B1PQ6oQnMoAavfe2PhjnkL7nbSGS6yNNCPI
         w1niRXACKkVIzC2zt3lRl7jkhwVgTPPIKSC7ftfHuBNpC/mMdNLn2ZE3tbu6Uryrn5UO
         3zBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cp9Q3q4NFkapY3F7PFjTBCPu8I2/yhix4VA8BHzZzls=;
        b=LdRwBmsiQ3WnowXRSsdwHLz47mEM3kbCC9B4ZXc8zTH/vRHg2h0jyEbfhofFIpeGhK
         Gt/YM6hjqup+Giwi8Pu6NFXHnBLccz2lowrTkE0OubaQ7c8/E4gTy+KWnenzXAkivzNr
         iUUMppj5V/UtPM9IdANaoesriS9hKYrufi2IfDkOtKMVsI86feaNU6i3oTNmXMUpNpue
         FXMJzAVaiijhbFm+gXc7Hrme9l3jEcKR4JBcCECkShumxd48QurvVO55TOJsx9+FbXM+
         hF4Yd6VRI/5C9cdYTj2GZdv8QZE1c6WBs3f3mBj3ae9zabOYZrz4YMY4L3HCHL2Ooqy3
         +Qzw==
X-Gm-Message-State: AOAM533gJrgT3HA63+wlJEdHz7J5i0/mtPFBwiy9qVeryAskdThUKkwC
	P+L7iWk2WNR2FIdH3sQRaTA=
X-Received: by 2002:a17:90a:a403:: with SMTP id y3mr2490713pjp.227.1618284365145;
        Mon, 12 Apr 2021 20:26:05 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id h19sm11284507pfc.172.2021.04.12.20.26.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 20:26:04 -0700 (PDT)
Date: Tue, 13 Apr 2021 08:55:59 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v5 3/3] staging: rtl8192e: remove casts and parentheses
Message-ID: <4a26a0e155e3ea1ed48aad5a1df4b543c35346f5.1618283232.git.mitaliborkar810@gmail.com>
References: <cover.1618283232.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618283232.git.mitaliborkar810@gmail.com>

Removed unnecessary (void *) cast and parentheses to meet linux kernel
coding style.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v4:- Removed unnecessary casts and parentheses.
Changes from v3:- No changes.
Changes from v2:- Rectified spelling mistake in subject description.
Changes has been made in v3.
Changes from v1:- No changes.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index 431202927036..ec6b46166e84 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -646,14 +646,10 @@ void HTInitializeHTInfo(struct rtllib_device *ieee)
 	pHTInfo->CurrentMPDUDensity = pHTInfo->MPDU_Density;
 	pHTInfo->CurrentAMPDUFactor = pHTInfo->AMPDU_Factor;
 
-	memset((void *)(&pHTInfo->SelfHTCap), 0,
-	       sizeof(pHTInfo->SelfHTCap));
-	memset((void *)(&pHTInfo->SelfHTInfo), 0,
-	       sizeof(pHTInfo->SelfHTInfo));
-	memset((void *)(&pHTInfo->PeerHTCapBuf), 0,
-	       sizeof(pHTInfo->PeerHTCapBuf));
-	memset((void *)(&pHTInfo->PeerHTInfoBuf), 0,
-	       sizeof(pHTInfo->PeerHTInfoBuf));
+	memset(&pHTInfo->SelfHTCap, 0, sizeof(pHTInfo->SelfHTCap));
+	memset(&pHTInfo->SelfHTInfo, 0, sizeof(pHTInfo->SelfHTInfo));
+	memset(&pHTInfo->PeerHTCapBuf, 0, sizeof(pHTInfo->PeerHTCapBuf));
+	memset(&pHTInfo->PeerHTInfoBuf, 0, sizeof(pHTInfo->PeerHTInfoBuf));
 
 	pHTInfo->bSwBwInProgress = false;
 
-- 
2.30.2


