X-GM-THRID: 6611156296380973056
X-Received: by 2002:a17:902:9a86:: with SMTP id w6-v6mr1444087plp.20.1539279895116;
        Thu, 11 Oct 2018 10:44:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:9f13:: with SMTP id g19-v6ls5601295pfe.2.gmail; Thu, 11
 Oct 2018 10:44:54 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63tZvrICcDsxSXOXsWLA5BtBUWpfQWUmqXQhZZmAs4bcay7RNKV77ytyoJi+OED5iBZk4dv
X-Received: by 2002:a65:5cc1:: with SMTP id b1-v6mr1260033pgt.82.1539279894408;
        Thu, 11 Oct 2018 10:44:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539279894; cv=none;
        d=google.com; s=arc-20160816;
        b=IMr2sbJ5szr/eSipCzL2W/KdcQ7DFYyVp6LHiAsl0qmc8hWvv2rESJDEq/DqduylpY
         K56QwdvdKhhZgYWxQj2B6bigMgLXr745XJjpFZSle+W/FXA9uzd6tLDNGwsrBKHNaDyH
         UA1PVE7wIMrNcUx3+mE+KTZdPMImRP3AAANUYE/grEnadZ177+14Mr/9tUKWhQYQfvoh
         2PtcZ32oSRrDpeSCXOLAZhPsWgDFTQC+INo1PPtPxnGTLsdFx//a5M4+d7B1D/tqELsb
         m3wJHVZnLhnRS+5oI4AyPKs1tJDGyJ53AXYZ6VqQW2vcY/Ab7u8CrDlpVvy67eIVpr6x
         wJIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/TAMNLqDWlnw9WGqq8hKlEsuFB0t3G7lqIxyOJ8SiZ0=;
        b=0td5iXzesuhzLh5vw6ht1T/VYPIpViLYIN17eXjMsVjoefdqitRuifdNTdzPNYuQQt
         PnhDAuKQs+zs0qcCxuRaqJVz/UYFaBYyrCuikBmVXtMnBH+BbSBOdhZq7sKBWAwzihA5
         Nm3oSuobEOEDxJbhp25BbSFI3Nwuijoh0uNMv1z7mo8QR7A7n87Xi7qDsOMu6lgG7xXr
         hmBKAgSCH4MRwhtTGaOFpgIgn/8c2xpEvtLBcEe75sHEJ6r7WPJPCGwVGghQbuOse7+J
         BKipVXhtQLljvdg8IPyck9jM8btkgk4q2XbBfoeJVUw9k4y6IHBDiw6zIIovcuNutPD6
         +62A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1o6E8BB;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mamtashukla555@gmail.com>
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com. [2607:f8b0:4864:20::635])
        by gmr-mx.google.com with ESMTPS id f87-v6si1260669pfe.4.2018.10.11.10.44.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 10:44:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) client-ip=2607:f8b0:4864:20::635;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z1o6E8BB;
       spf=pass (google.com: domain of mamtashukla555@gmail.com designates 2607:f8b0:4864:20::635 as permitted sender) smtp.mailfrom=mamtashukla555@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x635.google.com with SMTP id u6-v6so1839323plz.4
        for <outreachy-kernel@googlegroups.com>; Thu, 11 Oct 2018 10:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=/TAMNLqDWlnw9WGqq8hKlEsuFB0t3G7lqIxyOJ8SiZ0=;
        b=Z1o6E8BBGDJqUchxXFghAvQo8WEblZA12eI08peXuGPdFerJ1i7bSqD/RdW0ej7tLW
         u1QD3E3hMIBXlBbJSGmOytgvo12RHkuDl3jn+Qr/wDdqZJ4/hgTgtOJyJ1NrbcFA4xxV
         yLZr1Ig/wYMMQKwaGxu3I81r3RD/l26/2RwIxizVQCPrPLjecygj+N/pc1ZdY3lGRt0W
         HSpEy43X4mCLm1j39T5n7HA7fc28geVwGdgBjzfjGMLNst9HGdIUXDqHNx1nqJOTkoBr
         amYZSuI4NNdz9AfhiWzybqwnvRYll+hIUEX/CwLmE4Z8LusIQLKHToXaariUDGapNssC
         0sIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=/TAMNLqDWlnw9WGqq8hKlEsuFB0t3G7lqIxyOJ8SiZ0=;
        b=f84OTYG/IZbx7MZcnG6Zy+RppsL+N2Y1MZMsFwgcqOARuD4Fb0w5guyeOfiiNkuYlF
         mPuy+YkoHAN4sDEaz91QuOJ9XlV9WGRZ0d6sQipSuQA14/UzcFFen+9zJvB4wvfNg5SU
         r+tnYtWQl7ORfToP1G2vgNFQ2cMq8JRp6JchJ4TeagYlt9NjE71d0/D9wtJA1VqoVO0c
         tjCk4rgkl4Icf68bq7VyJ640BSMmvHWCHqLXJ39acpzzFKtWihlrOFHP8eEj20jXzBpL
         xGvuk+jFMKlw/JNkqpVQoFw3/5L+7KvkMxrk1zBnyrR7/LDexRYZtxv+QVnuV+QRZ/dr
         ojAw==
X-Gm-Message-State: ABuFfoi+9szSioudkASvGut4qYcXMD8hbxzdTIfWsEJ0txgifxym3aBN
	UmtXCHxE6xPXa3PUj03SfzI=
X-Received: by 2002:a17:902:2805:: with SMTP id e5-v6mr2447112plb.169.1539279894061;
        Thu, 11 Oct 2018 10:44:54 -0700 (PDT)
Return-Path: <mamtashukla555@gmail.com>
Received: from armorer ([117.199.59.255])
        by smtp.gmail.com with ESMTPSA id r18-v6sm26080529pgv.17.2018.10.11.10.44.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 11 Oct 2018 10:44:53 -0700 (PDT)
Date: Thu, 11 Oct 2018 23:14:42 +0530
From: Mamta Shukla <mamtashukla555@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, Larry.Finger@lwfinger.net,
	hadess@hadess.net, hdegoede@redhat.com
Subject: [PATCH 1/3] staging: rtl8723bs: os_dep: Remove true and false
 comparison
Message-ID: <7520ea70487831d6e2943c37e02e8586af202e87.1539278377.git.mamtashukla555@gmail.com>
References: <cover.1539278377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1539278377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove comparison to true and false in if statement.
Issue found with checkpatch.pl
CHECK: Using comparison to true is error prone
CHECK: Using comparison to false is error prone

Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index c38298d..48a1560 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -209,9 +209,9 @@ static char *translate_scan(struct adapter *padapter,
 		i++;
 	}
 
-	if (vht_cap == true) {
+	if (vht_cap) {
 		max_rate = vht_data_rate;
-	} else if (ht_cap == true) {
+	} else if (ht_cap) {
 		if (mcs_rate&0x8000) { /* MCS15 */
 			max_rate = (bw_40MHz) ? ((short_GI)?300:270):((short_GI)?144:130);
 		} else if (mcs_rate&0x0080) { /* MCS7 */
@@ -862,7 +862,7 @@ static int rtw_wx_set_mode(struct net_device *dev, struct iw_request_info *a,
 		goto exit;
 	}
 
-	if (padapter->hw_init_completed ==false) {
+	if (!padapter->hw_init_completed) {
 		ret = -EPERM;
 		goto exit;
 	}
@@ -1295,7 +1295,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 		goto exit;
 	}
 
-	if (padapter->hw_init_completed ==false) {
+	if (!padapter->hw_init_completed ) {
 		ret = -1;
 		goto exit;
 	}
@@ -1303,7 +1303,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 	/*  When Busy Traffic, driver do not site survey. So driver return success. */
 	/*  wpa_supplicant will not issue SIOCSIWSCAN cmd again after scan timeout. */
 	/*  modify by thomas 2011-02-22. */
-	if (pmlmepriv->LinkDetectInfo.bBusyTraffic == true) {
+	if (pmlmepriv->LinkDetectInfo.bBusyTraffic) {
 		indicate_wx_scan_complete_event(padapter);
 		goto exit;
 	}
@@ -4229,7 +4229,7 @@ static int rtw_hostapd_ioctl(struct net_device *dev, struct iw_point *p)
 	* so, we just check hw_init_completed
 	*/
 
-	if (padapter->hw_init_completed ==false) {
+	if (!padapter->hw_init_completed) {
 		ret = -EPERM;
 		goto out;
 	}
-- 
1.9.1


