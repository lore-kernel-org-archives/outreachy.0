X-GM-THRID: 6671194147463888896
X-Received: by 2002:a9d:73c2:: with SMTP id m2mr6381134otk.338.1553258427874;
        Fri, 22 Mar 2019 05:40:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:6417:: with SMTP id h23ls1309093otl.3.gmail; Fri, 22 Mar
 2019 05:40:26 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxfcjHcms9Gn7fy2Wnlp1vfwbluosXm/96AMt92xbTqnIYEE6EG1WwYZrq0P4sxGeYX56zE
X-Received: by 2002:a9d:224a:: with SMTP id o68mr6869055ota.214.1553258426877;
        Fri, 22 Mar 2019 05:40:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553258426; cv=none;
        d=google.com; s=arc-20160816;
        b=M8PTURUIiZfPM+i1X2gGmKv/+C1rlg/upHcFLd/Rbg/m6axiokaKzSLGGqzPrE7EaT
         iBSUEX/Y74jqVB8NwcCs0C76UnCyoi6lViDowkJuNE+sxWbSeC23DQzmrC/plKJJLYUK
         7SfXGlSpytCJlMX3D3ks3rFQ7kEf3XPlfLIJENiZ6d8YHN93S0CJy5gyK8pxVe+/2m77
         QSordgC6xEU6OMe2qdzUD4K50S5Bu6mjFM/hfOoUJ0Hog2ApVE2bNTCvEiENRw/JBzMN
         tMPziorx4KrpuHt3C1IVcSnVkp8bXb440diWgeEZQuVkwpDUC2qR8uKJgwUnVD4PLZXx
         Bp9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=FHRcAln/gi4OksnXCj2S1uBN8NZzaJdHWR62gJ4Y9D4=;
        b=fnFVCtOceVnNV50qoyiW0bJAj4gBaaku4uRqqPYztqUr2v53bXeoh+5OZaXgtmAuQj
         cf3XkoqZ++Av8cHD3Uu9byzaKuTAM8RWUo05kvP8EWQo89Up4gOhWz7MTDSeTYuq4w7x
         zqsdeBVttu4GVycIGoRIrULkMU3l1oW8e1b3Hu4KUErkZ/h8Eo1uIynzCaq5kfmYdYai
         Qhh7WQ8/7tI0/dxkT5c95wrQi8seDqkkEOBaKt1W8vupIIcu25gH7dAPhyx+3hfr3i7s
         h18xOPCY6XApb9jcI6tWHBDlpFcuEecwo6f1LMMjiqJvoMdj6Gr4RxmSVznO37kPsOk+
         d5lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uAShUc0t;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id t14si200615oth.0.2019.03.22.05.40.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 05:40:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=uAShUc0t;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id i2so1439591pgj.11
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 05:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=FHRcAln/gi4OksnXCj2S1uBN8NZzaJdHWR62gJ4Y9D4=;
        b=uAShUc0txWN9M9mB0n+r6Lub90mCQGntEGnoBEAG6CHr2JovXfX9CIO05XRevdzqUR
         dJG6XYp7hAnCZeTtr9hK7vRPP9GKjmn+83ushCjRKDFh7Yl8z4uNT8u735pdtyIAIUdo
         fh4vkO1iSSmyCu4I6+a8qe84KAU+ZfPkqmpGNOiVVXRzQ443OgJ42aJgyLCOYXXztiSL
         UrWnv9XLrlFodMeg9iU5lyOKxe91r82Oedr/vO3WsVZykYq7vjuA+VhcdXwCpFUT+xhu
         EDSXYsJ+W/SQyxNkpsjLaNH6r/LPAjDd1Z7GN5CE95jCE9Rktd4v3j3TiK0hxcmGgwer
         mvOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=FHRcAln/gi4OksnXCj2S1uBN8NZzaJdHWR62gJ4Y9D4=;
        b=Bh1G9H7JKwx06jnZp3qA3VFR9s/tuQnXMNyEQh4Dig92R7bq7hQS41h0eVGOEozFbW
         SCYI08HIk0JQRyxfdK1UL1mYcnnOdMIbC+L36WgIXVI87sx6YGqmdf9+O2g/Cx22f84I
         TPUOC5lVTiFZHR8S5/Gyi/F0BOBL5g5o/YLXWntl/qrWyr5qeRdYj4mW4HkcwFZdMC/u
         9AMhyTkOLllNPRyzrtgHBrMDbT2Hrpk9goGJ0UD7E5w0IBMdfGu4ed0QktfCo0yz6Ft1
         L4nhoxrtvQEdC0zEI0ZsHf8tBPAwwhkRM7LGppxPKaKr1jasaR95vtOm+IVtkM3pv1Uq
         K4WA==
X-Gm-Message-State: APjAAAXk/kANHMebRazMRYVjEf3r5F5f9dOnOOKAkS2Ylx5TadJM+aCg
	peKrivUyEqcOfi9zTV62O4Ez2txfLgI=
X-Received: by 2002:a65:654d:: with SMTP id a13mr8971183pgw.181.1553258425989;
        Fri, 22 Mar 2019 05:40:25 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id p20sm11145984pgi.3.2019.03.22.05.40.23
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 05:40:24 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: gdm724x: Remove unnecessary print statements
Date: Fri, 22 Mar 2019 18:10:10 +0530
Message-Id: <20190322124010.7192-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove print statements that provide information about error messages
when memory allocation is failed.
Issue found using coccinelle
The following semantic patch is used to solve this:

<smpl>
@@
expression x;
constant char[] C;
identifier f;
@@

x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));

if(x==NULL)
{
...
(
-f(C,...);
|
-f(...,C);
)
...
}
</smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 3c2aab7a921e..db11498f6fc7 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -871,7 +871,6 @@ int register_lte_device(struct phy_dev *phy_dev,
 		net = alloc_netdev(sizeof(struct nic), pdn_dev_name,
 				   NET_NAME_UNKNOWN, ether_setup);
 		if (!net) {
-			pr_err("alloc_netdev failed\n");
 			ret = -ENOMEM;
 			goto err;
 		}
-- 
2.17.1


