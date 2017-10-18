X-GM-THRID: 6478323397894864896
X-Received: by 10.157.1.198 with SMTP id e64mr9326638ote.32.1508352213276;
        Wed, 18 Oct 2017 11:43:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.4.208 with SMTP id 199ls1365640oie.7.gmail; Wed, 18 Oct
 2017 11:43:32 -0700 (PDT)
X-Received: by 10.157.46.58 with SMTP id q55mr9569287otb.53.1508352212810;
        Wed, 18 Oct 2017 11:43:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508352212; cv=none;
        d=google.com; s=arc-20160816;
        b=avR9rc1bQIQOthN9EBmmG66KyISpWKiy2VLERPqaqUPte/X3zBR7Hug74RIHoMtMpX
         dWfjEy6fiYp0OXyZLws3pHqgyee0pxMa4bxRYRKpIYD0+qpwIfYSiOxcL9IKJfxdOvR4
         FqnCTRu8AUh8uMr9GLpegR20EWRPOPEPJxG3pwopgvfPtX8MIcYTAjG2EbpGfA2xOajD
         HoOke8ZvZARR5nV4+NEWt/Y5+PakMfu8thQfV2JIFGDw6MbwTUKQRQIczV1Ijkgy1A4x
         nHQgl1vq968X0/Frxnx6DbeG4JalRUqwRcWy/7M9yO1Z+PzBmUfgDFwK3fe8Ja37bnSb
         wJPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=32MACIIx6tsM6x7JLCfNATJJWPDU0lD2OKrz0AG9tFY=;
        b=Mo6gW+iwfvgRLvRpTODGN32YP2iHn09deIjAFeYQJYvJIJcUCtxzz4DQ2XWtgs7aYN
         cBjNYPtakqY79Vac+2pi8fBz4TOI0FBtdwQa/aZMCNKAyYACu5Hx9ts7NwrXSUjjEruq
         CSyAZYmoCyUUAfmSW+zg4YB5Ee9j7qgqi1CEeFezcGETxF5hiEhdpKGo2JR6ZPepqPST
         siXqMOKSEJlwb5u8xVIG36iCY6jvQ+FHifi9lOptdjHjiH3q0j4WcpW6OduY9n01PeHr
         fECKLeAOlT/prb2SslOL9nFEY1TEfqIbSprn+n2VGi1PuwctcCFDKAokCwqlAYV/ZxKb
         qwxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AubbLUiV;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id q7si580192oih.5.2017.10.18.11.43.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 11:43:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=AubbLUiV;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x7so4606462pfa.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 11:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=32MACIIx6tsM6x7JLCfNATJJWPDU0lD2OKrz0AG9tFY=;
        b=AubbLUiVykqdorr6ZkjCIExYwrXvat9Rz2t50d1IP/uKG1tswMqPR4n8ZWhg8/VSvC
         bFM9frp8cJD7tRspqyas7wbpkbcx4HdZPj5svHg1lF0LTdwUaF41rehpWq2JvhpQQRdI
         xqXmImbTgTnkFQXgMPr4mY0SlLCAu6dVbEOF2/pID+V2FrSMYwpxF9sZS3C4n7JnjcSP
         RPLYVrEKr8LA7mWkZ5M1xnfG22IsccuJReeWf6O8I+YJSro/sxCfRPc36t543CNH/TMe
         pfGudlZ13E+0/0J2GQlvvr6RGcA6h1lDVtiN0vc9ISrqn5ccy9w3jvqR2F+O3eAY60iN
         JodA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=32MACIIx6tsM6x7JLCfNATJJWPDU0lD2OKrz0AG9tFY=;
        b=FIxIVaNCI9Ad5zu/Vgzq407Sgx1bXwEBr4er5ldXnae1ozqWc9jYGouriaRkpSg0dw
         mebb3GfiCvL1I/tL0yBjL7nL4VRdYl4iKEki2QxgW0swbOSMI//rQNYoY7v+QlQ30JI+
         dOPwy/1FFDDnuNvmq/7BIGlnTeIPp/+FMkjuddSqF6ce8G7kTKUgncrEMLg6warSbiId
         +cqTqil3mfRyGXZ6WApg4/R3AHGVaTXo3gmuCIWGxYBS7HHMjjURq8Oh8iVG4CRmva66
         dweXvrOuzc5GuvNfeBihpWhpf/a5xaMOJiBamalVAYw8NJ/1GCbG5adJVAklWDcnvrW9
         JshA==
X-Gm-Message-State: AMCzsaWGJ+Kk+2CE3nSX+sAOzgWUiA9W7+qFEP601X2KqwCN46w0Ao2F
	OQqgXwBU024oyyyHwtq2tfE=
X-Google-Smtp-Source: AOwi7QAZlF9KLGXfbls5kOda5x85/yKpJOEAEgSo0ZFgKORp9/vzOJP6vf0HX9kcBk7GDUnqnOL99Q==
X-Received: by 10.99.112.89 with SMTP id a25mr14148006pgn.277.1508352212170;
        Wed, 18 Oct 2017 11:43:32 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([103.196.221.228])
        by smtp.gmail.com with ESMTPSA id h77sm16855400pfj.38.2017.10.18.11.43.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 11:43:31 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH v2 2/3] staging: rtl8188eu: add spaces around '|'
Date: Thu, 19 Oct 2017 00:12:57 +0530
Message-Id: <1508352178-24942-3-git-send-email-aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1508352178-24942-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1508352178-24942-1-git-send-email-aastha.gupta4104@gmail.com>

Fixes 'use spaces around '|' ' as reported by checkpatch.pl

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8188eu/include/ieee80211.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/include/ieee80211.h b/drivers/staging/rtl8188eu/include/ieee80211.h
index 374c1f5..9f480cc 100644
--- a/drivers/staging/rtl8188eu/include/ieee80211.h
+++ b/drivers/staging/rtl8188eu/include/ieee80211.h
@@ -202,9 +202,9 @@ enum NETWORK_TYPE {
 #define IsSupportedTxCCK(NetType)				\
 	((NetType) & (WIRELESS_11B) ? true : false)
 #define IsSupportedTxOFDM(NetType)				\
-	((NetType) & (WIRELESS_11G|WIRELESS_11A) ? true : false)
+	((NetType) & (WIRELESS_11G | WIRELESS_11A) ? true : false)
 #define IsSupportedTxMCS(NetType)				\
-	((NetType) & (WIRELESS_11_24N|WIRELESS_11_5N) ? true : false)
+	((NetType) & (WIRELESS_11_24N | WIRELESS_11_5N) ? true : false)
 
 
 struct ieee_param {
@@ -542,7 +542,7 @@ static inline int is_broadcast_mac_addr(const u8 *addr)
 #define IEEE_A	    BIT(0)
 #define IEEE_B	    BIT(1)
 #define IEEE_G	    BIT(2)
-#define IEEE_MODE_MASK    (IEEE_A|IEEE_B|IEEE_G)
+#define IEEE_MODE_MASK    (IEEE_A | IEEE_B | IEEE_G)
 
 /* Action category code */
 enum rtw_ieee80211_category {
-- 
2.7.4


