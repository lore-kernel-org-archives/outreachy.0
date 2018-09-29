X-GM-THRID: 6606665477713297408
X-Received: by 2002:a5d:46cd:: with SMTP id g13-v6mr366165wrs.5.1538236535115;
        Sat, 29 Sep 2018 08:55:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6b51:: with SMTP id x17-v6ls5161583wrw.13.gmail; Sat, 29
 Sep 2018 08:55:34 -0700 (PDT)
X-Google-Smtp-Source: ACcGV615uzGqjD1H85FxAYpkrBbNYkU/eSO8lMACCfo/Q+JDRgn7+OJQZalYQTGRvJo3UnCWAUXs
X-Received: by 2002:adf:ebc5:: with SMTP id v5-v6mr370120wrn.12.1538236534203;
        Sat, 29 Sep 2018 08:55:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538236534; cv=none;
        d=google.com; s=arc-20160816;
        b=fK7MvL+9nx1DjvvyOyYBfZWcoEUtl/f3d4cisnPBfa8v2raIzQjjzbICU0Y8re24fv
         WxOPP4TTiMbW8R07nFnuw3Z9VpaiNVtS14TrX4zCVJ+ruqyJBkgwoooUaT8hE1K/ESFT
         A0Gts9QKdrNJMgXr/i3D4ShW9BNJMeDMXfQFAbNpPZ7nHtZjaP+zrA4j3Dkxo200hDbW
         CVHhtiUsVWWzVu7/Y7+mPgx0r5lZ20a7ZqgUzUDVBbqUjoAOZiyYihEOuMsQG0zne7Xu
         izY7couFyPE0ZWktj/7FLN0Ae1Y1ZS0jFFoqVQBEY/aCZ4Vo/rfTPNAvYdX3bLYMi8Fw
         uUGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=UUY/LYuRb+LfUFq5aXaxcTUBUhQsuLk0eSOnUcjPFJU=;
        b=WdaGrJrDhX9ishSnXmEBLNV1PlzKg76rjwiyovx/qsB5xOqKskBKAGouREIawvp9GH
         aW/NmoJ3JJ0nyyTmBhSm59XdmH5godZ9tyF94Ud/vocRQj322dhnIS++SXZDUwxCbjcc
         2QBb4fTTVyt2RQ2iBNd30h2RBHHc7US+vGq/UeoNdr+pa9WqCeDaHUT6ZUuL3nS97RRA
         +6b3QCxvi8gPBukliBC+oc17K+pMVvyKDZNYc0ZhAJ+xf55QLL3EDuWvRzunPhD1sp1u
         GGH0RVyWoscBzsC73+eORKcE2x1m1Z6vxmRdjTw/BPM3QCPVyA6fPkRCeLOn5zCNBLuH
         9lGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sdQH1pAn;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com. [2a00:1450:4864:20::336])
        by gmr-mx.google.com with ESMTPS id l184-v6si187311wmb.1.2018.09.29.08.55.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 29 Sep 2018 08:55:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) client-ip=2a00:1450:4864:20::336;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sdQH1pAn;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:4864:20::336 as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x336.google.com with SMTP id r1-v6so3846440wmh.0
        for <outreachy-kernel@googlegroups.com>; Sat, 29 Sep 2018 08:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=UUY/LYuRb+LfUFq5aXaxcTUBUhQsuLk0eSOnUcjPFJU=;
        b=sdQH1pAnQhn8oTm8gCcENEgeGngFr9ksdT3EW0JABcfMV2mglACPGR2MLiq1TBWfyd
         +qhfE1anJ3RP6G3/OeQfpNdiiRbzplXKOcuP7qqXn4vjghFv/XzUrA8YNOUpBTyHBX04
         wYkX6VshhmeGAdUuU5lA+AvTTtPEei1o9iMj3lrWQA2dk6Zv8uklhCjVwnl0l9o+hEcj
         rWjoQTAxO+fjHwRRLebuy/odAYZvfrKVS3B1ZaqkSXCW2c6cN+8A7e1it1/GfGoBkeBD
         M9wwgL8Bd4ImZf0HSf5fcQv4ZI6L/afSdy1y7/G3j/Dx180MteGGjJzvBKcRkYwQx6jv
         1ksw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UUY/LYuRb+LfUFq5aXaxcTUBUhQsuLk0eSOnUcjPFJU=;
        b=YXR4ko1G0g3eS3IBH150Qt5BI45RYGKZd0BwWcSoUKX0M00EskmGNjSZiZ03OKOhCT
         p49hoFYHDNXgeCtGsXyt4mU7+DNI9ijyeH3G3bcqSEL3Nsct3Xxg6OLocKaI/NNco+3y
         Nv9Z23Potk9XlFfAoa1/q/+ikx0WkurY+nrpK/qDSMTvHtL7qlb5DijMwZjYRNE0ag9E
         dNhc3DQnolNq+QXG+pnN8uIKLQFJ83vAEU508PYIAhdThyNf42wkXshqlMTgxl43KJ1m
         azNSRbOxrJzetxgNG9HhIDa2Nf8vYxVmFeYrgkwMVTpXxfO+HfderGTjuLArX/x1QTgF
         IYZA==
X-Gm-Message-State: ABuFfogJ9/+l3tKFTP7ZiYrTWcvoNZyxUFHlVb7H6lxb4P90NFE64pvz
	Y4tO81l46gGQ8WitkPsYH+k=
X-Received: by 2002:a1c:6308:: with SMTP id x8-v6mr4269716wmb.99.1538236533844;
        Sat, 29 Sep 2018 08:55:33 -0700 (PDT)
Return-Path: <dafna3@gmail.com>
Received: from vdoo.home ([77.127.1.188])
        by smtp.gmail.com with ESMTPSA id u23-v6sm11286687wrc.42.2018.09.29.08.55.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 29 Sep 2018 08:55:32 -0700 (PDT)
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	dafna3@gmail.com
Subject: [PATCH v2] staging: rtl8712: Remove unnecessary parentheses
Date: Sat, 29 Sep 2018 18:55:08 +0300
Message-Id: <20180929155508.26886-1-dafna3@gmail.com>
X-Mailer: git-send-email 2.17.1

Remove unnecessary parentheses between 'address-of' operators
and struct members.
Issues found with checkpatch.pl

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
Fix small typo in the patch body

 drivers/staging/rtl8712/rtl871x_io.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_io.c b/drivers/staging/rtl8712/rtl871x_io.c
index 3a10940db9b7..1f55704d55fb 100644
--- a/drivers/staging/rtl8712/rtl871x_io.c
+++ b/drivers/staging/rtl8712/rtl871x_io.c
@@ -68,7 +68,7 @@ static uint _init_intf_hdl(struct _adapter *padapter,
 	set_intf_option(&pintf_hdl->intf_option);
 	set_intf_funs(pintf_hdl);
 	set_intf_ops(&pintf_hdl->io_ops);
-	pintf_priv->intf_dev = (u8 *)&(padapter->dvobjpriv);
+	pintf_priv->intf_dev = (u8 *)&padapter->dvobjpriv;
 	if (init_intf_priv(pintf_priv) == _FAIL)
 		goto _init_intf_hdl_fail;
 	return _SUCCESS;
@@ -92,7 +92,7 @@ static uint register_intf_hdl(u8 *dev, struct intf_hdl *pintfhdl)
 
 	pintfhdl->intf_option = 0;
 	pintfhdl->adapter = dev;
-	pintfhdl->intf_dev = (u8 *)&(adapter->dvobjpriv);
+	pintfhdl->intf_dev = (u8 *)&adapter->dvobjpriv;
 	if (!_init_intf_hdl(adapter, pintfhdl))
 		goto register_intf_hdl_fail;
 	return _SUCCESS;
@@ -135,7 +135,7 @@ uint r8712_alloc_io_queue(struct _adapter *adapter)
 		list_add_tail(&pio_req->list, &pio_queue->free_ioreqs);
 		pio_req++;
 	}
-	if ((register_intf_hdl((u8 *)adapter, &(pio_queue->intf))) == _FAIL)
+	if ((register_intf_hdl((u8 *)adapter, &pio_queue->intf)) == _FAIL)
 		goto alloc_io_queue_fail;
 	adapter->pio_queue = pio_queue;
 	return _SUCCESS;
-- 
2.17.1


