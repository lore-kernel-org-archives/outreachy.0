X-GM-THRID: 6473105948700311552
X-Received: by 10.99.62.7 with SMTP id l7mr177058pga.108.1507137424563;
        Wed, 04 Oct 2017 10:17:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.117.77 with SMTP id f13ls4495457pgn.17.gmail; Wed, 04 Oct
 2017 10:17:03 -0700 (PDT)
X-Received: by 10.99.183.75 with SMTP id w11mr1299427pgt.71.1507137423848;
        Wed, 04 Oct 2017 10:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507137423; cv=none;
        d=google.com; s=arc-20160816;
        b=Xk4kTHGPoNzqLe3gACk6DVa1xxUxjQ52GYtDGYrUMqxJ67Cw84EsOEYpcN6pv6XdlB
         Fr8b923lWAh3JIsy7Z6G37ma51hLolx28OAEoozz+ZXPJ6UPPEk3vB35sksJSJjY/qg4
         5a3xqjSAB1TtIvrtREfgxIEet3mE2P8hRa8f7regC2GoPxHj9Yhc6MJrtp2CCBHck+k+
         kMRAoNJRalQG28NEm7e6eHt+dJY116xzjVb/sEyReXWcYiXycdIczA9v0evbwD35Xh2l
         mgRcgQyy5JaTgB9VxfJikAR8j/mXDOycd4zh0OwLudbx7EMsprQDTJE+lEg3FCQZBtO1
         QwCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature
         :arc-authentication-results;
        bh=AsqnxRyIwU1ERU6QDNUqLFSIXtpOVGHQFRJtcsSxmK4=;
        b=fLWKsIWsBxtzHOhECdaYNZCl3SeED51Rm7EAb9P1WMrd6SJxJ599i/BgciPId83+vg
         6DM0MF/USSHuJb72zprMBxQw6lOpsUJPXFs0A3KoLvdU2MdSk6lp8dHCi3QKPJy8wenB
         J9HT1apHvx9afarpZUsltuOypWlkPKKQKbZbl6F9hcHDArNl2m7JI+iMcaRQ9vRu4iYN
         lUMQV0sD3aB1H1/w/UPVPYiQB+fKK7hQFuHn87c9Mtp6SADD4a07LdQrdEMSUST1IuW6
         XC4+ERMj8lPnwMFXsYrBUaPmXtKU8/Gw5bWs9Y6+3pOz3OoXCQMjhwGaflO6+SOueo2Q
         ygyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xh6wu6PT;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id w5si364662pfw.3.2017.10.04.10.17.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 10:17:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Xh6wu6PT;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id u27so13629709pgn.1
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Oct 2017 10:17:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=AsqnxRyIwU1ERU6QDNUqLFSIXtpOVGHQFRJtcsSxmK4=;
        b=Xh6wu6PTGvCQEeJubPGj2Mk8J4YKHHuZomewUGAJVMlTuRapZambqN8XfhVCXz0nv2
         cvjTNuAG+8TFtur30tNES35jnY7VYH7dajNornxKD6roIqDjruxPX5pOeVCN0HP2GHx7
         rnX1bnZ8hwSAPs6JJ5HSLifP3AVKDXl7fJ36chSNmhzVCYwAz8le/1IBfNmeka/M2rc8
         mj9+QlIKV6scq54zsy10IvLn0Awvnr1KQN6aVfQ9kc5jRtbM0/OG/g+Qd8QmmPmKJyFo
         Y2D+IHf8gkBW6MQFHeTciGCEjAC4vkHymno9oSvnP2yfMS8mvARN5Kik2gDLafx0YwHy
         2pRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=AsqnxRyIwU1ERU6QDNUqLFSIXtpOVGHQFRJtcsSxmK4=;
        b=XWxOPomIDwq7n697tjIDGz+gkbDT0wulMcqkScArrS+0VgQUTvlc4PP2KcJhL7Fqw8
         Y7zFG92JB9OhvxNT2YWw5HeUEkiPL5a+fIx0pAGXCn+Sy4HjlZHexZzBobYagks1YnMA
         gfh1omV77/AdpnJ2PeQTItRDzfM373+1sKc5X/uZjZO7WL9tE2rxZuAlR3n8nuF3nePa
         y8glRHcdIAqIZsuoBUxN0zTTIiYgzZArH5ecGjnxF+IxAqw25edr2ymZ8r+384Aq5SH6
         u4IajMk8UbyrIJ9oUzQyb7JoR7HTMLDMsHwTXeDMYP4cdOdhNPrQCeKQXTZ5XGQ71PHw
         SmMw==
X-Gm-Message-State: AHPjjUj15rC32JZuNqQ+vDm0UZ2v6hVDVVDzAYBXldV2kEf2pUasw3ZD
	itYdSdh5t47OiU/u/stDlTY/bA==
X-Google-Smtp-Source: AOwi7QCb788owRxTJUojHl8cSs2OKZWLDjpoO6EV37FVkRnlNxCGsSKDLJiFnhKJ8+pCBwC5tUSWLw==
X-Received: by 10.99.67.193 with SMTP id q184mr18601832pga.56.1507137423600;
        Wed, 04 Oct 2017 10:17:03 -0700 (PDT)
Return-Path: <srishtishar@gmail.com>
Received: from srishti-PRODiiGY-945G ([182.70.213.86])
        by smtp.gmail.com with ESMTPSA id e4sm18304931pfa.80.2017.10.04.10.17.02
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Oct 2017 10:17:03 -0700 (PDT)
From: Srishti Sharma <srishtishar@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Srishti Sharma <srishtishar@gmail.com>
Subject: [PATCH v2] Staging: rtl8188eu: core: rtw_mlme_ext: Use list_for_each_entry_safe
Date: Wed,  4 Oct 2017 22:46:56 +0530
Message-Id: <1507137416-3855-1-git-send-email-srishtishar@gmail.com>
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
Changes in v2
 -Make the commit message more clear.
 -Add file name to the subject.

 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 52f31c7..4e1d06c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -5446,6 +5446,7 @@ u8 mlme_evt_hdl(struct adapter *padapter, unsigned char *pbuf)
 
 u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
 {
+	struct xmit_frame *tmp;
 	if (send_beacon(padapter) == _FAIL) {
 		DBG_88E("issue_beacon, fail!\n");
 		return H2C_PARAMETERS_ERROR;
@@ -5469,11 +5470,8 @@ u8 tx_beacon_hdl(struct adapter *padapter, unsigned char *pbuf)
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


