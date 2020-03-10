X-GM-THRID: 6802680075948916736
X-Received: by 2002:aa7:c80d:: with SMTP id a13mr24167012edt.341.1583872380492;
        Tue, 10 Mar 2020 13:33:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358b:: with SMTP id o11ls4560041ejb.3.gmail; Tue, 10
 Mar 2020 13:32:58 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvkVNZ/YwpDkujgTIBWZOFwNQerKreLMV+gEssUnfJk/RbBy5gZn3juzoYK+QzDGp0zUUrU
X-Received: by 2002:a17:906:9157:: with SMTP id y23mr21127469ejw.85.1583872378707;
        Tue, 10 Mar 2020 13:32:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583872378; cv=none;
        d=google.com; s=arc-20160816;
        b=Sp+h3l9GO8JifKbjGWX9XcvWBR6COohQZgmQGRVM0c7h0s4dSh4GGtKtS7s8w4a8SW
         1VggoB3P6tlw+cxyANn9o77TNSsvPILLhhkpiyQCDuJFbDH6hE2GqcFvlAty7k9blx9y
         lnDbjYI3Dp/mo2F/hNIeVx+X312VqT02mljnbHfTx4IQ80BrOhfEEU3wGgbRtZcNd3rZ
         hwqugkco2j9L+eZB+j68ykvPyxiCONzSqWcUVDw+37DrEP/ySslj18ohkbDYifePJpwO
         g0OVncU+Wgc1GvuY7B32FeGwq6Ub5Ng9RfidPQk5MS5EamB11I0TGKZDlNcUTU3wSkma
         6L6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=+1QX4gPykpekh16Y1V+QyzSeK7p7mW+0QCtFWRYQcQA=;
        b=irks2czCWqXRvowAwNKzEwPtDTHPjX+YuOPQjyJFveMfi7GQ5BZ1Ua+hqJnWqWVBKL
         8zyEuF6Nnl8Guu6MtPorLrLfVYcYp3pueWmao/8aO9X43NZ8FNFhqjvtqq3Rq8WQf6BO
         zgfQuHTctGaJgDmOtN8ZxTJstr+p3mjJz2I04TQE+59wNkDO1sQkInvyn1UK9a01T+DT
         ZTKh468UujZaMFqdgvwoANzqY2qtXfs4fmgMIIAEfh3nA8jaUp9NTsgv06nXkQjz9+Hg
         SBFQ0ZLOTWWe6lxKGu3KlYFdBL/bzV3/qAJKkHmgcpXIqh89/5DkWZb2h+sF9E6N5PBM
         poqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=feJ+fKiJ;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id x7si1726ejw.0.2020.03.10.13.32.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 13:32:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=feJ+fKiJ;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wm1-x343.google.com with SMTP id f7so2871531wml.4
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 13:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=+1QX4gPykpekh16Y1V+QyzSeK7p7mW+0QCtFWRYQcQA=;
        b=feJ+fKiJjyh9hXPi6Ie1tUk7XnbRrVL3UM7OFeSbdwhPEjWhxd3wFfluSBAkwo+k51
         Mc3C+q/OJAr1n8WT4k3SWffPlKmT/XAObTxB/Of+kGEVS7qVhGGBNBSnce1OY+qkKn2f
         qOoZOD50FUdezC99nzvIHeXdxHKIEVbM1R4f0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=+1QX4gPykpekh16Y1V+QyzSeK7p7mW+0QCtFWRYQcQA=;
        b=iEqJpAt7eRI8mLEz53jV40SFfnuUMSpbdtQTKtoAC/wpHzmG5A6PrZhhmo2HsDCOq2
         RMnz+EfuPcIFGzieavvESqAuVwU6wtt2sKq4IOiJiM94ANGl4U9+kxxAl129PIRxPaDD
         zd0zcqvQWYlXYZlOSe7fYTNLkhqF9F5+xAt/h1ZDIPIKvHqjerH4EuJ173onBbQCV1ka
         yCnYDpC92oSoui2qlc7JatVmVe4u6NRFHf68fmsS8U/saOW4AIUTBKgkHPQ7BT1FXQ1d
         tj5iYcOwrv4IL3TZoWccugX6rJgvFG5jpUOW1l9/IMa/exKAy1YwdrorTfG9cI5E1EPp
         gOWg==
X-Gm-Message-State: ANhLgQ06LwNYCAYZTKhZM0mRugL1lQSUTK367oi+rtybVOkcyLt8QOWo
	Uda2ZVBOsUunQTHKyoT02r252dE3dvNhgA==
X-Received: by 2002:a1c:a950:: with SMTP id s77mr3758559wme.176.1583872378136;
        Tue, 10 Mar 2020 13:32:58 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id k5sm3103228wmj.18.2020.03.10.13.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2020 13:32:57 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: rtl8192u: r8192U_wx: use pr_warn instead() of printk()
Date: Tue, 10 Mar 2020 21:32:51 +0100
Message-Id: <20200310203251.2961-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

printk() is deprecated, use pr_warn() instead. Change suggested by
checkpatch.

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/rtl8192u/r8192U_wx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/r8192U_wx.c b/drivers/staging/rtl8192u/r8192U_wx.c
index 0118edb0b9ab..09ab68865934 100644
--- a/drivers/staging/rtl8192u/r8192U_wx.c
+++ b/drivers/staging/rtl8192u/r8192U_wx.c
@@ -588,7 +588,7 @@ static int r8192_wx_set_enc(struct net_device *dev,
 				hwkey);                 /* KeyContent */
 
 		} else {
-			printk("wrong type in WEP, not WEP40 and WEP104\n");
+			pr_warn("wrong type in WEP, not WEP40 and WEP104\n");
 		}
 
 	}
-- 
2.17.1


