X-GM-THRID: 6474892395413504000
X-Received: by 10.159.194.23 with SMTP id x23mr133913pln.41.1507553364551;
        Mon, 09 Oct 2017 05:49:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.55.65 with SMTP id e62ls1376091pfa.2.gmail; Mon, 09 Oct
 2017 05:49:23 -0700 (PDT)
X-Received: by 10.99.104.6 with SMTP id d6mr862820pgc.84.1507553363642;
        Mon, 09 Oct 2017 05:49:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507553363; cv=none;
        d=google.com; s=arc-20160816;
        b=jbCLDnoLWEY/uV5JW1aCmT+zmq0C0j4/AbUlvAihh7R2yJCQC+4FozCqwrzuwP9eti
         aSkhPh9gK2uXuAKzdLsGQA1WFg13wJUzmMBEy9zeLq8A+wCAcZtDGC7FM+ojB/KSnZ87
         UGTo7qVceGApmmynqSVt9FIJuqtQVWqpFYSbOtQE82OFJFZsZsAZThvqD6DkVd5eiiZz
         enOUQw1bCm7FYDeWAGQm8gFdsvNSHgpniT78U1qZDCcn4CKZTmeBAXnvY5qtrkmEns4H
         LYt5DIv60CbXEzrA/zG1Tcyf9tZ170a/+a0Uvg4nT6NafYSsWkydq39VtE+Tkk4p5i3z
         PhWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=b00l33mdmGx1P0+YeQjara3z+0TmcvWuNBmQMybpRAE=;
        b=wl65iW3RqF9nwvYeP8T5kkh1YRe0MUpu+JwvypHFOwWARLYXNQq3JqwO0BX7Jl6xD5
         musquYj+a4F6cxlzOUxOdT1LoBDpgFJ9EZkIeymmOA4kqs4dvf52FXxhD4VinovxjNZz
         ZlPD3qG8b6cZtUyqPDZoEWXLjqaCuoV9aRjzghToUrnsPJ4c5cpjao172WOb7aAlUXaJ
         7PohnzXbviqDlRGFH86FII2+2w9PLAxV7pFheTwONSRGuHvdQ8BcBiBDWudakcWFblum
         wJt7+YZsP37uOLd2hl2sFK1HwV4tGYgDkE5qFEQV/Wgk7/QA467IccwTr9iSK/rabKOC
         iC4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFk+Ft5V;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id n63si892062pfb.10.2017.10.09.05.49.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 05:49:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=XFk+Ft5V;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z11so10141412pfk.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 05:49:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=b00l33mdmGx1P0+YeQjara3z+0TmcvWuNBmQMybpRAE=;
        b=XFk+Ft5VEvVv16Ol4jTci3GL6lYhi10ZzUMEVYNnmNShq/dDWrF+TFc96mLSsHvU80
         78hIPRttSWS0BI+UtoYLtd+Ly0w/WY0kA3/inzmX+7ggwkComVNtiyBKZl3i9Ntjez5c
         D50TDdggxSfN/Dq+DvPivJs21unrBFiLyNeiIJxD8XxUPQY1khMjxHLfDUgpHhDqslTj
         wk1QZx6bGt0kMIj0AmeSYykipw+LfvMokyWSv5f7YZ1P1Wfs5KPVXoJ9G1HjgsCRI7Qa
         DZQRb9qFt8VDQnvFK+Pg3FHzlXgtuH7ACyRDfg20EXwkYSyytaQJ0k7oi/ZGsBS7Ngqr
         MWNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=b00l33mdmGx1P0+YeQjara3z+0TmcvWuNBmQMybpRAE=;
        b=GRU472PFVP+RF3ngqrTDgp/aBuNHMJE9XPgm0wS34mT5IWDvBGOhqfU8rHdiDRJ9Gw
         oQNgy5wFClE0OfR5nk4z23X7La+NJsHdcWo6kzdyoTHftR5hbDVZ5sq1cUvpAS8FCkRo
         tYckPQX74cXHwI5owqSlCaviPhYglNXuxSC5gCi+0rXBPJ8iHeob3fPc6PXk3Lq9yVmL
         /smVtNClwmyWHRY18ogP+Umtx5gOBKDHDRWXFFetyVWZ67RZa8LuXCVwTPV0qsbu/4JI
         CTDYTqCaY2WpjIKIhO1To9wN0zbBS3IdVzOPM0JoBgPs4HbA9zx6QrENazuWz3G1T3jd
         9fyg==
X-Gm-Message-State: AMCzsaXMu6oCV0qJK65oyzGJTdfGW0OLcuVY1GisdkNcq56cF5I6t3El
	z3zsQzcffSE2H20BP7Gsf98=
X-Google-Smtp-Source: AOwi7QCqOjIMgMQ/rgq3TplX5rHV5h2paGQxzcoKrXSyOyUUwLshgb6d48gIAgZafIczV/JR3gcd4Q==
X-Received: by 10.98.103.206 with SMTP id t75mr10049778pfj.173.1507553363354;
        Mon, 09 Oct 2017 05:49:23 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.14])
        by smtp.gmail.com with ESMTPSA id l28sm7780688pgu.38.2017.10.09.05.49.21
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Oct 2017 05:49:22 -0700 (PDT)
Date: Mon, 9 Oct 2017 18:19:18 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8723bs: remove implicit int->bool conversions
Message-ID: <20171009124918.omgogujj2titces2@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Implicit type conversions are bad; they hinder readability of code and have
potential to cause bugs. Here the variable wait_ack is always supplied a bool
value while in function declarations it is defined as an int type. Fix it by
defining wait_ack a bool type in all usages.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 355ce9b19d1c..0dca5cdef2e7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2831,7 +2831,9 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 
 }
 
-static int _issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, u8 ch, bool append_wps, int wait_ack)
+static int _issue_probereq(struct adapter *padapter,
+			   struct ndis_802_11_ssid *pssid,
+			   u8 *da, u8 ch, bool append_wps, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame		*pmgntframe;
@@ -3430,7 +3432,8 @@ void issue_assocreq(struct adapter *padapter)
 }
 
 /* when wait_ack is ture, this function shoule be called at process context */
-static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
+static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
+			   unsigned int power_mode, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -3591,7 +3594,8 @@ s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
 }
 
 /* when wait_ack is ture, this function shoule be called at process context */
-static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
+static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
+			       u16 tid, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -3715,7 +3719,8 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	return ret;
 }
 
-static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
+static int _issue_deauth(struct adapter *padapter, unsigned char *da,
+			 unsigned short reason, bool wait_ack)
 {
 	struct xmit_frame			*pmgntframe;
 	struct pkt_attrib			*pattrib;
-- 
2.11.0


