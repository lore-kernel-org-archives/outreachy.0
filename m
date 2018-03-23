X-GM-THRID: 6536210357179908096
X-Received: by 10.176.82.157 with SMTP id v29mr13128914uav.61.1521830090711;
        Fri, 23 Mar 2018 11:34:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.176.8.65 with SMTP id b1ls1247517uaf.15.gmail; Fri, 23 Mar
 2018 11:34:49 -0700 (PDT)
X-Google-Smtp-Source: AG47ELuTwN0wevp1cpp6n24rDcSwC4SRlNrB+2NhzrVXrCaO3zYx4hWzRy4pcIXJLGTfGRSNylAe
X-Received: by 10.176.83.142 with SMTP id k14mr13001706uaa.0.1521830089697;
        Fri, 23 Mar 2018 11:34:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1521830089; cv=none;
        d=google.com; s=arc-20160816;
        b=FkuWUDoqJLOxd7SsZ2PkE9Yc6h4c/q6yoHtqvqw4ytFKjTvKX1hvKXjGkfrLYF3RI4
         MCtKqsy0ZiVR6r0VGVm7R1nesX8wcmpGHdh1CIW462IyBDtSduWSqt7/sjbPviwzBRYU
         XVO3rMoxqTIJdQxig4sEa3UqytMVyXUe4nvQ5MBxEipT2/p8Gio8jztnFM2tiUPECJxM
         s0EJ8/EMLVz7V8Xg4YTBaL6bBVG3TXZevr8PCiU81qh0cpe3v3Ra7KBaOLzhi2lDWep+
         WZoYvpQfbLZXcCzwX7fuM/eirGUTOJCLGqYHe+BTRux11ggFJ7mA5eVWNSFkAwCxq9hP
         IxaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=ARLR2vjBvgzricaKConhUn4pbf4sBwaHO4SG/MChIQk=;
        b=pjcMPq+E/XaJuAclIlHqA6VtMGvNGQ1PpxwnPVLJ0rplO4osPodf+oi/FumVPrEJCd
         XB5uuqMHDuU6ILfPx+PEoRrv68n/S7dX5zvR9J7XdzbellaZi0f81yjlyxPQEqpihOOI
         JqYiaCozck3almMotYgda9l4xN02qJl4+cfdLGdAOO64ZI0SM4G8dggybYRVtce7YXvK
         XejPc4/+pRO2eqUBZlqx7mhBwM/Q7t5AhERoRK+ONsEA314ml0augrVH2nMDp1dfxgjg
         plfb8naoclua9Gkv3r+WsTuJQnWvF1RiHBhTIoPEtdxNaUIGUvGls9Sl0dGXogjDYjqq
         jvUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EpI/RQoR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from mail-pl0-x241.google.com (mail-pl0-x241.google.com. [2607:f8b0:400e:c01::241])
        by gmr-mx.google.com with ESMTPS id q126si796155vkf.1.2018.03.23.11.34.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Mar 2018 11:34:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) client-ip=2607:f8b0:400e:c01::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@ashoka.edu.in header.s=google header.b=EpI/RQoR;
       spf=pass (google.com: domain of nishka.dasgupta_ug18@ashoka.edu.in designates 2607:f8b0:400e:c01::241 as permitted sender) smtp.mailfrom=nishka.dasgupta_ug18@ashoka.edu.in
Received: by mail-pl0-x241.google.com with SMTP id w15-v6so7948081plq.9
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Mar 2018 11:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ashoka.edu.in; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=ARLR2vjBvgzricaKConhUn4pbf4sBwaHO4SG/MChIQk=;
        b=EpI/RQoRJ3zUZgPvFWv+EZDuLr0F7mxsGubqKILPBV6203bOlL8vE3lz1/Vd7BUBEc
         RmFTM+FLVtZu84RX+tZbMF+M/1mZCofX66Nh8Fkap8uqJxO61A7Kdx7cUSMw6n1nPsgr
         fqEl1o3WGw2hLIyBzkKZ4GQEeUV4AkIa5MN1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=ARLR2vjBvgzricaKConhUn4pbf4sBwaHO4SG/MChIQk=;
        b=UakiyBsMD2ccQ6zC+i4Gqn67wWCpGqYu5KmJMTUuaKkP7h9PNPWY/3+3MzEMX8JbM1
         shKRFhX+YnaUDo+sgnmTiheVFTBZLv9MWRd5Y4Z1JfM2dSlM69nXoblA+mcYuwdX3lDf
         YW2L5UqcQuvj49Z4ssFT9HZ5/C0kWOJIQ4Q6XPrM7UkDsYa9vkyH6n0m0iNf8k+QBS2I
         vn+zC297sDIuihJEkXPdYSebZt8v+D47MSGlG507e0FkN/VIUXLrA1siQwlVhS/fefMn
         2FO4StEzrzGmtxZXwziU1aG+UtSPVtv4/iAwrsyqkRaLdWWtjMuFOZNffd4zLmU65oSJ
         cMtg==
X-Gm-Message-State: AElRT7EVtGclz1mwr28Sna7kehMS0yjVpCB7eDVGOws5aHpMvNtRX8jv
	PSl8XxLezfKoncOf+JLqr1ec5A==
X-Received: by 2002:a17:902:770f:: with SMTP id n15-v6mr15525957pll.92.1521830088672;
        Fri, 23 Mar 2018 11:34:48 -0700 (PDT)
Return-Path: <nishka.dasgupta_ug18@ashoka.edu.in>
Received: from localhost.localdomain ([139.59.85.247])
        by smtp.gmail.com with ESMTPSA id e14sm17799445pfn.180.2018.03.23.11.34.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Mar 2018 11:34:47 -0700 (PDT)
From: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Subject: [PATCH v2 2/5] staging: vt6655: Change CARD_STATUS_TYPE from typedef to enum
Date: Fri, 23 Mar 2018 18:33:57 +0000
Message-Id: <1521830040-7138-2-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
References: <1521830040-7138-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>

Replace typedef enum _CARD_STATUS_TYPE with enum CARD_STATUS_TYPE. 
Issue found with checkpatch.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
---
Changes in v2:
 - Make subject and commit message clearer.

 drivers/staging/vt6655/card.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index be5254a..f599624 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -46,11 +46,11 @@ enum CARD_PKT_TYPE {
 	PKT_TYPE_802_11_ALL
 };
 
-typedef enum _CARD_STATUS_TYPE {
+enum CARD_STATUS_TYPE {
 	CARD_STATUS_MEDIA_CONNECT,
 	CARD_STATUS_MEDIA_DISCONNECT,
 	CARD_STATUS_PMKID
-} CARD_STATUS_TYPE, *PCARD_STATUS_TYPE;
+};
 
 struct vnt_private;
 
-- 
2.7.4


