X-GM-THRID: 6205781635135176704
X-Received: by 10.129.71.195 with SMTP id u186mr6294139ywa.27.1444896434072;
        Thu, 15 Oct 2015 01:07:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.136 with SMTP id m8ls553257qge.72.gmail; Thu, 15 Oct
 2015 01:07:13 -0700 (PDT)
X-Received: by 10.129.134.129 with SMTP id w123mr6247956ywf.17.1444896433534;
        Thu, 15 Oct 2015 01:07:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id el2si1335402pbb.0.2015.10.15.01.07.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:07:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id ws5so16698615pab.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:07:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=Xt0ArCttfZYN9b9rjY5TAzImAhnDcACmXSFtaoUvWMA=;
        b=PgV7oP98njJc3hzU6JolqQmsRY7H4NofU5G11I8iJD+oSMY8Aw+3W94wDfvAK7rgnt
         pwcwPid14mHgy8daHY3RQazWKxidiUxL83Bhv8Gl8igDZNsMtmNAZ+fmGsZ41qVKGEuu
         H7l9Td/SJ7B0M1sxDNJoDQF8nJHRmk2gI/NsUWtOR0+hJ4QCfdOp/HZj9ktPZOmcKoAz
         2QMyFa1Z/A5UGm+wTKJVrzXYIZgUoQfFh1l50B8MXj9D1YCnvlKIindYMgaWazW8IlFq
         r8uiULVk9BwJjQpOJETbZwOWj5Xp7vJS1qDhOffZ+6BFRV/XYZMl/FqvkwlIfsKgT4Ay
         f8UQ==
X-Received: by 10.68.162.65 with SMTP id xy1mr357927pbb.23.1444896433330;
        Thu, 15 Oct 2015 01:07:13 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id t9sm5457994pbs.17.2015.10.15.01.07.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:07:12 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:37:09 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 03/18] staging: rtl8723au: core: rtw_recv: Remove useless
 initialisation
Message-ID: <e892b458f7563e7f12b6809730a8c0de556a8669.1444895819.git.amitoj1606@gmail.com>
References: <cover.1444895817.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Remove intialisation of a variable that is immediately reassigned.

The semantic patch used to find this is:

// <smpl>
@@
type T;
identifier x;
constant C;
expression e;
@@

T x
- = C
 ;
x = e;
// </smpl>


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_recv.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_recv.c b/drivers/staging/rtl8723au/core/rtw_recv.c
index ad0549c..404b618 100644
--- a/drivers/staging/rtl8723au/core/rtw_recv.c
+++ b/drivers/staging/rtl8723au/core/rtw_recv.c
@@ -626,7 +626,7 @@ void process23a_pwrbit_data(struct rtw_adapter *padapter,
 	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *) skb->data;
 	struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct sta_info *psta = NULL;
+	struct sta_info *psta;
 
 	psta = rtw_get_stainfo23a(pstapriv, pattrib->src);
 
@@ -653,7 +653,7 @@ void process_wmmps_data(struct rtw_adapter *padapter,
 #ifdef CONFIG_8723AU_AP_MODE
 	struct rx_pkt_attrib *pattrib = &precv_frame->attrib;
 	struct sta_priv *pstapriv = &padapter->stapriv;
-	struct sta_info *psta = NULL;
+	struct sta_info *psta;
 
 	psta = rtw_get_stainfo23a(pstapriv, pattrib->src);
 
@@ -2151,7 +2151,7 @@ int process_recv_indicatepkts(struct rtw_adapter *padapter,
 static int recv_func_prehandle(struct rtw_adapter *padapter,
 			       struct recv_frame *rframe)
 {
-	int ret = _SUCCESS;
+	int ret;
 
 	/* check the frame crtl field and decache */
 	ret = validate_recv_frame(padapter, rframe);
-- 
1.9.1


