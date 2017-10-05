X-GM-THRID: 6473105948700311552
X-Received: by 10.99.115.24 with SMTP id o24mr967811pgc.72.1507212057802;
        Thu, 05 Oct 2017 07:00:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.0.12 with SMTP id 12ls5088341pga.29.gmail; Thu, 05 Oct 2017
 07:00:56 -0700 (PDT)
X-Received: by 10.159.206.201 with SMTP id x9mr703855plo.46.1507212056157;
        Thu, 05 Oct 2017 07:00:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507212056; cv=none;
        d=google.com; s=arc-20160816;
        b=CwH5XZ9QgQrwIVI7zHv37tT38y54VCqK/47G7YN/Kp9BE2asyopEp5VXJSQBGkwOI1
         cT0de55N9MCNXJ1ZxJd/nKoauD3ra7kSBt0ivvIqYZZviSVsvNoJgz7dd0l/JETdWdzI
         CYs2K8IAvXmI3CtWswXGeKSHucBhM4A+LUHsEEJsZBTaTwwc4NE7H8RDFlRAe8jQJ+ZH
         ZeS0S3VZaNtneg7iPXtLpME4804xQZk3wHIhH6vuimN1B2gy/66ep7n+fVndAXOHiC1U
         hr1EdoOUyUXBVi37uSuVf5bAtFViTbFOYpgl5+a/wyrkqH6SXoMoU0CPkkFcC76sdXfO
         LNKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=eXUW6FpxjSZCnPcPgE/r35kNAgvYsOCrAy4I42AnN5c=;
        b=alChAn4ltjAZnhNQYsjRcfk8OsFdW2MhlA02FVUyLqBFIXSaz4oU7x6JZPCqZYXivO
         5xY0oa0uaNsydd6c8VBYWjUZgmpB3vnQUxXg6osVUEK3NVEXaTxFOH3rMd/91g6i5J4U
         PWkc1ZsMtZWztn7ToXWwRw6jl40n1q8JNAOxEZkHIrroiwaNwsVvL+WloYZb2XI9ekq9
         oEhy8Ntrl33eHPREfXtOkxa5jw5AL1wEI+DA/0VjtjJ3dX3t0YAlH4eyzfBJYchnbdNF
         H+hX08T6BhCDyQPABDtWeoqpPE9HGXgtlSxjLLC1RwIY/+zjn9DIOIxEPGHwWZdkMnLC
         SESg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dbnLMntP;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id w124si340630pfd.18.2017.10.05.07.00.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Oct 2017 07:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dbnLMntP;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id e69so14671109pfg.4
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Oct 2017 07:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=eXUW6FpxjSZCnPcPgE/r35kNAgvYsOCrAy4I42AnN5c=;
        b=dbnLMntPPSW3MA1FX1FemmQv/CybG/vQOoe7FInuHzzTb5/H6zKY6aHiPxnbIwDVv8
         gP71fbrfhotlO+pnd9a8weL/KZq/OkFaGLq0O5eZVo/iu2GszyE3Ht8ZHDi3n9P/+Zcg
         Tudl7xmWftG+z8VzDKrN57kQt62RHiH9nBJKegBhtO2E4DKUIUhd0WCuoCLhL1W7zSIg
         qBRqkldMNChAAv5St0+K8x5eGfzUMnweIBOHPQxVp9b6WCCJZSuStEKpKYTFBblz1ADr
         sjvYu7iKMAVAudBxCXQOc5Tn1QqutVhsw6ivlbPKFLD5GFSCFXQw9jNUGmRFNOur7xrX
         AVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eXUW6FpxjSZCnPcPgE/r35kNAgvYsOCrAy4I42AnN5c=;
        b=WUyI1pC5vUNYxAShlN2w7CRPwJ22lYuXh22XAxAZ6bsLh16GAkm+ixP7WdeV8fZURY
         /RBOQQYBsCMSmzpQOzBPXzPXel92W7Xc4ZdThmnqxiiXlxwKO9QRoVBxO4hQt4dBgXeC
         u4eXnQ1yOE0aSjl0saGz9gnmXnC6bTM07Zt0W+xf9hYwJ15NXxepmBogLvCkkGifXT82
         FqMFTLkTqpolM3iEOF5shY/+QnGyF0ilURqEseK3dzwtj19vQ3o15sPHV+eSHLFgAZjF
         p+f+jm3mWulMAdW2QSVXSwUM3ZeOfvomC/nMPyX9DR3bBNaAtzfHNNviRW7Q68vL+YPe
         Jw0w==
X-Gm-Message-State: AHPjjUgp3PZUkF6SgCraGg/Los8h0EwqkOqyCSesF1wIKdGpFLSjbXBS
	fsTsscjCuLsSLez65p+eXNU=
X-Google-Smtp-Source: AOwi7QAFbhAKJUfu8gTA2At5W61pz4K+8FHAjJljLyTack706RVJf8e5jyXIXDp/8V+2mhsIf/5ISw==
X-Received: by 10.99.176.14 with SMTP id h14mr21654883pgf.358.1507212054445;
        Thu, 05 Oct 2017 07:00:54 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([122.168.109.202])
        by smtp.gmail.com with ESMTPSA id x188sm16783384pfx.137.2017.10.05.07.00.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 05 Oct 2017 07:00:53 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v3] Staging: rtl8188eu: core: rtw_mlme_ext: Use list_for_each_entry_safe
Date: Thu,  5 Oct 2017 19:30:47 +0530
Message-Id: <1507212047-2420-1-git-send-email-srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4

This is a cleanup patch and doesn't change runtime behaviour. It
changes an open coded list traversal to use list_for_each_entry_safe.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m, list_del_init, f;
type T1;
T1* pos;
iterator name list_for_each_entry_safe;
@@

f(...){

+T1* tmp;
<+...
-while(...)
+list_for_each_entry_safe(pos,tmp,l,m)
{
...
-pos = container_of(l,T1,m);
...
-l=e;
 <+...
  list_del_init(&pos->m)
 ...+>
}
...+>
}

Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
---
Changes in v3
 -Add a blank line after declaration.
Changes in v2
 -Make the commit message more clear.
 -Add file name to the subject.

 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 52f31c7..b986cc8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -5446,6 +5446,8 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 {
+	struct xmit_frame *tmp;
+
 	if (send_beacon(padapter) == _FAIL) {
 		DBG_88E("issue_beacon, fail!\n");
 		return H2C_PARAMETERS_ERROR;
@@ -5469,11 +5471,8 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 			xmitframe_phead = get_list_head(&psta_bmc->sleep_q);
 			xmitframe_plist = xmitframe_phead->next;
 
-			while (xmitframe_phead != xmitframe_plist) {
-				pxmitframe = container_of(xmitframe_plist, struct xmit_frame, list);
-
-				xmitframe_plist = xmitframe_plist->next;
-
+			list_for_each_entry_safe(pxmitframe, tmp,
+						 xmitframe_plist, list) {
 				list_del_init(&pxmitframe->list);
 
 				psta_bmc->sleepq_len--;
-- 
2.7.4


