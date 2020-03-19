X-GM-THRID: 6805867897863274496
X-Received: by 2002:a2e:b0f7:: with SMTP id h23mr1760787ljl.56.1584615418362;
        Thu, 19 Mar 2020 03:56:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:96d9:: with SMTP id d25ls423973ljj.11.gmail; Thu, 19 Mar
 2020 03:56:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvrYYroA5Sc1wz+r9jCzYbhaGMvhbPbfL1O7W481P8oejY5a7ZMtVBqC2qanTZn9YseGTM0
X-Received: by 2002:a2e:81cc:: with SMTP id s12mr1827390ljg.35.1584615417026;
        Thu, 19 Mar 2020 03:56:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584615417; cv=none;
        d=google.com; s=arc-20160816;
        b=yTa3hZLQBhAfe+QA8PndsR0HObRhF0W8hI4Wdd8GYYByvfc/Y5EnPbgbcJxT82xyRb
         1NAsgBVy2s7jfmClsjiiU2T0+8ONc3mbUcRx2Un/PQs0MDtURmWWqCKi3in//6jcZXLw
         T7VaXRV0/lb8sCkSCQflVItbZEWmE+v3JktAfriNf/UZ5CdLzzaY9iu2ZKg35D+h71v3
         gojQt0JBFnS424TxAGZAs9vBUAqlkyJQStW3m4eJqJEczXkRpcK5LnsStE5jlOqmEevf
         /iKdwbgQbUpvhukv/PVy+dgweo41bv6opclbOTaCQ8VGVffD6A4ff/vNxHl34KKtu781
         8JCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=XL8araAj1mkiMASQwKnDEnMY+Y6kEW+1B4nMMCOswFQ=;
        b=Jrc3nXhu/K0sC1QaD6QW4FNoQUFySZ4Pdf5xi8TTyP9pxC1mlXxy3kHPduJZWfQtrR
         3Rbd7p5l8MaMA3kTUHEOD+W4fD4s9Io/H+lU/6CAkQF5JyMoqlyKptuQeolc0P2/HQFr
         2JAYwBG5Lndrty8zG9hFT0t0ZZyzNeDDll7tqfK6fOCdkPxAq3VPhRz1YXbzWp15qd51
         YoGBNFZxu6D6VCfWyjsqi7gjzxiy8JOYa7L1rYpvXKG9wQJ/9piQAA4F2XWrSG818AYR
         WETo5I2Jqh0CkoHTi0bSD50PSlU4PiqKXlynVYn3UyfBI3I/QX236C+sIS89KZ67bVi5
         ZbWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id s22si83281ljp.0.2020.03.19.03.56.56
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:56:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27459 invoked from network); 19 Mar 2020 10:56:55 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:56:55 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/4] staging: rtl8723bs: os_dep: Correct typos in comments
Date: Thu, 19 Mar 2020 16:26:38 +0530
Message-Id: <6e5787e10c2fb1d2ef76f4960c01abc10bb91613.1584517384.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584517384.git.vkor@vkten.in>
References: <cover.1584517384.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typos in comments.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
index 29f36cca3972..5059b874080e 100644
--- a/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/ioctl_linux.c
@@ -1093,7 +1093,7 @@ static int rtw_wx_get_range(struct net_device *dev,
 /*  Commented by Albert 2009/10/13 */
 /*  The following code will proivde the security capability to network manager. */
 /*  If the driver doesn't provide this capability to network manager, */
-/*  the WPA/WPA2 routers can't be choosen in the network manager. */
+/*  the WPA/WPA2 routers can't be chosen in the network manager. */
 
 /*
 #define IW_SCAN_CAPA_NONE		0x00
@@ -1391,7 +1391,7 @@ static int rtw_wx_set_scan(struct net_device *dev, struct iw_request_info *a,
 
 		}
 
-		/* jeff: it has still some scan paramater to parse, we only do this now... */
+		/* jeff: it has still some scan parameter to parse, we only do this now... */
 		_status = rtw_set_802_11_bssid_list_scan(padapter, ssid, RTW_SSID_SCAN_AMOUNT);
 
 	} else {
-- 
2.20.1


