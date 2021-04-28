X-GM-THRID: 6956170409670606848
X-Received: by 2002:a17:907:7634:: with SMTP id jy20mr818014ejc.553.1619609638174;
        Wed, 28 Apr 2021 04:33:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:1901:: with SMTP id a1ls10678237eje.0.gmail; Wed, 28
 Apr 2021 04:33:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxSnPemWNnAmZ4G+YlOMkd4PtERuqdgMNGZJlJ99n64odsGNJRIcBqxHHco3QESUTgcnRqB
X-Received: by 2002:a17:906:2287:: with SMTP id p7mr21557951eja.377.1619609636602;
        Wed, 28 Apr 2021 04:33:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619609636; cv=none;
        d=google.com; s=arc-20160816;
        b=G3/KXBt2EeOcN0Ot91DBMCCiHPU3ZZyvBz8Mm0ltcEceF2IZQedpCzHdploc9m0dOT
         4I0/p2RHyCdX817qieotfFW2r9uXzkfbYN2noZY0dnZMhKMWHp/DRVBsfRzjjXWmyTgG
         yZOFKesg2MzBthjDCZg1xGoybx5Q/gQNEdeW7S1fFJ5zMYjlYoNH5yt7C7EluUzS7MMP
         6cB6To3tojbzUeyxVp6wQx7rreRZGeB/AhfoAj5+xFWOLPGuijHXuxLDnm3SJGSAa3wA
         jrq7KtV6FPxKTJXwct3/87XiZ1++couDyEmn/Po7NpSEYVd0jImKSZlaNavbw3v5haf2
         HDdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zNqCBvfTc2uOfgSlghFo3TISsBCbOPttLe3KTxfSIXw=;
        b=XO20a6pB/kAMS/u+Zldib/sKEu0fZDxwk1L6+kTkbnDyagdTbfn6d0W3PmyazH2T4I
         tWYe1zmPy6UbJHB7Z67rYnPEOzW5KGYFpVY7EkbLKHR4Ic+c8yhgh42Weee4vfSsrKuv
         g1fLS+eX2TksdEMjmmqEDtBjLlObGjUZPYqE+1UQef3eiCbJorTzlc1x/JkcxOHn3odX
         sRFSlylR+EVA6atv+VwCQivK03QBODBHWKwarV2I/YrV4x/A2AKejGcORsE2TsmpMIBV
         bcM/qfMBa55xNRLua674baBCZCzGgYmsuRRZ3a0qZqdDyqTOKSTZpk+dhRUMXkpTQUFW
         9MBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vF1mxLZj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com. [2a00:1450:4864:20::631])
        by gmr-mx.google.com with ESMTPS id g7si631357edm.3.2021.04.28.04.33.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 04:33:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) client-ip=2a00:1450:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vF1mxLZj;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::631 as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ej1-x631.google.com with SMTP id u21so94144012ejo.13
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Apr 2021 04:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zNqCBvfTc2uOfgSlghFo3TISsBCbOPttLe3KTxfSIXw=;
        b=vF1mxLZjy9Jdw9QxXGSMl5pJ59QItWKtIhNN7DTHEZz0NwgJbMkZ1hVqyuARSfAoA2
         MK0Fz1QfyyLfPXPgZntgSbuEm4cq9dsZSwNePMYTgoGG9FYagCoLkYqLZzORcDvyOl9g
         siTjRJ6pD+YaxBkB8SmVlxVkmXoIt9kmRPS4zogc+OGxxvJkRpH8bvr2kK96m12yEHNX
         yinPbhcA69W7UTCYm+w+d2+4n6JbjIM6qmAKyxC1ophpA6Jz5rmo/H7Jx47SM07h/o3t
         8SSpVNS8FLC0SF1T/F6Irj3ugmu2EgRgV0/13Atc5Cx0YMuoVuiRRYgFuvoBLvppjawP
         1vFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zNqCBvfTc2uOfgSlghFo3TISsBCbOPttLe3KTxfSIXw=;
        b=QzLoyaWh0ry+TpqiXoaeQzXts/pO6laB9RIf2gEDTfxpEeMUZb9Ajew9YNEWNu/MUD
         pqMHVR3e/CvNBfF852bo3WuqGwfuvFL8MtN5z2n5XV735OwfWPoyEtJ6CoQlq+QiNTPZ
         MVhrKCxtWX5Zyi4a5VQBi8CKVkOuf4WulxhjaXDOnfhtdwqvAZv/aJCM5p7D/nfbExtW
         5OjwIFhgPq6aD5WwJxPbYJLtMyQiS5jA0R9SgwnD7eSkNWyQO/lD0mJwTTze8Sc5/+dL
         GTnIQg0SIUKcQs7cSZzLqr+pvR3vrjgF8YS6tTQJpy/49HrFgSPdHFr/Tr41WYMNPvPP
         CSZQ==
X-Gm-Message-State: AOAM532jRTwkICKQF1rCqhy9YviCx9GDd03yFQu7iFsEQzCLgyXdkxls
	vwP7zXU2Z/sVt5Uwk9bUB/sb/lGZkvgWIEhy
X-Received: by 2002:a17:906:4d02:: with SMTP id r2mr16801792eju.464.1619609636163;
        Wed, 28 Apr 2021 04:33:56 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from linux.local (host-79-52-107-152.retail.telecomitalia.it. [79.52.107.152])
        by smtp.gmail.com with ESMTPSA id u19sm4677187edy.23.2021.04.28.04.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Apr 2021 04:33:55 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [Outreachy kernel] [PATCH 2/2] staging: rtl8723bs: core: Removed set but unused variable.
Date: Wed, 28 Apr 2021 13:33:46 +0200
Message-Id: <20210428113346.28305-3-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210428113346.28305-1-fmdefrancesco@gmail.com>
References: <20210428113346.28305-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Removed set but unused variable. Issue detected by gcc.

Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index a2fdd5ea5fc4..b0d2ba5ed129 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -1019,7 +1019,7 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 	u16 capab_info;
 	struct rtw_ieee802_11_elems elems;
 	struct sta_info *pstat;
-	unsigned char 	reassoc, *p, *pos, *wpa_ie;
+	unsigned char 	*p, *pos, *wpa_ie;
 	unsigned char WMM_IE[] = {0x00, 0x50, 0xf2, 0x02, 0x00, 0x01};
 	int		i, ie_len, wpa_ie_len, left;
 	unsigned char 	supportRate[16];
@@ -1040,10 +1040,8 @@ unsigned int OnAssocReq(struct adapter *padapter, union recv_frame *precv_frame)
 
 	frame_type = GetFrameSubType(pframe);
 	if (frame_type == WIFI_ASSOCREQ) {
-		reassoc = 0;
 		ie_offset = _ASOCREQ_IE_OFFSET_;
 	} else { /*  WIFI_REASSOCREQ */
-		reassoc = 1;
 		ie_offset = _REASOCREQ_IE_OFFSET_;
 	}
 
-- 
2.31.1


