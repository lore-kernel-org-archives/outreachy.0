X-GM-THRID: 6671577370158170112
X-Received: by 2002:a02:3b1c:: with SMTP id c28mr12728415jaa.5.1553378733323;
        Sat, 23 Mar 2019 15:05:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:da01:: with SMTP id z1ls3628674itg.0.canary-gmail; Sat,
 23 Mar 2019 15:05:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyfTaruvzHCvpbNcWNnqRfg5tldJtn7bGUzlAT3zKU444EXSrxqunBgd3XyJOc9/0h8DP+u
X-Received: by 2002:a05:660c:2ca:: with SMTP id j10mr3466541itd.151.1553378732260;
        Sat, 23 Mar 2019 15:05:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553378732; cv=none;
        d=google.com; s=arc-20160816;
        b=CA+AHa/cCc1KQPm4nsK/Js1YU9YZVuCca7AzvTgjfHluf26JrCr35kS/iSwn7TNwU4
         nZTu923UXY7hrkobCFI83ERNgDnFhIk+95JM7lAxuItstZ3ynyYfHEAYG7MqZWFKhRdJ
         mcTxagTQUv6iqbtOFZ++0eitSHhGzFNT9p9bgqAdxg4elp786T1OdEQeGIR3cuLn9cZT
         qwuf+jffPjkvPoIsY5dNj6dl5Ds6lxqQTzWitGH9zYj+JXBt63h1ZAWhPBLspGk0sd9/
         W/7KeFdhSRBi3gzqHT84a8/yemnfWvdnvce6ZE2NnRPl1W8vekjNTyJjZSYjpLvU9sJz
         qlNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=F2CD+A0k/ZHeqaLItJZFrrzbbXMpjTnD2dWufCK7jog=;
        b=NTUmzVfAHjPfUrLipa4g3dIm6azS8s/AMYVtQWamU/sHMFmboZjFVlPsxnnUBPtVXB
         eDpEjtD5UWypfOV+9Jb9JcjiRpSW/mtOCmLbo6narrBI1QSJb+A/I10zDUq4+5boFziL
         8g7EtlaJAmrK5w2P7DcC9A6+Qn9hCm2n3If/PL8YoxGaEWpnITyKwa/pl0hQxoIVx+g1
         LEwdpVwL47jdB24pJo29BRgZzMXEV4HoqLFQpXaOw8bRP6LGVJ5+VbIBWXOB5mFThGT6
         mpvsaEuuAhRkG6dNYx3MgXnja5elnrnHFNsr8At243/rHzRBVz6tek2xjeHt6KKvYPDE
         k7zA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RYuTF69h;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l23si578316ioc.2.2019.03.23.15.05.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RYuTF69h;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id p6so3841542pgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 15:05:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=F2CD+A0k/ZHeqaLItJZFrrzbbXMpjTnD2dWufCK7jog=;
        b=RYuTF69hf7BmRHX78aErK5kvsS3cRq40thrzkYfGPaV0g7gLZPfKC0YvuCqdJnak5K
         A+zOZYrSfmHA2awo1CV3717N+foE7GmvyQ4E+xR7a3Gf1xdC/qIof57awMI3ecRUYGhD
         cH7RAW6VQ9RnZonN6DT5YdBFwmL0MWPTFayiRHDsXGWNm6O5cCAvW4fK6zqvhR2pfOFL
         A3yD5Td3tLTdvN75yReRjDT0oSRc8dFyHz2joDvl6wu9/n1+rJ/r7TMo8fxSMn+Vw+i5
         SD9IHC/6YKV9C3FhqLe17vwcn46/p7sMRZmTracTEWSPRaUPCIrMpL77rCNLBhpYORIt
         KM6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=F2CD+A0k/ZHeqaLItJZFrrzbbXMpjTnD2dWufCK7jog=;
        b=KJoIZwy2wY37PwasWVa9K8EUns9P1IgDWWWonBDTX1GEaCOxKqnbgc4hUgPhrZ7mJn
         lAJziUQxKKfu1CtDwTm4h3YZ0SnPE6GFOaiA9m+dwy9mZILLUxmTD40BfTXky9Y0Ur5w
         OPjoiX93hBwZRsdT9+T8U2zh58OeKA30eNReJ8kDPZee3pcz+SkYeGxMAvS851TBFWCQ
         Gks+Lk1zbShKhSm/YaER1liAXpl69LuGD3UtHzwWBHZi+4wllYUZcYwVAARWC6VnDW6O
         P3bG8NDNuHuSnZ2xWpYyWQRhm1Y1oL/rcRoa6rDPwGdk25aITbwq/1+fM3IJrbwEjKdQ
         8mfg==
X-Gm-Message-State: APjAAAWpcRtwJtGs+TrP2E6o79I1pKE6krfs/5sensW6z0MFpRmmrGMa
	Smhjy26Hqf4rTjNglatj1lZ3B5JHA64=
X-Received: by 2002:aa7:9219:: with SMTP id 25mr16846210pfo.205.1553378731474;
        Sat, 23 Mar 2019 15:05:31 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id l64sm18139092pfj.179.2019.03.23.15.05.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:05:30 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v3 1/3] staging: rtl8723bs: include: Fix a space issue
Date: Sun, 24 Mar 2019 03:35:14 +0530
Message-Id: <20190323220514.9277-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Replace 'foo * bar' with 'foo *bar' to fix a checkpatch warning

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v3:
 -no change

changes in v2:
 -corrected the spelling in log message

 drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 1f53c1c7b0da..7d54cf211315 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -302,7 +302,7 @@ struct recv_buf
 
 	u32 ref_cnt;
 
-	struct adapter * adapter;
+	struct adapter *adapter;
 
 	u8 *pbuf;
 	u8 *pallocated_buf;
-- 
2.17.1


