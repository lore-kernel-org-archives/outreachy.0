X-GM-THRID: 6670940020392591360
X-Received: by 2002:a6b:d307:: with SMTP id s7mr2534100iob.81.1553199263821;
        Thu, 21 Mar 2019 13:14:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:5a0a:: with SMTP id v10ls2083329ita.2.gmail; Thu, 21 Mar
 2019 13:14:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz42smivfA78QWSTScA6tffjZWjJ9RC26IzPyY6F0aLXDioc+FYrg+gzli2X6f7GtwzXkga
X-Received: by 2002:a24:6193:: with SMTP id s141mr522857itc.77.1553199262716;
        Thu, 21 Mar 2019 13:14:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553199262; cv=none;
        d=google.com; s=arc-20160816;
        b=RoT/XJD2xSyAuPM0oFsmrFb/62MgbVKTLmG3nt/5vNopBDcXPHT8b9BkGTRKnYAPfB
         qzTjPFiq8EJzv+SjPmMtUoKcxkTMOXMP3RH30TD0+rYoZo1rXSKHkHNdQFnZsnTLbE0Z
         dAdYKcW+hYD8Wn3UdoSe6Yvt3AoSIjo5qG5LV2/FuuACbbe9/0TmojomPkdgtCMh6xRg
         efgXyJA8/GPX2XlIM0GQy2WV0VFh6qotnL2Bx3BPcamHgadn/3MsEgUE584f/bk1suMl
         IRGxxUxH28T2ZQR+uqp1qS9NYzqv/v6zPdopGglLCxKVZIsqD/MQL2dUgm0YEIkV2ici
         wn4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=iHvGe0D5OuEF+iJtmV/s19ijjg7QvjzoNfiCHX38Rd0=;
        b=JyBjKZT4APav55jUMoKpY3+TeaWQBwv5p50EByyBYAmZxCgjc2yattpTNVdee7ZPXu
         kSAdLaZLyjmL+3NY1oqXB62OfHZ6oX59KKXPDiwxpqbDQ04eovypbFkSvVrQVuTXfmnp
         R8SEnY/y1FDPbnXPeQ1SCEX+zfjRGciWGXt4nNl6L+1iRkLZM9TZEI1hw4ZFWEe2O1BN
         QQEe0Usg9M/BABHf/cRcZeupqS6y8HOfDb9IkZAnOEtPSSPoOvsZabRs3vtd49b6B6tY
         1soafzQ6kDkrxJnIlnjx7YBj8u98goqcr3mxnqzZ3E6RRqSvTRLaw+kciHIJ3aJNVzXS
         HDtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=gjR7LZJI;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic314-20.consmr.mail.sg3.yahoo.com (sonic314-20.consmr.mail.sg3.yahoo.com. [106.10.240.144])
        by gmr-mx.google.com with ESMTPS id j196si579161itb.0.2019.03.21.13.14.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:14:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) client-ip=106.10.240.144;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=gjR7LZJI;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.240.144 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553199260; bh=iHvGe0D5OuEF+iJtmV/s19ijjg7QvjzoNfiCHX38Rd0=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=gjR7LZJIFYKf7IT19EhWxwF08SU2Clhp3lKyK55ZQhL5tmMLQ3CntEM0XnY4grzuyeYFHCH0XSLI/Tm6SswBi49W3/9dmjnFGBxJaF5b3MtGLBjrq6cyl5RLuFAkgX1fsfmdfu8rCihBiquQ+UXHmGCeGjVS1w8MPX+B7NdSoQ7EC84Jw6K/IUQK9f/SXkeHWQfHP1DDJDGtaYdaN2XpU7OXr6sCv7CiBN2wBLOh6PwFzzJ2nk/8V+YcPvpDTgl0TWVXk5BDT5yKxyt4DM6NangoNp4pi33WhyHak/IBAZNNSbilac7fA39Fsvu6+6zxMDCq9dIJTuSw0vqmLI0/Fw==
X-YMail-OSG: .VonifEVM1lQpAU_65S5uY30lr8t9rKzNco9wVxXPM6EBWlXD4i2GyUg53WMTH9
 2O662naUwNOpP.xpwG31Z6gMS9E7_NE_gyxr8FI3ovuXsHxUNbOlsJHOt57euuog2W8ixovH_MfP
 2yPzTjR9fhFi4n8njytd562cuCI4bCuGx9DA3fpqNXzvYF5UKhwgC9Z5ibOe8hcqpl72VPE8MWKj
 cP9FohNF3jB_eW524NvNJHikEwJ3NtFlm7Yvo66zrog6ef2KoOP2D8.7rN.5hDhD_3gPkhLKQ1Em
 WOwogKuGWGbo0IFz20dIVpZARt1kBUV0RH0Hnc14Dj6x91QS6_IqK5kWMQh1Tzt27HENYqxhgwB6
 OxsNRBjdApyid1QBBg9ah1R9OZ61PoVjNQ.tKQ9wIVjjJz5beRbDImZ15aV.FBwOLkDQz8DoyPEz
 swc_eEt75VkDurf11Gh_9sIxbox9mSibEQSEGS4mCfkR2vmnweIeaW0vQklCw.qsdYxpMBQsHVpy
 GUKev7tglkg8qyPQX_.5pTf7L2kiWGFEU7ISVoGVTDWi4e609__ucKxIlzH3RGsr_RQ68orOPCQJ
 X7ovNddki39mTXdQcY39yQH0TxRHZTcZ8ToY2GB7oSfh3yTAl1gtN6tGs6srXOImhm2CCbY1wi3.
 bICIRIb7WjCX2RPWzXwwY6Axd2gTpOdobN2oFFqjEBhJ3AW._1mMKqf98mSnc.axm4xxAcgKIhsZ
 fQnO_Zexl39w9YmhdtDOj8R5dIYa3phT8Wx6n2LLQvM.8PU0kf01x5zi5VwlTcKac7keLPsXyB0h
 5ElyvkTsUuQYpG9GyjHRov5zSw8MTliYMSGVZvYlTcr1y4XjA2GH0ePU.wQNL2rmOhESOOAK.smc
 QgiVlJsZZIwzaK5yqn_dGdmGunnY5VxUBOxsXQi7hpwHe_ejMV1WyzxEbc5kiaSWOZ3Z.qN0WOxl
 MkQ1Noasm0_jmu1dDPQb3GUkn_GPrAWWyOoMnAOOo6PTudI7qFrX_Rn0DK3yvgY8bcCiYo2E_CZp
 l0_Z5i6ckNH9LRP.FvjsRVqZzysHayzCyDgr5nG5.L_h5a_JiL3mn9ivnmBhhidwO9gKjREyAT.q
 YLGkTzXVbchlLUavxbNENKq1CoErjSPtDoUKYaSk-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic314.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 20:14:20 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp408.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID f52b3467335251bdb2b643b08dda1312;
          Thu, 21 Mar 2019 20:14:17 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 1/4] staging: rtl8723bs: core: Change NULL comparisons to Boolean negation
Date: Fri, 22 Mar 2019 01:43:54 +0530
Message-Id: <20190321201359.5948-2-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
References: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change NULL comparisons to Boolean negations. Issue found with
Coccinelle using matchnull.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index b2813eb3d9d2..c2884c35c460 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -3512,7 +3512,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 
 
 	/* da == NULL, assum it's null data for sta to ap*/
-	if (da == NULL)
+	if (!da)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
 	psta = rtw_get_stainfo(&padapter->stapriv, da);
@@ -3578,7 +3578,7 @@ s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
 	pmlmeinfo = &pmlmeext->mlmext_info;
 
 	/* da == NULL, assum it's null data for sta to ap*/
-	if (da == NULL)
+	if (!da)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
 	ret = _issue_nulldata(padapter, da, 0, false);
@@ -3675,7 +3675,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	struct mlme_ext_info *pmlmeinfo = &(pmlmeext->mlmext_info);
 
 	/* da == NULL, assum it's null data for sta to ap*/
-	if (da == NULL)
+	if (!da)
 		da = get_my_bssid(&(pmlmeinfo->network));
 
 	do {
-- 
2.19.1


