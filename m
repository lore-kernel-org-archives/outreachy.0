X-GM-THRID: 6805913239014080512
X-Received: by 2002:a2e:b00e:: with SMTP id y14mr2238890ljk.146.1584625168003;
        Thu, 19 Mar 2020 06:39:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3188:: with SMTP id i8ls407332lfe.4.gmail; Thu, 19
 Mar 2020 06:39:26 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vudrWvXDMgbnEBkLOnAwjhU1j9u8BCtMM2uZc0o3sfh94dXwcFmq6P4gj/pKu37aw+/KEC5
X-Received: by 2002:a19:6445:: with SMTP id b5mr2098917lfj.187.1584625166601;
        Thu, 19 Mar 2020 06:39:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584625166; cv=none;
        d=google.com; s=arc-20160816;
        b=Q1PP0H+QiMAI+jxYZwxWvbTeAMm2t76n4wBFbGfaRsu3Ty833b8ArgN4GAzMLSwa7d
         kHjxpEVpiM8AOTJRZ54LzVfCMDXuqGWc4zlzIXjD/vykRderGxw5lGUY5gMnS+RsDPLn
         am7HiLxmiwZ85Pagm8Nz+MYftBh+0MKhwYYarJ6aw/rL4ggzMDK1C+ZsH4o1rgvAM06T
         4sFJvOmPJG5isz+GZm3HeUmoqMDa5k9l58yjAZCBLVOfO0H/4NOi7RE5jXoRGg/tf9UY
         sZuih7+IU9aItAq3KOvRcumk1NgAV7AoVxx64otILML3suSFf/szbCkpZvaX/b+bgrv6
         mZqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GEk7NqPZE03PNS6GZMZxMA0KHbNG53hcCKTtvh2OIZs=;
        b=B3F8TSBfkpRj3CzNRCHmXJVtVnZkR5W4e80IstuxUIjKJcsbwMRW1KC5EL/PgOY0aa
         +57MuURQftiCKgiz8USOMdUxS3uO/Q/KT3A4QENhUfudxLPm2ekBFmOj9jA6WSyknsD0
         Urg78t1LKwp4fyT2SrlytGweF1qiQN+TN/D4NechCplpnRFPKyvlt3F4IKDj0wUBbUf0
         zBVkoCGrtT62lfgnrEb3mnD9qWE1adfjsc+skeQA2/VIAWBIpBTLA1b2gg08nn3cdMPd
         6cxW8oOL1RDxztd8FTOkwXxpq38a94i2Sm1t9V28EhNyeF4SNj7/lwzl8rkhL9nlS4/u
         hTjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id w6si98394lfa.1.2020.03.19.06.39.26
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 06:39:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 28902 invoked from network); 19 Mar 2020 13:39:23 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 13:39:23 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/2] staging: rtl8723bs: os_dep: Correct typo in comments
Date: Thu, 19 Mar 2020 19:08:59 +0530
Message-Id: <b2b27aad972dc77158e06bedda1a4a677b47f3af.1584624834.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584624834.git.vkor@vkten.in>
References: <cover.1584624834.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a typo in two comments.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
 drivers/staging/rtl8723bs/os_dep/osdep_service.c | 2 +-
 drivers/staging/rtl8723bs/os_dep/recv_linux.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/osdep_service.c b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
index f5614e56371e..4238209ec175 100644
--- a/drivers/staging/rtl8723bs/os_dep/osdep_service.c
+++ b/drivers/staging/rtl8723bs/os_dep/osdep_service.c
@@ -289,7 +289,7 @@ void *rtw_cbuf_pop(struct rtw_cbuf *cbuf)
 }
 
 /**
- * rtw_cbuf_alloc - allocte a rtw_cbuf with given size and do initialization
+ * rtw_cbuf_alloc - allocate a rtw_cbuf with given size and do initialization
  * @size: size of pointer
  *
  * Returns: pointer of srtuct rtw_cbuf, NULL for allocation failure
diff --git a/drivers/staging/rtl8723bs/os_dep/recv_linux.c b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
index 22059bbbed9d..a6491f163272 100644
--- a/drivers/staging/rtl8723bs/os_dep/recv_linux.c
+++ b/drivers/staging/rtl8723bs/os_dep/recv_linux.c
@@ -101,7 +101,7 @@ void rtw_os_recv_indicate_pkt(struct adapter *padapter, _pkt *pkt, struct rx_pkt
 	struct mlme_priv*pmlmepriv = &padapter->mlmepriv;
 	int ret;
 
-	/* Indicat the packets to upper layer */
+	/* Indicate the packets to upper layer */
 	if (pkt) {
 		if (check_fwstate(pmlmepriv, WIFI_AP_STATE) == true) {
 			_pkt *pskb2 = NULL;
-- 
2.20.1


