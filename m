X-GM-THRID: 6478335539266191360
X-Received: by 10.237.43.66 with SMTP id p60mr2438407qtd.39.1508355105806;
        Wed, 18 Oct 2017 12:31:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.237.60.236 with SMTP id e41ls2331253qtf.12.gmail; Wed, 18 Oct
 2017 12:31:45 -0700 (PDT)
X-Received: by 10.55.98.214 with SMTP id w205mr12825011qkb.33.1508355105347;
        Wed, 18 Oct 2017 12:31:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508355105; cv=none;
        d=google.com; s=arc-20160816;
        b=QGZZGA7sFN6bpYqUGn0iX20cZWcxwnZNFgz3OhWbJ4I6YlIsdCJESAYWkSRmMIXLPf
         9Jy6x/L3yiKPDaT1i3/CUT8y4xwJu1l2wgjsm6xj7WK/qCkPQ5o3E+zW4SnuthVuTToT
         1l0w5cb0c+YP7WejVHa66lngOfBTaSUN4wlzlrI+ZBwxyksdn6MF2891I4oV59QO9G2U
         +Hx0cyevcnTnHxysYhxRjC0AcAaoQBWYfmGAr+f8VJ+RB26Pvm24tP6l+L0k380EyHUF
         maD/pYu5Pj33Jq+9mV1rF/a/asf8hH6lc5gBdyJEwSN5hAVhSdHTT/vgr5HnDJc2Xbc+
         d8EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=ctlSVxAiQvBgC/2SNmc+ntbsuwT1ouhg+DUxR6jciWg=;
        b=ic/qcHoorR876KJiuvq5GpGsWF/EW19/FSr5FKpQo9M4wNf0Sz6l+QIU2IofBRdjWN
         3GJa1lh5FN+n2pl/+E7hmsSbF8teEzjLDdGagZkE1MHqqlVMUpeb0oqc9/vromvvolY5
         aYAqKDn6wV6W5/JERND+NNtyHrwO6Jatue9Qhtf9ankItoCja0Zn8TWidjyo4boHiDK9
         R6/HvhmaY1MVeD88jA3/tVDSQaREGcCtHp7/+CrbFebAXdsu0gzIBA5HNExtLoMI5R56
         Jz5qAqtTjyccaWZIaC+iEi416jG3Bk3/zcWou4r1BpEe8nQziFOSqu5QWzB8MNI1JUO1
         JcCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p/+bqfTV;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id v90si702234qte.4.2017.10.18.12.31.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 12:31:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=p/+bqfTV;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id a8so4690053pfc.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 12:31:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ctlSVxAiQvBgC/2SNmc+ntbsuwT1ouhg+DUxR6jciWg=;
        b=p/+bqfTVgZ6jUjNqXA1B+6rZ5uQZOihVs5681AtrLc2dU4nyKyQdCu8F/mMaCk0bYH
         H+HggAjvbDLOpAPM2irUViXWjIpcYkv9GExu7PEWztygj6sUm3ugVdhQnZ5n9VN8U/E4
         Ke8fr6AX0EMxGDt0LRuBgoIV0LIHl2McXiTvfHFnF5jdZuf8WCQve41oKGsT/xocsoCZ
         g/8JxxL6D68F2DTPc8+yjAhVxZIOGPlQ0PWA0d6RcJz8ojneLC0trAwTJcCdcoAoF7KB
         CGZRfiv2j3wW0Sw/TzcI3/Cg/j3WDczMN/sJMmXJVRpRta59Jk8trPoz1FDLu3F/6iWE
         XD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ctlSVxAiQvBgC/2SNmc+ntbsuwT1ouhg+DUxR6jciWg=;
        b=kMTqgZpO8y0U2YnjscskCpNtq35Wua8TKKQ/2gNZ6tzEGH95NzB7iKddf+Xis9NdLf
         u6f7ojn3lwmbAlh0ovQpMP6ku80jZK6m55hWjAS4gHy2VGTE1zo/HufMQUFZNW58LBRJ
         XHRlGWw7J7AnnNDWc10n8bKvwHlBx4Z3QaGWUPsth28DXaXPKmRbK8xzeQKNQ3+orFxP
         j6v+6EZUW6TlF5+w6+XkvL4/IDM+JMaGxMUtBbp4GATWUA8atawCbtArXHQJrBAvfHr/
         Ef4+i4aakRgnJGrYQ5CUYUbCaihWMSNSN0olDutqgLnERK47DCjjGhy8DLuTBQFXbNIq
         DzNg==
X-Gm-Message-State: AMCzsaXSukZHR8/JNi4QY63j7EgObszCWfwUTt5+RS4Mh+bMJbwgSJNf
	AdEmNAQHLA9oqrFLXaoZjAZrYQ==
X-Google-Smtp-Source: AOwi7QAr1z4H8B6Gp4ANS6MHnOwnG7mw7EZq4WJV3NbMt3l88WCnmP9Gv1DIODQ0Q0aP0rdG5P37Bw==
X-Received: by 10.84.143.129 with SMTP id 1mr16363793plz.304.1508355104632;
        Wed, 18 Oct 2017 12:31:44 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([171.60.166.95])
        by smtp.gmail.com with ESMTPSA id a78sm25297793pfl.122.2017.10.18.12.31.43
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 12:31:44 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH 3/4] Staging: rtl8188eu: core: rtw_mlme_ext: Use list_for_each_entry_safe
Date: Thu, 19 Oct 2017 01:01:39 +0530
Message-Id: <09469a9cece4c67261e5bd333dbfe4c741d59f4c.1508354332.git.srishtishar@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1508354332.git.srishtishar@gmail.com>
References: <cover.1508354332.git.srishtishar@gmail.com>

This is a cleanup patch and doesn't change runtime behaviour. It
changes an open coded list traversal to use list_for_each_entry_safe.
Done using the following semantic patch by coccinelle.

@r@
struct list_head* l;
expression e;
identifier m,list_del_init,f;
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
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 685c071..cf85fb4 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -5463,6 +5463,8 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 {
+	struct xmit_frame *tmp;
+
 	if (send_beacon(padapter) == _FAIL) {
 		DBG_88E("issue_beacon, fail!\n");
 		return H2C_PARAMETERS_ERROR;
@@ -5486,11 +5488,8 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
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


