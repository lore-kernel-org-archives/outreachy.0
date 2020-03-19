X-GM-THRID: 6805867897863274496
X-Received: by 2002:a2e:b4e5:: with SMTP id s5mr1786118ljm.190.1584614639622;
        Thu, 19 Mar 2020 03:43:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8997:: with SMTP id c23ls419770lji.7.gmail; Thu, 19 Mar
 2020 03:43:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv7kdXgfHv21c5S/mdhGcD2jeFIQf3eRJmfNv8xsi///pGiJBSyWJfubfAYXs0Pwb/YFAWU
X-Received: by 2002:a2e:b801:: with SMTP id u1mr989291ljo.84.1584614638287;
        Thu, 19 Mar 2020 03:43:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614638; cv=none;
        d=google.com; s=arc-20160816;
        b=nPLmO7gAXVzkFXwrpTnGzgf+0+W9Q6Rmb3PXe3AJyFjEVNpCl1lxiVW55Egem/zoSZ
         XDTab8l16pPi+Yw5oEN9Y5hJnEeL1wZwwPWP8i1rhbFut4k7oIOEx4KP4Wc5qKf9q9VT
         8XzWSmCS/VfW2UUAuWCeXh0CqG+oI8M3tGyz+eQxSvuz5PhVUVqo9d8FqvTuzb3TVCMv
         basO16PtNngart+DCi/swOB/wE/Yhdauu/SXqgEy0PYCOF3+ZnW96gXmV5oB0CFrxusQ
         PCWbMZ1nvbdG5fCYEChNdOpu6p8Gm7NlV/EhpaQpuR8D1ax/nd62pKEem0rABX1IZIvn
         WJ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=GE/w4HF9QPd9bhRHqv9nOrgVEXbecjMAVE8QNicasLA=;
        b=B4WqaJLsn8L29oVAnR+c2JLWPi7eqRyD7fWqV7WL763GwQCgh4v+DinTjd/itWV0wj
         HFSAp/gTgnfxFIssvqmFlWXHMqWGuphYLL0KWbvFJa2c1676mqEgRnpDHe/Y+XKBlWRX
         M7rDRfVuhVb4jpbHU7IjY409hNeO412ZgckEn1qvekwCk7mtxckEK1sEU3OwYU9bLVju
         PVQtzN2hjNQo41tdTwqMSN7HiX1ouYAJUMQf8DYP7z/8alf74eIXMxFIpxWYrixup1BN
         +TRgSQQXAyzD8Gs9OB2EpVSoY0UB0FBa0kjYNbiRZxszyzTtlbAFV/O5KayaEJ9Pc3G+
         VxCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id w6si75033lfa.1.2020.03.19.03.43.58
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27292 invoked from network); 19 Mar 2020 10:43:57 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:57 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 7/7] staging: rtl8723bs: core: Correct a typo in comment
Date: Thu, 19 Mar 2020 16:12:57 +0530
Message-Id: <90897439ab1a82393f9fb0782e2cadefce48ded5.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct a typo in comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index fdb585ff5925..571353404a95 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1180,7 +1180,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, _pkt *pkt, struct xmit_fram
 			mpdu_len -= pattrib->icv_len;
 
 		if (bmcst) {
-			/*  don't do fragment to broadcat/multicast packets */
+			/*  don't do fragment to broadcast/multicast packets */
 			mem_sz = _rtw_pktfile_read(&pktfile, pframe, pattrib->pktlen);
 		} else {
 			mem_sz = _rtw_pktfile_read(&pktfile, pframe, mpdu_len);
@@ -2303,7 +2303,7 @@ sint xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fr
 				pstapriv->tim_bitmap |= BIT(psta->aid);
 
 				if (update_tim)
-					/* upate BCN for TIM IE */
+					/* update BCN for TIM IE */
 					update_beacon(padapter, _TIM_IE_, NULL, true);
 			}
 
-- 
2.20.1


