X-GM-THRID: 6886767027078299648
X-Received: by 2002:a17:907:382:: with SMTP id ss2mr1407069ejb.544.1603450399323;
        Fri, 23 Oct 2020 03:53:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c04e:: with SMTP id k14ls1248868edo.1.gmail; Fri, 23 Oct
 2020 03:53:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzp7eEh8pCyW2noL55ZqQvzwYbF+ZA4G7tbtDpyF4YpTuow6XgHiDv2w0Q554hGIwzbbwCj
X-Received: by 2002:a05:6402:7c8:: with SMTP id u8mr1566082edy.153.1603450397261;
        Fri, 23 Oct 2020 03:53:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603450397; cv=none;
        d=google.com; s=arc-20160816;
        b=hv3t4ESf7wD6o6FVIakhB2Fg+K5/+E3biQjRLcGOPIMUh3Uwp5xAJgEiYQSKzYODjd
         C6CEWGxpELjQ2CmLbyBFe7iXfW+HCzbuJW7XBHejBa4cIiiYqMja5pXQmiLFei/2fbCd
         OxUR/L64N5Gl6C0syJYglPv8wcO7qUxNHkmalQVZEmG2LR4hQjZfWk/TPtwtpJWjS2Og
         WYVDprvVLH2Wn4iruAKkUMZ2seFcmt1kEzcj06K1edZRhAdehK7Ec3uavQGmz6Q6Ynlf
         xiXTPdopjThnVzSvGNNFZgha5zznmlkvHIcbGj7mA4t3wKw+u3hBcIpHFK10R8NayfJK
         wHlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=DoY/1QDp8DLaQ+uV4dqJsjkJ0+4DB+nziz9sbkQeYL0=;
        b=K+/XryvpNqhQkVJFQqjrQG25FRzPSAv0fX985hgsaSvO3yXDxUrA56z060B6Xwe6gA
         VzB4eOc0Bta4+8IfviHoPtp656vsXJFRWHvO70SwmWU3JYt9SKxH76GFcOczScIIK//k
         JK/Hf5I0laq46nr9DHDMIiGp3/YYWYQ03fsKwfRU6lAGd0hJ3EOyBKTSoUyWnAJkdMku
         0N/66wxz7UY5453nhxhgDeXhYfsRgLgBg/mB+cIv5yYCGTY0PE6SGjPwUbXEUzcvyUXz
         jTy+4nHgaxPzHE5Dh+dq5ADZePma77NC3kthlBJc2b3P2ejdT934cl9bJVRU2y8XFEoQ
         0XOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GREEoH7W;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <eafanasova@gmail.com>
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com. [2a00:1450:4864:20::144])
        by gmr-mx.google.com with ESMTPS id v18si46157edx.4.2020.10.23.03.53.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 03:53:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) client-ip=2a00:1450:4864:20::144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=GREEoH7W;
       spf=pass (google.com: domain of eafanasova@gmail.com designates 2a00:1450:4864:20::144 as permitted sender) smtp.mailfrom=eafanasova@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x144.google.com with SMTP id a7so1521513lfk.9
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 03:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DoY/1QDp8DLaQ+uV4dqJsjkJ0+4DB+nziz9sbkQeYL0=;
        b=GREEoH7WDTtOzxU+zPJKEppE3GayWYCrQsI+y8TUv9wqfTuauMpkBqQx7tqJGnYvcv
         HZePo9/ZKUtjnrwjR8HLIjc3dQR5Wfi9spx8s/zh6ICi+zffy80f7kBxc19qsTre+4iM
         6DEbuyDlHqr2fhBnBbg4pbiZmsH4wp/uotTtaRNU0SxOh4HalYpxwQW5AN4ZdRSxUbXC
         FD5RHuyvnHUYIfLjsiqNcUCbXqZ1AccXG+DPaXoG3hSxpB7LaK/XSqpTdM1kWZVl/YE5
         oseCZhANTj1t/DGvcBrwwnDcw/N5LmogYcUwCZ7FHL8eoa5k6BjCELyfyhWkLHRxy0BT
         s7JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=DoY/1QDp8DLaQ+uV4dqJsjkJ0+4DB+nziz9sbkQeYL0=;
        b=kP6OdilaUFJtJLlQ0d8IHHrEyd9tfkpS22q84xOF9J2qjiXUhxoXur9KiuQhHH49Jy
         t1FYZYOLH43hsDwDsR6NmkioNjx3wvCyFjPLEF5S9up8EUzUCCeNJPpPmU8YH2LsvYt5
         48p/bDrx8ivgYJAyB+wUxTm/nakWuzmpPa4hoUyQralpLYApn0KFBT9uVulf8Mztyi5p
         HuKx+exusBDrsvC9Bv29LC74KTp6+gv8uXDcjgyNJyDV0vruxH5tApE5fvcEX16JJk6R
         QVaD8aLlG/i8DPCohEXSCnNWjY24IMlGV5i7NNweN+wuZrVYKPmj2qIqQYgUPhrzeYn1
         ZLEg==
X-Gm-Message-State: AOAM530hGf4diDoEqM3C17SJcQHdLHgBg2Bkki9GocAlBxvN4udSZw9k
	YGI1HsGCiO98sCCFL/Qn+3A=
X-Received: by 2002:a19:2302:: with SMTP id j2mr511650lfj.78.1603450396732;
        Fri, 23 Oct 2020 03:53:16 -0700 (PDT)
Return-Path: <eafanasova@gmail.com>
Received: from localhost.localdomain (37-145-186-126.broadband.corbina.ru. [37.145.186.126])
        by smtp.gmail.com with ESMTPSA id f22sm102575lfm.172.2020.10.23.03.53.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 03:53:16 -0700 (PDT)
From: Elena Afanasova <eafanasova@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com,
	Elena Afanasova <eafanasova@gmail.com>
Subject: [PATCH] staging/rtl8712: replace (precvframe == NULL) with (!precvframe)
Date: Fri, 23 Oct 2020 03:51:09 -0700
Message-Id: <20201023105109.5905-1-eafanasova@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the code style for comparison to NULL. Reported by checkpatch.pl.

Signed-off-by: Elena Afanasova <eafanasova@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_recv.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_recv.h b/drivers/staging/rtl8712/rtl871x_recv.h
index e83c256e1474..ea1aad4a5561 100644
--- a/drivers/staging/rtl8712/rtl871x_recv.h
+++ b/drivers/staging/rtl8712/rtl871x_recv.h
@@ -136,7 +136,7 @@ int recv_func(struct _adapter *padapter, void *pcontext);
 static inline u8 *get_rxmem(union recv_frame *precvframe)
 {
 	/* always return rx_head... */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_head;
 }
@@ -144,7 +144,7 @@ static inline u8 *get_rxmem(union recv_frame *precvframe)
 static inline u8 *get_recvframe_data(union recv_frame *precvframe)
 {
 	/* always return rx_data */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	return precvframe->u.hdr.rx_data;
 }
@@ -154,7 +154,7 @@ static inline u8 *recvframe_pull(union recv_frame *precvframe, sint sz)
 	/* used for extract sz bytes from rx_data, update rx_data and return
 	 * the updated rx_data to the caller
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_data += sz;
 	if (precvframe->u.hdr.rx_data > precvframe->u.hdr.rx_tail) {
@@ -171,7 +171,7 @@ static inline u8 *recvframe_put(union recv_frame *precvframe, sint sz)
 	 * return the updated rx_tail to the caller
 	 * after putting, rx_tail must be still larger than rx_end.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail += sz;
 	if (precvframe->u.hdr.rx_tail > precvframe->u.hdr.rx_end) {
@@ -189,7 +189,7 @@ static inline u8 *recvframe_pull_tail(union recv_frame *precvframe, sint sz)
 	 * updated rx_end to the caller
 	 * after pulling, rx_end must be still larger than rx_data.
 	 */
-	if (precvframe == NULL)
+	if (!precvframe)
 		return NULL;
 	precvframe->u.hdr.rx_tail -= sz;
 	if (precvframe->u.hdr.rx_tail < precvframe->u.hdr.rx_data) {
-- 
2.25.1


