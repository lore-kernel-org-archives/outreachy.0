X-GM-THRID: 6332145686814916608
X-Received: by 10.129.169.6 with SMTP id g6mr5080896ywh.126.1474317555169;
        Mon, 19 Sep 2016 13:39:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.171.198 with SMTP id u189ls3671434ioe.5.gmail; Mon, 19 Sep
 2016 13:39:14 -0700 (PDT)
X-Received: by 10.107.190.71 with SMTP id o68mr5077826iof.58.1474317554307;
        Mon, 19 Sep 2016 13:39:14 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from mail-yb0-x244.google.com (mail-yb0-x244.google.com. [2607:f8b0:4002:c09::244])
        by gmr-mx.google.com with ESMTPS id v21si1513350ywa.7.2016.09.19.13.39.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Sep 2016 13:39:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) client-ip=2607:f8b0:4002:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of juliana.orod@gmail.com designates 2607:f8b0:4002:c09::244 as permitted sender) smtp.mailfrom=juliana.orod@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x244.google.com with SMTP id x93so5229523ybh.0
        for <outreachy-kernel@googlegroups.com>; Mon, 19 Sep 2016 13:39:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=P6lF3dgchzFgSy6nL1LP7ufjEDgGoavKLjpAA06bJeo=;
        b=neupcOTmpj96duJORG0GyUk5IfNOdlSE9q7kvGfAwq8Jg5uu4MNuO2Q2f0cbSoIWqN
         08bd87Dbq2zs8qIcL6bPWXuh0tZxlQ2eEK/9boS7ygSxA1VTDDS8FVU0umZEBHUNN5Tu
         g80kXlsuDFTI17Em+FdFmWuDwjItYeAf+KdU0swlIc+gKhYDYugMcm7dMteXYlVo4imT
         58nrQE9fC2f+sQChAfzUtsX8Jg8L81KLet60lONjHTWAXl68qlylEBvGgtjhwhBcoPaP
         p9VnXSmN4EeMQN/OjKm8B1vcRJhbS0x8AaAtWMMOOc0ZUTxuYTcd9wEaXaz4zg1C9rul
         recw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=P6lF3dgchzFgSy6nL1LP7ufjEDgGoavKLjpAA06bJeo=;
        b=OU03DPVh50+5pcPFwl3R7MaOlF7C8I9CKZL4CR24sugRl3d7pw1CsKonPx2Z3VAWqq
         dRDbLMjmRgmOPb/QM4oVn3hJwO66F8AoigbHpfqr13OMOt5+wUfuqa78dooyqSXkK/Rw
         QTYGIzpjSFq6sJOWSkHcuYCB0rWTPHARyHOTcGGaJg95eDFxS7rIR5tU3jo2r+TxT4Vc
         53A22fkBv3YobMHkAnMLAVNX8lX6l9sdBuVyK1LdGO1V6E8VUee9pypHh+gLAoiCCBNF
         sFDHUqEUJJTetTf4DyMexv1c1+wuwp9p8zyny6LqGSxLPz0OWoQu0hlfoYDnjkZBv1CV
         hA9A==
X-Gm-Message-State: AE9vXwOyhH4P48NlYbyCzvOVOBikJy7jg213rpIgF7g+IZ5bqng4eAFjgmYW/t7yFsKF4A==
X-Received: by 10.37.171.114 with SMTP id u105mr5467422ybi.93.1474317553919;
        Mon, 19 Sep 2016 13:39:13 -0700 (PDT)
Return-Path: <juliana.orod@gmail.com>
Received: from spock ([189.61.236.196])
        by smtp.gmail.com with ESMTPSA id w125sm10135808ywa.22.2016.09.19.13.39.12
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 19 Sep 2016 13:39:12 -0700 (PDT)
Date: Mon, 19 Sep 2016 17:39:10 -0300
From: Juliana R <juliana.orod@gmail.com>
To: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: wlan-ng: fixed block comment formatting
Message-ID: <20160919203910.GA12211@spock>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.7.0 (2016-08-17)

This patch fixes a checkpatch warning in
a block comment by adapting it to the community
preferred coding style.

Signed-off-by: Juliana R <juliana.orod@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index 87ceebe..225cd64 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -110,7 +110,8 @@
 #define		HFA384x_ADDR_FLAT_CMD_OFF_MASK	(0x0000ffff)
 
 /* Mask bits for discarding unwanted pieces in AUX format
-   16-bit address parts */
+ * 16-bit address parts
+ */
 #define		HFA384x_ADDR_AUX_PAGE_MASK	(0xffff)
 #define		HFA384x_ADDR_AUX_OFF_MASK	(0x007f)
 
-- 
2.9.3


