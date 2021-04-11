X-GM-THRID: 6949862244544937984
X-Received: by 2002:a37:688f:: with SMTP id d137mr22631220qkc.246.1618140916152;
        Sun, 11 Apr 2021 04:35:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5810:: with SMTP id g16ls5866290qtg.11.gmail; Sun, 11
 Apr 2021 04:35:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyCU6xSmvPL4/iux/QrL1xME1Z/vG7lwbcsxJE68GBE+eMUIo8ym3NZT8bsmPA4zyk1ZcbI
X-Received: by 2002:ac8:4809:: with SMTP id g9mr21017589qtq.315.1618140915285;
        Sun, 11 Apr 2021 04:35:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618140915; cv=none;
        d=google.com; s=arc-20160816;
        b=kY6KPEkZVkj/naz9ByFK2mI24FGkQ9oO2EtSPa3idHZmIDTAoyAlYcU7SqmZCRFap7
         9916mNGkklt/40YthKEOyM1M+3/ehHsHKKKeVoG9u/Zkv7HFDdFSloFGRcQwVj3zC2SQ
         sFaD+ykPozx3C4UkLamGGP7C23Nb501eR1swORpNWnzxVWbLGqkITeyexi+JG71uEskp
         aL0n7XNbg4t10znLAzx3LFhLUvPEW3hfttoEp5JcRlbs6w4E7ee9iOlG8mkWBVTaZrF6
         qESDpRea7Y8/y98daV8Obi4gl8EiafjufhHymRAY2QOes9Q4hAorXpsH9yfoTVo0Vpg3
         MmXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=0tmRORdRg1bQn0Wbj1SOLr37bS4BZCkXUnlrXGSpfdA=;
        b=GhXR6f19KXk+xkV2FKuGpF7IMW7kBraQiat0H1CprDswyia4jbS0TdRkG7sDjwMbTG
         yGJhOHw+DcNv7q5xGtzIjEtCp+V04KDAcK3hmPr/MaBTWVLGAX+C2aogIp+aV387kKBj
         mkfARaUDctPB878gayIXr2drN59y0qqLnLDssHo1j8I8AGl8si2AobAVVGvoxRNBDSnC
         +BLukqpPJ+3Y9LiV4oIHX5YXF1ABRwcCq+6MNBsbLdUy3jSaaKDllwwUeu6gYDSutqAW
         IZdFa8DzDlOZK5GPzJ60LlgNctnEcXrXRnaZkEMmdiuPzjSJUGGUC0zGQznh30AV0jr4
         h75A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=It9maA02;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id r24si912758qtp.1.2021.04.11.04.35.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 11 Apr 2021 04:35:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=It9maA02;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42d.google.com with SMTP id p67so2364625pfp.10
        for <outreachy-kernel@googlegroups.com>; Sun, 11 Apr 2021 04:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=0tmRORdRg1bQn0Wbj1SOLr37bS4BZCkXUnlrXGSpfdA=;
        b=It9maA02mKRyRB3V6Xt5Cx7F3mTkEAHeFgbIzbGtukC1k2tqI3eeA46zLvAvo+zGvz
         BP6HG7vvnByFBQxEnndmLwlQGZ2RoejCotoKmUN1cxwd7r7HzvhyaZwhkH0dDrnIgSM4
         dT1t66yBn+V77DFJuwI0itSIMyliR4OcO1DEi+AElXZ/tz/Boo+bITLwdrIAMDF+wMUV
         7kFNUKROT3jv66dNwAfNVB1rR1BK2Ad9iaXPmOAV0BnY4CFYONl569jqe9layby2bvF3
         4W98wl++KN1Bk+J2CZ5Vfe4ECK1egcGOJcdFiaQJdlaTSY5HkOLiml+RBnrYMknwOY11
         kkcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0tmRORdRg1bQn0Wbj1SOLr37bS4BZCkXUnlrXGSpfdA=;
        b=N5UyHIhUOP2zgJhqrTivgC4PXHHO3PIJnz8GGGw2DKBS6A2gbMJQMK8ScNmfl0N+6g
         p/AysLV5gsU1cNyAmn/vjOyuJHqaNrVF06EoRHSdoO676H7H+5kCf9UbQDWP4lsWBGfv
         IalnVgcggUKM/SW3J23uHFoPUyf5qWOKRTCt8ulNDT8Gq8/gQtBX3Pqg4zZISfhVOR0d
         sH3x4CYaHLcy5huVL/FIEetvAspYMocGdm2uQAQ4Re/tbqz0CmL98PAsuBxRKTs8fSCz
         DYCVviv99vMOCGdfYAqBpv0D5p682yG51QRiEs1LRiyvR5jRDeOg5Zzetqf00uy6LdbQ
         YTOQ==
X-Gm-Message-State: AOAM5327XhrrB+ZkNDmPpWf/MfyGI7nU9QzTt+6+FaeEMpr8ws6FMGx6
	pm2pUhlzhyqetpNwoa/WIaU=
X-Received: by 2002:a63:c157:: with SMTP id p23mr15357130pgi.162.1618140914445;
        Sun, 11 Apr 2021 04:35:14 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.254])
        by smtp.gmail.com with ESMTPSA id mu6sm7450956pjb.35.2021.04.11.04.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Apr 2021 04:35:14 -0700 (PDT)
Date: Sun, 11 Apr 2021 17:05:05 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v4 1/3] staging: rtl8192e: remove parentheses around boolean
 experssion
Message-ID: <596aa7e6d4e8ce80eaa98519001e17cf9d370f45.1618139271.git.mitaliborkar810@gmail.com>
References: <cover.1618139271.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618139271.git.mitaliborkar810@gmail.com>

Removed unnecessary parentheses around '!xyz' boolean expression as '!'
has higher precedance than '||'

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---

Changes from v3:- Modified log message. 
Changes from v2:- Modified subject description.
Changes from v1:- Removed unnecessary parentheses around boolean expression.
Changes has been made in v2.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b1fa8e9a4f28..431202927036 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -276,7 +276,7 @@ void HTConstructCapabilityElement(struct rtllib_device *ieee, u8 *posHTCap,
 	struct rt_hi_throughput *pHT = ieee->pHTInfo;
 	struct ht_capab_ele *pCapELE = NULL;
 
-	if ((!posHTCap) || (!pHT)) {
+	if (!posHTCap || !pHT) {
 		netdev_warn(ieee->dev,
 			    "%s(): posHTCap and pHTInfo are null\n", __func__);
 		return;
-- 
2.30.2


