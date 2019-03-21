X-GM-THRID: 6670775927443554304
X-Received: by 2002:a0c:ae7d:: with SMTP id z58mr764680qvc.11.1553161052925;
        Thu, 21 Mar 2019 02:37:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:110f:: with SMTP id c15ls2057761qtj.3.gmail; Thu, 21 Mar
 2019 02:37:32 -0700 (PDT)
X-Google-Smtp-Source: APXvYqz+VH+J5PAIsCrLATTSsj5/xLqIZw3XKm7XkzCBEMM1CWo3eTkEq2PaTpFGyzrLPBXb8kTc
X-Received: by 2002:ac8:7003:: with SMTP id x3mr805300qtm.56.1553161052340;
        Thu, 21 Mar 2019 02:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553161052; cv=none;
        d=google.com; s=arc-20160816;
        b=faoD9x1dT72vFUdF2oL5quzg49YYfCxETy7imgrvL7Eg4retmVBdv3HnQ6/R5fyqdS
         I9JXcRO/62vgx6VvWB6VTU962sunB+WWKEEZfIrmDJQMSzbkUiYXEyIQWYA+GezkQVCL
         b2jWq6CnvTK92HA3PbPeE5S6Yyc5gT7cT17Z1NG3nGvZ1Qnhcl/w/tsJvW7argXhEvYt
         rQZI4+Pb3Q4ni8+yLsO4OSADpGDlKwPi7+/h/nnjZ34ljcDigO5E2yCDpusQ6KfeuIAm
         ZGIIrwjVDAWT/RRNRuYgwgdNgeD3NpKeIY9RNWoIx+83wEePxJUOStC2hsE4L7ELL/MT
         Jtww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=1CZ9U+CQo/gzyzdbmzAbYUOyv7hSkrJYXU1ynBAOkwI=;
        b=V5zmoFZOFt1Ga/9ReYXQhYGvAXmNhPGnU2JzivzMrdPZ7hH0p4xLMTS4/j1yT+YaHB
         tR49k55LYJeG/GNneB2GomTmh4FUKKwkkN9zmDwp1hhkoPBLo6ayYrlepWC3iaSoL2ho
         Tp13PSwwFHR0godDzpkzOirPO4GyozDfW8IRMaIhrVh8KhU6MqXo4xaRPS2qCBnMH1Cx
         A55cr9Tj+9iN2EqA55RyBtn2YWi9TbSCMJvutb2RE1Fz4ZygDzeLU7DnvhbVudgLSCU0
         fe86ZWSUybYXonLspW65tJIlesQjoVJqQaaj9EFUezMMsXRqfuZ3QxovnRaxl2ZCRfBf
         3TYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DlTPGcII;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p1si313608qkg.3.2019.03.21.02.37.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DlTPGcII;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id c207so3939519pfc.7
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 02:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=1CZ9U+CQo/gzyzdbmzAbYUOyv7hSkrJYXU1ynBAOkwI=;
        b=DlTPGcIIGvQy0+zBI4+0Ggs2hcH4AYVvwW11tnwPvUVcxjdQpH2VPlw5UtSyzJGdAZ
         PeSeBo4/ovyLqNoaELvG/MS20buf82i4VQAdopmA9tlzokkrIxai1Cc4t9cMve1nWiau
         kLcvZjbNtIbCBLfs6fhM08jgMkSfejALrfMilLzYzatT9K/zOx9XqWaHqfJMUAUvxFbP
         KywDmgUv1Gy5aTTq+zn5o6pagMu2ntiviP8r1JBFqUY6SuScyMJ5luHv+jFJ+pjqG0Fx
         cupVoNz+gycsp6nhcaGMNe4Awsk08W2Op4SfRaDs2kz08VzOi9KA+MNZKOlxP0uFmo/U
         QsLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=1CZ9U+CQo/gzyzdbmzAbYUOyv7hSkrJYXU1ynBAOkwI=;
        b=Y5uM7paEenLoCzJG4dHczbiMAc22eV4LbVlWRN7tBA3LqUj19SSVxRpru+BWNcgE4f
         jb72DkqQgX0/aciT48jKC06J2EiKHfp0gb+qkGjs1JGcxox9oislQc7HujIvPiF24edH
         BMUMGKKK9DNcsW3XBl4Og/eY67Wh7nBkqzadFBiT8eNXVn6U8Yzu/Ek0Mh8VW6qLbjlg
         vs5XrtfMyLXCQVXalZDRiUgnR9W/ONQdnkSoVzeyO8t4OwVaW5T3PNOw4B0uPw6H00SH
         e+V3rkW1Iocvp5utW8q4koTZslzuq2XzGPQwv4QF1TuPWnVbvG6EqwH5DWQbPP+CpDR8
         tz8A==
X-Gm-Message-State: APjAAAWyzwdgsKjwPVum3zplKVzDr6tcE3qYQoG7QWyzx3q/csdfHmMJ
	GafUw760J8Fx3gyMmbjhIa01FB14D/E=
X-Received: by 2002:a17:902:aa87:: with SMTP id d7mr2505924plr.146.1553161051372;
        Thu, 21 Mar 2019 02:37:31 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id h64sm2549858pge.7.2019.03.21.02.37.29
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 02:37:30 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Gao Xiang <gaoxiang25@huawei.com>,
	Chao Yu <yuchao0@huawei.com>
Subject: [PATCH] Staging: erofs: Use !x in place of NULL comparision
Date: Thu, 21 Mar 2019 15:07:16 +0530
Message-Id: <20190321093716.8236-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Test for NULL as !x instead of NULL comparisions for
functions that return NULL on failure are used.
Issue found using coccinelle
Semantic patch used to solve the problem is as follows

// <smpl>
@@
expression x;
statement S;
@@

x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));

-if(x==NULL)
+if(!x)
// </smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/erofs/xattr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
index f716ab0446e5..515b4b446491 100644
--- a/drivers/staging/erofs/xattr.c
+++ b/drivers/staging/erofs/xattr.c
@@ -107,7 +107,7 @@ static int init_inode_xattrs(struct inode *inode)
 	vi->xattr_shared_count = ih->h_shared_count;
 	vi->xattr_shared_xattrs = kmalloc_array(vi->xattr_shared_count,
 						sizeof(uint), GFP_KERNEL);
-	if (vi->xattr_shared_xattrs == NULL) {
+	if (!vi->xattr_shared_xattrs) {
 		xattr_iter_end(&it, atomic_map);
 		ret = -ENOMEM;
 		goto out_unlock;
-- 
2.17.1


