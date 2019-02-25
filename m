X-GM-THRID: 6661982581807906816
X-Received: by 2002:aca:3ed4:: with SMTP id l203mr7073232oia.47.1551113692482;
        Mon, 25 Feb 2019 08:54:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4541:: with SMTP id s62ls1359416oia.7.gmail; Mon, 25 Feb
 2019 08:54:51 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZrC4P1JynYF3N7riK4rLeaSWkZQfELHMrfq5k3H+gihjuR38a4jwZQgYVk+F2uSgw6dCA1
X-Received: by 2002:aca:4588:: with SMTP id s130mr11831669oia.44.1551113691615;
        Mon, 25 Feb 2019 08:54:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551113691; cv=none;
        d=google.com; s=arc-20160816;
        b=IHUCxS2zGSpELabi3IRX8ffEXM+VVIKMWS/YIvrcHnMErOTT6oDvymWr5qt3YnJz8I
         Zri5yBtOwPW7KidjRQh9DyK2SQHPM1WzuDPWgUa7KQIPHv2Cp29IKKlWIWMLS34HDIf4
         md0aeQqc/g1DK+9O6FbyvE4QIO/4phce2iDde5V6N9JprQMBjbqtfDkrT50165MSAA/u
         3KvggLCm19cVeaiLgzfKttMLWs9hUSMZlh4pk+JYKW9qSE1/2LmjvumLdmJAJ0xhwEp4
         Z4DFVi+z4TDzxHDBXHLzVaKHdcpXA01Zvu21YDITu/FAWvDcVswOANjdC1LvSX7r8yxX
         31kQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=fK8eLySSFZsuLDSadQsKAw1JXucLkEVPKQ4bdqOaV8Q=;
        b=0g3FRydpG8wdm8DFVfi8H0ZYFhnkSyCNmxjN7NSh2Jp9vJK0tY2G+Gy1vZHwh7F5RM
         VC00NtkbkUgVwcyr1GGzfISIk01Et06ldnLL/QC4Fl7UWFMYRHRznRa5mtRrlBaaG/d2
         CkATtCDMK9q7nYKNqy68Tf+TpubBB0Pux7U1KRW3GHXwaupC+NwVMlaz+rGDHRsM0HO5
         TnWLXJdZmoWzfQFRSNzIQkTOVPqpXZC09pEKbh614ktzjU1L9I8si9wExHwe9+5KedfJ
         nZ3dvXlkbivxzjKOSMYbLp1+coASSBPACiVHJ7b+Disp57Tc47vFcEfIYKyoWCIczV8W
         Aj6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H31lHqG1;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id v129si512882oib.0.2019.02.25.08.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:54:51 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=H31lHqG1;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id b2so4743469pgl.9
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 08:54:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=fK8eLySSFZsuLDSadQsKAw1JXucLkEVPKQ4bdqOaV8Q=;
        b=H31lHqG1Zg3Rn6vcLsqSjVpEIlTnksefH1C/xLuTJhGjjocPN5KPI5NrFzdXhh5JWi
         Cxc85FlT8xNu8lqXohLokEm0vs3UmZ2tK4Bkbf5v7E5KtRjeCUjknX92MrWwUPK3kgoC
         RUzGWiPrRDd089dVRNofPFXWVWqzXHGMBjdd337IEHb40TcH6eC3jbKIUFSXUOaGstg1
         SKIhPLUuOBh2HnydS9qV3lA90eUt2RotVtDj1Mln/vZ+5W6NBdg0IUD+CdK3Wk83a6l3
         UVkB6hD9nU6ZwyGeKp4+CcvCB31uqnUGgf3tRDhZfEIpMFIYU2ilsv5a03X5+NVEWbiT
         LOUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fK8eLySSFZsuLDSadQsKAw1JXucLkEVPKQ4bdqOaV8Q=;
        b=sGXle/tUXEUqxMcte7oq6WVaT15n3QDfpO8xo6auNjETvH12nNwSwE2gX7CV2TkQsI
         lLx3fMtEI+zEhD1VhmBOI2cPlTdxeOC8+7uetpjV4k+vH9zMlvl5W6FBfnO+JWo32PNh
         wJZOlgmMzoRA5i7jqVwZ6n/NdV65QqOFxWkTKL/FkWe6O8ekPGhG7lj8FrAYo5jndGgy
         ZYQw2nVr0pXf876BNgRcKa8Zo1sO0w2y3GtVMAmnPwJThysHBRxLqELeIi9vWWdUDH+o
         hyhey5rW3cxr8Ahl/9Pp7Doco+mbL8OOquJKMjPF62ApCWN1cZJ/o6I4VW/OIvJypPLf
         eiGQ==
X-Gm-Message-State: AHQUAuaQzxA1tGeHkzUEUmb7mUtfZqh/+R1oUKlz13rCyfngmzxdZRPV
	AsGVf676uyBAVWHo+4WrHSrgQowJs2Q=
X-Received: by 2002:a65:6544:: with SMTP id a4mr20019504pgw.412.1551113690640;
        Mon, 25 Feb 2019 08:54:50 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id s1sm11821893pgv.30.2019.02.25.08.54.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 08:54:49 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: [RFC] Staging: rtlwifi: rtl8822be: Use __func__ instead of func name
Date: Mon, 25 Feb 2019 22:24:35 +0530
Message-Id: <20190225165435.12474-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix checkpatch warning:
WARNING: Prefer using '"%s...", __func__' to using 'rtl8822be_set_fw_rsvdpagepkt', this function's name, in a string

Use __func__ instead of using complete function name.
Avoid line over 80 characters

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/rtlwifi/rtl8822be/fw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtlwifi/rtl8822be/fw.c b/drivers/staging/rtlwifi/rtl8822be/fw.c
index f061dd1382aa..43a56962e37a 100644
--- a/drivers/staging/rtlwifi/rtl8822be/fw.c
+++ b/drivers/staging/rtlwifi/rtl8822be/fw.c
@@ -736,10 +736,10 @@ void rtl8822be_set_fw_rsvdpagepkt(struct ieee80211_hw *hw, bool b_dl_finished)
 	totalpacketlen = TOTAL_RESERVED_PKT_LEN;
 
 	RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
-		      "rtl8822be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
+		      ("%s: HW_VAR_SET_TX_CMD: ALL\n", __func__),
 		      &reserved_page_packet[0], totalpacketlen);
 	RT_PRINT_DATA(rtlpriv, COMP_CMD, DBG_LOUD,
-		      "rtl8822be_set_fw_rsvdpagepkt(): HW_VAR_SET_TX_CMD: ALL\n",
+		      ("%s: HW_VAR_SET_TX_CMD: ALL\n", __func__),
 		      u1_rsvd_page_loc, 3);
 
 	skb = dev_alloc_skb(totalpacketlen);
-- 
2.17.1


