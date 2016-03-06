X-GM-THRID: 6255366153272557568
X-Received: by 10.50.109.136 with SMTP id hs8mr5818838igb.12.1457255593346;
        Sun, 06 Mar 2016 01:13:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.210 with SMTP id p76ls1328555qgp.17.gmail; Sun, 06 Mar
 2016 01:13:12 -0800 (PST)
X-Received: by 10.140.99.106 with SMTP id p97mr12559068qge.13.1457255592805;
        Sun, 06 Mar 2016 01:13:12 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si2376972pab.0.2016.03.06.01.13.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Mar 2016 01:13:12 -0800 (PST)
Received-SPF: pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of poojashamili@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=poojashamili@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 184so6074986pff.1
        for <outreachy-kernel@googlegroups.com>; Sun, 06 Mar 2016 01:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=K+oPg/ktUoVd0L6IdFm3gjKCcVaCixDUmAOd03HPByI=;
        b=Ejgm2G/yZMs0WrESVo7jlFf5Io+RPPxa4OkSqA42ln0mZUqt2f1ESdZxk7ExOGyTOB
         0mhyS6ahlBNNMmDwLhBW2T9V0OPuz/yzh6mrYOahmKFg1Jrv/YxNMKV2oSfn3fvWtbgg
         xaSgALTqqB9bLfGYocnbiHD78foAYV44RDwAACbDsFKTQkfUlsWllVbXlC/nI5P/V50k
         iHqXIvJ742ACR75XkOpUIafJguTs8lE3VSgm5OOJt3rfpAmgut09uHbHor/FR2BLIQh8
         wyENATXyiXxd/L8ggn+f7uOFx4DjH5dQ4NiryrP+EzkzLTmz2kOm6JHHb7YBbJ9OHNS8
         JZpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=K+oPg/ktUoVd0L6IdFm3gjKCcVaCixDUmAOd03HPByI=;
        b=VQGaYGdxNFPK9tCGRTfvOPq2h4e63UDnLlk/xucRaS8xjUuke+4iuiZG5kp1ydJfAQ
         g1MJ4B9lgcv/7KViCX4MLgbVJawYxW3DOvLjYgZ5vdcXI45JU3p2Rs315XPaIoPnGqRW
         EQWmyYMDBkN6PwR0KDv9pO896YR90RmyqXZOPjYNbLo2FaHVAkvowBnFWbs//+tQexOP
         7+KS6jvH5O4CErIZrCA+3a3tLbc0P+YBmfXrf+aUAghrOXyB0l7kRrOFfuwRr0CM+yNz
         PWgDFTqYIJ6Vlzkoec35UckQEQFgi55+rBZPhaGHJBIamIRe6t1SYncK34EVe9qn/Xyz
         9K2w==
X-Gm-Message-State: AD7BkJKjmqnsDQ7XBYKbXLaDZ6YXSpJZa1InNHwR2ufy1iM+bRygT2I8KQlWPT9n3ra+FA==
X-Received: by 10.98.80.206 with SMTP id g75mr25064120pfj.127.1457255592642;
        Sun, 06 Mar 2016 01:13:12 -0800 (PST)
Return-Path: <poojashamili@gmail.com>
Received: from pooja-Inspiron-3537 ([103.224.159.11])
        by smtp.gmail.com with ESMTPSA id i1sm16765524pfj.17.2016.03.06.01.13.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 06 Mar 2016 01:13:12 -0800 (PST)
Date: Sun, 6 Mar 2016 14:43:09 +0530
From: G Pooja Shamili <poojashamili@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Remove the unnecessary parantheses
Message-ID: <20160306091309.GA30726@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The unnecessary parantheses on the right side of assignments were remove
as in most cases (expect for ==, >=, <=, !=), they are futile.

This was done using Coccinelle, the semantic patch being:

@@
expression E1,E2,E3;
binary operator bin_op = {==,>=,<=,!=};
@@

E1 =
(
-(
+(
E2 bin_op E3
-)
+)
|
-(
E2
-)
)
;

Signed-off-by: G Pooja Shamili <poojashamili@gmail.com>
---
Changes from Version 1:
	    * Changed the name in the From: and Signed-off-by: to full
name.
	    
 drivers/staging/rtl8712/rtl871x_mlme.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
index 1b022db..604ef58 100644
--- a/drivers/staging/rtl8712/rtl871x_mlme.c
+++ b/drivers/staging/rtl8712/rtl871x_mlme.c
@@ -1285,7 +1285,7 @@ sint r8712_set_key(struct _adapter *adapter,
 	}
 	pcmd->cmdcode = _SetKey_CMD_;
 	pcmd->parmbuf = (u8 *)psetkeyparm;
-	pcmd->cmdsz =  (sizeof(struct setkey_parm));
+	pcmd->cmdsz =  sizeof(struct setkey_parm);
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 	INIT_LIST_HEAD(&pcmd->list);
@@ -1748,8 +1748,8 @@ static void update_ht_cap(struct _adapter *padapter, u8 *pie, uint ie_len)
 				sizeof(struct NDIS_802_11_FIXED_IEs));
 	if (p && len > 0) {
 		pht_capie = (struct ieee80211_ht_cap *)(p + 2);
-		max_ampdu_sz = (pht_capie->ampdu_params_info &
-				IEEE80211_HT_CAP_AMPDU_FACTOR);
+		max_ampdu_sz = pht_capie->ampdu_params_info &
+				IEEE80211_HT_CAP_AMPDU_FACTOR;
 		/* max_ampdu_sz (kbytes); */
 		max_ampdu_sz = 1 << (max_ampdu_sz + 3);
 		phtpriv->rx_ampdu_maxlen = max_ampdu_sz;
-- 
2.1.4


