X-GM-THRID: 6805867897863274496
X-Received: by 2002:a05:651c:1114:: with SMTP id d20mr1723021ljo.103.1584614614681;
        Thu, 19 Mar 2020 03:43:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:43b7:: with SMTP id t23ls313382lfl.10.gmail; Thu, 19 Mar
 2020 03:43:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtRtph4U46I4FqF6IYsdT3ozccwqua8iIL8GKPU/1TSFJs0/OzXalaZUdtAuPPAb2yI0OQp
X-Received: by 2002:ac2:4c0f:: with SMTP id t15mr935377lfq.143.1584614613145;
        Thu, 19 Mar 2020 03:43:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584614613; cv=none;
        d=google.com; s=arc-20160816;
        b=ZdeKNjH1qMI31JTMTK4Uz3eeUq76kcQvAo9Cn0KSChMjKpN/YmyQ9cbyWb2+UdTB4W
         VJxiPnPAvAA+N1brdiTCChEBnoA9g89VX/zE0XQQwvukduN757qC19toq1btbFovn+00
         +dih945ZCtHSGaCb2knZus1y3xE53aFQcRL1JjmurB68ynMj3QxJ8/Uh2TIq4rs7nv+N
         8fDC1YNCrdF91KZ1T0fyDIsLgF0+6PJ42II1S6FOpoWuamUYcAOIB85B+Iop1fPjl/iy
         RZVtauzngXiisltxiNB/yMcH1JZKiewf2wBcNu64S3I5gRly78QiBTq2NE2LMj4qwAcw
         SzsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=XPzVa3OhdBYm6ZgRk562nE0wWPxrqnTUPeCtRmiopfo=;
        b=TWAUqEPHWNH7rL6g2BfKRVeQXg5m0mEofeGjOQErocp47nDsuL992kXYsKgeLzCJ8B
         +LA0QX4xIhpJxjsxZpylpQnkmWWLfJSUtlhgZ6gr1lmDTwXeFFmElEAkkuWjSh+73hKm
         f3GkYrhKVWdo2A3Q35icnUiasI8z5+Vc9gp2Cs2BmUxZruEgZBCH7MRxlDfhLfOvTMCE
         YuUMD0hxE1JOJOghirm/XoNCnrkY2UdcMvPGMBPAJdEJm4PELtmYpUcrwvJ6fvxkUT8v
         9Wz020ztavRmVMkRDlcMIBHlYDvQQ5FDoqBQuccFqtxWwjEXTXwKIKccrE05Y1iazibh
         sjmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Return-Path: <vkor@vkten.in>
Received: from vkten.in (vkten.in. [104.244.73.96])
        by gmr-mx.google.com with ESMTP id g23si68156lfd.0.2020.03.19.03.43.32
        for <outreachy-kernel@googlegroups.com>;
        Thu, 19 Mar 2020 03:43:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) client-ip=104.244.73.96;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vkor@vkten.in designates 104.244.73.96 as permitted sender) smtp.mailfrom=vkor@vkten.in
Received: (qmail 27231 invoked from network); 19 Mar 2020 10:43:31 -0000
Received: from unknown (HELO localhost) (vkor@vkten.in@117.202.245.105)
  de/crypted with TLSv1.3: TLS_AES_256_GCM_SHA384 [256/256] DN=none
  by vkten with ESMTPSA; 19 Mar 2020 10:43:31 -0000
From: R Veera Kumar <vkor@vkten.in>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: R Veera Kumar <vkor@vkten.in>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 2/7] staging: rtl8723bs: core: Correct typo in comment
Date: Thu, 19 Mar 2020 16:12:52 +0530
Message-Id: <da1c41d9cecea1a0ca26bf41d7ac8b4959ef518d.1584519269.git.vkor@vkten.in>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1584519269.git.vkor@vkten.in>
References: <cover.1584519269.git.vkor@vkten.in>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct typo in comment.
Misspelling found using checkpatch.pl.

Signed-off-by: R Veera Kumar <vkor@vkten.in>
---
Changes in v2:
 - Remove word "Fix" from subject line
 - Change "C comments" to "comments" in subject line
 - Change "C comments" to "comments" in body
---
 drivers/staging/rtl8723bs/core/rtw_ieee80211.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
index 6018d877a8a6..ca98274ae390 100644
--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
@@ -217,7 +217,7 @@ u8 *rtw_get_ie_ex(u8 *in_ie, uint in_len, u8 eid, u8 *oui, u8 oui_len, u8 *ie, u
  * rtw_ies_remove_ie - Find matching IEs and remove
  * @ies: Address of IEs to search
  * @ies_len: Pointer of length of ies, will update to new length
- * @offset: The offset to start scarch
+ * @offset: The offset to start search
  * @eid: Element ID to match
  * @oui: OUI to match
  * @oui_len: OUI length
-- 
2.20.1


