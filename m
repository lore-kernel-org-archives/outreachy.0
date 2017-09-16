X-GM-THRID: 6466329510613614592
X-Received: by 10.36.47.85 with SMTP id j82mr3799171itj.44.1505559677319;
        Sat, 16 Sep 2017 04:01:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.120.150 with SMTP id p144ls2582927itc.2.canary-gmail; Sat,
 16 Sep 2017 04:01:16 -0700 (PDT)
X-Received: by 10.13.247.70 with SMTP id h67mr16937447ywf.179.1505559676698;
        Sat, 16 Sep 2017 04:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505559676; cv=none;
        d=google.com; s=arc-20160816;
        b=k7/atHDyn/RgDgCv3TYrNm17mj0oa3DHdZQ2WGqBP5b3jzATk4febTx6yNg/P6v00q
         ncbTygM6fIPfrz2dKYT+qqjZ9FizerO63LEpMQT7rNH2Jle8OGgfSI/xtQBdcUNi8q9J
         EMBNSUYyiWUN1VbLORFexoly+QKxAYF6CBvnvqZt443D1QBUwqOUneNZ+WacmX1sD2km
         NrrbdxNkz8QEjI7mukGLNaKas3wHmCY8DAN7saQcr//79oIIpEJNjrMJVdhIy08Vs00d
         N1KgDqPjtTPY96RM+vExtuN8V47C6CEKeSvsWtkvm5EQlQ+BYeApssm6GjjRHDBR4jOc
         rvrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature:arc-authentication-results;
        bh=N/tfF6p2asN7sWc2l7xmSKFeziK9u68WchtPmX49Tsw=;
        b=V0nOk2GcNAfKz5ZKmgGmXVp45dVZIZf2D2OoQJMoni7vvmsiVZS+rDvoCAh6OoJlhD
         xV4aMd1a5Ooo9NOi/rB0s8fkWel0WgISHioopRtqwdSPQS7B/iIRyEY4J0VmMZAKLBbE
         WSI6p61k121lyEDmZFRFE/NRIycCqANJN84wH/TotDWqJZYOBSs6IujAu9mDGqeEg2Dg
         gbLVLIMihGI1UELPpaNcm8xHQoOX52v4YIKwBHbaUisV9ZUgDP9pOo3r1hsJXF4Bo0OI
         COhpq91ZGzz3jhPPZG91+c9SfkKNJ7w/VGO3ezwYQtqaROMd//cIyWFrGqfzTKGlfpZU
         THJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j69sZSk6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id k76si317818pfb.5.2017.09.16.04.01.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 04:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=j69sZSk6;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id v5so2624957pgn.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 04:01:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=N/tfF6p2asN7sWc2l7xmSKFeziK9u68WchtPmX49Tsw=;
        b=j69sZSk6TUTKMsSbT1w6OtFj2UQhlHPxKLHH3oupxBtYKXt/IkhQNZlso09Abb7M5F
         bExgnkjmqybBY68BysM6NlIaWAykOcF4MjWUxNhCTL2UOy4UgxE90jUXIxwKIvdFljyT
         bfKdbHeDbDeHP/9LhfZlE8SMwkdYcwH7lVXvmzb7ieBeuXNvcAL3e1OyyseNqRUIsZsG
         hJoaPVcw3xVJJ6asXF0ag1IMjIPKdJyh0zUcse3nGJ2Ekc9gR8tWbQ+Wq0Wv0gro7apP
         26lXBfclN0HHtGFLsDcaUx20lFnzZDW7Vf5Nrp3Yqjrj4OTCt3Pur5FSnaDRkTkdndez
         mPcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=N/tfF6p2asN7sWc2l7xmSKFeziK9u68WchtPmX49Tsw=;
        b=ccYgFpukfuxKj+NiA8pCBFWiYmjl08VSn5mCLVywuIKl/3C2I6TA89a7jy5ydrs+R3
         f8TqWvYo3wyeFBGwiNPuyRoYJUHPZHr4GZZ+1IA/yTw8nBOZNBUgsOCXIMtqgwFvqDuh
         8DeI/UstSG9mvGWmND13J/qNm2g36PI2AmF+OPAjQCnmJ6jlAX7jlgom/FPgLYWgzDCz
         m162LQ6OMaV2dqwfW1Ng50CsMapnCl0OMc37VZpK3ecktRqBEfYL4rfpv6aAVZxvIKrr
         gNx9Ht8g3ZOh+GuO17QTFeMvkgj4o0Lwp/xb/KojNF2IoheC9Xk3XX3E2WvLckVOkU/m
         5rEQ==
X-Gm-Message-State: AHPjjUjh7Uow80dq3mQjrta/dwAxylUmNlK9YiF9j7n87xu0VecKmPCs
	VdMpYC/2FjTJpw==
X-Google-Smtp-Source: ADKCNb52l8p4jEfqSziYWMpA6g6HoNGk4Azzt/w5CpYQdAQAkOKQzLQiLOgGz5LHURR2Noiih9kQkw==
X-Received: by 10.84.129.226 with SMTP id b89mr30406497plb.42.1505559676400;
        Sat, 16 Sep 2017 04:01:16 -0700 (PDT)
Return-Path: <aastha.gupta4104@gmail.com>
Received: from aastha-HP-Pavilion-15-Notebook-PC ([27.56.167.173])
        by smtp.gmail.com with ESMTPSA id r90sm6906473pfb.183.2017.09.16.04.01.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 16 Sep 2017 04:01:16 -0700 (PDT)
From: Aastha Gupta <aastha.gupta4104@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Aastha Gupta <aastha.gupta4104@gmail.com>
Subject: [PATCH 03/11] staging: rtl8192u: remove space after '('
Date: Sat, 16 Sep 2017 16:30:46 +0530
Message-Id: <5dd65a3e96c322950d0b318e6707e23ab8b2fee9.1505559000.git.aastha.gupta4104@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>
In-Reply-To: <cover.1505559000.git.aastha.gupta4104@gmail.com>
References: <cover.1505559000.git.aastha.gupta4104@gmail.com>

ERROR: space prohibited after the open parenthesis '('

Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 654c0f6..3f040cc 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -412,7 +412,7 @@ typedef struct ieee_param {
 #define IEEE80211_QCTL_TID              0x000F
 
 #define	FC_QOS_BIT					BIT(7)
-#define IsDataFrame(pdu)			( ((pdu[0] & 0x0C) == 0x08) ? true : false )
+#define IsDataFrame(pdu)			(((pdu[0] & 0x0C) == 0x08) ? true : false )
 #define	IsLegacyDataFrame(pdu)	(IsDataFrame(pdu) && (!(pdu[0] & FC_QOS_BIT)) )
 //added by wb. Is this right?
 #define IsQoSDataFrame(pframe)  ((*(u16 *)pframe & (IEEE80211_STYPE_QOS_DATA | IEEE80211_FTYPE_DATA)) == (IEEE80211_STYPE_QOS_DATA | IEEE80211_FTYPE_DATA))
-- 
2.7.4


