X-GM-THRID: 6810515093003960320
X-Received: by 2002:a05:6830:2391:: with SMTP id l17mr15470768ots.339.1585696614650;
        Tue, 31 Mar 2020 16:16:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:fd02:: with SMTP id b2ls7302880oii.2.gmail; Tue, 31 Mar
 2020 16:16:52 -0700 (PDT)
X-Google-Smtp-Source: APiQypKwnENnT7CNNU1AbLk4Pp72b9sx3Ff6W3TiPXUEjtWWrjKa+1aKr8zK99ptu0gNTPX+9Mzl
X-Received: by 2002:a05:6808:43:: with SMTP id v3mr956955oic.59.1585696612897;
        Tue, 31 Mar 2020 16:16:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585696612; cv=none;
        d=google.com; s=arc-20160816;
        b=vwz7+E2wZ9OfLeE1MkGiP8w06Jd+dJQh5ILzt4EHfOHaxqafAFW9/OOSrIsKeL5650
         sx4VCSTy+LaeZ0eYnfVk20o6CFkjiiLLokOht/Kg96/u70EVz7ACvmt808oOLRuw9KyU
         0shAkLfUquoD91rkj5VBQJTje6vsO8Yav5T+cLinWWPMtf4vuyL/o/8WxWvz8YEAv3j2
         wFpJIzlChdL5Pakry6gJ9Nl6+DRzAb7OhHro4njTUMbHwBx/WiJIzHZ6xEvDb0nO52Ju
         75MGi2l4gAsfql1pJqP0hEZJ+Bm+MgGimNBB7B3Dce8jdy5eN/JXbSaQ9slgO8cJV/W2
         u5LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=k0FDBpulaJU7e5Qb4KT1dK9wPjJzFgSMvZ7Vqj1ncmk=;
        b=Hg2kuj6o29nwHfvbzZOemaSSxnSibYBytTplCYnxqjjeXpp4qnQIWad8JQh0pEWNIT
         2kYi2Mhd3t3s07z8kGTI2PV2S9Dt/uurhIcPlfSCwbUho9bM3rrSHbXAivlvBD3yIuhP
         /nTKbXfm9fxeFrpykWRIW9YL0Mq+XMJtk0AhciNW+hDyQIryBwWennqcdXID0HR2Nz1T
         5DKVbGeGud3CAQTKy94BtWKYhfhyRBfyksotnE7XUtckGiNO/vfR8MjoKxFFqd/GvI7A
         PuaMG+4a/p0iltcS5ptxLjFl9Pl/ZEvNBDBIu6E7axmtPrkBmdclvYveSCiaGAPEHJUm
         OK9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bkbJJtzi;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id d11si25026otk.5.2020.03.31.16.16.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 16:16:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=bkbJJtzi;
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52a.google.com with SMTP id b1so11116893pgm.8
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 16:16:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=k0FDBpulaJU7e5Qb4KT1dK9wPjJzFgSMvZ7Vqj1ncmk=;
        b=bkbJJtziaynZd33kLb5Ow2WTo4tSeAKnFZT1o8BzbjyetZ66uTpVzlbHD8wjh6uKlG
         ug4TfXFyoR1HtMot0bIzLswJ7aqvJJ+dvhjqEf/DydhhrpNmy7yT55cFNCZjJOQZuDc0
         s2Vc9SoNHC6+Fk1aV3T2/i1lwAEpOnfiNCqwXkYEmZfTu6NYviBZH6BZn1hDKId7nCEa
         QEYsquAdlWqiyXc7SuC4FiyGVExx1VnHevbZ0TU+QkcpHxeCM5QOVN5HQqwSEZ2f/SHF
         5ieIEmkwDdIBfclm3ZeKCisbUgidR0sXlKlyCq3FmPeU9d4/RWoaSE+xNBP8C3cdRY42
         iupg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=k0FDBpulaJU7e5Qb4KT1dK9wPjJzFgSMvZ7Vqj1ncmk=;
        b=pPYFmCyMXyqN4SBg6ewprh8KE/wqSDcS0+Gd9pxtExvxDppCbp0PHdmuR2QQaDRzrT
         idKOci8cSGSfyaiz3nltv46ifjRyHv/lrkQom/SwcHo4P7Y6qpjftfZOMrj4i57KLFXe
         vkj0xpjOgF3FBBv48+mjNi9/R+5t2NKM04shiyWtLVJ9m9GlLJNnr/HuAGVvDqGvHqBC
         tpQemtXPNR4AmwSuiL53qd/gnrd7ns6B/YyEknsxsuUZzeiZuy8bPKQlS+sP1u6gBGkB
         KB6CMkhC4Ui/5E4ZT7TIAMpt52iHZPYnkXtK0T4i95yAh+LicZODO5B4tVOm6T0UhVHZ
         qs8Q==
X-Gm-Message-State: AGi0PuaYkv1N5C/LRXjDVRhcDjoC+K06J4WWm4NqCeIYb/37thFeTRgb
	EOFPdPCCQteQaDoTIJNggfM=
X-Received: by 2002:aa7:919a:: with SMTP id x26mr16991816pfa.39.1585696612128;
        Tue, 31 Mar 2020 16:16:52 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from nebula.hsd1.or.comcast.net ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id b17sm180529pff.81.2020.03.31.16.16.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 16:16:51 -0700 (PDT)
From: Briana Oursler <briana.oursler@gmail.com>
To: julia.lawall@inria.fr,
	sbrivio@redhat.com,
	gregkh@linuxfoundation.org,
	forest@alittletooquiet.net,
	outreachy-kernel@googlegroups.com
Cc: Briana Oursler <briana.oursler@gmail.com>
Subject: [Patch v2 1/4] Staging: vt6655: Limit return statements.
Date: Tue, 31 Mar 2020 16:16:43 -0700
Message-Id: <fe417533b66d29ef6ea19128b38b8c8de7757ae2.1585694821.git.briana.oursler@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.1585694821.git.briana.oursler@gmail.com>
References: <cover.1585694821.git.briana.oursler@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Limit return statements within context of switch case to improve
readability.

Signed-off-by: Briana Oursler <briana.oursler@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 29 +++++++++--------------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 37fcc42ed000..443d04c4c62f 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -259,12 +259,9 @@ s_uGetDataDuration(
 			else
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
-			if (bNeedAck) {
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopCCKBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -282,12 +279,9 @@ s_uGetDataDuration(
 			else
 				uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wRate, bNeedAck);
 
-			if (bNeedAck) {
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -323,12 +317,9 @@ s_uGetDataDuration(
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE0][wRate-RATE_18M], bNeedAck);
 			}
 
-			if (bNeedAck) {
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
@@ -363,12 +354,10 @@ s_uGetDataDuration(
 				else
 					uNextPktTime = s_uGetTxRsvTime(pDevice, byPktType, cbFrameLength, wFB_Opt1[FB_RATE1][wRate-RATE_18M], bNeedAck);
 			}
-			if (bNeedAck) {
+
+			if (bNeedAck)
 				uAckTime = BBuGetFrameTime(pDevice->byPreambleType, byPktType, 14, pDevice->byTopOFDMBasicRate);
-				return pDevice->uSIFS + uAckTime + uNextPktTime;
-			} else {
-				return pDevice->uSIFS + uNextPktTime;
-			}
+			return pDevice->uSIFS + uAckTime + uNextPktTime;
 		}
 		break;
 
-- 
2.24.1


