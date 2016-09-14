X-GM-THRID: 6330208818541101056
X-Received: by 10.36.43.204 with SMTP id h195mr5672600ita.9.1473866593148;
        Wed, 14 Sep 2016 08:23:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.111.135 with SMTP id x129ls466544itb.9.gmail; Wed, 14 Sep
 2016 08:23:12 -0700 (PDT)
X-Received: by 10.66.85.104 with SMTP id g8mr2330314paz.33.1473866592712;
        Wed, 14 Sep 2016 08:23:12 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id um12si1266928pab.2.2016.09.14.08.23.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 08:23:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 128so928353pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 08:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=PxqsZl42sme3Z3Jd4ekbfzppdpmW7OAgZGfLjGkk81I=;
        b=joC0Bo1rSLnlq7Ub88uMg/jPu3dqOQIma9fGnY6lymFXtVcYgGBGi5THneh8O+fHeY
         C2AAgIYiI52XlIEkbBD64wcmbaTUbzSdhs6im+pEu/YdpIwvIJprBUAp6QCkPyLd6LiT
         eKaiuEiuZpi7UDRpTPRpYcuWTqpDC7jMRHgjNMug8dGA0nxAmg3ilMu1qNfiwu1LubTC
         sZoh7ZexdrqlJ3TOd+d0ozL2vbn4oo+g3r3iI2I94Qb4aFm1uc2866X7kYdylM5ILd+o
         YaWhjw6RXttkdQijIxCahmsqiZgPCPkbSDJGmnhy0PxkbutwHEy6sqcXobx/LI0I4Yky
         WOxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=PxqsZl42sme3Z3Jd4ekbfzppdpmW7OAgZGfLjGkk81I=;
        b=cBdcSUeXaIW6Y6WpZZrPLQYqekFh91Obi1gUXMfczvUu4+OJT/a87znHXvqld7sp5+
         7L7KTUKu+uSKhV3v3x/rq7YcATZsieNAS0DA3FRJnl5QZYBT98TZEFHzBXfb7jL58eMD
         DdnUjHh6+QK2Gsz49+e4Lp+DuiG6C5MSNGD8yToAAfEMzCNXN/kjLXrDc7LF3gqWa8g8
         GcAPXsJQRHqMwYBV9UvGR8e4q42RQebNwsUDT9YU84a3qhQoUijnoDON0Aw+dUkiClwr
         EULawnPUt4FpcQY17Ws3fIEiENyl8brBEARMnlZp77WUra0lCXxRvneflfVLOGAyxa6R
         sXqw==
X-Gm-Message-State: AE9vXwP5IarXx844EjrRE6UqFwiJSyczL7Y57yadJXGLnk6/x2PtYT1becil/iTMYEhc8w==
X-Received: by 10.98.141.219 with SMTP id p88mr5457029pfk.153.1473866592561;
        Wed, 14 Sep 2016 08:23:12 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from life-desktop ([182.71.113.22])
        by smtp.gmail.com with ESMTPSA id ra13sm6381175pac.29.2016.09.14.08.23.10
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 08:23:12 -0700 (PDT)
Date: Wed, 14 Sep 2016 20:53:01 +0530
From: Anchal Jain <anchalj109@gmail.com>
To: gustavo@padovan.org
Cc: outreachy-kernel@googlegroups.com, johan.hedberg@gmail.com
Subject: [PATCH 3/3] drivers: bluetooth: bfusb: Line over 80 characters in
 statments
Message-ID: <20160914152251.GA9916@life-desktop>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch remove the warning of checkpatch.pl Line over 80 characters.
to remove this warning break the statements into small chunks.


Signed-off-by: Anchal Jain <anchalj109@gmail.com>
---
 drivers/bluetooth/bfusb.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/bluetooth/bfusb.c b/drivers/bluetooth/bfusb.c
index 9ae179e..ac509b0 100644
--- a/drivers/bluetooth/bfusb.c
+++ b/drivers/bluetooth/bfusb.c
@@ -511,12 +511,14 @@ static int bfusb_send_frame(struct hci_dev *hdev, struct sk_buff *skb)
 	while (count) {
 		size = min_t(uint, count, BFUSB_MAX_BLOCK_SIZE);
 
-		buf[0] = 0xc1 | ((sent == 0) ? 0x04 : 0) | ((count == size) ? 0x08 : 0);
+		buf[0] = 0xc1 | ((sent == 0) ? 0x04 : 0) |
+				 ((count == size) ? 0x08 : 0);
 		buf[1] = 0x00;
 		buf[2] = (size == BFUSB_MAX_BLOCK_SIZE) ? 0 : size;
 
 		memcpy(skb_put(nskb, 3), buf, 3);
-		skb_copy_from_linear_data_offset(skb, sent, skb_put(nskb, size), size);
+		skb_copy_from_linear_data_offset(skb, sent, skb_put(nskb, size),
+						 size);
 
 		sent  += size;
 		count -= size;
-- 
1.9.1


