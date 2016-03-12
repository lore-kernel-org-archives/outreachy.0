X-GM-THRID: 6261204257874116608
X-Received: by 10.182.65.135 with SMTP id x7mr12036722obs.13.1457800538538;
        Sat, 12 Mar 2016 08:35:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.21.138 with SMTP id 10ls2559194qgl.13.gmail; Sat, 12 Mar
 2016 08:35:37 -0800 (PST)
X-Received: by 10.140.181.198 with SMTP id c189mr11526734qha.24.1457800537836;
        Sat, 12 Mar 2016 08:35:37 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id sf5si2169917pac.1.2016.03.12.08.35.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Mar 2016 08:35:37 -0800 (PST)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id 124so105337817pfg.0
        for <outreachy-kernel@googlegroups.com>; Sat, 12 Mar 2016 08:35:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XgVYyaMUhE7F5WMP5v/Gx0Qid6t8NCNl1zRNsgTBm6E=;
        b=py4958yVDwJzi9H9geKYeBE6y0zsfZDQhlwl7r6bBIevRa13IEuz2qAIz/USEGNvMH
         92G5BrrCEAEu0l8oWOSs5uXwm96M/kfnVw52CYhAu2q4iyZU6WJ8zbTJ9ps8Z397BCVE
         l5q7mQJjZizhXEz04Jb5eRtdA8z20i6DDuuqB+D+13n5QdSpxvww4UmythSUm8vayVnX
         ZXn1BWYmKn/PQQZC4X24iWbbY0agC6p3eAWZ+2+G2uPwVAgDClr9NbxYaweBmustAKKf
         a0Ftm943t+a9Q/5OLHZIZrjDtMjvu3aNYo/5ekgbIh4jxUJf9UvxKerSW/5AbCrnnrIU
         IPZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XgVYyaMUhE7F5WMP5v/Gx0Qid6t8NCNl1zRNsgTBm6E=;
        b=UwcBzj4xfsN1aFdGRNb00+9TB3p/vRQO2pEdycQOyAwh2Fwb0rEGzNO2vZSc+Fpq2h
         hn43Wkd0jljIYYyEf9St0N98ncw4QSpSKoQfS4nxC1AhSwBwOTOaPzdk1wgzn19yrzgh
         ZWjk38bS6MMiYnceNeLJhr903ut4smTRmiA1hsKZsamXu10yEr8ft+//T2/96h3+5/5r
         URoH+HgmfqXzZBkjZH8vDbdgTv1E6MgW0gBbLhZ+yBzHMzej7adhEJDMN9BZFzHFVx93
         gSP4BlPmW9LRZDXZvloKhjuODiYnYx3RbB+BkbfYo+/AjgHKDuGDbDHNUBG5FdylS6NQ
         R2dw==
X-Gm-Message-State: AD7BkJI6VJ0pfYIXgYlcdrWeIvtNlJEbQ1WlONEiImcW4AMKNmSP7Jg5ozX43FmHACNUhg==
X-Received: by 10.98.11.70 with SMTP id t67mr17093669pfi.109.1457800537637;
        Sat, 12 Mar 2016 08:35:37 -0800 (PST)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id wh9sm20884407pab.8.2016.03.12.08.35.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 12 Mar 2016 08:35:37 -0800 (PST)
Date: Sat, 12 Mar 2016 22:05:23 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] staging: wilc1000: Fix line over 80 characters
Message-ID: <c3f9bab453a9629d972faf3dacc03739cec1bb75.1457800084.git.anchalj109@gmail.com>
References: <cover.1457800084.git.anchalj109@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1457800084.git.anchalj109@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Break lines so that they do not exceed
80 characters. Problem found using checkpatch.

Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index 55f626a..420f923 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -76,7 +76,8 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 
 		memcpy(skb_put(skb, size), buff, size);
 
-		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb, sizeof(*cb_hdr));
+		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)
+				skb_push(skb, sizeof(*cb_hdr));
 		memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
@@ -105,7 +106,8 @@ void WILC_WFI_monitor_rx(u8 *buff, u32 size)
 			return;
 
 		memcpy(skb_put(skb, size), buff, size);
-		hdr = (struct wilc_wfi_radiotap_hdr *)skb_push(skb, sizeof(*hdr));
+		hdr = (struct wilc_wfi_radiotap_hdr *)
+			skb_push(skb, sizeof(*hdr));
 		memset(hdr, 0, sizeof(struct wilc_wfi_radiotap_hdr));
 		hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
 		hdr->hdr.it_len = cpu_to_le16(sizeof(
@@ -206,7 +208,8 @@ static netdev_tx_t WILC_WFI_mon_xmit(struct sk_buff *skb,
 
 		memcpy(skb_put(skb2, skb->len), skb->data, skb->len);
 
-		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)skb_push(skb2, sizeof(*cb_hdr));
+		cb_hdr = (struct wilc_wfi_radiotap_cb_hdr *)
+				skb_push(skb2, sizeof(*cb_hdr));
 		memset(cb_hdr, 0, sizeof(struct wilc_wfi_radiotap_cb_hdr));
 
 		cb_hdr->hdr.it_version = 0; /* PKTHDR_RADIOTAP_VERSION; */
-- 
1.9.1


