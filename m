X-GM-THRID: 6333999917767327744
X-Received: by 10.25.43.76 with SMTP id r73mr685955lfr.9.1474749322802;
        Sat, 24 Sep 2016 13:35:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.157.71 with SMTP id g68ls811136wme.16.gmail; Sat, 24 Sep
 2016 13:35:22 -0700 (PDT)
X-Received: by 10.28.29.13 with SMTP id d13mr453747wmd.19.1474749322191;
        Sat, 24 Sep 2016 13:35:22 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-wm0-x243.google.com (mail-wm0-x243.google.com. [2a00:1450:400c:c09::243])
        by gmr-mx.google.com with ESMTPS id p199si177894wmd.1.2016.09.24.13.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 13:35:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) client-ip=2a00:1450:400c:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2a00:1450:400c:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x243.google.com with SMTP id 133so8015114wmq.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 13:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3Yn7ALa3yPE1ZPe0HO+UjLQO6gBRN1LeBhvvGw9xuZ0=;
        b=wYwNgQgGugMzwRYjE8CBnPUf/U56cqSoWlXZa70DPmPxIoaU+/4KRA7KoFgmzuUdAp
         5yrIHdoJSdOCo+myO4pbb/17qRwnEGrIycdhbddl1q5TaAVJWX5uHx9JKxbs6FMal/E+
         6tfk9tCGhmre1iTy27qLJolo76cLToC//itiyVn/lDIOJtdzc/ZwnZB28gbUk6i40v1x
         t3eqJLx7c5p4loYt7s749OTOyjHfu7NuG978cpI6rfc9ShdeM/rr7ratGqymoUYsIwCb
         YrgxDTn+9IXASfshwYZ76bdxZq9aY39qVYEXpTPFDfQFBP8VRihf7LUQuxyFXFUJmbs0
         6kpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3Yn7ALa3yPE1ZPe0HO+UjLQO6gBRN1LeBhvvGw9xuZ0=;
        b=lFRX2uegdzIY+y8OA3y6CNRLzajt8BeGwpXHPZBceurmJ4N1PUF625ydz/IjGFuJh0
         5X+4DkQef35qGhcCYSpC0MgujpMotH1KsKOzEJOzkByMSfiEjId/8/BH4nfX5DPc/XaE
         SmNDSQYBtC6ABX6nX3Jb229VcaQ4a1WgefdrAizgzScEZ33fZE8bL+Xqt0citpZVvE3L
         k/HGkd5mr6RZPxoEo5cxXwHqA/OHDdio6PtkBaCTzjiWwPGpVFihe/PL7xMo1ezchaQE
         EtDjYM4dcEgR2vP/QF5Q/5K8NYLb3AVs5NPMqPBVwnKpPeNTMcnAJZDenT3SCUjCuB5A
         6V6w==
X-Gm-Message-State: AA6/9RlwZhwLWMDPEG5ZSAyyuXi7VUA6hgIyZe4CQbnhXP3KfTovJSOrQT2FsodorLi2yg==
X-Received: by 10.194.101.131 with SMTP id fg3mr15002247wjb.33.1474749321993;
        Sat, 24 Sep 2016 13:35:21 -0700 (PDT)
Return-Path: <georgiana.chelu93@gmail.com>
Received: from fireworks ([84.117.92.113])
        by smtp.gmail.com with ESMTPSA id p144sm2675679wme.0.2016.09.24.13.35.21
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 13:35:21 -0700 (PDT)
Date: Sat, 24 Sep 2016 23:35:20 +0300
From: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] staging: rtl8188eu: core: rtw_mlme: Remove return
 statement from void function
Message-ID: <d0824f184fc4965de7bd4f884729316890268f76.1474748334.git.georgiana.chelu93@gmail.com>
References: <cover.1474748334.git.georgiana.chelu93@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474748334.git.georgiana.chelu93@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove the return statement from the end of a void function
to clean up the code.

Issue found by checkpatch.pl script.

Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index 249568c..ee2dcd0 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -259,7 +259,6 @@ void rtw_generate_random_ibss(u8 *pibss)
 	pibss[3] = (u8)(curtime & 0xff);/* p[0]; */
 	pibss[4] = (u8)((curtime>>8) & 0xff);/* p[1]; */
 	pibss[5] = (u8)((curtime>>16) & 0xff);/* p[2]; */
-	return;
 }
 
 u8 *rtw_get_capability_from_ie(u8 *ie)
@@ -557,7 +556,6 @@ static int rtw_is_desired_network(struct adapter *adapter, struct wlan_network *
 void rtw_atimdone_event_callback(struct adapter *adapter, u8 *pbuf)
 {
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_err_, ("receive atimdone_evet\n"));
-	return;
 }
 
 
-- 
2.7.4


