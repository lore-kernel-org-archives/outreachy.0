X-GM-THRID: 6950478192224239616
X-Received: by 2002:a05:6830:802:: with SMTP id r2mr30376723ots.110.1618384942340;
        Wed, 14 Apr 2021 00:22:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:7dd4:: with SMTP id k20ls323801otn.5.gmail; Wed, 14 Apr
 2021 00:22:21 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwEMnZxPrUARjbOSRa6v/ccioqH6514MFWTGZMqshmiL+JrJFguahk77DYCJm8QjNmP/qGt
X-Received: by 2002:a05:6830:158c:: with SMTP id i12mr30529967otr.7.1618384941772;
        Wed, 14 Apr 2021 00:22:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618384941; cv=none;
        d=google.com; s=arc-20160816;
        b=BIBJNFOEcX9YqZypB+f/9jWgp5719gXJSvcZsqBesoucZBLbCfaAozZPireNVSo07U
         xcEMfYRZ2smzpzoqLPulgsCNJ/BGVTc+SB6tbQnUHuYF0XSAkkiiAaib2OL7rrYFN4gp
         PbOG/gcDj724zCYbwNgzDJoYNU9KtwtPRiep8kelB1roRaNosy8+NOQRZT5CrSjUlR5y
         Es83cjYXGd1jUeLLvB3GPU8rtsJm484JuVoAluSGqNZyOECYfy70DGT2of5KWSQkMPHj
         9PyCjZzhSBjYltPdWYXM1uC/FVMU/UknmJRejq4myQEBntBP25X4egdSOfeaUhsTvBLw
         /Qmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bOPzYhyvJvVeiml9bPQrg6xtoJCGmo6/t9FOb5TdJag=;
        b=vECK01YT1bGtQCVmep052xAxwgNHzsEeKYqdLxtiUaVXmK4Vtc4bPCgzUBrhpcMalV
         7zZ9y8McvQ9hdoC47RWQ+7iTBnFWg8da+6iXM8pveqZMqIac4aqYTN7IkuE+4bfS4YTR
         dnPQxe87a0ZKrH4GD6TI0pdAsnOjUWSQPtuXn3V+iROS54eQMK3nz3c4B4i61voEm+Qp
         gH5EL7Gr3Hb+jV89KIsVPsUpNf4gqCJuWJgdkL1RRH91H+4DvR3M45xvJUB1SfUDXKZb
         YBI0UyZaW/UNPhUup4bmTQOjxNkLdEoeRiBnySFHyaeAdOru8zE8hA9BSQVVhHf2MwCQ
         lDxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jMVDMm76;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com. [2607:f8b0:4864:20::1036])
        by gmr-mx.google.com with ESMTPS id u1si466513oif.3.2021.04.14.00.22.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 00:22:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) client-ip=2607:f8b0:4864:20::1036;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jMVDMm76;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1036 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1036.google.com with SMTP id s14so4952862pjl.5
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Apr 2021 00:22:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bOPzYhyvJvVeiml9bPQrg6xtoJCGmo6/t9FOb5TdJag=;
        b=jMVDMm76mBSnsuvjoK65aKRcxKQ82DrfuvIEwMueNgXXtO0BwQPLK3gUj9y65eyfI2
         81AadnT3nuyjjiA0hGlfn0O5WYsd7qV6FX5dKtt6bPUx6KQtPXeBbYnKsDRLF2WjqnVD
         7W9mMTHsxtcFSjE3kmO/6Mnxx5h1nKZvtXJCn10E1/8Vit4+LCj9+V4KuwnIcBRAYY43
         68H3oJvzgzb4JEfUqbYBVE5DSFU0qPm27ybKogdWPMqKFwPzF7UhFH7R5CV447NYsL76
         SeK2GXUeiGFt4Kz2//AfbLhRUVwKtShNIctyEBL96iBM/uSR+J/oWIfXYeMMfVAJ7fEj
         mhBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bOPzYhyvJvVeiml9bPQrg6xtoJCGmo6/t9FOb5TdJag=;
        b=Az8zbjRDY9hC9QS6Jk033+b6x6XFEtWNLSl7Kb07G3JQwW9lotwsPNBQMWrVDzAoeT
         4o5R47gOZtWoDOjPE/URM/qXfjskoBzJD22pthCr6kI4V8HN4cBBAVb02kPbefQ6w0y4
         BtZiP5gHeB1qIB5xMv1iaT6A1kScPU3vIFJit7ECBdYzZxb40mbz+7rfqZOtEshYrsMh
         fwtHia3f+qRwPHTxydo0QGFjTeL2l6ZERuok5wfxvfdU6nVnrA8k7dJztEz8em5EvnYP
         s5Y4pzB/m7dqIr+p/0nj616zDyiliw+meD+Bwb0fD+maXs/gEaXRVmQc5KAsLAe9QTs3
         SPkg==
X-Gm-Message-State: AOAM531NgNZDAHHKVpXz8FUlpCcoE1P3zeBetet+Lai1NpoBEIcgE1k8
	m/HnpLUisreEUNR/aS+wLxo=
X-Received: by 2002:a17:902:7589:b029:e8:c011:1f28 with SMTP id j9-20020a1709027589b02900e8c0111f28mr35753149pll.35.1618384941156;
        Wed, 14 Apr 2021 00:22:21 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id i22sm16235159pgj.90.2021.04.14.00.22.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 00:22:20 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:52:12 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v6 2/2] staging: rtl8192e: remove casts and parentheses
Message-ID: <f23b290c27fdfaf36ff723fc49f486cfdb985052.1618383684.git.mitaliborkar810@gmail.com>
References: <cover.1618383684.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618383684.git.mitaliborkar810@gmail.com>

Removed unnecessary (void *) cast and parentheses to meet linux kernel
coding style.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v5:- No changes.
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


