X-GM-THRID: 6950903323792769024
X-Received: by 2002:aca:180c:: with SMTP id h12mr1345523oih.109.1618383331425;
        Tue, 13 Apr 2021 23:55:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6a0a:: with SMTP id g10ls330612otn.11.gmail; Tue, 13 Apr
 2021 23:55:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwz37Wd9bACfHjktBIQe4vHIYC7rqIP1obmTkYfymDagYadxOGbUE1I3wgxj01s5U46Lqx/
X-Received: by 2002:a9d:928:: with SMTP id 37mr26190644otp.98.1618383330731;
        Tue, 13 Apr 2021 23:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618383330; cv=none;
        d=google.com; s=arc-20160816;
        b=Xmwiqkqv1y6q2VxPn6taolILfmzFYtycNm5Los4jVicxdJTlMZ8fxWgQVgRmydIIO1
         PLq8OCNy1pOwg9NpuTfgDYTsDNGPcIEVoPEO+Xm/pfdVCWVIGqlh9iPf90GvyL8bAtBq
         dIagmngME6bxKMd1qArjXUBy8efT4IhfScbq+8pLCBzKjCwyRqrwSAgAiTzaCxN5KKCU
         khnGD89byA4RHEqPpZEEuVFsgvXkT0gbuD+UKPaKk7kGPCiu9dFHTOxw4WhmXgPlrYCE
         MK4H//WsRSNj5+4qZV3x+aQ3MeK19U9lqXOGyMEQ3nWp+zmouFnxl3nA9/nFbKk8WYXi
         ZRZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=li/8LTcZkYP0ij3luXshJf509WGvz+vVGqh0dawSB0Y=;
        b=KVtF8u8pqkLWwNOwzxnR4QWOYixLL2A9bBsscgfBocvt0FKE+9uErwHJ4kpuxtU6+Y
         DgSCXCo/ud/pOBDdraXGHUzaDX1Lwdim/Y3QFma947UySZLHeW0UhEWUadMBQ9Z++r1b
         u+xAvyRa8OHK2+r7i5ZdyMJSj1VBwC4gbvIwy56PDGCNCrp+uUEmZqcxJUkQLa2sF0X5
         uvlB7VZs4ZsNiP88mX3xPTULtGsWzrzoCVYUdeY3p6pOTP6IBID1X9Kcgcz/YRlDSXu3
         zajx7pEXHFeno2b0zDyMXiMG6FkooeBGJietkoO/0XZmWCxsTgMro0BP2+hVr1pPDCqT
         1pJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CcYSUiBX;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id u1si461899oif.3.2021.04.13.23.55.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Apr 2021 23:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CcYSUiBX;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x102a.google.com with SMTP id kk2-20020a17090b4a02b02900c777aa746fso10301596pjb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Apr 2021 23:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=li/8LTcZkYP0ij3luXshJf509WGvz+vVGqh0dawSB0Y=;
        b=CcYSUiBXjtY32bAijX+00uCERZVfR0ijx9r1mHi8Ke2NkNbFFCsmfPQ8XDwWUqx6g2
         rq8l6ZNbB+1ewED7+Qi9G90cPQGpEsFjL5PdMB8j6vCCmuhkEMQCLKopK6As+fVTG64m
         XbekHJ3DhmR5E52lYa027XFcozyMBagntE6FGWwhzu2V8nGFCrC1/R1cqsXK5ZFUPL4L
         MEjLGP1aNosfz59+SRuWyFFssvwasyWF8Xp37Y3kSkFVLz6AkTgZ4/eUpudLFStqLqpB
         i70B/CiFfRkx/kLs0WHCKs4FGZDTohnhIRzsOfuaFR9mEJGSKpujftlsjTNWe9kAi790
         4JRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=li/8LTcZkYP0ij3luXshJf509WGvz+vVGqh0dawSB0Y=;
        b=nimBuMwroAP4muIOpX47usWdjod58oqFfzAmW6ADwTW9wqApH/LrtcVfGgA7O/WshG
         71LiAaWw1h3cfn73Xu2XjLhFdO0iXrNDDXh0HSF0vBQdsj8Cq7EFDOsJNYPB3gG8aLU7
         JuphktWZztjYHJ4iXopNZUgzpX72q8Bp4t274zgLdppdbJiw6DUuPd9CdpUNPAvsknMd
         WNcFvdzA10DcfUCXg+cZtgtZrEZt7RK/fhax3bSFMU9FDvwLddpJXBY1aL5jkQU9FWtz
         Y9JX7GTD4iVQnddDWoBHG22eVq2Mtmjp5QhGUZrd2VctS38SBGWyh9HQM+URIewut0WU
         4NCQ==
X-Gm-Message-State: AOAM533rntVRE1BWVCRbOEA/OG4AafV+JxGeykFWjnTs31iVa5tvOX6t
	AEqC+CZCHRw3xVKnINbIkClg/v141/URkQ==
X-Received: by 2002:a17:90b:16cd:: with SMTP id iy13mr2076708pjb.46.1618383330372;
        Tue, 13 Apr 2021 23:55:30 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id k4sm16677159pgm.73.2021.04.13.23.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 23:55:30 -0700 (PDT)
Date: Wed, 14 Apr 2021 12:25:21 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: gregkh@linuxfoundation.org, davem@davemloft.net, kuba@kernel.org
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: [PATCH v2 2/5] staging: rtl8192e: remove unnecessary blank line
 before brace
Message-ID: <cad6a7885f30dcfabaf1ccab1fd0644416fea194.1618380932.git.mitaliborkar810@gmail.com>
References: <cover.1618380932.git.mitaliborkar810@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618380932.git.mitaliborkar810@gmail.com>

Removed an extra blank line before close brace as it was not necessary.
Reported by checkpatch.

Signed-off-by: Mitali Borkar <mitaliborkar810@gmail.com>
---
 
Changes from v1:- No changes.

 drivers/staging/rtl8192e/rtl819x_HTProc.c | 2 --
 drivers/staging/rtl8192e/rtl819x_TSProc.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/drivers/staging/rtl8192e/rtl819x_HTProc.c b/drivers/staging/rtl8192e/rtl819x_HTProc.c
index b74c6ac817d4..651441a71646 100644
--- a/drivers/staging/rtl8192e/rtl819x_HTProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_HTProc.c
@@ -263,7 +263,6 @@ static void HTIOTActDetermineRaFunc(struct rtllib_device *ieee, bool bPeerRx2ss)
 
 	if (pHTInfo->IOTAction & HT_IOT_ACT_AMSDU_ENABLE)
 		pHTInfo->IOTRaFunc |= HT_IOT_RAFUNC_TX_AMSDU;
-
 }
 
 void HTResetIOTSetting(struct rt_hi_throughput *pHTInfo)
@@ -445,7 +444,6 @@ static u8 HT_PickMCSRate(struct rtllib_device *ieee, u8 *pOperateMCS)
 		break;
 	default:
 		break;
-
 	}
 
 	return true;
diff --git a/drivers/staging/rtl8192e/rtl819x_TSProc.c b/drivers/staging/rtl8192e/rtl819x_TSProc.c
index b14ed3534ffa..34b00a76b6bd 100644
--- a/drivers/staging/rtl8192e/rtl819x_TSProc.c
+++ b/drivers/staging/rtl8192e/rtl819x_TSProc.c
@@ -192,7 +192,6 @@ void TSInitialize(struct rtllib_device *ieee)
 			break;
 		pRxReorderEntry = &ieee->RxReorderEntry[count + 1];
 	}
-
 }
 
 static void AdmitTS(struct rtllib_device *ieee,
@@ -253,7 +252,6 @@ static struct ts_common_info *SearchAdmitTRStream(struct rtllib_device *ieee,
 			    pRet->TSpec.f.TSInfo.field.ucTSID == TID &&
 			    pRet->TSpec.f.TSInfo.field.ucDirection == dir)
 				break;
-
 		}
 		if (&pRet->List  != psearch_list)
 			break;
-- 
2.30.2


