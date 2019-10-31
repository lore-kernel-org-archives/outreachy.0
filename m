X-GM-THRID: 6754101895701200896
X-Received: by 2002:a67:cfc9:: with SMTP id h9mr1846254vsm.63.1572561961240;
        Thu, 31 Oct 2019 15:46:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6102:7d4:: with SMTP id y20ls399447vsg.7.gmail; Thu, 31
 Oct 2019 15:46:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyp2EWJtlZPXg3hOfXdzOM8Heva7kjRufoa8krQSeUeGyVzjSZtfjw0KhURdWJowrwUYj+0
X-Received: by 2002:a67:b84e:: with SMTP id o14mr4545650vsh.149.1572561960206;
        Thu, 31 Oct 2019 15:46:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572561960; cv=none;
        d=google.com; s=arc-20160816;
        b=sOR0vOvmvnO6uIgnU4snWzHVvYvDZkINATqLnxilesonERqBhjESHIdMMgZ57z82B2
         O1FBgIgnkUXWSwo1cJGVLFzD3l01aUw80aTVh2oW+Af9AHB5ooufydXpQKWTt5QOyNK8
         MN94a9PTWcR/uxHN0aVTq9j9tybj50okUrjuMKnxdNkypoyDVMvpCjPqHRc1It/sx0Hy
         PNZBAaAMmDBEtNCKbSooDDO5uiSW3c8s65ZVWdHzQZE4xXNDRrV+Au2rsq7osQNhtrfA
         sCfCYJHVMCIcGVdzMLekK8hODjPEyEU3MbVmC41mmIVS58uC24b6lg8Ia7VBZ8XvhVgS
         nUjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=V/rw2YSD5UMogX0VKu62EFzjOKTzxjQJfyLvIAqgams=;
        b=ReVF6xZSKXLRAO9u+zCTVMd631hYsEHwI3nbis474erKC33/0p+4IzB2RM0JXgySTc
         AHEGZWeKmfq4K1Q6xmR94QQWmAdbN0bm2rwkAwqS1T9xTJ/3Qx468UoD5thdNNVI0Ywl
         HZUgA5NFy5lldve1IXR4GArMENtl0APXKCJ3LphmOWx5YsWxwOUn5I207pxp//7rQBxx
         1cfqVidh4Adw+CwgBk8oXmrU+GCg591PEgCFbVA8359r2p8b4x7oAPHYlMIw6C2OY46B
         Fnjmn/FF+hJ5OHe0jvN6N46FDnMQ03pRVOkE25xbfGLcprhmkJfkJBYREqnwprgYyZKq
         BjXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=zukie2ZU;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vs1-xe34.google.com (mail-vs1-xe34.google.com. [2607:f8b0:4864:20::e34])
        by gmr-mx.google.com with ESMTPS id s19si229008vsj.0.2019.10.31.15.46.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 15:46:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e34 as permitted sender) client-ip=2607:f8b0:4864:20::e34;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=zukie2ZU;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:4864:20::e34 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vs1-xe34.google.com with SMTP id k1so5241642vsm.0
        for <outreachy-kernel@googlegroups.com>; Thu, 31 Oct 2019 15:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V/rw2YSD5UMogX0VKu62EFzjOKTzxjQJfyLvIAqgams=;
        b=zukie2ZUuvnNFXRMU55+apjWcxKaHE3/YmGPr3DLutVM/Y9km54Rhk757KyycFa2hq
         YgIC/FWUxjqKKCUMycL+CxTd1+afRu1cd55PM9EpDO6UALeXjXgU0FFap8cNTaUEJQQC
         mpxKa+ewsmZp1JOKCvecSbF/w0clxi+OU2IhOYsmhnLUcHT8EmypAriX42nEBrc3WL4P
         ntA7dHL0Ibn4PQBaHpRf0caKcEquJYA9iofph+9bio8ifhX+YMxN3UFDfg5sPb7fqIpW
         1t+LM46VMRtw8uYgUvYjyoM3WATVDEJ7+q6khf4DvyWexAP6mXs6nRhQo9paGoqQukVu
         N4iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V/rw2YSD5UMogX0VKu62EFzjOKTzxjQJfyLvIAqgams=;
        b=B5okMlx2TlMhWohkoCpgS/dhBEjc0I1sFYBBEwlwAP86QDhYwAs3vEc/tzdhMGoSWC
         9onkZaPcBDzQSetQ4GCR9NyhRRlSyy7IYZ4tAM/G6w4KVM/4U91iyKpCFd7wZhJzXytU
         dTsZij13lbIA6j+S9WnpjUvO7ZJEibtr2f/N1dcEvsN3qmVhCCbQYfRqfbRZrpzIskkO
         rJqP8ptPgPnukHkTUqtc9YOb0YwMy71npVjPJ/Kd0eVlJN4QAiAjtfM/xZpFyc62Oy1k
         gTP7HXunh2l5BLw5wIBdY38A75AGJeAizQQLV9xVOoghMOtE7JafU+LGrcJhYRbz+zCu
         lIkg==
X-Gm-Message-State: APjAAAXr1EMpvyuerIbALzCvVH7eUzIU+yyB2diX+J8MrlJuve/9aWhD
	JL/o7KDtXhXzkycWGAgrHBKLzg==
X-Received: by 2002:a67:d091:: with SMTP id s17mr3040111vsi.215.1572561959531;
        Thu, 31 Oct 2019 15:45:59 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from linux-kernel-dev ([167.160.113.52])
        by smtp.gmail.com with ESMTPSA id u19sm1409256uap.8.2019.10.31.15.45.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Oct 2019 15:45:59 -0700 (PDT)
Date: Thu, 31 Oct 2019 22:45:55 +0000
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org, Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>
Subject: [PATCH 2/3] staging: rtl8712: Fix spacing issues
Message-ID: <15d3fe0896aaed90cc2f870800ffb0984a16822d.1572561194.git.frank@generalsoftwareinc.com>
References: <cover.1572561194.git.frank@generalsoftwareinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572561194.git.frank@generalsoftwareinc.com>
User-Agent: NeoMutt/20171215

checkpatch message:
"CHECK:LINE_SPACING: Please use a blank line after function/struct/union/
enum declarations"

Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
---
 drivers/staging/rtl8712/rtl871x_cmd.h   | 9 +++++++++
 drivers/staging/rtl8712/rtl871x_event.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/staging/rtl8712/rtl871x_cmd.h b/drivers/staging/rtl8712/rtl871x_cmd.h
index 98d7fbfce1a5..a494a621fe43 100644
--- a/drivers/staging/rtl8712/rtl871x_cmd.h
+++ b/drivers/staging/rtl8712/rtl871x_cmd.h
@@ -333,6 +333,7 @@ struct getdatarate_parm {
 	u32 rsvd;
 
 };
+
 struct getdatarate_rsp {
 	u8 datarates[NumRates];
 };
@@ -377,6 +378,7 @@ struct	getphy_rsp {
 struct readBB_parm {
 	u8	offset;
 };
+
 struct readBB_rsp {
 	u8	value;
 };
@@ -384,6 +386,7 @@ struct readBB_rsp {
 struct readTSSI_parm {
 	u8	offset;
 };
+
 struct readTSSI_rsp {
 	u8	value;
 };
@@ -400,6 +403,7 @@ struct writePTM_parm {
 struct readRF_parm {
 	u8	offset;
 };
+
 struct readRF_rsp {
 	u32	value;
 };
@@ -513,6 +517,7 @@ struct setssup_parm	{
 struct getssup_parm	{
 	u32 rsvd;
 };
+
 struct getssup_rsp	{
 	u8	ss_ForceUp[MAX_RATES_LENGTH];
 };
@@ -524,6 +529,7 @@ struct setssdlevel_parm	{
 struct getssdlevel_parm	{
 	u32 rsvd;
 };
+
 struct getssdlevel_rsp	{
 	u8	ss_DLevel[MAX_RATES_LENGTH];
 };
@@ -535,6 +541,7 @@ struct setssulevel_parm	{
 struct getssulevel_parm	{
 	u32 rsvd;
 };
+
 struct getssulevel_rsp	{
 	u8	ss_ULevel[MAX_RATES_LENGTH];
 };
@@ -585,6 +592,7 @@ struct setratable_parm {
 struct getratable_parm {
 	uint rsvd;
 };
+
 struct getratable_rsp {
 	u8 ss_ForceUp[NumRates];
 	u8 ss_ULevel[NumRates];
@@ -621,6 +629,7 @@ struct getbcnokcnt_rsp {
 struct getbcnerrcnt_parm {
 	unsigned int rsvd;
 };
+
 struct getbcnerrcnt_rsp {
 	unsigned long bcnerrcnt;
 };
diff --git a/drivers/staging/rtl8712/rtl871x_event.h b/drivers/staging/rtl8712/rtl871x_event.h
index d9a5476d2426..759a2d27d8f2 100644
--- a/drivers/staging/rtl8712/rtl871x_event.h
+++ b/drivers/staging/rtl8712/rtl871x_event.h
@@ -102,6 +102,7 @@ struct ADDBA_Req_Report_parm {
 	unsigned short StartSeqNum;
 	unsigned char tid;
 };
+
 #include "rtl8712_event.h"
 
 #endif /* _WLANEVENT_H_ */
-- 
2.17.1


