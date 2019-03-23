X-GM-THRID: 6671642851007266816
X-Received: by 2002:a24:36d4:: with SMTP id l203mr3290049itl.143.1553378760727;
        Sat, 23 Mar 2019 15:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls4444084jaf.3.gmail; Sat, 23 Mar
 2019 15:06:00 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyTnBWGFhVBlT9Cph9w9RxKElP3+wWPEuiSN1XPZIfKsnq7aj7MVAeWkS4Vj+S0gC+IOxwi
X-Received: by 2002:a02:924d:: with SMTP id y13mr3359825jag.24.1553378760063;
        Sat, 23 Mar 2019 15:06:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553378760; cv=none;
        d=google.com; s=arc-20160816;
        b=aKp9nzlGH8i94GMHzFRmyuxNCS7/ZMsa8NA+Ozn9lk8CfWJl36N89X7m0aS7DynwYA
         BVIiAv4uQTaKrMVjiWPCLbPMYqe7SgW6368m2oNTgu4mfgxGzYjvbdXkhbDT3jRhUatK
         DhSEDHf3UCBUH5bLhnlTDka51I9W/sb+veLg2H8FCNXBEREwLhjdb0jCUY0c4q/W2r+9
         sXJVgM8ZKJvF+AogsFsrzAAI52LyTgBBCV5c1wMoJZnLRUxmNGkFw8KlTfqyrBRJDS3I
         zyBPL8ON6wPFXFT63nTPmmgsL2aMHM5CEPiwUWRSsBsmeHuETIuBdLZQUzYNNlEzF9LZ
         5qxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=G1bZ048Je8bMKO2hvP+uSVQy2IwpjgO2dHVjTARHyD8=;
        b=ctR9hvCI7553rXwRiQ0j+3/tsBsql0hiVBABDrW5Uqv6cDtGqhhekdLEk/VXKxkAMM
         fa5NIUQ1pPdABJRIQQN/9u+6M+9TaCSO4+/K2EfdnmQu7tm03eTY1CKjyrKEeZXFfyPw
         a/81I6CPwIMuUVEtCX8zP/6GKrksgr1hzYdnLNgcmeUVXzJP+b775S2nHtb0uhNQysRT
         9mpv0R9d7nvem9SPYjxzHEoUEHGEYLERABlGCR8to6gamCFIIU6DLyRAkAASzZKUvUpA
         yT8TTGnMVtsxpaTjm51Bp0N6ASwah5uif17BijSajUjL6WyKvc9l6g8567cQQyHCqVWP
         M9nQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hBOMJ1t0;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <vatsalanarang@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id l23si578316ioc.2.2019.03.23.15.06.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:06:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=hBOMJ1t0;
       spf=pass (google.com: domain of vatsalanarang@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=vatsalanarang@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id p6so3841542pgh.9
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Mar 2019 15:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=G1bZ048Je8bMKO2hvP+uSVQy2IwpjgO2dHVjTARHyD8=;
        b=hBOMJ1t0uZ7a+PlSpRevuJdD95Z6NSdRpHuzjqakAhhq8JRxpi4vbVyuooD3+Znsst
         J+u7RwF/wI1Fe72U0c0G6Dm4WgUp8tPn9deAIJeX4abk2jqRUVlSUSQp34QAUelvhzI6
         JGw1VIVuWiq2Sj6/g3e9gi0FumYkVlxJlfdINRW4ePieeMUuUY96pgk882FI2dBcTuU4
         APqNpotfaToqE4Ed2EmT7IhwIomPtqmGFkIWM7+Ge+e2q0QMj4ehKw9Dw95OhEd7xuzk
         SvFYBhOo1fV/O+WX/JIqdx+OGntznhnUuTj4Qo8kvhVf6TwJkJFqwvgZOyG8tljFqhaa
         YK4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=G1bZ048Je8bMKO2hvP+uSVQy2IwpjgO2dHVjTARHyD8=;
        b=QtcvWT7qHmBSqvrUc8vvGeW25eLQw1B9wlpJYdM2ECURM5zUjKUokK/vf/Adp1NO7t
         lq0JTXCz4UWoB4eboLk/ihjTfFw/puSsxVBmhZqFqsiL9jcaWuZY1mYiFP7C5DqZziE9
         BVQyy4C4UIMX6Kll02HpI1wxkdxRPOMbrS0mIF0mqjqvznn46SCONVvWdx3ojn+4KNnu
         qDdlv9WLYUJ+vAajvQNjfLwZ1+yTdT7Rj4t4yCLV1SfqUlxVbyAO5xiQ84w00atOSlK4
         gcW8rnTR9t47/I9S/PITCs/ALRr9KTmhLgR68hWB0nYmqM33vKj2lt9/cX08VCP+Ix3T
         IH+w==
X-Gm-Message-State: APjAAAXnafzykIgQMcielQvsM2WkL0JAQhGarBrp5lL+VKUgoGu6pjvV
	duXhInYI9EITOmQf9WX/WXsvdJo5RBA=
X-Received: by 2002:a63:3f8b:: with SMTP id m133mr15593801pga.91.1553378759615;
        Sat, 23 Mar 2019 15:05:59 -0700 (PDT)
Return-Path: <vatsalanarang@gmail.com>
Received: from localhost.localdomain ([103.87.57.188])
        by smtp.gmail.com with ESMTPSA id r82sm21180928pfa.161.2019.03.23.15.05.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Mar 2019 15:05:59 -0700 (PDT)
From: Vatsala Narang <vatsalanarang@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Vatsala Narang <vatsalanarang@gmail.com>
Subject: [PATCH v3 2/3] staging: rtl8723bs: include: Eliminate p
Date: Sun, 24 Mar 2019 03:35:42 +0530
Message-Id: <20190323220542.9331-1-vatsalanarang@gmail.com>
X-Mailer: git-send-email 2.17.1

Getting rid of p's from pointer's name

Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
---
changes in v3:
 -no change

changes in v2:
 -added this to patchset

 drivers/staging/rtl8723bs/include/rtw_mp.h   | 2 +-
 drivers/staging/rtl8723bs/include/rtw_recv.h | 2 +-
 drivers/staging/rtl8723bs/include/rtw_xmit.h | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/include/rtw_mp.h b/drivers/staging/rtl8723bs/include/rtw_mp.h
index bb3970d58573..a2fe98153297 100644
--- a/drivers/staging/rtl8723bs/include/rtw_mp.h
+++ b/drivers/staging/rtl8723bs/include/rtw_mp.h
@@ -44,7 +44,7 @@ struct mp_tx
 	/* struct tx_desc desc; */
 	/* u8 resvdtx[7]; */
 	u8 desc[TXDESC_SIZE];
-	u8 *pallocated_buf;
+	u8 *allocated_buf;
 	u8 *buf;
 	u32 buf_size, write_size;
 	void *PktTxThread;
diff --git a/drivers/staging/rtl8723bs/include/rtw_recv.h b/drivers/staging/rtl8723bs/include/rtw_recv.h
index 7d54cf211315..b4ac00e2ba43 100644
--- a/drivers/staging/rtl8723bs/include/rtw_recv.h
+++ b/drivers/staging/rtl8723bs/include/rtw_recv.h
@@ -305,7 +305,7 @@ struct recv_buf
 	struct adapter *adapter;
 
 	u8 *pbuf;
-	u8 *pallocated_buf;
+	u8 *allocated_buf;
 
 	u32 len;
 	u8 *phead;
diff --git a/drivers/staging/rtl8723bs/include/rtw_xmit.h b/drivers/staging/rtl8723bs/include/rtw_xmit.h
index 1b38b9182b31..6e4e047ad5cc 100644
--- a/drivers/staging/rtl8723bs/include/rtw_xmit.h
+++ b/drivers/staging/rtl8723bs/include/rtw_xmit.h
@@ -252,7 +252,7 @@ struct xmit_buf
 
 	struct adapter *padapter;
 
-	u8 *pallocated_buf;
+	u8 *allocated_buf;
 
 	u8 *pbuf;
 
-- 
2.17.1


