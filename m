X-GM-THRID: 6205781635135176704
X-Received: by 10.50.20.227 with SMTP id q3mr25894198ige.11.1444897191824;
        Thu, 15 Oct 2015 01:19:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.10 with SMTP id s10ls613904qgs.8.gmail; Thu, 15 Oct
 2015 01:19:51 -0700 (PDT)
X-Received: by 10.129.73.143 with SMTP id w137mr6364517ywa.19.1444897191281;
        Thu, 15 Oct 2015 01:19:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id pe1si1268492pac.2.2015.10.15.01.19.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:19:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id ao1so16106890pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 01:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=iuLE7DANmcgseSeRXU4Hbgl9Z+WLwc2YVtD9bmHlAvI=;
        b=0LoggqqUfxlrEYaJrmS81VpUtKScgKekLS+WQxwLbwu2ueV7bO5Fcbw1AUJ4zMsCrq
         5xq35cwoJqzUncJdw4VWlwu5xZR8iOYS579AFgUw2p4JFHDrBGrA2XxPde1xMLXSTFnQ
         mTsJyOsLPaxsZ/sN381duJ2eu0zYd6gVReclrY1wpL2Q+7G0ehkiElxetB5c7rQbaGJQ
         p3VLkbCMvTYBX7gvrE/y7Xh6MHbC5C9tMgYdQ2oi4UJY7wsh0rm1LqedPMvSuSs43fam
         IXOpO+IN6dUEKM/hxUJYeIiZ07U5K9zl0uTyY6ivsQVEjxHiLSlPyJsUhHD6D0o3SHHl
         dZBA==
X-Received: by 10.66.194.138 with SMTP id hw10mr8800842pac.71.1444897191082;
        Thu, 15 Oct 2015 01:19:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.84.71])
        by smtp.gmail.com with ESMTPSA id w9sm13830139pbt.29.2015.10.15.01.19.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 15 Oct 2015 01:19:50 -0700 (PDT)
Date: Thu, 15 Oct 2015 13:49:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 12/18] staging: wilc1000: coreconfigurator: Remove useless
 initialisation
Message-ID: <f009f2964d27a44d7b41c59c9d341d107ebcb45a.1444895819.git.amitoj1606@gmail.com>
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
 drivers/staging/wilc1000/coreconfigurator.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
index 9f87d05..108d636 100644
--- a/drivers/staging/wilc1000/coreconfigurator.c
+++ b/drivers/staging/wilc1000/coreconfigurator.c
@@ -114,7 +114,7 @@ enum info_element_id {
 /* response frame.                                                           */
 static inline u16 get_beacon_period(u8 *data)
 {
-	u16 bcn_per = 0;
+	u16 bcn_per;
 
 	bcn_per  = data[0];
 	bcn_per |= (data[1] << 8);
@@ -256,7 +256,7 @@ static inline u16 get_cap_info(u8 *data)
 /* response frame.                                                                       */
 static inline u16 get_assoc_resp_cap_info(u8 *data)
 {
-	u16 cap_info = 0;
+	u16 cap_info;
 
 	cap_info  = data[0];
 	cap_info |= (data[1] << 8);
@@ -268,7 +268,7 @@ static inline u16 get_assoc_resp_cap_info(u8 *data)
 /* association response frame and returns association status code            */
 static inline u16 get_asoc_status(u8 *data)
 {
-	u16 asoc_status = 0;
+	u16 asoc_status;
 
 	asoc_status = data[3];
 	asoc_status = (asoc_status << 8) | data[2];
@@ -280,7 +280,7 @@ static inline u16 get_asoc_status(u8 *data)
 /* response frame							                                     */
 static inline u16 get_asoc_id(u8 *data)
 {
-	u16 asoc_id = 0;
+	u16 asoc_id;
 
 	asoc_id  = data[4];
 	asoc_id |= (data[5] << 8);
@@ -290,7 +290,7 @@ static inline u16 get_asoc_id(u8 *data)
 
 u8 *get_tim_elm(u8 *pu8msa, u16 u16RxLen, u16 u16TagParamOffset)
 {
-	u16 u16index = 0;
+	u16 u16index;
 
 	/*************************************************************************/
 	/*                       Beacon Frame - Frame Body                       */
-- 
1.9.1


