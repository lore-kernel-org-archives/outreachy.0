X-GM-THRID: 6805867897863274496
X-Received: by 2002:a05:6000:370:: with SMTP id f16mr3594979wrf.9.1584615422329;
        Thu, 19 Mar 2020 03:57:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls941697wme.3.gmail; Thu, 19 Mar
 2020 03:57:00 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuCeH+23X3p1FacIOlWx6rRBhzYU8v1E1KL2vSEbmk3wk6FzvmnRIjxDyMbO9sbRRWyfURz
X-Received: by 2002:a1c:8090:: with SMTP id b138mr3129257wmd.55.1584615420932;
        Thu, 19 Mar 2020 03:57:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584615420; cv=none;
        d=google.com; s=arc-20160816;
        b=iidGWuPpC8HMOeNBSt2nrUbSN1f+khF7+cd1nF34KpVEU8O7+KGBUZcuCA7nM4zDZY
         Uf2mtsOp7eVYCdxOj9jXogKPfzLI5FLeL3KbOCir/AhQIfAoHuEMAbvjeiSkdAtbj5b1
         AEsnkV+M1NfTu5qbfLJwuyLZ80x/mJbkElEZpZq9/UlJvaa+w8m60a92gSDNgsP1l93h
         3/dyCFgGK1OomBpL0fEgwg0QaqOJs5GY958wxpNj52uCfFLOKw7UD66EsfayXji5ak7o
         xe2I8kUAcjS65s7LHwVu4rj10b7RB7os90juo/5UoOh6rNJOUGv3gx2bnN+gMMbhauKZ
         EH5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=miUsg/TwjrwXms2o8nKprVhujMk8N5L8xOlM0Jwx8uQ=;
        b=0uYGZhNZmSePKyRsOF+m8LHGRKNHEN5l9x+UVxLD7s7HMA3RkkmiUJLhmJ2s/x8srn
         MdPRVgZIF8ZDHrvjC2ukDTsWl8S+cvAD6Tsivxd1NfrI54VOsYds813azKb8FUaWELHM
         gJJhowkxrbRjmmRNkfJ+Yh4vsZIbcmMro/N9lxzHx+Xj+MP3kbC/DD8HRbXWegO49S8O
         0Lq9+qaA9fVkzUS791Tm3MWDUnxKmlSAnuXkaioYFQLs34y9j8fmSQ+tCxUmHlNi77Kl
         HfdyxUtO+5EQHwrgjXVzCig5TqloQeDIiVDObzNl9IhvZ2hN9LBam7sh68p1aaHWPD8j
         ymYA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id n9si72056wmi.0.2020.03.19.03.57.00
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:57:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27473 invoked from network); 19 Mar 2020 10:57:00 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:57:00 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/4] staging: rtl8723bs: os_dep: Correct typos in comments
Date: Thu, 19 Mar 2020 16:26:39 +0530
Message-Id: <896f333d2561881f83cd29b45502363d122e31f0.1584517384.git.vkor@vkten.in>
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
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 17e65934fb5b..d29f59bbb613 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -1274,7 +1274,7 @@ void rtw_suspend_wow(struct adapter *padapter)
 			padapter->intf_stop(padapter);
 		}
 
-		/*  2.1 clean interupt */
+		/*  2.1 clean interrupt */
 		if (padapter->HalFunc.clear_interrupt)
 			padapter->HalFunc.clear_interrupt(padapter);
 
@@ -1348,7 +1348,7 @@ void rtw_suspend_ap_wow(struct adapter *padapter)
 	/*  2. disable interrupt */
 	rtw_hal_disable_interrupt(padapter); /*  It need wait for leaving 32K. */
 
-	/*  2.1 clean interupt */
+	/*  2.1 clean interrupt */
 	if (padapter->HalFunc.clear_interrupt)
 		padapter->HalFunc.clear_interrupt(padapter);
 
-- 
2.20.1


